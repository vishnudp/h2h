<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sponser extends MY_Controller {

	var $data      = array();
	var $error     = array();
	var $template  = array();
	var $middle     = ''; 
	var $navigation  = '';
	var $breadcrumbs    = '';
    var $sidebar = '';
	
	var $admin_session_data = array();
   	var $upload_data = array();

    public function __construct() {
        parent::__construct();
        $this->load->model('sponsers','obj_sponser');
		$this->admin_session_data = $this->session->userdata("admin_session_data");
		$this->load->model('privilege');		
    }

    /**
       * this is a generic function to show all sponsors
       * function having no parameter   
       * function using sponsors module to show all sponsors list
       * @access public
    */
    
	public function index(){
		#$this->privilege->check_privileges();
        $this->template->set('adminlayout');
		$middle['title'] = 'All Sponsors';
		$middle['db_table'] = $this->obj_sponser->table;
		$middle['fieldname'] = 'sponser_is_active';
		$middle['result'] = $this->obj_sponser->show_all_sponser(array('sponser_is_deleted'=> '0'));
		$middle['layout'] = 'admin/sponser/index';
        $this->template->set_data('middle',$middle);
		$this->template->load();
	}

	/**
	 * this is a generic function to save data about sponsor in db
	 * function having no parameter
	 * function using view to add sponsor at location admin/sponsor/add.php
 	 * @access public
	 * function will fill all field values for sponsor and upload image for sponsor after successful field validation
	*/

    public function add(){
		#$this->privilege->check_privileges();
        $this->template->set('adminlayout');
        $middle['formTitle']    		   = 'Add Sponsor';
        $middle['buttonText']   		   = 'Add';
        $middle['sponser_title']           = $this->input->post('sponser_title');
        $middle['sponser_url']     = $this->input->post('sponser_url');
        $middle['sponser_is_active']       = $this->input->post('sponser_is_active');		
        
        $config = array(
               array(
                     'field'   => 'sponser_title',
                     'label'   => 'Title',
                     'rules'   => 'trim|required|xss_clean'
                  ),
               array(
                     'field'   => 'sponser_url',
                     'label'   => 'Url',
                     'rules'   => 'trim|required|xss_clean'
                  ),
				     array(
                     'field'   => 'sponser_image',
                     'label'   => 'sponser_image',
                     'rules'   => 'trim|callback_sponser_upload|xss_clean'
                  )
            );
            
		$this->form_validation->set_rules($config);
		        
        if($this->form_validation->run() == FALSE){
			$middle['layout'] = 'admin/sponser/add';
            $this->template->set_data('middle',$middle);
           	$this->template->load();
		}else{   
           
			$sponser_title      = $this->input->post('sponser_title');
			$sponser_url        = $this->input->post('sponser_url');
			$sponser_is_active  = $this->input->post('sponser_is_active');	
		   	   	
		    $save_data = array(
					'sponser_title'=>$sponser_title,
					'sponser_url'=>$sponser_url,
					'sponser_is_active'=>$sponser_is_active,
					'sponser_created_time'=> $this->obj_sponser->currentDateTime
					);
			
			//Upload data
			
			if(!empty($this->upload_data)){
				if(!empty($this->upload_data['file_name'])){
					$new_sponser_name = time().$this->upload_data['file_ext'];
					rename('./uploads/sponser/'.$this->upload_data['file_name'], './uploads/sponser/'.$new_sponser_name);		
					$save_data['sponser_image'] = $new_sponser_name;
				}
			}	
			
			$this->obj_sponser->save($this->obj_sponser->table,$save_data);			
	       	$this->session->set_flashdata('message','Sponsor added successfully.');
			redirect('admin/sponser','refresh');
		} 
       
	}
    
    /**
	 * this is a generic function to update data about sponsor in db
	 * function having a single parameter having id of the sponsor which have to update
	 * function using view to update sponsor at location admin/sponsor/edit.php
 	 * @access public
 	 * @param  integer
	 * function will fill all field values for sponsor and image for sponsor,after successful field validation
	*/   

    public function edit($id){
		#$this->privilege->check_privileges();
        $this->template->set('adminlayout');
		if(empty($id)){			
			$this->session->set_flashdata('error_message','Record not found.');
			redirect('admin/sponser','refresh');
		}
		
		$middle['result'] = $this->obj_sponser->show_all_sponser(array('sponser_id' => $id));
		if(empty($middle['result'])){		
			$this->session->set_flashdata('error_message','Record not found.');
			redirect('admin/sponser','refresh');
		}
		
	
        $middle['formTitle']   = 'Edit Sponsor';
        $middle['buttonText']  = 'Update';
        $config = array(
               array(
                     'field'   => 'sponser_title',
                     'label'   => 'Title',
                     'rules'   => 'trim|required|xss_clean'
                  ),
               array(
                     'field'   => 'sponser_url',
                     'label'   => 'Url',
                     'rules'   => 'trim|required|xss_clean'
                  ),
				     array(
                     'field'   => 'sponser_image',
                     'label'   => 'sponser_image',
                     'rules'   => 'trim|callback_sponser_upload|xss_clean'
                  )
            );
            
		$this->form_validation->set_rules($config);
		        
        if($this->form_validation->run() == FALSE){
			$middle['layout'] = 'admin/sponser/edit';
            $this->template->set_data('middle',$middle);
            $this->template->load();
			
		}else{   
           
			$sponser_title      = $this->input->post('sponser_title');
			$sponser_url        = $this->input->post('sponser_url');
			$sponser_is_active  = $this->input->post('sponser_is_active');	
		   	   	
		    $save_data = array(
					'sponser_title'=>$sponser_title,
					'sponser_url'=>$sponser_url,
					'sponser_is_active'=>$sponser_is_active,
					'sponser_created_time'=> $this->obj_sponser->currentDateTime
					);
			
			//Upload data
			
			if(!empty($this->upload_data)){
				if(!empty($this->upload_data['file_name'])){
					$new_sponser_name = time().$this->upload_data['file_ext'];
					rename('./uploads/sponser/'.$this->upload_data['file_name'], './uploads/sponser/'.$new_sponser_name);		
					$save_data['sponser_image'] = $new_sponser_name;
					
					//Unlink Old image
					$sponser_image_old = $middle['result'][0]['sponser_image'];
					if(!empty($sponser_image_old)){
						@unlink('./uploads/sponser/'.$sponser_image_old);
					}
				}
			}	
			
			$this->obj_sponser->save($this->obj_sponser->table,$save_data,array('sponser_id'=>$id));			
	       	$this->session->set_flashdata('message','Sponsor updated successfully.');
			redirect('admin/sponser','refresh');
		} 
	}
	
	/**
     * this is a generic function to upload image for sponsor
     * function having no parameter
     * @access public   
     * @return boolean
     * function will upload image for a sponsor with specific file extensions
    */	

	public function sponser_upload(){		
		if(isset($_FILES['sponser_image']) && $_FILES['sponser_image']['name'] != '') {
			$this->load->library('upload');
			$config['upload_path'] = './uploads/sponser/';
			$config['allowed_types'] = 'jpg|jpeg|gif|png';
			$config['max_size']    = 1024*2; //2MB
			$this->upload->initialize($config);	
			if (!$this->upload->do_upload('sponser_image')){
				$this->form_validation->set_message('sponser_upload',str_replace(array('<p>', '</p>'),'', $this->upload->display_errors()));	
				return false;
			} else {			
				$this->upload_data = $this->upload->data();				
				return true;
			}			
		}
		return true;
	}  
	
	/**
	 * this is a generic function to delete data about sponsor from db
	 * function having a single parameter having id of the sponsor which have to delete	 
 	 * @access public
 	 * @param  integer
	 * function will delete a single sponsor having id passed in function as parameter
	*/	
	
	public function delete($id){
		#$this->privilege->check_privileges();
		if(empty($id)){			
			$this->session->set_flashdata('error_message','Record not found.');
			redirect('admin/sponser','refresh');
		}
		$this->obj_sponser->save( $this->obj_sponser->table, array('sponser_is_deleted'=> 1 ), array('sponser_id'=>$id) );		
		$this->session->set_flashdata('message','Sponsor deleted successfully.');
		redirect('admin/sponser','refresh');		
		
	}
    
}

/* End of file sponser.php */
/* Location: ./application/controllers/admin/sponser.php */