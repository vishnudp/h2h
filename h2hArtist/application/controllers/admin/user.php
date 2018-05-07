<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends MY_Controller {

  function __construct(){
        parent::__construct();
        $this->load->model('users','obj_users');
        $this->load->model('privilege');
        $this->load->library('pagination');
  }

  /**
       * this is a generic function to show all users
       * function having no parameter   
       * function using users module to show all users respect to their role
       * @access public
  */
        
	public function index($offset = 0){
 	      $middle['result'] = array();
	      //$this->privilege->check_privileges();
        $role_title = $this->input->get('role_title');
        $this->template->set('adminlayout');
        $middle['role_title']       = $role_title;
	      $middle['db_table']         = $this->obj_users->table;
        $middle['fieldname']        = 'is_active';
        $middle['unique_key_field'] = 'user_id';
        $where = array(
            'A.is_deleted' => 0
        );
        if(!empty($role_title)){
           $where = array(
                'A.is_deleted' => 0,
                'B.role_title' => $role_title
            ); 
        }
		    $middle['result'] = $this->obj_users->show_All_users($where);        
        $where_role_title = array(
            'role_is_deleted' => 0,
            'role_is_active' => 1
        );
        $custome_query = false;
        $per_page = 5;
        $middle['result'] = $this->obj_users->search_users($where,$custome_query,$per_page,$offset,false, false,false);
        $middle['users_result_count'] = $this->obj_users->search_users($where,$custome_query, false, false, false, true, false);       
        $config['total_rows'] = $middle['users_result_count'];
        $config['per_page']= $per_page;
        $config['base_url']= base_url().'/admin/user/index'; 
        $config['suffix'] = '?'.http_build_query($_GET, '', "&");
        $config['first_url'] = $config['base_url'].$config['suffix'];
        $this->pagination->initialize($config);
        $middle['paginglinks'] = $this->pagination->create_links();
        $middle['offset'] = $offset;
        $middle['per_page'] = $per_page; 
        $middle['role_title_array'] = $this->obj_users->getRecords($this->obj_users->table_role,$where_role_title);
        $middle['layout'] = 'admin/users/index';
        $this->template->set_data('middle',$middle);
        $this->template->load();
    }

    /**
     * this is a generic function to save data about users in db
     * function having no parameter
     * function using view to add users at location admin/users/add.php
     * @access public
     * function will fill all field values for users after successful field validation
     * function also send an email to user
    */
    
    public function add(){
        //$this->privilege->check_privileges();
        $this->template->set('adminlayout');
        $middle['formTitle']    = 'Add User';
        $middle['legendText']   = 'User Information';
        $middle['buttonText']   = 'Add'; 
        
        $middle['first_name']     = $this->input->post('first_name');
        $middle['last_name']      = $this->input->post('last_name');
        $middle['username']       = $this->input->post('username');
        $middle['user_dob']       = $this->input->post('user_dob');
        $middle['email']          = $this->input->post('email');
        $middle['user_password']  = $this->input->post('user_password');
        $middle['about']          = $this->input->post('about');
        $middle['role_id']        = $this->input->post('role_id');
        $middle['is_active']      = $this->input->post('is_active');       
        $config = array(
            array(
                 'field'   => 'first_name',
                 'label'   => 'First Name',
                 'rules'   => 'trim|required|alpha'
              ),
           array(
                 'field'   => 'email',
                 'label'   => 'Email',
                 'rules'   => 'trim|required|callback_checkexistance|valid_email'
              ),
           array(
                 'field'   => 'last_name',
                 'label'   => 'Last Name',
                 'rules'   => 'trim|required|alpha'
              ),
           array(
                 'field'   => 'username',
                 'label'   => 'Username',
                 'rules'   => 'trim|required|callback_checkexistance_username'
              ),
           array(
                 'field'   => 'user_password',
                 'label'   => 'Password',
                 'rules'   => 'trim|required|matches[reg_password_repeat]|min_length[6]'
              ),
           array(
                 'field'   => 'reg_password_repeat',
                 'label'   => 'Password',
                 'rules'   => 'trim|required'
              ),
           array(
                 'field'   => 'role_id',
                 'label'   => 'Select Role',
                 'rules'   => 'trim|required'
              )
        );            
        
        $this->form_validation->set_rules($config); 
               
        if ($this->form_validation->run() == FALSE){
            $middle['layout'] = 'admin/users/add';
		  }else{
		      $first_name = $this->input->post('first_name');
              $last_name     = $this->input->post('last_name');
              $username      = $this->input->post('username');
              $user_dob      = $this->input->post('user_dob');
              $email         = $this->input->post('email');
              $user_password = $this->input->post('user_password');
              $about         = $this->input->post('about');
              $role_id       = $this->input->post('role_id');
              $is_active     = $this->input->post('is_active');
              $save_data     = array(
                                'first_name' => $first_name,
                                'last_name' => $last_name,
                                'username' => $username,
                                'user_dob' => $user_dob,
                                'email' => $email,
                                'user_password' => generateHash($user_password),
                                'about' => $about,
                                'role_id' => $role_id,
                                'is_active' => $is_active,
                                'is_deleted' => 0
                              );
		      $last_inserted_id = $this->obj_users->save($this->obj_users->table,$save_data);
              
              $fullname  = $first_name.' '.$last_name;
              $loginlink = base_url().'admin';
              $logolink  = base_url().'assets/images/logo.png'; 
              $title     = 'Administration account creation.';
              $text      = 'Your account has been created successfully.<br /> <br />You can log in with below url: <br /><a href="'.$loginlink.'" title="login">'.$loginlink.'</a><br /><br />The following credential:<br />Username: '.$username.' <br />Password: '.$user_password.'<br /><br />Please let us know if we can be of any further assistance.<br /><br /> Thanks & Regards,<br />'.$this->config->item('administrator');
              $body      = array('fullname' => $fullname,'title' => $title,'text' => $text,'logo' => $logolink);

                /* Send Inquiry in mail */

              $messagebody = $this->parser->parse('emailtemplate/common', $body, true);
              $to          = $email;
              $subject     = 'Administration account creation.';
              $name        = $fullname;
              $cc          = $this->config->item('admin_email_cc');
              $bcc         = $this->config->item('admin_email_bcc');
              $this->email->message( $messagebody );
              $this->obj_users->sendEmail($to,$subject,$messagebody,$name);
             
              $this->messages->add('User Added Successfully.','success'); 	          
			        redirect('admin/user');
            }        
              $this->template->set_data('middle',$middle);
              $this->template->load();
      }
      
      /**
       * this is a generic function to check unique title for user to add for email or unique email
       * function having single parameter title of email to check for existance 
       * @access public
       * @param string
       * @return boolean
      */   
        
      function checkexistance($title){
        $where = array(
            'email' => $title,
            'is_deleted' => 0
        );
        $switch = $this->obj_users->checkRecord($this->obj_users->table,$where);
       	if ($switch)
    		{
    			$this->form_validation->set_message('checkexistance', 'The %s field must contain a unique value.');
    			return FALSE;
    		}
    		else
    		{
    			return TRUE;
    		}
      }
      

      /**
       * this is a generic function to check unique title for user to add for username or unique username
       * function having single parameter title of username to check for existance 
       * @access public
       * @param string
       * @return boolean
      */   
      
      function checkexistance_username($username){
        $where = array(
            'username' => $username,
            'is_deleted' => 0
        );
        $switch = $this->obj_users->checkRecord($this->obj_users->table,$where);
       	if ($switch)
    		{
    			$this->form_validation->set_message('checkexistance_username', 'The %s field must contain a unique value.');
    			return FALSE;
    		}
    		else
    		{
    			return TRUE;
    		}
      }
        
    /**
     * this is a generic function to update data about user in db
     * function having a single parameter having id of the user which have to update
     * function using view to update subject at location admin/users/edit.php
     * @access public
     * @param  integer
     * function will fill all field values for users,after successful field validation
    */      
    
    public function edit($id = ''){
		    //$this->privilege->check_privileges();
        if(empty($id) || !is_numeric($id) || $id == 1){
            redirect(base_url('admin/user'));
        }
        $this->template->set('adminlayout');

        ############## Get user Info ##########################
        
        $where = array('is_deleted' =>0,'user_id' => $id);
        $result = $this->obj_users->getRecords($this->obj_users->table,$where);
        if(!empty($result[0])){
            $middle['first_name']      = $result[0]['first_name'];
            $middle['last_name']       = $result[0]['last_name'];
            $middle['email']           = $result[0]['email'];
            $middle['username']        = $result[0]['username'];
            $middle['user_password']   = $result[0]['user_password'];
            $middle['role_id']         = $result[0]['role_id'];
            $middle['user_dob']        = $result[0]['user_dob'];
            $middle['about']           = $result[0]['about'];
            $middle['is_active']       = $result[0]['is_active'];
            $user_id                   = $result[0]['user_id'];
        }
        
            $middle['formTitle']    = 'Edit User';
            $middle['legendText']   = 'User Information';
            $middle['buttonText']   = 'Update';        
            $config = array(
                array(
                     'field'   => 'first_name',
                     'label'   => 'First Name',
                     'rules'   => 'trim|required|alpha'
                  ),
               array(
                     'field'   => 'email',
                     'label'   => 'Email',
                     'rules'   => 'trim|required|valid_email'
                  ),
               array(
                     'field'   => 'last_name',
                     'label'   => 'Last Name',
                     'rules'   => 'trim|required|alpha'
                  ),
               array(
                     'field'   => 'username',
                     'label'   => 'Username',
                     'rules'   => 'trim'
                  ),
               array(
                     'field'   => 'user_password',
                     'label'   => 'Password',
                     'rules'   => 'trim|matches[reg_password_repeat]'
                  ),
               array(
                     'field'   => 'reg_password_repeat',
                     'label'   => 'Repeat Password',
                     'rules'   => 'trim'
                  ),
               array(
                     'field'   => 'role_id',
                     'label'   => 'Select Role',
                     'rules'   => 'trim|required'
                  )
            );            
        
            $this->form_validation->set_rules($config); 
                   
            if ($this->form_validation->run() == FALSE){
                $middle['layout'] = 'admin/users/edit';
    		    }else{
    		          $first_name      = $this->input->post('first_name');
                  $last_name       = $this->input->post('last_name');
                  $username        = $this->input->post('username');
                  $user_dob        = $this->input->post('user_dob');
                  $email           = $this->input->post('email');
                  $user_password   = $this->input->post('user_password');
                  $about           = $this->input->post('about');
                  $role_id         = $this->input->post('role_id');
                  $is_active       = $this->input->post('is_active');
                  if(!empty($user_password)){
                    $user_password = generateHash($user_password);
                  }
                  else{
                    $user_password = $middle['user_password'];
                  }
                  $save_data = array(
                    'first_name' => $first_name,
                    'last_name' => $last_name,
                    'username' => $username,
                    'user_dob' => $user_dob,
                    'email' => $email,
                    'user_password' => $user_password,
                    'about' => $about,
                    'role_id' => $role_id,
                    'is_active' => $is_active,
                    'is_deleted' => 0
                  );
                  if(!empty($user_id)){
                    $where = array('user_id' => $user_id);
                    $last_inserted_id = $this->obj_users->save($this->obj_users->table,$save_data,$where);
                  }              
                 $this->messages->add('User Updated Successfully.','success'); 	          
            		 redirect('admin/user');
              }        
                  $this->template->set_data('middle',$middle);
                  $this->template->load();
  }

  /**
     * this is a generic function to view details of a user
     * function having no parameter
     * function using view see details of user at location admin/users/user-profile
     * @access public   
    */  
    
	public function profile(){
		    //$this->privilege->check_privileges();
		    $this->template->set('adminlayout');
        $user_id = $this->session->userdata['admin_session_data']['user_id'];

        ############## Get user Info ##########################
        
        $where = array('is_deleted' =>0,'user_id' => $user_id);
        $result = $this->obj_users->getRecords($this->obj_users->table,$where);
        if(!empty($result[0])){
            $middle['first_name']       = $result[0]['first_name'];
            $middle['profile_image']    = $result[0]['profile_image'];
            $middle['last_name']        = $result[0]['last_name'];
            $middle['email']            = $result[0]['email'];
            $middle['username']         = $result[0]['username'];
            $middle['user_password']    = $result[0]['user_password'];
            $middle['role_id']          = $result[0]['role_id'];
            $middle['user_dob']         = $result[0]['user_dob'];
            $middle['about']            = $result[0]['about'];
            $middle['is_active']        = $result[0]['is_active'];
            $middle['fullname']         = $result[0]['first_name'].' '.$result[0]['last_name'];
            $user_id                    = $result[0]['user_id'];
        }
  
        $middle['layout'] = 'admin/users/user-profile';
        $this->template->set_data('middle',$middle);
        $this->template->load();
    }

    /**
     * this is a generic function to delete data about user from db
     * function having a single parameter having id of the user which have to delete  
     * @access public
     * @param  integer
     * function will delete a single user having id passed in function as parameter
    */ 

    public function delete($id){        
        $this->obj_users->save($this->obj_users->table,array('is_deleted'=> 1),array('user_id' => $id ));
        $this->session->set_flashdata('message','User Deleted Successfully.');
        redirect('admin/user','refresh');
    } 
}

/* End of file user.php */
/* Location: ./application/controllers/admin/user.php */