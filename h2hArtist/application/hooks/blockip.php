<?php
 
// Name of Class as mentioned in $hook['post_controller]
class Blockip {
 
    function __construct() {
       // Anything except exit() :P
    }
 
    // Name of function same as mentioned in Hooks Config
    function logQueries() {
 
        $CI = & get_instance();
        $filepath = APPPATH . 'logs/Query-log-' . date('Y-m-d') . '.sql'; // Creating Query Log file with today's date in application/logs folder
        $handle = fopen($filepath, "a+");                 // Opening file with pointer at the end of the file
 
        $times = $CI->db->query_times;                   // Get execution time of all the queries executed by controller
        foreach ($CI->db->queries as $key => $query) {
            $sql = $query . " \n Execution Time:" . $times[$key]; // Generating SQL file alongwith execution time
            fwrite($handle, $sql . "\n\n");              // Writing it in the log file
        }
 
        fclose($handle);      // Close the file
    }
    
    function checkip(){
        $CI = & get_instance();
        $CI->db->select('*');
        $CI->db->from('wbt_block_ip_list');
        $query = $CI->db->get();
        $data = $query->result_array();
       
    }
 
}
 


?>