<?php

header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');

include('../config/config.php'); 

/**  Switch Case to Get Action from controller  **/

switch($_GET['action'])  {

    case 'save_user_data' :
    save_user_data();
            break;
    case 'update_user_profile_personal_data':
          update_user_profile_personal_data();
          break;
    case 'update_user_profile_contact_data':
          update_user_profile_contact_data();
          break;
    case 'update_user_profile_other_data':
          update_user_profile_other_data();
          break;
    case 'get_user_profile_personal_data':
          get_user_profile_personal_data();
          break;
    case 'get_user_profile_contact_data':
          get_user_profile_contact_data();
    break;
    case 'get_user_profile_other_data':
          get_user_profile_other_data();
          break;
}


/**  Function to Get patient  **/

function save_user_data() {    
    $data = json_decode(file_get_contents("php://input")); 
    $username      = $data->username;
    $firstName     = $data->fName;
    $lastName      = $data->lName;
    $dob           = $data->dob;
    $contactNumber = $data->contactNumber;
    $countryId     = $data->countryId;
    $stateId       = $data->stateId;
    $city          = $data->city;
    $zip           = $data->zip;
    $gender        = $data->gender;
    $roleId        = $data->roleId;
    $email         = $data->email;
    $verificationCode = bin2hex(mcrypt_create_iv(22, MCRYPT_DEV_URANDOM));
    $qry = mysql_query('Insert into tg_users (
        role_id, 
        username,
        email,
        first_name, 
        last_name, 
        user_dob, 
        phone_number, 
        country_id, 
        zone_id, 
        city_name, 
        gender, 
        location, 
        verification_code ) values (
            "'.$roleId.'",
            "'.$username.'",
            "'.$email.'",
            "'.$firstName.'",
            "'.$lastName.'",
            "'.$dob.'",
            "'.$contactNumber.'",
            "'.$countryId.'",
            "'.$stateId.'",
            "'.$city.'",
            "'.$gender.'",
            "'.$zip.'",
            "'.$verificationCode.'"
        )');
    if ($qry) {
        $id = mysql_insert_id();
        $arr = array('msg' => "User Added Successfully!!!", 'error' => '', 'id' => $id);
        $jsn = json_encode($arr);
    } else {
        $arr = array('msg' => "", 'error' => 'Error In inserting User record');
        $jsn = json_encode($arr);
    }
    echo $jsn;
}

