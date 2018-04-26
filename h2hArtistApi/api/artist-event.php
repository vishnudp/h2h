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

function addEvent() {
  $data = json_decode(file_get_contents("php://input")); 
  if ($data) {
    $user_id     = $data->user_id;
    $user_role_id      = $data->user_role_id;
    $event_title           = $data->event_title;
    $event_description     = $data->event_description;
    $event_date            = $data->event_date;
    $event_is_active           = 1;
    $event_is_deleted        = 0;
    $event_created_time        = date('Y-m-d H:i:s');
    $qry = mysql_query("insert into  tg_event (
        user_id, 
        user_role_id, 
        event_title, 
        event_description, 
        event_date,
        event_is_active, 
        event_is_deleted, 
        event_created_time ) values (
            '".$user_id."',
            '".$user_role_id."',
            '".$event_title."',
            '".$event_description."',
            '".$event_date."',
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
                    );
    }
    
    echo json_encode($data);  
}

function update_event() {
    $data = json_decode(file_get_contents("php://input"));    
    if ($data) { 
    $event_id = $data->event_id; 
    $user_id     = $data->user_id;
    $user_role_id      = $data->user_role_id;
    $event_title           = $data->event_title;
    $event_description     = $data->event_description;
    $event_date     = $data->event_date;
    $qry = mysql_query("UPDATE tg_event set event_title = '".$event_title."' , event_description = '".$event_description."', event_date = '".$event_date."' WHERE event_id = ".$event_id);
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