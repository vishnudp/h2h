<?php

/**
 * @author gencyolcu
 * @copyright 2014
 */

class Myclass{
    function index(){
        $CI =& get_instance();
        $CI->load->helper('custom_helper');
        check_blocked_ip(); die;                        
            
    }
    
}

?>