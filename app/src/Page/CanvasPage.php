<?php

use SilverStripe\Control\Director;
use SilverStripe\Security\Security;

/**
 * Created by PhpStorm.
 * User: Prabhash Umesha
 * Date: 4/22/2020
 * Time: 8:15 PM
 */

class CanvasPage extends Page
{
    public function getControllerName()
    {
        return CanvasPageController::class;
    }

    public function getAllCanvasCharts(){
        if($member = Security::getCurrentUser()){
            return $member->EditableSeatingPlans();
        }
        return false;
    }

    public function getCanvasIndexLink(){
        $link = Director::absoluteURL($this->Link());
        if (strpos($link, '?') !== false) {
            return substr($link, 0, strpos($link, "?"));
        }else{
            return $link;
        }
    }
}