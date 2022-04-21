<?php
/**
 * Created by PhpStorm.
 * User: Prabhash
 * Date: 7/8/2020
 * Time: 1:49 PM
 */
use SilverStripe\ORM\DataObject;
use SilverStripe\Security\Permission;


class EventCategory extends DataObject
{

    private static $db = [
        'Title'      => 'Varchar(255)',
        'URLSegment' => 'Varchar(255)'
    ];

    /**
     * @var array
     */
    private static $indexes = [
        'URLSegment' => true,
    ];

    /**
     * @var array
     */
    private static $belongs_many_many = [
        'Events' => Event::class,
    ];


    protected function getListUrlSegment()
    {
        return 'category';
    }

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


}

