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

    case 'get_home_slider_data' :
            get_home_slider_data();
            break;

    case 'get_patient_appointment' :
            get_patient_appointment();
            break;

    case 'delete_patient_appointment' :              
            delete_patient_appointment();
            break;
}

/**  Function to Add patient  **/

function add_patient_appointment() {
    $data = json_decode(file_get_contents("php://input")); 
    //print_r($data);
    $fullName              = $data->fullName;
    $mblNumber             = $data->mblNumber; 
    $appointmentDate       = $data->appointmentDate;
    $appointmentTime       = $data->appointmentTime;

    $qry = 'INSERT INTO hms_patient_appointment (patient_full_name,patient_mbl_number,patient_appointment_date,patient_appointment_time,patient_created_at) values ("'.$fullName.'","'.$mblNumber.'","'.$appointmentDate.'","'.$appointmentTime.'",NOW())';    
    $qry_res = mysql_query($qry);
    if ($qry_res) {
        $id = mysql_insert_id();
        $arr = array('msg' => "Patient Appointment Added Successfully!!!", 'error' => '', 'id' => $id);
        $jsn = json_encode($arr);
    } 
    else {
        $arr = array('msg' => "", 'error' => 'Error In inserting Patient Appointment record');
        $jsn = json_encode($arr);
    }

    echo $jsn;
}


/**  Function to Get patient  **/

function get_home_slider_data() {    
    
    $qry = mysql_query('SELECT distinct * from tg_slider_posts where post_is_deleted = 0 order by post_id desc');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "post_id"              => $rows['post_id'],
                    "post_name"            => $rows['post_name'],
                    "post_description"     => $rows['post_description'],
                    "post_media_name"      => $rows['post_media_name'],
                    "post_media_url"       => $rows['post_media_url']
                    );
    }
    
    echo json_encode($data);  
}


/**  Function to Delete grade  **/

function delete_patient_appointment() {
    $data = json_decode(file_get_contents("php://input"));     
    $index = $data->patient_index;     
    //print_r($data)   ;
    $del = mysql_query("UPDATE hms_patient_appointment set patient_is_deleted = 1 WHERE appointment_id = ".$index);
    if($del)
    return true;
    return false;     
}




?>