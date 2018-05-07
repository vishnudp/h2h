<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 /**
  * Template
  *
  * WordPress like template for CodeIgniter
  *
  * @package        Template
  * @version        0.1.0
  * @author        WebInOne
  * @link            http://www.webduos.com/codeigniter-template-library/
  * @copyright        Copyright (c) 2011, WebInOne
  * @license        http://opensource.org/licenses/mit-license.php MIT Licensed
  *
  */

  class Template
  {
      private $ci;
      private $tp_name;
      private $data = array();

      public function __construct() {
          $this->ci = &get_instance();
      }

      public function set($name='') {
          $this->tp_name = $name;
      }

      public function load($name = 'index') {
          $this->load_file($name);
      }

      public function get_header($name) {
          if(isset($name)) {
              $file_name = "header-{$name}.php";
              $this->load_file($file_name);
          }
          else {
              $this->load_file('header');
          }
      }
      
      public function get_middle($name) {
          if(isset($name)) {
              $file_name = "middle-{$name}.php";
              $this->load_file($file_name);
          }
          else {
              $this->load_file('middle');
          }
      }
      
      
      public function get_navigation($name) {
          if(isset($name)) {
              $file_name = "navigation-{$name}.php";
              $this->load_file($file_name);
          }
          else {
              $this->load_file('navigation');
          }
      }
      
      
      public function get_breadcrumbs($name) {
          if(isset($name)) {
              $file_name = "breadcrumbs-{$name}.php";
              $this->load_file($file_name);
          }
          else {
              $this->load_file('breadcrumbs');
          }
      }
      
       public function get_banner($name) {
          if(isset($name)) {
              $file_name = "banner-{$name}.php";
              $this->load_file($file_name);
          }
          else {
              $this->load_file('banner');
          }
      }
      

      public function get_sidebar($name) {
          if(isset($name)) {
              $file_name = "sidebar-{$name}.php";
              $this->load_file($file_name);
          }
          else {
              $this->load_file('sidebar');
          }
      }

      public function get_footer($name) {
          if(isset($name)) {
              $file_name = "footer-{$name}.php";
              $this->load_file($file_name);
          }
          else {
              $this->load_file('footer');
          }
      }

      public function get_template_part($slug, $name) {
          if(isset($name)) {
              $file_name = "{$slug}-{$name}.php";
              $this->load_file($file_name);
          }
          else{
              $this->load_file($slug);
          }
      }

      public function load_file($name)
      {
          if($this->get_data($name))
          {
              $data = $this->get_data($name);
              $this->ci->load->view($this->tp_name.'/'.$name,$data);
          }
          else {
              $this->ci->load->view($this->tp_name.'/'.$name);
          }
      }

      public function set_data($key, $data) {
          $this->data[$key] = $data;
      }

      public function get_data($key) {
          if(isset($this->data[$key])) {
              return $this->data[$key];
          }
          else {
              return false;
          }
      }
      
      public function checkSession() {
            
          if(!$this->ci->session->userdata("admin_session_data")) {
              $this->ci->session->set_flashdata('message' ,'Your login session expired! Please login again.');
			  redirect('admin/login', 'refresh');
          }
          else {
              return true;
          }
      }
  }
?>