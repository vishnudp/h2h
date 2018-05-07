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

    case 'get_artist_category' :
            get_artist_category();
            break;
}


/**  Function to Get patient  **/

function get_artist_category() {    
    
    $qry = mysql_query('SELECT distinct * from tg_artist_category where artist_category_is_deleted = 0 order by artist_category_id desc');
    $data = array();
    while($rows = mysql_fetch_array($qry))
    {
        $data[] = array(
                    "artist_category_id"              => $rows['artist_category_id'],
                    "artist_category_name"            => $rows['artist_category_name'],
                    "artist_category_image"     => $rows['artist_category_image'],
                    "artist_category_slug"       => $rows['artist_category_slug']
                    );
    }
    
    echo json_encode($data);  
}

?>