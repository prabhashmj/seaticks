<?php
/**
 * Created by PhpStorm.
 * User: Prabhash
 * Date: 6/30/2020
 * Time: 10:51 AM
 */
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\ConfirmedPasswordField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Security\Security;
use SilverStripe\Security\Member;
use SilverStripe\Control\Director;
use SilverStripe\Security\Group;
use SilverStripe\Core\Config\Config;
use SilverStripe\Omnipay\Service\ServiceFactory;
use SilverStripe\Omnipay\GatewayFieldsFactory;
use SilverStripe\Omnipay\Model\Payment;
use SilverStripe\View\ArrayData;
use SilverStripe\Forms\HiddenField;
use SilverStripe\Omnipay\Exception\Exception;
use SilverStripe\Subsites\Model\Subsite;
use SilverStripe\Subsites\State\SubsiteState;
use SilverStripe\Security\PermissionRole;
use SilverStripe\Subsites\Model\SubsiteDomain;

class PricingPageController extends PageController
{
    private static $allowed_actions = [
        'signup',
        'SignUpForm',
        'doSubscribe',
        'Abort',
        'complete',
    ];

    public function signup()
    {
        $id = $this->getRequest()->param('ID');
        $session = $this->getRequest()->getSession();
        $session->set('PlanID',$id);
        return $this;
    }

    public function SignUpForm()
    {
        $session = $this->getRequest()->getSession();
        $fields = new FieldList(
            TextField::create('FirstName', 'FirstName'),
            TextField::create('Surname', 'Surname'),
            EmailField::create('Email','Email Address'),
            ConfirmedPasswordField::create('Pass', 'Password'),
            TextField::create('Domain', 'Sub Domain name for your site')
        );
        if($id = $session->get('PlanID')){
            $hiddenField = HiddenField::create('PlanID','PlanID')->setValue($id);
        }
        $fields->push($hiddenField);
        $actions = new FieldList(
            FormAction::create('doSubscribe')->setTitle('Sign Up to Seaticks')
        );

        $required = RequiredFields::create([
            'FirstName',
            'Surname',
            'Email',
            'Pass',
            'Domain',
        ]);
        $form = new Form($this, 'SignUpForm', $fields, $actions, $required);

        return $form;
    }

    public function doSubscribe($data, $form)
    {
        $data = $form->getData();
        $subscription = Subscription::create();
        $subscription->Name = $data['FirstName'];
        $subscription->Status = 'Init';
        $subscription->generateReference();
        $subscriptionID = $subscription->write();
        $session = $this->getRequest()->getSession();
        $session->set('Domain', $data['Domain']);
        $this->takepayment($subscriptionID, $data);

    }

    public function takepayment($subscriptionID, $data)
    {
        if($user = Security ::getCurrentUser()){
            $user->logout();
        }
        $member = Member::create();
        $member->FirstName = $data['FirstName'];
        $member->Surname = $data['Surname'];
        $member->Email = $data['Email'];
        $member->Password = $data['Pass'];
        $member->write();
        $groupParent = Group::get()->filter('Title','SubsiteGroupe')->first();
        $role = PermissionRole::get()->filter('Title','Vendor Role')->first();
        $group = Group::create();
        $group->Title = 'customGroup_'.$member->ID;
        $group->ParentID = $groupParent->ID;
        $group->AccessAllSubsites = false;
        $group->Roles()->add($role);
        $member->Groups()->add($group);
        $subscription = Subscription::get()->byID($subscriptionID);
        $subscription->MemberID = $member->ID;
        $subscription->PlanID = $data['PlanID'];
        $subscription->write();
        $plan = PricingPlan::get()->byID($data['PlanID']);
        if($plan && $plan->Price){
            $amount = $plan->Price;
            $gateways = Config::inst()->get(Payment::class, 'allowed_gateways');
            $curruncy = Config::inst()->get(Payment::class, 'curruncy');
            $fieldFactory = new GatewayFieldsFactory($gateways[0]);
            $payment = Payment::create()
                ->init($gateways[0], $amount, $curruncy)
                ->setSuccessUrl($this->Link('complete')."/".$subscription->ID)
                ->setFailureUrl($this->Link('Abort')."/".$subscription->ID);
            $subscription->Payments()->add($payment);
            $payment->Refferance = $subscription->TransactionRefferance;


            $factory = ServiceFactory::create();
            $service = $factory->getService($payment, ServiceFactory::INTENT_PAYMENT);
            // Initiate payment, get the result back
            try {
                $serviceResponse = $service->initiate($fieldFactory->normalizeFormData($data));

            } catch (Exception $ex) {
                // error out when an exception occurs
                $this->error($ex->getMessage());
                return null;
            }

            // Check if the service response itself contains an error
            if ($serviceResponse->isError()) {
                if ($opResponse = $serviceResponse->getOmnipayResponse()) {
                    $this->error($opResponse->getMessage());
                } else {
                    $this->error('An unspecified payment error occurred. Please check the payment messages.');
                }
            }

            // For an OFFSITE payment, serviceResponse will now contain a redirect
            // For an ONSITE payment, ShopPayment::onCaptured will have been called, which will have called completePayment
            return $serviceResponse->redirectOrRespond();
        }

    }

