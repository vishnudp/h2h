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
    case 'upload_artist_event_images' :
          upload_artist_event_images();
          break; 
    case 'addEvent':
          addEvent();
    break;
    case 'get_event':
          get_event();
          break;
    case 'update_event':
          update_event();
          break;
    case 'delete_event':
          delete_event();
          break;
}

function upload_artist_event_images() {
    $data = json_decode(file_get_contents("php://input")); 
      print_r($data);
          if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
                  echo json_encode(array('status' => false));
                  exit;
                }
                 
                $path = 'uploads/';
                 
                if (isset($_FILES['file'])) {
                  $originalName = $_FILES['file']['name'];
                  $ext = '.'.pathinfo($originalName, PATHINFO_EXTENSION);
                  $generatedName = md5($_FILES['file']['tmp_name']).$ext;
                  $filePath = $path.$generatedName;
                 
                  if (!is_writable($path)) {
                    echo json_encode(array(
                      'status' => false,
                      'msg'    => 'Destination directory not writable.'
                    ));
                    exit;
                  }
                 
                  if (move_uploaded_file($_FILES['file']['tmp_name'], $filePath)) {
                    echo json_encode(array(
                      'status'        => true,
                      'originalName'  => $originalName,
                      'generatedName' => $generatedName
                    ));
                  }
                }
                else {
                  echo json_encode(
                    array('status' => false, 'msg' => 'No file uploaded.')
                  );
                  exit;
                }
  }

function addEvent() {
  $data = json_decode(file_get_contents("php://input")); 
  if ($data) {
    $user_id     = $data->user_id;
    $user_role_id      = $data->user_role_id;
    $event_title           = $data->event_title;
    $event_description     = $data->event_description;
    $event_date            = $data->event_date;
    $event_cover_photo     = $data->event_cover_photo;
    $event_is_active           = 1;
    $event_is_deleted        = 0;
    $event_created_time        = date('Y-m-d H:i:s');
    $qry = mysql_query("insert into  tg_event (
        user_id, 
        user_role_id, 
        event_title, 
        event_description, 
        event_date,
        event_cover_photo,
        event_is_active, 
        event_is_deleted, 
        event_created_time ) values (
            '".$user_id."',
            '".$user_role_id."',
            '".$event_title."',
            '".$event_description."',
            '".$event_date."',
            '".$event_cover_photo."',
            '".$event_is_active."',
            '".$event_is_deleted."',
            '".$event_created_time."'
        )");    
    if ($qry) {
        $id = mysql_insert_id();
        $arr = array('msg' => "Event Added Successfully!!!", 'error' => '', 'id' => $id);
        $jsn = json_encode($arr);
    } else {
        $arr = array('msg' => "", 'error' => 'Error In inserting Event record');
        $jsn = json_encode($arr);
    }

    echo $jsn;
  }
    
}

function get_event() {  
    $qry = mysql_query('SELECT distinct * from tg_event where event_is_deleted = 0 and user_id = 1 and user_role_id = 1');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "event_id"              => $rows['event_id'],
                    "event_title"            => $rows['event_title'],
                    "event_description"     => $rows['event_description'],
                    "event_date"     => $rows['event_date'],
                    "event_cover_photo" => json_decode($rows['event_cover_photo'])
                    );
    }
    
    echo json_encode($data);  
}

function update_event() {
    $data = json_decode(file_get_contents("php://input"));    
    if ($data) { 
    $event_id           = $data->event_id; 
    $user_id            = $data->user_id;
    $user_role_id       = $data->user_role_id;
    $event_title        = $data->event_title;
    $event_description  = $data->event_description;
    $event_date         = $data->event_date;
    $event_cover_photo  = $data->event_cover_photo;
    $qry = mysql_query("UPDATE tg_event set event_title = '".$event_title."' , event_description = '".$event_description."', event_date = '".$event_date."', event_cover_photo='".$event_cover_photo."' WHERE event_id = ".$event_id);
    if ($qry) {
        $arr = array('msg' => "Event Updated Successfully!!!", 'error' => '');
        $jsn = json_encode($arr);
    } else {
        $arr = array('msg' => "", 'error' => 'Error In updating Event record');
        $jsn = json_encode($arr);
    }
    echo $jsn;   
    }
}

function delete_event() {
    $data = json_decode(file_get_contents("php://input")); 
    if ($data) {    
    $event_id = $data->event_id; 
    $qry = mysql_query("UPDATE tg_event set event_is_deleted = 1 WHERE event_id = ".$event_id);
    if ($qry) {
        $arr = array('msg' => "Event Deleted Successfully!!!", 'error' => '');
        $jsn = json_encode($arr);
    } else {
        $arr = array('msg' => "", 'error' => 'Error In deleting Event record');
        $jsn = json_encode($arr);
    }

    echo $jsn;  
    }   
}





?>