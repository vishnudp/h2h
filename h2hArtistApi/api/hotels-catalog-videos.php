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

    case 'upload_artist_catalog_videos' :
    upload_artist_catalog_videos();
            break;   
    case 'addVideos':
          addVideos();
          break; 
    case 'get_catalog_videos_title':
          get_catalog_videos_title();
          break;
    case 'get_catalog_videos_per_title':
          get_catalog_videos_per_title();
          break;
    case 'update_catalog_videos':
          update_catalog_videos();
          break;
    case 'delete_catalog_video':
          delete_catalog_video();
          break;
    case 'delete_catalog_video_attachment':
          delete_catalog_video_attachment();
          break;


}

/**  Function to Add patient  **/

function upload_artist_catalog_videos() {
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

function addVideos() {
  $data = json_decode(file_get_contents("php://input")); 
  if ($data) {
    $user_id     = $data->user_id;
    $user_role_id      = $data->user_role_id;
    $post_title           = $data->post_title;
    $post_place = $data->post_place;
    $post_description     = $data->post_description;
    $post_type       = $data->post_type;
    $post_attachment          = $data->post_attachment;
    $post_is_active           = 1;
    $post_is_deleted        = 0;
    $post_created_time        = date('Y-m-d H:i:s');
    $qry = mysql_query("insert into  tg_catalogue (
        user_id, 
        user_role_id, 
        post_title, 
        post_place, 
        post_description, 
        post_type, 
        post_attachment, 
        post_is_active, 
        post_is_deleted, 
        post_created_time ) values (
            '".$user_id."',
            '".$user_role_id."',
            '".$post_title."',
            '".$post_place."',
            '".$post_description."',
            '".$post_type."',
            '".$post_attachment."',
            '".$post_is_active."',
            '".$post_is_deleted."',
            '".$post_created_time."'
        )");    
    if ($qry) {
        $id = mysql_insert_id();
        $arr = array('msg' => "Post Added Successfully!!!", 'error' => '', 'id' => $id);
        $jsn = json_encode($arr);
    } else {
        $arr = array('msg' => "", 'error' => 'Error In inserting Post record');
        $jsn = json_encode($arr);
    }

    echo $jsn;
  }    
}

function get_catalog_videos_title() {  
    $qry = mysql_query('SELECT distinct * from tg_catalogue where post_is_deleted = 0 and user_id = 2 and user_role_id = 2 and post_type = "video"');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "post_id"              => $rows['post_id'],
                    "post_title"            => $rows['post_title'],
                    "post_description"     => $rows['post_description'],
                    "post_place"           => $rows['post_place'],
                    "post_type"            => $rows['post_type'],
                    "post_attachment"      => json_decode($rows['post_attachment'])
                    );
    }
    
    echo json_encode($data);  
}

function get_catalog_videos_per_title() {  
  $data = json_decode(file_get_contents("php://input")); 
  if ($data) {
    $post_id = $data->postId;
  $qry = mysql_query('SELECT distinct * from tg_catalogue where post_is_deleted = 0 and user_id = 2 and post_id = "'.$post_id.'" and user_role_id = 2 and post_type = "video"');
  $data = array();
  while($rows = mysql_fetch_array($qry))
  {
      $data[] = array(
                  "post_id"              => $rows['post_id'],
                  "post_title"            => $rows['post_title'],
                  "post_description"     => $rows['post_description'],
                  "post_type"            => $rows['post_type'],
                  "post_attachment"      => json_decode($rows['post_attachment'])
                  );
  }
  
  echo json_encode($data);  
  }
}

function update_catalog_videos() {
  $data = json_decode(file_get_contents("php://input"));   
  if ($data) {
    $post_id = $data->post_id; 
    $user_id     = $data->user_id;
    $user_role_id      = $data->user_role_id;
    $post_title           = $data->post_title;
    $post_description     = $data->post_description;
    $post_place           = $data->post_place;
    $post_type            = $data->post_type;
    $post_attachment      = $data->post_attachment;
    $qry = mysql_query("UPDATE tg_catalogue set post_title = '".$post_title."' , post_description = '".$post_description."' , post_type = '".$post_type."', post_attachment = '".$post_attachment."', post_place = '".$post_place."' WHERE post_id = ".$post_id);
    if ($qry) {
      $arr = array('msg' => "Post Updated Successfully!!!", 'error' => '');
      $jsn = json_encode($arr);
  } else {
      $arr = array('msg' => "", 'error' => 'Error In updating Post record');
      $jsn = json_encode($arr);
  }  
  echo $jsn;
  }
}

function delete_catalog_video() {
    $data = json_decode(file_get_contents("php://input"));     
    $post_id = $data->post_id; 
    $del = mysql_query("UPDATE tg_catalogue set post_is_deleted = 1 WHERE post_id = ".$post_id);
    if($del)
    return true;
    return false;     
}

function delete_catalog_video_attachment() {
  $data = json_decode(file_get_contents("php://input"));     
    $post_id = $data->post_id; 
    $user_id     = $data->user_id;
    $user_role_id      = $data->user_role_id;
    $post_attachment      = $data->post_attachment;
    $qry = mysql_query("UPDATE tg_catalogue set post_attachment = '".$post_attachment."' WHERE post_id = ".$post_id);
    if ($qry) {
      $arr = array('msg' => "Post Updated Successfully!!!", 'error' => '');
      $jsn = json_encode($arr);
  } else {
      $arr = array('msg' => "", 'error' => 'Error In updating Post record');
      $jsn = json_encode($arr);
  }  
  echo $jsn;
}


?>