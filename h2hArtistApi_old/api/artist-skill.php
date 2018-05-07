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
    case 'addSkill':
    addSkill();
    break;
    case 'get_skill':
          get_skill();
          break;
    case 'update_skill':
          update_skill();
          break;
    case 'delete_skill':
          delete_skill();
          break;
}

function addSkill() {
  $data = json_decode(file_get_contents("php://input")); 
  if ($data) {
    $user_id     = $data->user_id;
    $user_role_id      = $data->user_role_id;
    $skill_title           = $data->skill_title;
    $skill_description     = $data->skill_description;
    $skill_is_active           = 1;
    $skill_is_deleted        = 0;
    $skill_created_time        = date('Y-m-d H:i:s');
    $qry = mysql_query("insert into  tg_skill (
        user_id, 
        user_role_id, 
        skill_title, 
        skill_description, 
        skill_is_active, 
        skill_is_deleted, 
        skill_created_time ) values (
            '".$user_id."',
            '".$user_role_id."',
            '".$skill_title."',
            '".$skill_description."',
            '".$skill_is_active."',
            '".$skill_is_deleted."',
            '".$skill_created_time."'
        )");    
    if ($qry) {
        $id = mysql_insert_id();
        $arr = array('msg' => "Skill Added Successfully!!!", 'error' => '', 'id' => $id);
        $jsn = json_encode($arr);
    } else {
        $arr = array('msg' => "", 'error' => 'Error In inserting Skill record');
        $jsn = json_encode($arr);
    }

    echo $jsn;
  }
    
}

function get_skill() {  
    $qry = mysql_query('SELECT distinct * from tg_skill where skill_is_deleted = 0 and user_id = 1 and user_role_id = 1');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "skill_id"              => $rows['skill_id'],
                    "skill_title"            => $rows['skill_title'],
                    "skill_description"     => $rows['skill_description']
                    );
    }
    
    echo json_encode($data);  
}

function update_skill() {
    $data = json_decode(file_get_contents("php://input"));    
    if ($data) { 
    $skill_id = $data->skill_id; 
    $user_id     = $data->user_id;
    $user_role_id      = $data->user_role_id;
    $skill_title           = $data->skill_title;
    $skill_description     = $data->skill_description;
    $qry = mysql_query("UPDATE tg_skill set skill_title = '".$skill_title."' , skill_description = '".$skill_description."' WHERE skill_id = ".$skill_id);
    if ($qry) {
        $arr = array('msg' => "Skill Updated Successfully!!!", 'error' => '');
        $jsn = json_encode($arr);
    } else {
        $arr = array('msg' => "", 'error' => 'Error In updating Skill record');
        $jsn = json_encode($arr);
    }
    echo $jsn;   
    }
}

function delete_skill() {
    $data = json_decode(file_get_contents("php://input")); 
    if ($data) {    
    $skill_id = $data->skill_id; 
    $qry = mysql_query("UPDATE tg_skill set skill_is_deleted = 1 WHERE skill_id = ".$skill_id);
    if ($qry) {
        $arr = array('msg' => "Skill Deleted Successfully!!!", 'error' => '');
        $jsn = json_encode($arr);
    } else {
        $arr = array('msg' => "", 'error' => 'Error In deleting Skill record');
        $jsn = json_encode($arr);
    }

    echo $jsn;  
    }   
}





?>