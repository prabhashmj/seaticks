<?php
/**
 * Created by PhpStorm.
 * User: Developer
 * Date: 04/07/2020
 * Time: 07:50
 */
use SilverStripe\Security\MemberAuthenticator\LoginHandler;
use SilverStripe\Security\Security;
use SilverStripe\ORM\ValidationResult;
class CustomLoginHandler extends LoginHandler
{
    protected function redirectAfterSuccessfulLogin()
    {

        $this
            ->getRequest()
            ->getSession()
            ->clear('SessionForms.MemberLoginForm.Email')
            ->clear('SessionForms.MemberLoginForm.Remember');

        $member = Security::getCurrentUser();
        if ($member->isPasswordExpired()) {
            return $this->redirectToChangePassword();
        }

        // Absolute redirection URLs may cause spoofing
        $backURL = $this->getBackURL();
        if ($backURL) {
            if($member->SubsiteID > 0 ){
                return $this->redirect($backURL.'?SubsiteID='.$member->SubsiteID);
            }
            return $this->redirect($backURL);
        }

        // If a default login dest has been set, redirect to that.
        $defaultLoginDest = Security::config()->get('default_login_dest');
        if ($defaultLoginDest) {
            return $this->redirect($defaultLoginDest);
        }

        // Redirect the user to the page where they came from
        if ($member) {
            // Welcome message
            $message = _t(
                'SilverStripe\\Security\\Member.WELCOMEBACK',
                'Welcome Back, {firstname}',
                ['firstname' => $member->FirstName]
            );
            Security::singleton()->setSessionMessage($message, ValidationResult::TYPE_GOOD);
        }
        // Redirect back
        return $this->redirectBack();
    }
}