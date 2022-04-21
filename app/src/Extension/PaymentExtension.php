<?php

use SilverStripe\ORM\DataExtension;

class PaymentExtension extends DataExtension
{
    private static $db = array(
        'Refferance' => 'Text'
    );

    private static $has_one = array(
        'Subscription' => \Subscription::class
    );

}