function update_user_profile_personal_data() {
    $data = json_decode(file_get_contents("php://input"));
    if ($data) {
        $user_id = $data->user_id;
        $user_role_id = $data->user_role_id;
        $user_profile_title = $data->profile_title;
        $user_about_info = $data->about_user;
        $user_gender = $data->gender;
        $qry = mysql_query('update tg_user_personal_info set 
                            user_profile_title = "'.$user_profile_title.'",
                            user_about_info = "'.$user_about_info.'"
                            where user_id = "'.$user_id.'" and user_role_id = "'.$user_role_id.'"');
        $qry1 = mysql_query('update tg_users set 
                            gender = "'.$user_gender.'" 
                            where user_id = "'.$user_id.'" and role_id = "'.$user_role_id.'"');
        if ($qry & $qry1) {
            $arr = array('msg' => "User Personal Information Updated Successfully!!!", 'error' => '');
            $jsn = json_encode($arr);
        } else {
            $arr = array('msg' => "", 'error' => 'Error while updating user personal information');
            $jsn = json_encode($arr);
        }
        
        echo $jsn;
    }
}

function update_user_profile_contact_data() {
    $data = json_decode(file_get_contents("php://input"));
    if ($data) {
        $user_id = $data->user_id;
        $user_role_id = $data->user_role_id;
        $address = $data->user_address;
        $country_id = $data->user_country;
        $zone_id = $data->user_state;
        $city_name = $data->user_city;
        $phone_number = $data->user_contact_number;        
        $qry = mysql_query('update tg_users set 
                            address = "'.$address.'" ,
                            country_id = "'.$country_id.'",
                            zone_id = "'.$zone_id.'",
                            city_name = "'.$city_name.'",
                            phone_number = "'.$phone_number.'"
                            where user_id = "'.$user_id.'" and role_id = "'.$user_role_id.'"');
        if ($qry) {
            $arr = array('msg' => "User Contact Information Updated Successfully!!!", 'error' => '');
            $jsn = json_encode($arr);
        } else {
            $arr = array('msg' => "", 'error' => 'Error while updating user contact information');
            $jsn = json_encode($arr);
        }
        
        echo $jsn;
    }
}

function update_user_profile_other_data() {
    $data = json_decode(file_get_contents("php://input"));
    if ($data) {
        $user_id = $data->user_id;
        $user_role_id = $data->user_role_id;
        $user_artist_category = $data->user_artist_category;
        $user_artist_language = $data->user_artist_language;
        $user_artist_physical_desc = $data->user_artist_physical_description;
        $user_artist_convince_travel = $data->user_artist_convence_travel;
        $user_artist_convince_passport = $data->user_artist_convence_passport;        
        $qry = mysql_query("update tg_user_other_info set 
                            user_artist_category = '".$user_artist_category."' ,
                            user_artist_language = '".$user_artist_language."',
                            user_artist_physical_desc = '".$user_artist_physical_desc."',
                            user_artist_convince_travel = '".$user_artist_convince_travel."',
                            user_artist_convince_passport = '".$user_artist_convince_passport."'
                            where user_id = '".$user_id."' and user_role_id = '".$user_role_id."'");
        
        if ($qry) {
            $arr = array('msg' => "User Other Information Updated Successfully!!!", 'error' => '');
            $jsn = json_encode($arr);
        } else {
            $arr = array('msg' => "", 'error' => 'Error while updating user other information');
            $jsn = json_encode($arr);
        }
        
        echo $jsn;
    }
}

function get_user_profile_contact_data() {
    $data = json_decode(file_get_contents("php://input"));    
    if ($data) {
        $user_id = $data->user_id;
        $user_role_id = $data->user_role_id;        
        $qry = mysql_query('SELECT distinct * from tg_users where is_deleted = 0 and user_id = "'.$user_id.'" and role_id = "'.$user_role_id.'"');
        $data = array();
        while($rows = mysql_fetch_array($qry))
        {
            $data[] = array(
                        "user_id"            => $rows['user_id'],
                        "user_role_id"       => $rows['role_id'],
                        "user_first_name"    => $rows['first_name'],
                        "user_last_name"     => $rows['last_name'],
                        "user_email"         => $rows['email'],
                        "user_address"       => $rows['address'],
                        "user_country_id"    => $rows['country_id'],
                        "user_zone_id"       => $rows['zone_id'],
                        "user_city_name"     => $rows['city_name'],
                        "user_phone_number"  => $rows['phone_number'],
                        "user_gender"        => $rows['gender'],
                        "user_profile_image" => $rows['profile_image'],
                        "user_dob"           => $rows['user_dob']
                        );
        }
        
        echo json_encode($data);
    }      
}

function get_user_profile_personal_data() {
    $data = json_decode(file_get_contents("php://input"));    
    if ($data) {
        $user_id = $data->user_id;
        $user_role_id = $data->user_role_id;
        $qry = mysql_query('SELECT distinct * from tg_user_personal_info where user_id = "'.$user_id.'" and user_role_id = "'.$user_role_id.'"');
        $data = array();
        while($rows = mysql_fetch_array($qry))
        {
            $data[] = array(
                        "user_id"            => $rows['user_id'],
                        "user_role_id"       => $rows['user_role_id'],
                        "user_proflie_title" => $rows['user_profile_title'],
                        "user_about_info"    => $rows['user_about_info']
                        );
        }
        
        echo json_encode($data);
    }     
}

function get_user_profile_other_data() {
    $data = json_decode(file_get_contents("php://input"));    
    if ($data) {
        $user_id = $data->user_id;
        $user_role_id = $data->user_role_id;
        $qry = mysql_query('SELECT distinct * from tg_user_other_info where user_id = "'.$user_id.'" and user_role_id = "'.$user_role_id.'"');
        $data = array();
        while($rows = mysql_fetch_array($qry))
        {
            $data[] = array(
                        "user_id"                       => $rows['user_id'],
                        "user_role_id"                  => $rows['user_role_id'],
                        "user_artist_category"          => json_decode($rows['user_artist_category']),
                        "user_artist_language"          => json_decode($rows['user_artist_language']),
                        "user_artist_physical_desc"     => json_decode($rows['user_artist_physical_desc']),
                        "user_artist_convince_travel"   => $rows['user_artist_convince_travel'],
                        "user_artist_convince_passport" => $rows['user_artist_convince_passport']
                        );
        }
        
        echo json_encode($data);
    }     
}

?>