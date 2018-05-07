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

    case 'get_language_data' :
            get_language_data();
            break;
}


/**  Function to Get patient  **/

function get_language_data() {  
    $qry = mysql_query('SELECT distinct * from tg_language where language_is_deleted = 0');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "language_id"              => $rows['language_id'],
                    "language_title"            => $rows['language_title'],
                    "language_description"     => $rows['language_description']
                    );
    }
    
    echo json_encode($data);  
}

?>