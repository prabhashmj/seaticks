<?php

use SilverStripe\Admin\ModelAdmin;
use SilverStripe\Subsites\Model\Subsite;
use SilverStripe\Subsites\State\SubsiteState;

/**
 * Created by PhpStorm.
 * User: mpowerPC
 * Date: 5/12/2020
 * Time: 5:55 PM
 */

class EventAdmin extends ModelAdmin
{
    private static $url_segment = 'Events';

    private static $menu_title = 'Events';

    private static $menu_priority = 1;

//    private static $menu_icon = 'themes/v-dubs-4-vets/images/donate.svg';

    private static $managed_models = [
        Event::class => array('title' => "Events"),
    ];

    public function subsiteCMSShowInMenu(){
        return true;
    }

    public function getEditForm($id = null, $fields = null){
        $form = parent::getEditForm($id, $fields);

        $gridField = $form->Fields()->fieldByName($this->sanitiseClassName($this->modelClass));
        if(class_exists(Subsite::class)){
            $list = $gridField->getList()->filter(['SubsiteID'=>SubsiteState::singleton()->getSubsiteId()]);
            $gridField->setList($list);
        }

        return $form;
    }
}
