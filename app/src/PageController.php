<?php

namespace {

    use SilverStripe\CMS\Controllers\ContentController;
    use SilverStripe\Control\Director;
    use SilverStripe\Core\Config\Config;
    use SilverStripe\Forms\FieldList;
    use SilverStripe\Forms\Form;
    use SilverStripe\Forms\FormAction;
    use SilverStripe\Forms\HiddenField;
    use SilverStripe\Forms\RequiredFields;
    use SilverStripe\Omnipay\GatewayFieldsFactory;
    use SilverStripe\Omnipay\GatewayInfo;
    use SilverStripe\Omnipay\Model\Payment;
    use SilverStripe\Omnipay\Service\ServiceFactory;
    use SilverStripe\SiteConfig\SiteConfig;
    use SilverStripe\Subsites\Model\Subsite;
    use SilverStripe\Subsites\State\SubsiteState;
    use SilverStripe\View\Parsers\URLSegmentFilter;
    use SilverStripe\View\Requirements;
    use \SilverStripe\Control\HTTPRequest;
    use SilverStripe\View\ArrayData;



    class PageController extends ContentController

    {

        private static $allowed_actions = [
            'book',
            'payment',
            'pay',
            'cancelled',
            'complete',
            'BookingForm',
            'doSubmit',
            'getAllEvents',
            'getAllEventsWithSubsites',
            'SearchForm',
        ];

        protected function init()
        {
            parent::init();
            Requirements::javascript("themes/seaticks/javascript/jquery.min.js");
            Requirements::javascript("themes/seaticks/javascript/bootstrap.bundle.min.js");
            Requirements::css("themes/seaticks/css/infoBox.css");
            Requirements::css("themes/seaticks/css/jquery.contextMenu.min.css");
            Requirements::javascript("themes/seaticks/javascript/jquery.contextMenu.min.js");
            Requirements::javascript("themes/seaticks/javascript/jquery.ui.position.min.js");
        }

        public function book(HTTPRequest $request){
            $ID = $request->param('ID');
            $id = $request->param('Name');

            $currentEvent = Event::get()->byID($id);
            if($plan = SeatingPlan::get()->byID($ID)){
                return $this->customise(new ArrayData([
                    'SVG' => $plan->SVGImage,
                    'Title' => $plan->Title,
                    'ID' => $plan->ID,
                    'VirtualImageID' => $plan->PhotoSphereID,
                    'Event' => $currentEvent,
                    'VirtualPageLink' => $this->getVirtualPageLink(),
                ]));
            }
            return $this;
        }

        public function getVirtualPageLink(){
            if(Subsite::currentSubsite() && $vPage = VirtualImagePage::get()->filter('SubsiteID', Subsite::currentSubsite()->ID)->first()){
                $base = Director::absoluteBaseURL();

                return $base.ltrim(strtok( $vPage->Link('sphere'), '?'), '/');

            }else{
                if($vPage = VirtualImagePage::get()->first()){
                    $base = Director::absoluteBaseURL();

                    return $base.ltrim(strtok( $vPage->Link('sphere'), '?'), '/');

                }
            }
        }



        public function doSubmit(HTTPRequest $request)
        {
            $data = $request->postVars();
            $booking = Booking::create();
            $booking->Price = $data['Price'];
            $booking->EventID = $data['EventID'];
            $booking->SVG = $data['SVG'];
            $booking->Status = 'Init';
            $booking->generateReference();
            $booking->write();
            $bookingID = $booking->ID;
            $this->takepayment($bookingID, $data);
        }


        public function takepayment($bookingID, $data)
        {
            $booking = Booking::get()->byID($bookingID);
                $amount = $data['Price'];
                $gateways = Config::inst()->get(Payment::class, 'allowed_gateways');
                $curruncy = Config::inst()->get(Payment::class, 'curruncy');
                $siteConfig = SiteConfig::current_site_config();
                if($this->SubsiteID != 0){
                    Config::modify()->set(GatewayInfo::class, 'parameters', array(
                        'username' => $siteConfig->PaypalUser,
                        'password'    => $siteConfig->PaypalPass,
                        'signature' => $siteConfig->Signature,
                        'testMode' => true,

                    ));
                }
                $fieldFactory = new GatewayFieldsFactory($gateways[0]);
                $payment = Payment::create()
                    ->init($gateways[0], $amount, $curruncy)
            ->setSuccessUrl($this->getPayLink().'booking/complete/'.$booking->ID)
            ->setFailureUrl($this->getPayLink().'booking/cancelled/'.$booking->ID);
                $payment->Refferance = $booking->TransactionRefferance;


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

            return $serviceResponse->redirectOrRespond();

        }

        protected function error($message)
        {

            if($id = $this->getRequest()->param('ID')){
                if($booking = Booking::get()->byID($id)){
                    $booking->Status = 'Failed';
                    $booking->write();
                }
            }
            $this->error = $message;
        }

        public function complete()
        {
            if($id = $this->getRequest()->param('ID')){
                if($booking = Booking::get()->byID($id)){
                    $booking->Status = 'Success';
                    $booking->write();
                    $event = Event::get()->byID($booking->EventID);
                    $seatingPlan = $event->SeatingPlan();
                    $seatingPlan->SVGImage = $booking->SVG;
                    $seatingPlan->write();
                    return $this->customise(new ArrayData([
                        'MSG' => 'Thank you for using our service. Your Seat is Successfully Booked! 
                        
                        Your Booking number is ' . $id
                    ]));
                }
            }
        }

        public function cancelled()
        {

            if($id = $this->getRequest()->param('ID')){
                if($booking = Booking::get()->byID($id)){
                    $booking->Status = 'Pending';
                    $booking->write();
                    return $this->redirectBack();
                }
            }
        }


        public function getPayLink(){
            return Director::absoluteBaseURL();
        }

        public function getAllEvents()
        {
            $request = $this->getRequest();
            $category = $request->getVar('category');
            $events = Event::get()->filter('SubsiteID', SubsiteState::singleton()->getSubsiteId());
            if($category){
                $events = $events->filter(['EventCategories.Title' => $category]);
            }
            return $events;
        }

        public function getAllEventsWithSubsites()
        {
            $request = $this->getRequest();
            $category = $request->getVar('category');
            $events = Event::get();
            if($category){
                $events = $events->filter(['EventCategories.Title' => $category]);
            }
            return $events;
        }
        public function SearchForm()
        {
            $context = singleton(Event::class)->getDefaultSearchContext();
            $fields = $context->getSearchFields();

            $form = new Form($this, "SearchForm",
                $fields,
                new FieldList(
                    new FormAction('doSearch')
                )
            );

            return $form;
        }

        public function doSearch($data, $form)
        {
            $context = singleton(Event::class)->getDefaultSearchContext();
            $results = $context->getResults($data);

            return $this->customise([
                'Results' => $results
            ])->renderWith('Layout\Page_results');
        }


    }
}
