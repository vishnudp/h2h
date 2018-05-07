<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Logout extends CI_Controller {
    
  function __construct(){
         parent::__construct();
 		     $this->load->model('users','obj_users');
  }

  /**
   * this is a generic function to set cookie , cache and session parameters for logout 
   * function having no parameter   
   * function use to logout from admin area 
   * function also set user status from  online to offline   
   * @access public
  */

	public function index(){
        session_start();
        session_destroy();
        $this->_no_cache();
        setcookie('users_uid', '', time() - 1*24*60*60);
        setcookie('users_password', '', time() - 1*24*60*60);
        $this->input->set_cookie('users_uid',  time() - 1*24*60*60);
        $this->input->set_cookie('users_password', time() - 1*24*60*60);
        if($this->session->userdata('admin_session_data')){
            $this->change_status_offline();
        }
        $this->session->unset_userdata('admin_session_data');
        unset($this->session->userdata['admin_session_data']);
        $this->session->sess_destroy();
        redirect(base_url('admin'));
    }

    /**
     * this is a generic function to change status from online to offline for a logout user
     * function having no parameter   
     * function use to save status of user to offline after successful logout to db on behalf of user email and password     
    */
       
    function change_status_offline(){        
         $offline = array(
             'last_login' => 0
            );
         $this->obj_users->save($this->obj_users->table,$offline,array('email' => $this->session->userdata['admin_session_data']['email'],'user_password' => $this->session->userdata['admin_session_data']['user_password']));        
    }

    /**
     * this is a generic function to set header for no cache after logout
     * function having no parameter
    */    
    
    function _no_cache(){
        header("Expires: Wed, 4 Jul 2012 05:00:00 GMT");
        header('Cache-Control: no-store, no-cache, must-revalidate');
        header('Cache-Control: post-check=0, pre-check=0',false);
        header('Pragma: no-cache');
    }
}

/* End of file logout.php */
/* Location: ./application/controllers/logout.php */