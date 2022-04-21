<?php

use SilverStripe\Assets\Image;
use SilverStripe\Assets\Upload;
use SilverStripe\Control\Director;
use SilverStripe\View\ArrayData;
use SilverStripe\Control\HTTPRequest;
/**
 * Created by PhpStorm.
 * User: Prabhash Umesha
 * Date: 4/22/2020
 * Time: 8:17 PM
 */
class CanvasPageController extends PageController
{
    private static $allowed_actions = [
        'getplan',
        'getsphere',
        'createEditablePlan',
        'save',
        'getcode',
        'addimage',
        'addsphere',
        'createfinalplan',
        'savemarkers',
        'createfinalplanwithsphere',
    ];

    public function getplan(HTTPRequest $request){
        $ID = $request->getVar('ID');
        if($plan = EditableSeatingPlan::get()->byID($ID)){
            $link = $this->Link('getsphere');
            $base = Director::absoluteBaseURL();
            $sphere = $plan->EditablePhotoSphere();
            return $this->customise(new ArrayData([
                'Code' => $plan->JSONCode,
                'Title' => $plan->Title,
                'ID' => $plan->ID,
                'Sphere' => $sphere,
                'Link' => rtrim($base, '/').$link.'/'.$sphere->ID, 'Image' => $sphere->Image()->getURL()
            ]));
        }
        return $this;
    }

    public function getsphere(HTTPRequest $request){
        $ID = $request->param('ID');
        if($sphere = EditablePhotoSphere::get()->byID($ID)){
            $plan = EditableSeatingPlan::get()->filter('EditablePhotoSphereID', $ID)->first();
            return $this->customise(new ArrayData([
                'Markers' => $sphere->Markers,
                'Title' => $sphere->Title,
                'Image' => $sphere->Image(),
                'ID' => $sphere->ID,
                'SVG' => $plan->SVGImage,
            ]));
        }
        return $this;
    }

    public function createfinalplanwithsphere(HTTPRequest $request){
        $ID = $request->postVar('ID');
        if($plan = EditableSeatingPlan::get()->filter('EditablePhotoSphereID',$ID)->first()){
            $sphere = PhotoSphere::create();
            $sphere->Title = $plan->EditablePhotoSphere()->Title;
            $sphere->Markers = $plan->EditablePhotoSphere()->Markers;
            $sphere->ImageID = $plan->EditablePhotoSphere()->Image()->ID;
            $sphere->write();
            $finalPlan = SeatingPlan::create();
            $finalPlan->Title = $plan->Title;
            $finalPlan->JSONCode = $plan->JSONCode;
            $finalPlan->SVGImage = $plan->SVGImage;
            $finalPlan->PhotoSphereID = $sphere->ID;
            $finalPlan->SubsiteID = $this->SubsiteID;
            $finalPlan->write();
            $link = $this->Link();
            $base = Director::absoluteBaseURL();
            return json_encode(['message' => 'Success', 'Link' => rtrim($base, '/').$link]);
        }
        return json_encode(['message' => 'Error', ]);
    }

    public function savemarkers(HTTPRequest $request){
        $data = $request->postVars();
        if($id = $data['ID']){
            if($sphere = EditablePhotoSphere::get()->byID($id)){
                $sphere->Markers = $data['Markers'];
                $sphere->write();
                return json_encode(['message' => 'Success']);
            }

        }else{
            return json_encode(['message' => 'Failed']);
        }
    }

    public function createfinalplan(HTTPRequest $request){
        $ID = $request->postVar('ID');
        if($plan = EditableSeatingPlan::get()->byID($ID)){

            $finalPlan = SeatingPlan::create();
            $finalPlan->Title = $plan->Title;
            $finalPlan->JSONCode = $plan->JSONCode;
            $finalPlan->SVGImage = $plan->SVGImage;
            $finalPlan->SubsiteID = $this->SubsiteID;
            $finalPlan->write();
            $link = $this->Link();
            $base = Director::absoluteBaseURL();
            return json_encode(['message' => 'Success', 'Link' => rtrim($base, '/').$link]);
        }
        return json_encode(['message' => 'Error', ]);
    }

