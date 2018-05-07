<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Forgotpassword extends MY_Controller {

	function __construct(){
            parent::__construct();
    		 $this->load->model('users','obj_users');
    }


    /**
     * this is a generic function to show html for forgot password
     * function having no parameter
     * function using index view at location admin/forgotpassword
     * function use to send link to user email to reset password after successful field validation 
     * @access public
    */
        
	public function index(){
	   $config = array(
              array(
                     'field'   => 'email',
                     'label'   => 'Email',
                     'rules'   => 'required|trim|xss_clean|valid_email'
                  )
            );            
        $this->form_validation->set_rules($config);
		if ($this->form_validation->run() == FALSE)
		{		  
			$this->template->set('adminlogin');
            $this->template->get_template_part('adminlogin','forgot-password');            
		}
		else{            
            $email     = $this->input->post('email');
            $where = array('email' => $email,'is_active' => 1,'is_deleted' => 0);
            $switch = $this->obj_users->checkRecord($this->obj_users->table,$where);
            if($switch){
                $result = $this->obj_users->getRecords($this->obj_users->table,$where);
                if(isset($result[0])){
                    $first_name = $result[0]['first_name'];
                    $last_name = $result[0]['last_name'];
                    $email = $result[0]['email'];
                    $code = $result[0]['key_code'];
                    if(empty($code)){
                        $code = substr(number_format(time() * rand(),0,'',''),0,6);
                    }
                  $auth_key  = generateHash($code);
                    $save_data = array(
                        
                        'key_code' => $code,
                        'auth_key' => $auth_key,
                        'updated_time' => $this->obj_users->currentDateTime
                    );
                    
                    $this->obj_users->save($this->obj_users->table,$save_data,$where);  
                }                
                $this->email->set_mailtype("html");
    			$this->email->from($this->config->item('admin_email_from'), 'Reset password link for wbt admin');
    			$this->email->to($email);
    			$this->email->cc($this->config->item('admin_email_cc'));
    			$this->email->bcc($this->config->item('admin_email_bcc'));    			
    			$this->email->subject('Reset Password');
    			$fullname = $first_name.' '.$last_name;
    			$restlink = base_url().'admin/forgotpassword/resetpassword/'.$code;
                $body = array('fullname' => $fullname,'restlink' => $restlink);
                /* Send Inquiry in mail */
                $messagebody = $this->parser->parse('emailtemplate/resset-password-email', $body, true);               
    			$this->email->message($messagebody);
    			$this->email->send();
                $this->messages->add("Password reset link sent to your email, please check your inbox to continue login.", "success");
                redirect(base_url().'admin/forgotpassword');                
            }else{
                $this->messages->add("Entered email id does not exist in our database!", "error");
                redirect(base_url().'admin/forgotpassword');
            }            
		 }
	   
    }
    

    /**
     * this is a generic function to show html for reset password
     * function having single parameter by name code which generated from forgot password as a unique number for a user to reset their password    
     * function use to reset password for a user after successful field validation for new password 
     * @access public
    */
    
    public function resetpassword($code = ''){
        if(empty($code)){
            redirect(base_url().'admin/login');
        }
         $config = array(
             array(
                     'field'   => 'user_password',
                     'label'   => 'Password',
                     'rules'   => 'trim|required|xss_clean|min_length[6]|matches[user_password_confirm]'
                  ),
               array(
                     'field'   => 'user_password_confirm',
                     'label'   => 'Password Confirmation',
                     'rules'   => 'required|trim|xss_clean|min_length[6]'
                  )
            );
            
        $this->form_validation->set_rules($config);

		if ($this->form_validation->run() == FALSE) {
		  
    			$this->template->set('adminlogin');
                $this->template->get_template_part('adminlogin','reset-password');
                
    		}else{
    		    $user_password  = $this->input->post('user_password');
                $salt = $this->obj_users->getSalt_reset($code);
                $auth_key = generateHash($code,$salt);
                if(isset($auth_key)){
                    $where = array('auth_key' => $auth_key,'is_active' => 1,'is_deleted' => 0);
                    $switch = $this->obj_users->checkRecord($this->obj_users->table,$where);
                    if($switch){
                        $save_data = array(
                        'user_password' => generateHash($user_password),
                        'auth_key' => '',
                        'updated_time' => $this->obj_users->currentDateTime
                    );
                    $this->obj_users->save($this->obj_users->table,$save_data,$where);
                    $this->messages->add("Your password has been reset successfully.", "success");
                    redirect(base_url('admin'));
                    
                    }else{
                        $this->messages->add("Your password reset link expired! Please try again!", "error");
                        redirect(base_url('admin'));
                    }
                }
          }
    }
    
}

/* End of file forgotpassword.php */
/* Location: ./application/controllers/admin/forgotpassword.php */