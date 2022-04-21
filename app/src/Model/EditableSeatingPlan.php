<?php

use SilverStripe\Assets\Image;
use SilverStripe\ORM\DataObject;
use SilverStripe\Security\Member;
use SilverStripe\Security\Security;



class EditableSeatingPlan extends DataObject
{
    private static $db = [
        'Title' => 'Varchar',
        'JSONCode' => 'Text',
        'SVGImage' => 'Text',
    ];

    private static $has_one = [
        'Member' => Member::class,
        'EditablePhotoSphere' => EditablePhotoSphere::class,
    ];

    private static $many_many = [
        'POVImages' => Image::class,
    ];

    private static $owns = [
        'POVImages'
    ];

    public function onBeforeWrite(){
        parent::onBeforeWrite();
        $this->MemberID = Security::getCurrentUser()->ID;
    }
}
