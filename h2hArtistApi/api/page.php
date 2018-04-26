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

    case 'get_page_data' :
            get_page_data();
            break;
}


/**  Function to Get patient  **/

function get_page_data() {    
    $data = json_decode(file_get_contents("php://input")); 
    //print_r($data);
    $pageSlug              = $data->pageSlug;
    $qry = mysql_query('SELECT distinct * from tg_static_pages where is_deleted = 0 and page_slug = "'.$pageSlug.'"');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "page_id"              => $rows['page_id'],
                    "page_title"            => $rows['page_title'],
                    "page_description"     => $rows['page_description']
                    );
    }
    
    echo json_encode($data);  
}

?>