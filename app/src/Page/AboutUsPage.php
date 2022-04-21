<?php
/**
 * Created by PhpStorm.
 * User: Prabhash
 * Date: 10/28/2020
 * Time: 10:36 AM
 */

use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\TextField;

class AboutUsPage extends Page
{
    public function getControllerName(){
        return AboutUsPageController::class;
        //need to return relevant controller for this class
    }
    private static $db = [

        'Headline' => 'Varchar',
        'HeadlineTitle' => 'Varchar',

    ];
    private static $has_many = [
        'Members' => TeamMember::class,
        'Experiences' => UserExperience::class,
        ];


    public function getCMSFields(){
        $fields =  parent::getCMSFields();
        $conf = GridFieldConfig_RecordEditor::create();
        $conf_2 = GridFieldConfig_RecordEditor::create();
        $fields->addFieldsToTab('Root.TeamMembers', [
            TextField::create('Headline'),
            GridField::create('Members', 'Members', $this->Members(), $conf),

        ]);
        $fields->addFieldsToTab('Root.UserExperiences', [
            TextField::create('HeadlineTitle'),
            GridField::create('Experiences', 'Experiences', $this->Experiences(), $conf_2),

        ]);
        return $fields;
    }
}
