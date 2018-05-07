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

    case 'get_sponsor_data' :
            get_sponsor_data();
            break;
}


/**  Function to Get patient  **/

function get_sponsor_data() {    
    
    $qry = mysql_query('SELECT distinct * from tg_sponsers where sponser_is_deleted = 0 order by sponser_id desc');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "sponser_id"              => $rows['sponser_id'],
                    "sponser_title"            => $rows['sponser_title'],
                    "sponser_image"     => $rows['sponser_image'],
                    "sponser_url"       => $rows['sponser_url']
                    );
    }
    
    echo json_encode($data);  
}

?>