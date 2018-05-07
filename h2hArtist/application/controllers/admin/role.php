<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Role extends MY_Controller {

	var $data      = array();
	var $error     = array();
	var $template  = array();
	var $middle     = ''; 
	var $navigation  = '';
	var $breadcrumbs    = '';
    var $sidebar = '';

    public function __construct() {
        parent::__construct();
        $this->load->model('roles','obj_roles');
		$this->admin_session_data = $this->session->userdata("admin_session_data");
		$this->load->model('privilege');    
        $this->load->library('GCMLib');
        $current_controller = $this->router->class;
        $this->db->query("SET SESSION time_zone = '+05:30'");
        date_default_timezone_set('Asia/Calcutta');
        $this->load->library('ckeditor');
        $this->load->library('ckfinder');
    }
     
    /**
       * this is a generic function to show all user role
       * function having no parameter   
       * function using roles module to show all user roles   
       * @access public
    */
        
	public function index()
	{		
		$this->privilege->check_privileges();
        $this->template->set('adminlayout');
        $middle['title'] 	= 'All User Roles';
        $middle['db_table'] = $this->obj_roles->table;
        $middle['fieldname']= 'role_is_active';
        $middle['unique_key_field'] = 'role_id';
        $middle['role_id']          = $this->admin_session_data['role_id'];
		$middle['result'] 	= $this->obj_roles->show_all_active_roles();
        $middle['layout']   = 'admin/role/index';
              
        $this->template->set_data('middle',$middle);
        $this->template->load();
	}
    
	/**
	 * this is a generic function to save data about role in db
	 * function having no parameter
	 * function using view to add role at location admin/role/add.php
 	 * @access public
	 * function will fill all field values for role after successful field validation
	*/

    public function add()
	{

		$this->privilege->check_privileges();
    	$this->template->set('adminlayout');


    	$this->ckeditor->basePath = base_url().'assets/js/ckeditor/';
		$this->ckeditor->config['toolbar'] = array(
		                array( 'Source', '-', 'Bold', 'Italic', 'Underline', '-','Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo','-','NumberedList','BulletedList' )
		                                                    );
		$this->ckeditor->config['language'] = 'it';
		$this->ckeditor->config['width'] = '730px';
		$this->ckeditor->config['height'] = '300px';            

		//Add Ckfinder to Ckeditor
		$this->ckfinder->SetupCKEditor($this->ckeditor,'../../assets/js/ckfinder/');
        $middle['formTitle']    = 'Add User Role';
        $middle['buttonText']   = 'Add';		
        $middle['role_title']           = $this->input->post('role_title');
    	$middle['role_description']    = $this->input->post('role_description');  
    	$middle['role_id']          	= $this->admin_session_data['role_id'];
    	$middle['role_is_active']      = $this->input->post('role_is_active');       
        $config = array(
               array(
                     'field'   => 'role_title',
                     'label'   => 'Role Name',
                     'rules'   => 'trim|required|xss_clean|is_unique[role.role_title]'
                  ),
               array(
                     'field'   => 'role_description',
                     'label'   => 'Role Description',
                     'rules'   => 'trim|required|xss_clean'
                  )
            );
		
        $this->form_validation->set_rules($config);        
        if ($this->form_validation->run() == FALSE)
		{
			 $middle['layout'] = 'admin/role/add';
		}
		else
		{              
		   $role_title           = $this->input->post('role_title');
           $role_description     = $this->input->post('role_description');
		   $role_is_active       = $this->input->post('role_is_active');	
		   $save_data = array(
					'role_title'=>$role_title,
					'role_description'=>$role_description,
					'role_is_active'=>$role_is_active,
					'role_is_deleted'=>'0',
					'role_created_at'=> $this->obj_roles->currentDateTime, 
					);
			
			$this->obj_roles->save($this->obj_roles->table,$save_data);			
	       	$this->session->set_flashdata('message','User Role added successfully.');
			redirect('admin/role');
		} 
		$this->template->set_data('middle',$middle);
    	$this->template->load(); 
       
	}
	
	/**
	 * this is a generic function to update data about role in db
	 * function having a single parameter having id of the role which have to update
	 * function using view to update role at location admin/role/add.php
 	 * @access public
 	 * @param  integer
	 * function will fill all field values for role after successful field validation
	*/   
	
	public function edit($id){	
		$this->privilege->check_privileges();
        
        if(empty($id)){         
            $this->session->set_flashdata('error_message','Record not found.');
            redirect('admin/role','refresh');
        }
        $this->template->set('adminlayout');
        $this->ckeditor->basePath = base_url().'assets/js/ckeditor/';
		$this->ckeditor->config['toolbar'] = array(
		                array( 'Source', '-', 'Bold', 'Italic', 'Underline', '-','Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo','-','NumberedList','BulletedList' )
		                                                    );
		$this->ckeditor->config['language'] = 'it';
		$this->ckeditor->config['width'] = '730px';
		$this->ckeditor->config['height'] = '300px';            

		//Add Ckfinder to Ckeditor
		$this->ckfinder->SetupCKEditor($this->ckeditor,'../../assets/js/ckfinder/');
		$data = array();
        $middle['formTitle']    = 'Edit User Role';
        $middle['buttonText']   = 'Update';
        $middle['role_id']          = $this->admin_session_data['role_id'];
        if(isset($id)){
       	 $data = $this->obj_roles->edit_role($id);
       	 $middle['role_title']           = $data[0]['role_title'];
         $middle['role_description']     = $data[0]['role_description'];
         $middle['role_is_active']       = $data[0]['role_is_active'];        
		         
        	$config = array(
               array(
                     'field'   => 'role_title',
                     'label'   => 'Role Name',
                     'rules'   => 'trim|required|xss_clean'
                  ),
               array(
                     'field'   => 'role_description',
                     'label'   => 'Role Description',
                     'rules'   => 'trim|required|xss_clean'
                  )				   
            );

        $this->form_validation->set_rules($config);        
        if ($this->form_validation->run() == FALSE)
		{
			$middle['layout'] = 'admin/role/add';
            $this->template->set_data('middle',$middle);
            $this->template->load(); 
		}
		else
		{   
            $role_title        = $this->input->post('role_title');
            $role_description  = $this->input->post('role_description');
            $role_is_active    = $this->input->post('role_is_active');
			$save_data = array(
					'role_title'=>$role_title,
					'role_description'=>$role_description,
					'role_is_active'=>$role_is_active,
					'role_is_deleted'=>'0'
					);
           	$this->obj_roles->update_role($id,$save_data);			
	       	$this->session->set_flashdata('message','User role updated successfully.');
			redirect('admin/role');
		}
       }else{
            $middle['layout'] = 'admin/bloodgroup/add';
            $this->template->set_data('middle',$middle);
            $this->template->load(); 
       } 
	
	}
	
	/**
	 * this is a generic function to delete data about role from db
	 * function having a single parameter having id of the role which have to delete	 
 	 * @access public
 	 * @param  integer
	 * function will delete a single role having id passed in function as parameter
	*/

	public function delete($id){
        $data['role_is_deleted'] = '1';
		$this->obj_roles->delete_role($id,$data);
		$this->session->set_flashdata('message','User deleted successfully.');
		redirect('admin/role');
	}
    	
}

/* End of file role.php */
/* Location: ./application/controllers/admin/role.php */