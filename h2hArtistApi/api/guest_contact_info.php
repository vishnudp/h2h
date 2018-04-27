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

    case 'add_guest_contact_info' :
          add_guest_contact_info();
          break;
}


/**  Function to Get patient  **/

function add_guest_contact_info() {  
    $data = json_decode(file_get_contents("php://input")); 
    if ($data) {
      $contact_name           = $data->contact_name;
      $contact_email          = $data->contact_email;
      $contact_mbl_number     = $data->contact_mbl_number;
      $contact_city           = $data->contact_city;
      $contact_comment        = $data->contact_comment;
      $contact_created_at     = date('Y-m-d H:i:s');
      $qry = mysql_query("insert into  tg_guest_contact_info (
        contact_name, 
        contact_email, 
        contact_mbl_number, 
        contact_city, 
        contact_comment, 
        contact_created_at ) values (
              '".$contact_name."',
              '".$contact_email."',
              '".$contact_mbl_number."',
              '".$contact_city."',
              '".$contact_comment."',
              '".$contact_created_at."'
          )");    
      if ($qry) {
          $id = mysql_insert_id();
          $arr = array('msg' => "Contact Added Successfully!!!", 'error' => '', 'id' => $id);
          $jsn = json_encode($arr);
      } else {
          $arr = array('msg' => "", 'error' => 'Error In inserting Contact record');
          $jsn = json_encode($arr);
      }
  
      echo $jsn;
    }
}

?>