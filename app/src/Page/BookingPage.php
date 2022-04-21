<?php
/**
 * Created by PhpStorm.
 * User: Prabhash Umesha
 * Date: 5/6/2020
 * Time: 7:45 PM
 */

class BookingPage extends Page
{
    //just add this function to all pages that you create
    public function getControllerName(){
        return BookingPageController::class;
        //need to return relevant controller for this class
    }


}