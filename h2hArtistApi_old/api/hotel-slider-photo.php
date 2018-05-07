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

    case 'upload_hotel_slider_image' :
    upload_hotel_slider_image();
            break;  
    case 'get_slider_photo':
          get_slider_photo();
          break;
    case 'update_slider_photo':
          update_slider_photo();
          break;
    case 'delete_slider_photo':
          delete_slider_photo();
          break;
}

/**  Function to Add patient  **/

function upload_hotel_slider_image() {
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



function get_slider_photo() {  
  $data = json_decode(file_get_contents("php://input")); 
  if ($data) {
    $user_id = $data->user_id;
    $user_role_id = $data->user_role_id;
    $qry = mysql_query('SELECT distinct * from tg_user_slider_images where user_id = "'.$user_id.'" and user_role_id = "'.$user_role_id.'"');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "user_id"              => $rows['user_id'],
                    "user_role_id"         => $rows['user_role_id'],
                    "user_slider_images"       => json_decode($rows['user_slider_images'])
                    );
    }
    
    echo json_encode($data); 
  } 
}



function update_slider_photo() {
  $data = json_decode(file_get_contents("php://input"));   
  if ($data) {
    $user_id           = $data->user_id;
    $user_role_id      = $data->user_role_id;
    $user_slider_images         = $data->user_slider_images;
    $qry = mysql_query("UPDATE tg_user_slider_images set user_slider_images = '".$user_slider_images."'  WHERE user_id = '".$user_id."' and user_role_id = '".$user_role_id."'");
    if ($qry) {
      $arr = array('msg' => "Slider Photo Updated Successfully!!!", 'error' => '');
      $jsn = json_encode($arr);
  } else {
      $arr = array('msg' => "", 'error' => 'Error In updating slider photo record');
      $jsn = json_encode($arr);
  }  
  echo $jsn;
  }
}

function delete_slider_photo() {
    $data = json_decode(file_get_contents("php://input")); 
    if ($data)     {
      $user_id = $data->user_id; 
      $user_role_id      = $data->user_role_id;
      $qry = mysql_query("UPDATE tg_user_slider_images set user_slider_images = '' WHERE user_id = '".$user_id."' and user_role_id = '".$user_role_id."'");
      if ($qry) {
        $arr = array('msg' => "Slider Updated Successfully!!!", 'error' => '');
        $jsn = json_encode($arr);
      } else {
          $arr = array('msg' => "", 'error' => 'Error In updating slider record');
          $jsn = json_encode($arr);
      }  
      echo $jsn; 
    }
       
}



?>