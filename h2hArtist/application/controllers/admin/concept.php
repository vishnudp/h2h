<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Concept extends MY_Controller {
    var $admin_session_data = array();

    public function __construct() {
        parent::__construct();
        $this->admin_session_data = $this->session->userdata("admin_session_data");
        $this->load->model('subjects','obj_subjects');
		$this->load->model('testprofiles','obj_testprofiles');
		$this->load->model('privilege');	
    }
    

    /**
	 * this is a generic function to get data from model subjects, testprofiles to show on html
	 * function having no parameter
	 * function using index view at location admin/concept/index.php
 	 * @access public
	 * function show data from subjects and testprofiles on html
	*/

	public function index()
	{
		$this->privilege->check_privileges();
		$this->template->set('adminlayout');
        $middle['subject_id'] 		= $this->input->get('subject_id');
		$middle['test_profile_id']  = $this->input->get('test_profile_id');			
		$middle['result']			= array(); 
        $where 						= array('subject_is_deleted' => '0','subject_is_active' => '1');
        $where_subject_array 		= array('subject_is_deleted' => '0');
        $middle['test_profile_id']  = $middle['test_profile_id'];
        $where_array                = array('subject_is_deleted' => '0');        
	    if(!empty($middle['subject_id'])){
			$where_array['subject_parent_id'] = $middle['subject_id'];	
		} 
        if(!empty($middle['test_profile_id'])){
			$where_array['test_profile_id']   = $middle['test_profile_id'];	
		}  
        $where_subject_array['subject_parent_id']  = 0;
        $middle['subjects_array']                  = $this->obj_subjects->get_all_sub_subject($where, '*', 'subject_parent_id =0 ',array('subject_title','ASC') );;	
		$middle['db_table']                        = $this->obj_subjects->table;
        $middle['unique_key_field']                = 'subject_id';
        $middle['fieldname']                       = 'subject_is_active';                
	    $middle['result']                          = $this->obj_subjects->get_all_sub_subject($where_array, '*', 'subject_parent_id !=0 ',array('subject_title','ASC') );        		
		$middle['layout']                          = 'admin/concept/index';
        $this->template->set_data('middle',$middle);
        $this->template->load();
	}


	/**
	 * this is a generic function to save data about concept in db
	 * function having no parameter
	 * function using view to add concept at location admin/concept/add.php
 	 * @access public
	 * function will fill all field values for concept after successful field validation
	*/

    public function add(){
		$this->privilege->check_privileges();
		$this->template->set('adminlayout');
		$middle['formTitle']    		   = 'Add Concept';
        $middle['buttonText']   		   = 'Add';
        $middle['subject_title']           = $this->input->post('subject_title');
        $middle['subject_description']     = $this->input->post('subject_description');
		$middle['subject_parent_id']       = $this->input->post('subject_id');
        $middle['subject_id']              = $middle['subject_parent_id'];
		$middle['subject_is_active']       = $this->input->post('subject_is_active');
        $config = array(
               array(
                     'field'   => 'subject_title',
                     'label'   => 'Title',
                     'rules'   => 'trim|required|xss_clean|callback_subject_title|alpha'
                  ),
               array(
                     'field'   => 'subject_id',
                     'label'   => 'Select Subject',
                     'rules'   => 'trim|required|xss_clean'
                  ),
               array(
                     'field'   => 'subject_description',
                     'label'   => 'Description',
                     'rules'   => 'trim|xss_clean'
                  ),
				     array(
                     'field'   => 'subject_image',
                     'label'   => 'subject Image',
                     'rules'   => 'trim|callback_subject_upload|xss_clean'
                  )
            );
         
		$where 				   = array('subject_is_deleted' =>0,'subject_is_active' => 1);		
        $middle['all_subject'] = $this->obj_subjects->get_all_sub_subject($where, '*', 'subject_parent_id =0 ',array('subject_title','ASC') );;        
        $this->form_validation->set_rules($config);        
        if ($this->form_validation->run() == FALSE){
			$middle['layout'] = 'admin/concept/add';
		}
		else{  
		   $subject_title           = $this->input->post('subject_title');
           $subject_description     = $this->input->post('subject_description');
	       $test_profile_id         = $this->input->post('test_profile_id');
		   $subject_parent_id       = $this->input->post('subject_id');
		   $subject_is_active       = $this->input->post('subject_is_active');			   
		   $subject_slug 			= create_unique_slug($subject_title, $this->obj_subjects->table,'subject_slug');	
		   $save_data 	 			= array(
											'subject_title'	      => $subject_title,
											'subject_slug'	      => $subject_slug,
											'subject_description' => $subject_description,
											'subject_parent_id'   => $subject_parent_id,
											'subject_is_active'   => $subject_is_active,
											'subject_is_deleted'  => '0',
											'subject_created_time'=> $this->obj_subjects->currentDateTime,
											'subject_created_by'  => $this->admin_session_data['user_id'] 
										);

			//Upload data
			if(!empty($this->upload_data)){
				if(!empty($this->upload_data['file_name'])){
					$new_cat_name = time().$this->upload_data['file_ext'];
					rename('./uploads/subject/'.$this->upload_data['file_name'], './uploads/subject/'.$new_cat_name);		
					$save_data['subject_org_image'] = $this->upload_data['orig_name'];
					$save_data['subject_image'] = $new_cat_name;
				}
			}	
			
			$this->obj_subjects->save($this->obj_subjects->table,$save_data);			
	       	$this->session->set_flashdata('message','Concept Added Successfully.');
			redirect('admin/concept/index');
		}       		
        	$this->template->set_data('middle',$middle);
        	$this->template->load();
	}
    
    
    /**
	 * this is a generic function to update data about concept in db
	 * function having a single parameter having id of the concept which have to update
	 * function using view to update concept at location admin/concept/add.php
 	 * @access public
 	 * @param  integer
	 * function will fill all field values for concept after successful field validation
	*/
    
  	public function edit($id){
			$this->privilege->check_privileges();
			$this->template->set('adminlayout');
		    $data = array();
	        $middle['formTitle']    = 'Edit Concept';
	        $middle['buttonText']   = 'Update';
	        if(!empty($id)){
	         $where = array('subject_id' => $id,'subject_is_deleted' => 0);
	       	 $data = $this->obj_subjects->getRecords($this->obj_subjects->table,$where);
	         if(isset($data)){
	       	 $middle['subject_title']        = $data[0]['subject_title'];
	         $middle['subject_description']  = $data[0]['subject_description'];
	         $middle['subject_image']        = $data[0]['subject_image'];
	         $middle['subject_id']           = $data[0]['subject_parent_id'];
	         $middle['subject_is_active']    = $data[0]['subject_is_active'];	         
	         $config = array(
	               array(
	                     'field'   => 'subject_title',
	                     'label'   => 'Title',
	                     'rules'   => 'trim|required|xss_clean|alpha'
	                  ),
	               array(
	                     'field'   => 'subject_id',
	                     'label'   => 'Select Subject',
	                     'rules'   => 'trim|required|xss_clean'
	                  ),
	               
	               array(
	                     'field'   => 'subject_description',
	                     'label'   => 'Description',
	                     'rules'   => 'trim|xss_clean'
	                  ),
					   array(
	                     'field'   => 'subject_image',
	                     'label'   => 'subject Image',
	                     'rules'   => 'trim|xss_clean|callback_subject_upload'
	                  ),
	            );
	        $where = array();			
	        $middle['all_subject'] = $this->obj_subjects->get_all_sub_subject($where, '*', 'subject_parent_id =0 ',array('subject_title','ASC') );
	        $this->form_validation->set_rules($config);	        
		        if ($this->form_validation->run() == FALSE){
					$middle['layout'] = 'admin/concept/add';
				}else{              
		           $subject_title           = $this->input->post('subject_title');
		           $subject_description     = $this->input->post('subject_description');
				   $subject_parent_id       = $this->input->post('subject_id');
				   $subject_is_active       = $this->input->post('subject_is_active');
				   $save_data = array(
						'subject_title'=>$subject_title,
						'subject_slug'=> '',
						'subject_description'=>$subject_description,
						'subject_parent_id'=>$subject_parent_id,
						'subject_is_active'=>$subject_is_active,				
						'subject_created_time'=> $this->obj_subjects->currentDateTime,
						'subject_created_by'=> $this->admin_session_data['user_id'] 
				   );
		           $this->obj_subjects->update_subject($id,$save_data);				
			       $this->session->set_flashdata('message','Concept Updated Successfully.');
				   redirect('admin/concept');
				}
	        }else{
	            redirect('admin/concept/add');	                    
	        }        
	       }else{
	            redirect('admin/concept/add');	            
	       } 
	       $this->template->set_data('middle',$middle);
	       $this->template->load();
	}

	/**
	 * this is a generic function to upload subject images 
	 * function having no parameter
 	 * @access public 	 
	 * function will upload subject images at location uploads/subject
	*/

	public function subject_upload(){		
		if(isset($_FILES['subject_image']) && $_FILES['subject_image']['name'] != '') {
			$this->load->library('upload');
			$config['upload_path'] = './uploads/subject/';
			$config['allowed_types'] = 'jpg|jpeg|gif|png';
			$config['max_size']    = 1024*2; //2MB
			$this->upload->initialize($config);	
			if (!$this->upload->do_upload('subject_image')){
				$this->form_validation->set_message('subject_upload',str_replace(array('<p>', '</p>'),'', $this->upload->display_errors()));	
				return false;
			} else {			
				$this->upload_data = $this->upload->data();				
				return true;
			}			
		}
		return true;
	}  


	/**
	 * this is a generic function to check unique title for subject to add concept 
	 * function having no parameter
 	 * @access public 	 
	 * @return boolean
	*/
	
	
	public function subject_title(){	
        $subject_id  = $this->input->post('subject_id');	   
		$subject_title  = $this->input->post('subject_title');                     
		$result = $this->obj_subjects->getRecords($this->obj_subjects->table,array('subject_parent_id'=>$subject_id,'subject_title'=>$subject_title,'subject_is_deleted' => 0));
		if(!empty($result)){
			$this->form_validation->set_message('subject_title', 'The %s field can not be duplicate.');
			return FALSE;
		}else{
			return TRUE;
		}		
	}  


	/**
	 * this is a generic function to delete data about concept from db
	 * function having a single parameter having id of the concept which have to delete	 
 	 * @access public
 	 * @param  integer
	 * function will delete a single concept having id passed in function as parameter
	*/
    
	public function delete($id){		
		$result = $this->obj_subjects->getRecords($this->obj_subjects->table,array('subject_id'=>$id));	
        $this->obj_subjects->delete_subject($id);
        $this->session->set_flashdata('message','Concept Deleted Successfully.');
        redirect('admin/concept','refresh');
	}
	
}

/* End of file concept.php */
/* Location: ./application/controllers/admin/concept.php */