    protected function error($message)
    {
        $session = $this->getRequest()->getSession();
        $session->clear('Domain');
        if($id = $this->getRequest()->param('ID')){
            if($subscription = Subscription::get()->byID($id)){
                if($member = Member::get()->byID($subscription->MemberID)){
                    $member->delete();
                }
            }
        }
        $this->error = $message;
    }

    public function complete()
    {
        $session = $this->getRequest()->getSession();
        if($id = $this->getRequest()->param('ID')){
            if($subscription = Subscription::get()->byID($id)){
                $subscription->Status = 'Success';
                $subscription->write();
                if($member = Member::get()->byID($subscription->MemberID)){
                    $plan = PricingPlan::get()->byID($subscription->PlanID);
                    $subsite = Subsite::get()->filter('Title',$plan->Title)->first();
                    SubsiteState::singleton()->setSubsiteId($subsite->ID);
                    $newSite = $subsite->duplicate();
                    $newSite->Title = $member->FirstName.'_'.$member->ID.'_'.$plan->Title;
                    $newSite->write();


                    $domain = SubsiteDomain::create(['Domain' => $session->get('Domain').'.'.Page::DOMAIN, 'Protocol'=> 'automatic', 'IsPrimary'=> true]);
                    $domain->write();
                    $newSite->Domains()->add($domain);
                    $member->SubsiteID = $newSite->ID;
                    $member->write();
                    Security::setCurrentUser($member);
                    $newSite->activate();
                    $group = $member->Groups()->filter('Title', 'customGroup_'.$member->ID)->first();
                    $group->Subsites()->add($newSite);
                    $SubDomain=$session->get('Domain');
                    $session->clear('Domain');
                    $homePage = Page::get()->filter(["SubsiteID" => $newSite->ID, "URLSegment" => "home"])->first();
                    If($homePage){
                        $SiteConfig = \SilverStripe\SiteConfig\SiteConfig::get()->filter('SubsiteID', 2)->first();
                        $homePage->Content = $SiteConfig->DefaultHomeContent;
                        $homePage->write();
                        $homePage->doPublish();
                    }
                    return $this->redirect('http://'.$SubDomain.'.'.Page::DOMAIN.'/admin/pages?SubsiteID='.$newSite->ID);
                }
                return $this->customise($subscription);
            }
        }
    }




    public function Abort()
    {
        $session = $this->getRequest()->getSession();
        $session->clear('Domain');
        if($id = $this->getRequest()->param('ID')){
            if($subscription = Subscription::get()->byID($id)){
                $subscription->Status = 'Cancelled';
                $subscription->write();
                if($member = Member::get()->byID($subscription->MemberID)){
                    $member->delete();
                }
                return $this->redirectBack();
            }
        }
    }
}
