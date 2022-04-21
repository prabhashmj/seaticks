<?php


use SilverStripe\ORM\DataExtension;
use SilverStripe\Security\PermissionProvider;


class VendorGroup extends DataExtension implements PermissionProvider
{
    public function providePermissions()
    {
        return array(
            'EVENT_CREATE_GRANTED' => array(
                'name' => 'Create rights for EVENTS',
                'help' => _t('SiteTree.PERMISSION_GRANTACCESS_HELP', 'Allow Creating of Events'),
                'category' => _t('Permissions.CONTENT_CATEGORY', 'Content permissions'),
                'sort' => 100
            ),
            'EVENT_EDIT__GRANTED' => array(
                'name' => 'Edit rights for EVENTS',
                'category' => _t('Permissions.CONTENT_CATEGORY', 'Content permissions'),
                'sort' => -100,
                'help' => _t('SiteTree.VIEW_ALL_HELP', 'Allow Editing of EVENTS')
            ),
            'EVENT_DELETE_GRANTED' => array(
                'name' => 'Delete rights for EVENTS',
                'category' => _t('Permissions.CONTENT_CATEGORY', 'Content permissions'),
                'sort' => -50,
                'help' => _t('SiteTree.EDIT_ALL_HELP', 'Allow deleting of EVENTS')
            ),

        );
    }
}
