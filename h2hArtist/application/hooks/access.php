<?php
class Access{
 function auth(){
  $local_CI =&get_instance();
  $local_CI->load->helper('custom_helper');
  if (!isset($local_CI->session)){
        $local_CI->load->library('session');
  }
  $local_CI->load->library('router');
  check_blocked_ip();
  
  /*
  $baseURL = $GLOBALS['CFG']->config['base_url'];
  require 'levels.php'; // this is where the permissions defined 
  $class = $local_CI->router->fetch_class();
  $method = $local_CI->router->fetch_method();
  
  if($noLogin[$class][$method] || $local_CI->session->userdata('usertype_id') == 1){ //admin always true
      return true;
    }
    else{
      if($local_CI->session->userdata('usertype_id')){
        if(!$privs[$local_CI->session->userdata('usertype_id')][$class][$method]){ //if not exists = allowed
          return true;
        }
        else{
         redirect($baseURL.'/index/not_allowed');  //redirect to not-authorized page
        }
      }
      else{
        redirect($baseURL.'/'); //redirect login page/index page
      }
    }
    */
 }
}