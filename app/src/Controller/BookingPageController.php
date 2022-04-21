<?php
/**
 * Created by PhpStorm.
 * User: Prabhash Umesha
 * Date: 5/6/2020
 * Time: 7:46 PM
 */
use SilverStripe\View\Requirements;
class BookingPageController extends PageController
{
    public function init(){
        parent::init();
        Requirements::css("themes/seaticks/css/infoBox.css");
        Requirements::css("themes/seaticks/css/jquery.contextMenu.min.css");
        Requirements::javascript("themes/seaticks/javascript/jquery.contextMenu.min.js");
        Requirements::javascript("themes/seaticks/javascript/jquery.ui.position.min.js");
    }
}