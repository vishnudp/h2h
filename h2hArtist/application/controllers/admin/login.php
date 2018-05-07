<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends MY_Controller {

	function __construct(){
            parent::__construct();
    		 $this->load->model('users','obj_users');
    }


    /**
     * this is a generic function to show html for login to admin area
     * function having no parameter
     * function using template adminlogin
     * function use to login area after successful field validation with captcha 
     * function also check block ip address and login attemp before successful login to admin area   
     * @access public
    */
       
        
	public function index(){	   
	    $this->form_validation->set_rules('username', 'Email/Username', 'required');
		$this->form_validation->set_rules('user_password', 'Password', 'required');
        $this->form_validation->set_rules('userCaptcha', 'Captcha', 'required|callback_check_captch');                
        $userCaptcha = $this->input->post('userCaptcha');
		if ($this->form_validation->run() == false)
		{
		  $random_number = substr(number_format(time() * rand(),0,'',''),0,6);
		  $vals = array(
                'word'      => $random_number,
                'img_path'  => './assets/images/captcha/',
                'img_url'   => base_url().'assets/images/captcha/',
                'font_path' => './assets/fonts/helvetica-condensed-light-webfont.ttf',
                'img_width' => 140,
                'img_height'=> 32,
                'expiration'=> 7200
                );            
            $data['captcha'] = create_captcha($vals);
            $this->session->set_userdata('captchaWord', $data['captcha']['word']);
            $this->template->set('adminlogin');
            $this->template->set_data('index',$data);
            $this->template->load();            
		}
		else{
            $result = false;
            $users_uid   =   $this->input->post('username');
            $users_password   =   $this->input->post('user_password');
            $login_remember   =   $this->input->post('login_remember');            
            $users_failed_login_count = 0;            
            $result = $this->obj_users->checkUser($users_uid,$users_password);
            if($result){
                $this->_authenticate($users_uid,$users_password,$login_remember);                
            }else{
                $block_ip_list_ipaddress = $this->input->ip_address();
                $where = array(
                    'block_ip_list_ipaddress' => $block_ip_list_ipaddress
                    );
                $switch = $this->obj_users->checkRecord($this->obj_users->block_ip_list_table,$where);
                if($switch){
                    $results = $this->obj_users->getRecords($this->obj_users->block_ip_list_table,$where);
                    if($results[0]['login_attempt'] <= $this->config->item('max_login_attempt_allowed')){
                        $login_attempt = $results[0]['login_attempt'] + 1;
                        
                        $saveData = array(
                            'login_attempt' => $login_attempt
                        );                        
                        $this->obj_users->save($this->obj_users->block_ip_list_table,$saveData,$where);
                    }else{
                        $time = time() + $this->config->item('ip_block_time')*60;
                        $saveData = array(
                            'block_ip_list_authentication' => 0,
                            'block_ip_list_time' => $time
                        );
                        $this->obj_users->save($this->obj_users->block_ip_list_table,$saveData,$where);
                        redirect(base_url('blocked'));
                    }                    
                }else{
                    $login_attempt = 1;
                    $block_ip_list_authentication = 1;
                    $block_ip_list_time = time();
                    $saveData = array(
                        'block_ip_list_ipaddress' => $block_ip_list_ipaddress,
                        'login_attempt' => $login_attempt,
                        'block_ip_list_authentication' => $block_ip_list_authentication,
                        'block_ip_list_time' => $block_ip_list_time
                    );
                    $this->obj_users->save($this->obj_users->block_ip_list_table,$saveData);
                }
                $this->messages->add("Provided credential does not match! Please try again!", "error");                
                redirect(base_url('login'));
            }
        }
	}


    /**
     * this is a generic function to check captch if entered captcha by user is valid or not
     * function having single parameter , which is randomly generated captcha value, which have to match with 
     * word provided by user in captch field     
     * @access public
     * @param  string
     * @return boolean
    */
       
    
    public function check_captch($str){
        $word = $this->session->userdata('captchaWord');
        if(strcmp(strtoupper($str),strtoupper($word)) == 0){
            return true;
        }else{
            $this->form_validation->set_message('check_captch', 'Please enter valid security key!');
			return false;
        }
    }
    

    /**
     * this is a generic function to check for aunthentication to login
     * first parameter having information about user id
     * second parameter having information about password
     * third parameter having information if login information already remembered     
     * @access public
     * @param  integer
     * @param  string
     * @param  string
     * @return boolean
    */

    public function _authenticate($users_uid = '',$users_password = '',$login_remember = ''){
        $res = false;
        if(isset($login_remember) && $login_remember != ''){
            setCookies($users_uid,$users_password);
        }      
        if(isset($users_uid) && $users_uid != '' && $users_password != '' && isset($users_password)){
            $salt = $this->obj_users->getSalt($users_uid);
	        $users_password = generateHash($users_password,$salt);
            $whereOR = array('email' => $users_uid);
            $data = $this->obj_users->getRecords($this->obj_users->table, array('username' => $users_uid,'user_password' => $users_password),$whereOR);
            if(!empty($data)){
				$this->session->set_userdata('admin_session_data',$data[0]);
                $this->session->set_userdata('last_login_time',strtotime(date('Y-m-d H:i:s',time())));
                $users_last_login = strtotime(date('Y-m-d H:i:s',time()));
                $login_count = $data[0]['login_count'];
                $login_count = $login_count + 1;
                 /**
                  * Change User status Online
                 */   
                 $logindata = array(
                    'last_login' => $users_last_login,
                    'login_count' => $login_count
                 );
                 $this->obj_users->save($this->obj_users->table,$logindata,array('email' => $this->session->userdata['admin_session_data']['email'],'user_password' => $users_password));
                 /**
                  * Change User status end
                 */
                 $this->session->unset_userdata('captchaWord');
                 redirect(base_url('admin/dashboard'));
            }else{
                $this->messages->add("You do not have permission to access.", "error");
	            redirect(base_url('login'));
			}
           
        }else{
            $this->messages->add("You do not have permission to access.", "error");
            redirect(base_url('login'));
        }
        
    }
}


/* End of file login.php */
/* Location: ./application/controllers/admin/login.php */