<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller 
 { 
  //set the class variable for layout
	var $data      = array();
	var $error     = array();
	
	var $template  = array();
	var $middle     = ''; 
	var $navigation  = '';
	var $breadcrumbs    = '';
    var $sidebar = '';
    var $sidebarLeft = '';
    var $sidebarRight = '';
	var $user_account_session_data = array();
	var $custom_config = array();

   function MY_Controller()
	{
	   parent::__construct();
	   $this->custom_config = $this->config->config;
	} 

	//Load front end layout	
	public function layout(){
      #$this->users_is_login();
	  if (!$this->middle){
		 $this->middle = 'layout/middle';
	  }
      $this->template['sidebar']     = $this->load->view('layout/sidebar', $this->data, true);
	  $this->template['header']     = $this->load->view('layout/header', $this->data, true);
      $this->template['middle']     = $this->load->view($this->middle, $this->data, true);
      $this->template['footer']     = $this->load->view('layout/footer', $this->data, true);
      $this->load->view('layout/index', $this->template);
	}
    
    
    //Load front end common layout	
	public function adminLayout(){
	  $this->check_user_login();
      
	  $this->users_session_data = $this->session->userdata('users_session_data');
	  
	  if (!$this->middle){
		 $this->middle = 'admin/common/middle';
	  }
        $this->template['header']         = $this->load->view('admin/common/header', $this->data, true);
        $this->template['navigation']     = $this->load->view('admin/common/navigation', $this->data, true);
        $this->template['breadcrumbs']    = $this->load->view('admin/common/breadcrumbs', $this->data, true);
        $this->template['middle']         = $this->load->view($this->middle, $this->data, true);
        $this->template['sidebar']        = $this->load->view('admin/common/sidebar', $this->data, true);
        $this->template['footer']         = $this->load->view('admin/common/footer', $this->data, true);
      $this->load->view('admin/common/index', $this->template);
	}
	
	//check user is login or not
	public function check_user_login(){   
		if(!$this->session->userdata("admin_session_data")){
			$this->session->set_flashdata('message' ,'Your login session expired! Please login again');
			redirect('admin', 'refresh');
		}else{
			return true;
		}
	}
    
	
	//Ajax Layout
	public function ajax_layout(){
	   $this->load->view('layout/ajax', $this->data);
	}
	
     //load Ckeditor....................
     //$path is relative path of ckeditor
     //$width is width of ckeditor 
        
	 function editor($path,$width){
	  //Load Library For Ckeditor.........
	  $this->load->library('ckeditor');
	  $this->load->library('ckFinder');
	  //configure base path of ckeditor folder 
	  $this->ckeditor->basePath = base_url().'assets/js/ckeditor/';
	  $this->ckeditor-> config['toolbar'] = 'Full';
	  $this->ckeditor->config['language'] = 'en';
	  $this->ckeditor-> config['width'] = $width;
	  //configure ckfinder with ckeditor config 
	  $this->ckfinder->SetupCKEditor($this->ckeditor,$path); 
	 }	
}