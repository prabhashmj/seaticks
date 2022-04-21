<?php

use SilverStripe\ORM\DataObject;



class Booking extends DataObject
{
    private static $db = [
        'Status' => 'Enum("Init, Pending, Success, Failed","Init")',
        'Price' => 'Currency',
        'TransactionRefferance' => 'Text',
        'SVG' => 'Text',
    ];

    private static $has_one = [
        'Event' => Event::class,
    ];

    public function getAllEventsWithSubsites()
    {
        $events = Event::get();
        return $events;
    }

    public function generateReference()
    {
        $reference = md5(uniqid(rand().$this->ID, true));
        $this->TransactionRefferance = $reference;
    }
}
