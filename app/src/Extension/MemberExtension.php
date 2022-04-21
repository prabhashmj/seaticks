<?php

use SilverStripe\ORM\DataExtension;
use SilverStripe\Subsites\Model\Subsite;



class MemberExtension extends DataExtension
{
    private static $has_one = [
        'Subsite' => Subsite::class,
    ];

    private static $has_many = [
        'EditableSeatingPlans' => EditableSeatingPlan::class,
        'Events' => Event::class
    ];
}
