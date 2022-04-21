<?php

use SilverStripe\Forms\DatetimeField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\ORM\DataObject;
use SilverStripe\ORM\FieldType\DBDatetime;
use SilverStripe\Security\Member;
use SilverStripe\Security\Security;
use SilverStripe\Subsites\Model\Subsite;
use SilverStripe\Forms\HiddenField;
use SilverStripe\Subsites\State\SubsiteState;
use SilverStripe\Security\Permission;
use SilverStripe\Forms\EmailField;
use SilverStripe\Control\Director;




class Event extends DataObject
{
    private static $db = [
        'Title' => 'Varchar',
        'Description' => 'HTMLText',
        'StartTime' => DBDatetime::class,
        'EndTime' => DBDatetime::class,
        'Email' =>'Varchar',
    ];

    private static $has_one = [
        'Member' => Member::class,
        'SeatingPlan' => SeatingPlan::class,
        'CoverPhoto' => Image::class,
        'Subsite' => Subsite::class

    ];

    private static $owns = [
        'CoverPhoto'
    ];

    public function canCreate($member = null, $context = array())
    {
        if ($this->getPermission('EVENT_CREATE_GRANTED')) {
            return true;
        }
    }

    public function canEdit($member = null)
    {
        if ($this->getPermission('EVENT_EDIT__GRANTED')) {
            return true;
        }

        return false;
    }

    public function canDelete($member = null)
    {
        if ($this->getPermission('EVENT_DELETE_GRANTED')) {
            return true;
        }

        return false;
    }

    public function canView($member = null)
    {
        return true;
    }

    function getPermission($type){
        if(Permission::check($type)){
            return true;
        }
        return false;
    }

    private static $summary_fields = [
        'Title',
        'Description',
        'StartTime',
        'EndTime',
        'Email',
//        'CoverPhoto'
    ];

    private static $searchable_fields = [
        'Title',
        'Description' => 'Search',
        'StartTime',
        'EndTime',
        'Email',
    ];

    private static $has_many = [
        'Bookings' => Booking::class,
    ];

    private static $many_many = [
        'EventCategories' => EventCategory::class,
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeByName([
            'MemberID',
            'SeatingPlanID',
            'Title',
            'Description',
            'StartTime',
            'EndTime',
            'Email',
            'CoverPhoto',
            'SeatingPlan',

        ]);
        if($this->ID){
        $fields->addFieldsToTab('Root.Main', [
            TextField::create('Title'),
            HTMLEditorField::create('Description'),
            DatetimeField::create('StartTime'),
            DatetimeField::create('EndTime'),
            EmailField::create('Email'),
            UploadField::create('CoverPhoto','Cover Photo'),
            DropdownField::create('SeatingPlanID', 'SeatingPlan', SeatingPlan::get()->filter('SubsiteID',$this->SubsiteID)->map('ID', 'Title'))
        ]);
        }else{
            $fields->addFieldsToTab('Root.Main', [
                \SilverStripe\Forms\HeaderField::create('Header', 'Create this event to add data'),
            ]);
        }
        if(class_exists(Subsite::class)){
            $fields->push(new HiddenField('SubsiteID','SubsiteID', SubsiteState::singleton()->getSubsiteId()));
        }
        return $fields;
    }


        public function onBeforeWrite(){
        parent::onBeforeWrite();
        $this->MemberID = Security::getCurrentUser()->ID;
    }

    public function getLink()
    {
        return Director::absoluteBaseURL()
            .'booking/book/'
            .$this->SeatingPlan()->ID.'/'.$this->ID;
    }

    public function getDefaultSearchContext()
    {


        $fields = $this->scaffoldSearchFields([
            'restrictFields' => ['Description']

        ]);

        $filters = [
            'Description' => new \SilverStripe\ORM\Filters\PartialMatchFilter('Description'),
        ];

        return new \SilverStripe\ORM\Search\SearchContext(
            $this->ClassName,
            $fields,
            $filters
        );
    }
}
