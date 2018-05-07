<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Logo extends MY_Controller {

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
        $this->load->model('logos','obj_logo');
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
		$this->privilege->check_privileges();
        $this->template->set('adminlayout');
		$middle['title'] = 'Logo Details';
		$middle['db_table'] = $this->obj_logo->table;
		$middle['fieldname'] = 'logo_is_active';
		$middle['result'] = $this->obj_logo->show_all_logo(array('logo_is_deleted'=> '0'));
		$middle['layout'] = 'admin/logo/index';
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
        $middle['formTitle']    		   = 'Add Logo';
        $middle['buttonText']   		   = 'Add';
        $middle['logo_title']           = $this->input->post('logo_title');
        $middle['logo_url']     = $this->input->post('logo_url');
        $middle['logo_is_active']       = $this->input->post('logo_is_active');		
        
        $config = array(
               array(
                     'field'   => 'logo_title',
                     'label'   => 'Title',
                     'rules'   => 'trim|required|xss_clean'
                  ),
               array(
                     'field'   => 'logo_url',
                     'label'   => 'Url',
                     'rules'   => 'trim|required|xss_clean'
                  ),
				     array(
                     'field'   => 'logo_image',
                     'label'   => 'Logo Image',
                     'rules'   => 'trim|callback_logo_upload|xss_clean'
                  ),
				     array(
                     'field'   => 'logo_thumb_image',
                     'label'   => 'Logo Thumb Image',
                     'rules'   => 'trim|callback_logo_thumb_upload|xss_clean'
                  ),
				     array(
                     'field'   => 'logo_fav_icon',
                     'label'   => 'Logo Fav Icon',
                     'rules'   => 'trim|callback_logo_fav_icon_upload|xss_clean'
                  )
            );
            
		$this->form_validation->set_rules($config);
		        
        if($this->form_validation->run() == FALSE){
			$middle['layout'] = 'admin/logo/add';
            $this->template->set_data('middle',$middle);
           	$this->template->load();
		}else{   
           
			$logo_title      = $this->input->post('logo_title');
			$logo_url        = $this->input->post('logo_url');
			$logo_is_active  = $this->input->post('logo_is_active');	
		   	   	
		    $save_data = array(
					'logo_title'=>$logo_title,
					'logo_url'=>$logo_url,
					'logo_is_active'=>$logo_is_active,
					'logo_created_time'=> $this->obj_logo->currentDateTime
					);
			
			//Upload data
			
			if(!empty($this->upload_data)){
				if(!empty($this->upload_data['file_name'])){
					$new_logo_name = time().$this->upload_data['file_ext'];
					rename('./uploads/logo/'.$this->upload_data['file_name'], './uploads/logo/'.$new_logo_name);		
					$save_data['logo_image'] = $new_logo_name;
				}
			}

			if(!empty($this->upload_logo_thumb_data)){
				if(!empty($this->upload_logo_thumb_data['file_name'])){
					$new_thumb_logo_name = time().'_thumb_'.$this->upload_logo_thumb_data['file_ext'];
					rename('./uploads/logo/'.$this->upload_logo_thumb_data['file_name'], './uploads/logo/'.$new_thumb_logo_name);		
					$save_data['logo_thumb_image'] = $new_thumb_logo_name;
				}
			}

			if(!empty($this->upload_logo_fav_icon_data)){
				if(!empty($this->upload_logo_fav_icon_data['file_name'])){
					$new_fav_icon_name = time().'_fav_icon'.$this->upload_logo_fav_icon_data['file_ext'];
					rename('./uploads/logo/'.$this->upload_logo_fav_icon_data['file_name'], './uploads/logo/'.$new_fav_icon_name);		
					$save_data['logo_fav_icon'] = $new_fav_icon_name;
				}
			}	
			
			//print_r($save_data); die;
			$this->obj_logo->save($this->obj_logo->table,$save_data);	

	       	$this->session->set_flashdata('message','Logo added successfully.');
			redirect('admin/logo','refresh');
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
		$this->privilege->check_privileges();
        $this->template->set('adminlayout');
		if(empty($id)){			
			$this->session->set_flashdata('error_message','Record not found.');
			redirect('admin/logo','refresh');
		}
		
		$middle['result'] = $this->obj_logo->show_all_logo(array('logo_id' => $id));
		if(empty($middle['result'])){		
			$this->session->set_flashdata('error_message','Record not found.');
			redirect('admin/logo','refresh');
		}
		
	
        $middle['formTitle']   = 'Edit Logo';
        $middle['buttonText']  = 'Update';
        $config = array(
               array(
                     'field'   => 'logo_title',
                     'label'   => 'Title',
                     'rules'   => 'trim|required|xss_clean'
                  ),
               array(
                     'field'   => 'logo_url',
                     'label'   => 'Url',
                     'rules'   => 'trim|required|xss_clean'
                  ),
				     array(
                     'field'   => 'logo_image',
                     'label'   => 'logo_image',
                     'rules'   => 'trim|callback_logo_upload|xss_clean'
                  ),
				     array(
                     'field'   => 'logo_thumb_image',
                     'label'   => 'Logo Thumb Image',
                     'rules'   => 'trim|callback_logo_thumb_upload|xss_clean'
                  ),
				     array(
                     'field'   => 'logo_fav_icon',
                     'label'   => 'Logo Fav Icon',
                     'rules'   => 'trim|callback_logo_fav_icon_upload|xss_clean'
                  )
            );
            
		$this->form_validation->set_rules($config);
		        
        if($this->form_validation->run() == FALSE){
			$middle['layout'] = 'admin/logo/edit';
            $this->template->set_data('middle',$middle);
            $this->template->load();
			
		}else{   
           
			$logo_title      = $this->input->post('logo_title');
			$logo_url        = $this->input->post('logo_url');
			$logo_is_active  = $this->input->post('logo_is_active');	
		   	   	
		    $save_data = array(
					'logo_title'=>$logo_title,
					'logo_url'=>$logo_url,
					'logo_is_active'=>$logo_is_active,
					'logo_created_time'=> $this->obj_logo->currentDateTime
					);
			
			//Upload data
			
			if(!empty($this->upload_data)){
				if(!empty($this->upload_data['file_name'])){
					$new_logo_name = time().$this->upload_data['file_ext'];
					rename('./uploads/logo/'.$this->upload_data['file_name'], './uploads/logo/'.$new_logo_name);		
					$save_data['logo_image'] = $new_logo_name;
					
					//Unlink Old image
					$logo_image_old = $middle['result'][0]['logo_image'];
					if(!empty($logo_image_old)){
						@unlink('./uploads/logo/'.$logo_image_old);
					}
				}
			}

			if(!empty($this->upload_thumb_data)){
				if(!empty($this->upload_thumb_data['file_name'])){
					$new_thumb_logo_name = time().'_thumb_'.$this->upload_thumb_data['file_ext'];
					rename('./uploads/logo/'.$this->upload_thumb_data['file_name'], './uploads/logo/'.$new_thumb_logo_name);		
					$save_data['logo_image'] = $new_thumb_logo_name;
					
					//Unlink Old image
					$logo_image_old = $middle['result'][0]['logo_thumb_image'];
					if(!empty($logo_image_old)){
						@unlink('./uploads/logo/'.$logo_image_old);
					}
				}
			}

			if(!empty($this->upload_logo_fav_icon_data)){
				if(!empty($this->upload_logo_fav_icon_data['file_name'])){
					$new_fav_icon_name = time().'_fav_icon'.$this->upload_logo_fav_icon_data['file_ext'];
					rename('./uploads/logo/'.$this->upload_logo_fav_icon_data['file_name'], './uploads/logo/'.$new_fav_icon_name);		
					$save_data['logo_image'] = $new_fav_icon_name;
					
					//Unlink Old image
					$logo_image_old = $middle['result'][0]['logo_fav_icon_image'];
					if(!empty($logo_image_old)){
						@unlink('./uploads/logo/'.$logo_image_old);
					}
				}
			}	
			
			$this->obj_logo->save($this->obj_logo->table,$save_data,array('logo_id'=>$id));			
	       	$this->session->set_flashdata('message','Logo updated successfully.');
			redirect('admin/logo','refresh');
		} 
	}
	
	/**
     * this is a generic function to upload image for sponsor
     * function having no parameter
     * @access public   
     * @return boolean
     * function will upload image for a sponsor with specific file extensions
    */	

	public function logo_upload(){	
	//print_r($_FILES['logo_image']); die;	
		if(isset($_FILES['logo_image']) && $_FILES['logo_image']['name'] != '') {
			$this->load->library('upload');
			$config['upload_path'] = './uploads/logo/';
			$config['allowed_types'] = 'jpg|jpeg|gif|png';
			$config['max_size']    = 1024*2; //2MB
			$this->upload->initialize($config);	
			if (!$this->upload->do_upload('logo_image')){
				$this->form_validation->set_message('logo_upload',str_replace(array('<p>', '</p>'),'', $this->upload->display_errors()));	
				return false;
			} else {			
				$this->upload_data = $this->upload->data();
				return true;
			}			
		}
		return true;
	}  

	public function logo_thumb_upload(){		
		if(isset($_FILES['logo_thumb_image']) && $_FILES['logo_thumb_image']['name'] != '') {
			$this->load->library('upload');
			$config['upload_path'] = './uploads/logo/';
			$config['allowed_types'] = 'jpg|jpeg|gif|png';
			$config['max_size']    = 1024*2; //2MB
			$this->upload->initialize($config);	
			if (!$this->upload->do_upload('logo_thumb_image')){
				$this->form_validation->set_message('logo_upload',str_replace(array('<p>', '</p>'),'', $this->upload->display_errors()));	
				return false;
			} else {			
				$this->upload_logo_thumb_data = $this->upload->data();		
				//print_r($this->upload_logo_thumb_data);		
				return true;
			}			
		}
		return true;
	}  

	public function logo_fav_icon_upload(){		
		if(isset($_FILES['logo_fav_icon']) && $_FILES['logo_fav_icon']['name'] != '') {
			$this->load->library('upload');
			$config['upload_path'] = './uploads/logo/';
			$config['allowed_types'] = 'jpg|jpeg|gif|png';
			$config['max_size']    = 1024*2; //2MB
			$this->upload->initialize($config);	
			if (!$this->upload->do_upload('logo_fav_icon')){
				$this->form_validation->set_message('logo_upload',str_replace(array('<p>', '</p>'),'', $this->upload->display_errors()));	
				return false;
			} else {			
				$this->upload_logo_fav_icon_data = $this->upload->data();			
				//print_r($this->upload_logo_fav_icon_data);			
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
		$this->privilege->check_privileges();
		if(empty($id)){			
			$this->session->set_flashdata('error_message','Record not found.');
			redirect('admin/logo','refresh');
		}
		$this->obj_logo->save( $this->obj_logo->table, array('logo_is_deleted'=> 1 ), array('logo_id'=>$id) );		
		$this->session->set_flashdata('message','Logo deleted successfully.');
		redirect('admin/logo','refresh');		
		
	}
    
}

/* End of file logo.php */
/* Location: ./application/controllers/admin/logo.php */