<?php
/**
 * Created by PhpStorm.
 * User: Prabhash
 * Date: 8/23/2020
 * Time: 10:17 AM
 */
use SilverStripe\Subsites\Model\Subsite;
use SilverStripe\Subsites\State\SubsiteState;
class AssetAdminExtension extends \SilverStripe\ORM\DataExtension
{
    public function subsiteCMSShowInMenu(){
        return true;
    }

    public function getEditForm($id = null, $fields = null){
        $form = parent::getEditForm($id, $fields);
echo '<pre>'.print_r($this->modelClass,1);die();
        $gridField = $form->Fields()->fieldByName($this->sanitiseClassName($this->modelClass));
        if(class_exists(Subsite::class)){
            $list = $gridField->getList()->filter(['SubsiteID'=>SubsiteState::singleton()->getSubsiteId()]);
            $gridField->setList($list);
        }

        return $form;
    }
}
