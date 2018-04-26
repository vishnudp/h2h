<?php

  /****** Database Details *********/
    
    // $host      = "localhost"; 
    // $user      = "terapogx_hms"; 
    // $pass      = "hms@123"; 
    // $database  = "terapogx_hms";
    // $con       = mysql_connect($host,$user,$pass);

    $host      = "localhost"; 
    $user      = "root"; 
    $pass      = ""; 
    $database  = "h2hartist";
    $con       = mysql_connect($host,$user,$pass);

    if (!$con) {
        die('Could not connect: ' . mysql_error());
    }

    //echo 'Connected successfully'; 
    
    mysql_select_db($database,$con);  

    /*******************************/

?>