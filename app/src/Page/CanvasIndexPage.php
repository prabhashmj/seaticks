<?php

use SilverStripe\Control\Director;
use SilverStripe\Security\Security;



class CanvasIndexPage extends Page
{
    public function getControllerName(){
        return CanvasIndexPageController::class;
    }

    public function getAllCanvasCharts(){
        if($member = Security::getCurrentUser()){
            return $member->EditableSeatingPlans();
        }
        return false;
    }

    public function getCanvasIndexLink(){
        return substr(Director::absoluteURL($this->Link()), 0, strpos(Director::absoluteURL($this->Link()), "?"));
    }
}
