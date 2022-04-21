<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldAddNewButton;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\GridField\GridFieldDeleteAction;
use SilverStripe\Forms\GridField\GridFieldEditButton;
use SilverStripe\Forms\ReadonlyField;
use SilverStripe\Omnipay\Model\Payment;
use SilverStripe\ORM\DataObject;
use SilverStripe\Security\Member;

class Subscription extends DataObject
{
    private static $table_name = 'Subscription';

    private static $db = [
        'Name' => 'Varchar',
        'Status' => 'Enum("Init, Success, Cancelled", "Init")',
        'TransactionRefferance' => 'Text',
        'Sort' => 'Int',
    ];

    private static $has_many = [
        'Payments' => Payment::class
    ];

    private static $has_one= [
        'Member' => Member::class,
        'Plan' => PricingPlan::class,
    ];

    private static $summary_fields = [
        'Name',
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeByName(['Sort', 'MemberID', 'PlanID']);
        $fields->addFieldsToTab('Root.Main', [
            ReadonlyField::create('Name', 'Name'),
            ReadonlyField::create('Status', 'Status'),
            ReadonlyField::create('TransactionRefferance', 'Transaction Refferance'),
        ]);
        $conf = GridFieldConfig_RecordEditor::create();
        $conf->removeComponentsByType(new GridFieldAddNewButton());
        $conf->removeComponentsByType(new GridFieldDeleteAction());
        $conf->removeComponentsByType(new GridFieldEditButton());
        $fields->addFieldsToTab('Root.Payments', [
            GridField::create('Payments', 'Payments', $this->Payments(), $conf),
        ]);
        return $fields;
    }

    public function generateReference()
    {
        $reference = md5(uniqid(rand().$this->ID, true));
        $this->TransactionRefferance = $reference;
    }
}