    public function createEditablePlan(HTTPRequest $request){
        $data = $request->postVars();
        $user = \SilverStripe\Security\Security::getCurrentUser();
        $subscription = Subscription::get()->filter('MemberID', $user->ID)->first();
        $plan = $subscription->Plan();
        $limit = $plan->NoOfSeatingPlans;
        $numberOfPlansCreated = EditableSeatingPlan::get()->filter('MemberID', $user->ID);
        if($numberOfPlansCreated->count() >= $limit){
            $arrData = array(
                'Link' => '#',
                'canCreate' => false,
            );
        }else{
            $editablePlan = EditableSeatingPlan::create();
            $editablePhotoSphere = EditablePhotoSphere::create();
            $sphereID = $editablePhotoSphere->write();
            $editablePlan->EditablePhotoSphereID = $sphereID;
            $editablePlan->Title = $data['Title'];
            $planID = $editablePlan->write();
            $link = $this->Link('getplan').'?ID='.$planID;
            $base = Director::absoluteBaseURL();
            $arrData = array(
                'Link' => rtrim($base, '/').$link,
                'canCreate' => true,
            );
        }

        return json_encode($arrData);

    }

    public function save(HTTPRequest $request){
        $data = $request->postVars();
        if($id = $data['ID']){
            $plan = EditableSeatingPlan::get()->byID($id);
            $plan->JSONCode = $data['JSONCode'];
            $plan->SVGImage = $data['SVGImage'];
            $plan->write();
            return json_encode(['message' => 'Success', 'JSONCode' => $plan->JSONCode]);
        }else{
            return json_encode(['message' => 'Failed']);
        }

    }

    public function getcode(HTTPRequest $request){
        $data = $request->postVars();
        if($id = $data['ID']){
            $plan = EditableSeatingPlan::get()->byID($id);
            return json_encode(['message' => 'Success', 'JSONCode' => $plan->JSONCode]);
        }else{
            return json_encode(['message' => 'Failed']);
        }

    }

    public function addimage(HTTPRequest $request){
        $data = $request->postVars();
        if($id = $data['ID']){
            if($plan = EditableSeatingPlan::get()->byID($id)){
                $this->upload = Upload::create();
                $fileClass = Image::get_class_for_file_extension(pathinfo($data['File']['name'], PATHINFO_EXTENSION));
                $file = new $fileClass();
                $this->upload->loadIntoFile($data['File'], $file, 'POVImages');
                $file = $this->upload->getFile();
                $plan->POVImages()->add($file);
                return json_encode(['message' => 'Success', 'ImageID' => $file->ID]);
            }


        }else{
            return json_encode(['message' => 'Failed']);
        }

    }

    public function addsphere(HTTPRequest $request){
        $data = $request->postVars();
        if($id = $data['ID']){
            if($plan = EditableSeatingPlan::get()->byID($id)){
                $sphere = $plan->EditablePhotoSphere();
                $this->upload = Upload::create();
                $fileClass = Image::get_class_for_file_extension(pathinfo($data['File']['name'], PATHINFO_EXTENSION));
                $file = new $fileClass();
                $this->upload->loadIntoFile($data['File'], $file, 'POVImages');
                $file = $this->upload->getFile();
                $sphere->ImageID = $file->ID;
                $sphere->write();
                $link = $this->Link('getsphere');
                $base = Director::absoluteBaseURL();
                return json_encode(['message' => 'Success', 'SphereID' => $sphere->ID, 'Link' => rtrim($base, '/').$link.'/'.$sphere->ID, 'Image' => $sphere->Image()->getURL()]);
            }

        }else{
            return json_encode(['message' => 'Failed']);
        }

    }
}
