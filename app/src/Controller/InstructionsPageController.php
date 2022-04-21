<?php
/**
 * Created by PhpStorm.
 * User: Prabhash
 * Date: 10/31/2020
 * Time: 1:06 PM
 */

use SilverStripe\Control\HTTPRequest;
use SilverStripe\View\Requirements;


class InstructionsPageController extends PageController
{
    public function init(){
        parent::init();
        Requirements::css("themes/seaticks/css/InstructionsStyle.css");

    }
}
