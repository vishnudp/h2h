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

    case 'get_country_data' :
            get_country_data();
            break;
    case 'get_state_data':
            get_state_data();
            break;
    case 'get_role_data':
            get_role_data();
            break;
}


/**  Function to Get patient  **/

function get_country_data() {    
    //$data = json_decode(file_get_contents("php://input")); 
    //print_r($data);
    //$pageSlug              = $data->pageSlug;
    $qry = mysql_query('SELECT distinct * from tg_country where status = 1');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "country_id"              => $rows['country_id'],
                    "country_name"            => $rows['name']
                    );
    }
    
    echo json_encode($data);  
}

function get_state_data() {    
    $data = json_decode(file_get_contents("php://input")); 
    $countryId  = $data->countryId;
    $qry = mysql_query('SELECT distinct * from tg_zone where status = 1 and country_id ='.$countryId);
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "state_id"              => $rows['zone_id'],
                    "state_name"            => $rows['name']
                    );
    }    
    echo json_encode($data);  
}

function get_role_data() {   
    $qry = mysql_query('SELECT distinct * from tg_role where role_is_deleted = 0 and (role_title Like "%Artists%" or role_title Like "%Hotel%")');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "role_id"              => $rows['role_id'],
                    "role_name"            => $rows['role_title']
                    );
    }    
    echo json_encode($data);  
}

?>