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

    case 'get_artists_by_category' :
    get_artists_by_category();
            break;
}


/**  Function to Get patient  **/

function get_artists_by_category() {  
    $data = json_decode(file_get_contents("php://input")); 
    if ($data) {
        $artist_category              = $data->artist_category;
        $user_array = array();
        $qry = mysql_query('select user_id, user_role_id, user_artist_category from tg_user_other_info');
        $data = array();
        while($rows = mysql_fetch_array($qry))
        {
            $data[] = array(
                        "user_id"                           => $rows['user_id'],
                        "user_role_id"                           => $rows['user_role_id'],
                        "user_artist_category"              => json_decode($rows['user_artist_category'])
                        );
                        
        }
        for( $i=0; $i< count($data); $i++ ) {
           if (filter_by_key($data[$i]['user_artist_category'], 'artist_category_id', 1)) {
             array_push($user_array , $data[$i]['user_id']);
           }
        }
        if(!empty($user_array)) {
            get_artist_data($user_array);
        }
        
    }
    
}

function get_artist_data($user_array) {
    $qry = mysql_query('select tupi.user_profile_title, tuli.user_logo_info from tg_user_personal_info as tupi left join tg_user_logo_info as tuli on tupi.user_id = tuli.user_id where tupi.user_id IN("'.implode(',',$user_array).'")');
        $data = array();
        while($rows = mysql_fetch_array($qry))
        {
            $data[] = array(
                        "user_logo_info" => $rows['user_logo_info'],
                        "user_profile_title" => $rows['user_profile_title']
                        );
        }
        
        echo json_encode($data); 
}



function filter_by_key($array, $member, $value) {
    $filtered = 0;
    foreach($array as $k => $v) {
       if($v->$member == $value) {
        $filtered = 1;
       }          
    }
    return $filtered;
 }











?>