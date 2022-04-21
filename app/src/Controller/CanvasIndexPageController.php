<?php

use \SilverStripe\Control\HTTPRequest;
class CanvasIndexPageController extends PageController
{
    private static $allowed_actions = [
        'createEditablePlan'
    ];

    public function createEditablePlan(HTTPRequest $request){
        return json_encode([]);
    }
}
