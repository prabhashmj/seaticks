<?php
/**
 * Created by PhpStorm.
 * User: Prabhash
 * Date: 10/31/2020
 * Time: 1:05 PM
 */

class InstructionsPage extends Page
{
    public function getControllerName(){
        return InstructionsPageController::class;
        //need to return relevant controller for this class
    }
}
