<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Page extends MY_Controller {

    var $data     	 = array();
	var $error     	 = array();
	var $template  	 = array();
	var $middle      = ''; 
	var $navigation  = '';
	var $breadcrumbs = '';
    var $sidebar 	 = '';
	
	var $admin_session_data = array();
   	var $upload_data = array();

    public function __construct() {
        parent::__construct();
        $this->load->model('pages','obj_page');
		$this->admin_session_data = $this->session->userdata("admin_session_data");
		$this->load->model('privilege');
    }

    /**
       * this is a generic function to show all pages which are not deleted
       * function having no parameter   
       * function using pages module
       * function set all pages on view at location admin/page/index 
       * @access public
    */
    
	public function index(){
		$this->privilege->check_privileges();
		$middle['result'] = array();
        $this->template->set('adminlayout');
		$middle['result'] = $this->obj_page->show_all_pages(array('is_deleted' => 0));		
		$middle['db_table'] = $this->obj_page->table;
		$middle['unique_key_field'] = 'page_id';
        $middle['fieldname'] = 'is_active';				
        $middle['layout'] = 'admin/page/index';
        $this->template->set_data('middle',$middle);
        $this->template->load();
	}

	/**
	 * this is a generic function to save data about page in db
	 * function having no parameter
	 * function using view to add page at location admin/page/add.php
 	 * @access public
	 * function will fill all field values for page after successful field validation
	*/
	
    public function add(){
       $this->privilege->check_privileges(); 
       $this->template->set('adminlayout');
       $middle['formTitle']    = 'Add Page';
       $middle['buttonText']   = 'Add';
       $middle['page_title']           = $this->input->post('page_title');
       $middle['page_description']     = $this->input->post('page_description');	   
       $middle['is_top']     		   = $this->input->post('is_top');	
       $middle['page_order']     		   = $this->input->post('page_order');	
	   $middle['is_active']       	   = $this->input->post('is_active');	
       $path='../assets/js/ckfinder';       
	   $width='850px';
	   parent::editor($path,$width);
	   
	   $config = array(
		   array(
				 'field'   => 'page_title',
				 'label'   => 'Page Title',
				 'rules'   => 'trim|required|xss_clean|callback_checkexistance'
			  ),
		   array(
				 'field'   => 'page_description',
				 'label'   => 'Page Description',
				 'rules'   => 'trim|required|xss_clean'
			  ),
		   	  array(
				 'field'   => 'is_top',
				 'label'   => 'Menu Location',
				 'rules'   => 'trim|required|xss_clean'
			  ),
			  array(
				 'field'   => 'page_order',
				 'label'   => 'Page Order',
				 'rules'   => 'trim|required|xss_clean|numeric'
			  ),
			  array(
				 'field'   => 'is_active',
				 'label'   => 'Status',
				 'rules'   => 'trim|required|xss_clean'
			  )
		);
    	
        $this->form_validation->set_rules($config);
        
        if ($this->form_validation->run() == FALSE)
		{			
            $middle['layout'] = 'admin/page/add';
            $this->template->set_data('middle',$middle);
    		$this->template->load();
		}
		else
		{   
           $page_title = $this->input->post('page_title');
		   $page_slug  = create_unique_slug($page_title,$this->obj_page->table,'page_slug');
		   $page_description     = $this->input->post('page_description');
		   $is_top               = $this->input->post('is_top');
		   $page_order               = $this->input->post('page_order');
           $is_active            = $this->input->post('is_active');
           $save_data = array(
                    'page_title'=>$page_title,
					'page_slug'=>$page_slug,
                    'page_description'=>$page_description,
                    'is_top'=>$is_top,
                    'page_order'=>$page_order,
                    'is_active'=>$is_active,
					'created_time'=> $this->obj_page->currentDateTime
					);
    		$this->obj_page->save($this->obj_page->table,$save_data);            
           	$this->session->set_flashdata('message','Page Added Successfully.');
			redirect('admin/page','refresh');
		} 
       
	}


	/**
	 * this is a generic function to check unique title for page to add 
	 * function having single parameter title of page to check for existance
	 * @param string
	 * @return boolean
	*/    
    
    function checkexistance($title){
        $where = array(
            'page_title' => $title,
            'is_deleted' => 0
        );
        $switch = $this->obj_page->checkRecord($this->obj_page->table,$where);
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
	 * this is a generic function to update data about page in db
	 * function having a single parameter having id of the page which have to update
	 * function using view to update page at location admin/page/edit.php
 	 * @access public
 	 * @param  integer
	 * function will fill all field values for page after successful field validation
	*/    

    public function edit($id){
        $this->privilege->check_privileges();
		if(empty($id)){			
			$this->session->set_flashdata('error_message','Record not found.');
			redirect('admin/page','refresh');
		}
		
		$middle['result'] = $this->obj_page->show_all_pages(array('page_id' => $id));
		
		if(empty($middle['result'])){		
			$this->session->set_flashdata('error_message','Record not found.');
			redirect('admin/page','refresh');
		}
		$this->template->set('adminlayout');
        $middle['formTitle']    = 'Edit Page';
        $middle['buttonText']   = 'Update';
        $middle['page_title']           = $this->input->post('page_title');
        $middle['page_description']     = $this->input->post('page_description');	   
        $middle['page_order']     = $this->input->post('page_order');	
        $middle['is_top']     			= $this->input->post('is_top');

	    $middle['is_active']       = $this->input->post('is_active');	
		$path= '../assets/js/ckfinder';
	    $width='850px';
	    parent::editor($path,$width);		 
		
		$config = array(
		   array(
				 'field'   => 'page_title',
				 'label'   => 'Page Title',
				 'rules'   => 'trim|required|xss_clean'
			  ),
		   array(
				 'field'   => 'page_description',
				 'label'   => 'Page Description',
				 'rules'   => 'trim|required|xss_clean'
			  ),
		   array(
				 'field'   => 'is_top',
				 'label'   => 'Menu Location',
				 'rules'   => 'trim|required|xss_clean'
			  ),
		   array(
				 'field'   => 'page_order',
				 'label'   => 'Page Order',
				 'rules'   => 'trim|required|xss_clean|numeric'
			  ),
			  array(
				 'field'   => 'is_active',
				 'label'   => 'Status',
				 'rules'   => 'trim|required|xss_clean'
			  )
		);
    	
        $this->form_validation->set_rules($config);
        
        if ($this->form_validation->run() == FALSE)
		{			
            $middle['layout'] = 'admin/page/edit';
            $this->template->set_data('middle',$middle);
    		$this->template->load();
		}
		else
		{   
           $page_title     = $this->input->post('page_title');		   
		   $page_description = $this->input->post('page_description');
		   $is_top   = $this->input->post('is_top');
		   $page_order   = $this->input->post('page_order');
           $is_active   = $this->input->post('is_active');
           $save_data = array(
                    'page_title'=>$page_title,					
                    'page_description'=>$page_description,
                    'is_top'=>$is_top,
                    'page_order'=>$page_order,
                    'is_active'=>$is_active,
					'created_time'=> $this->obj_page->currentDateTime
					);
    		$this->obj_page->save($this->obj_page->table,$save_data,array('page_id'=>$id));            
           	$this->session->set_flashdata('message','Page Updated Successfully.');
			redirect('admin/page','refresh');
		} 
       
	}
	
	/**
	 * this is a generic function to delete data about page from db
	 * function having a single parameter having id of the page which have to delete	 
 	 * @access public
 	 * @param  integer
	 * function will delete a single page having id passed in function as parameter
	*/
	
	public function delete($id){
		$this->privilege->check_privileges();
		if(empty($id)){			
			$this->session->set_flashdata('error_message','Record not found.');
			redirect('admin/page','refresh');
		}		
		
		$this->obj_page->save( $this->obj_page->table, array('is_deleted'=> 1 ), array('page_id'=>$id) );		
		//$this->obj_page->deleteRecord($this->obj_page->table,array('page_id'=>$id));
		
		$this->session->set_flashdata('message','Page Deleted Successfully.');
		redirect('admin/page','refresh');
	}

}

/* End of file page.php */
/* Location: ./application/controllers/admin/page.php */