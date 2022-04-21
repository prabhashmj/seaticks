<?php

use SilverStripe\ORM\DataObject;


use SilverStripe\Assets\Image;

class PricingPlan extends DataObject
{

    private static $db = [
        'Title' => 'Varchar',
        'Price' => 'Currency',
        'NoOfSeatingPlans' => 'Int',
        'ExpireDate' => 'Datetime',
    ];

    private static $has_one = [
        'PricingPage' => PricingPage::class,
        'SubscriptionPlanPhoto' => Image::class,
    ];

    private static $owns = [
        'SubscriptionPlanPhoto'
    ];



}
