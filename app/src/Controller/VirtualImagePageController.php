<?php

use SilverStripe\View\ArrayData;
use SilverStripe\View\Requirements;



class VirtualImagePageController extends PageController
{
    public function init(){
        parent::init();
        Requirements::javascript("themes/seaticks/javascript/three.min.js");
        Requirements::javascript("themes/seaticks/javascript/polyfill.js");
        Requirements::javascript("themes/seaticks/javascript/uevent.js");
        Requirements::javascript("themes/seaticks/javascript/doT.js");
        Requirements::javascript("themes/seaticks/javascript/NoSleep.js");
        Requirements::javascript("themes/seaticks/javascript/photo-sphere-viewer.js");
    }

    private static $allowed_actions = [
        'sphere',
    ];

    public function sphere(\SilverStripe\Control\HTTPRequest $request){
        $ID = $request->param('ID');
        if($sphere = PhotoSphere::get()->byID($ID)){
            return $this->customise(new ArrayData([
                'Title' => $sphere->Title,
                'Markers' => $sphere->Markers,
                'Image' => $sphere->Image(),
                'ID' => $sphere->ID,
            ]));
        }
        return $this;
    }
}
