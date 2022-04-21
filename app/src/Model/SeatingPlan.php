<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Subsites\Model\Subsite;



class SeatingPlan extends DataObject
{
    private static $db = [
        'Title' => 'Varchar',
        'JSONCode' => 'Text',
        'SVGImage' => 'Text',
    ];


    private static $has_one = [
        'PhotoSphere' => PhotoSphere::class,
        'Subsite' => Subsite::class

    ];


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        if(class_exists(\SilverStripe\Subsites\Model\Subsite::class)){
            $fields->push(new \SilverStripe\Forms\HiddenField('SubsiteID','SubsiteID', \SilverStripe\Subsites\State\SubsiteState::singleton()->getSubsiteId()));
        }
        return $fields;
    }

}
