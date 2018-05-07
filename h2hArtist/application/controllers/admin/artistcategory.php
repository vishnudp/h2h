<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ArtistCategory extends MY_Controller {
    
   var $user_session_data = array();
   var  $middle = array();
    function __construct()
    {
        parent::__construct();
        $this->load->model('artistcategorys','obj_artistcategory');        
        $this->admin_session_data = $this->session->userdata("admin_session_data"); 
        $this->load->model('privilege');    

    }

    /**
       * this is a generic function to show all test profile type
       * function having no parameter   
       * function using testprofiletypes module to show all testprofiles type list
       * @access public
    */
	
	public function index()
	{
        $this->privilege->check_privileges();
        $this->template->set('adminlayout');
        $middle['title']            = 'All Artist Category';
        $middle['db_table']         = $this->obj_artistcategory->table;
        $middle['fieldname']        = 'artist_category_is_active';
        $middle['unique_key_field'] = 'artist_category_id';
        $middle['result']           = $this->obj_artistcategory->show_all_artist_category();          
        $middle['layout']           = 'admin/artistcategory/index';
        $this->template->set_data('middle',$middle);
        $this->template->load();
	}

    /**
     * this is a generic function to save data about testprofiles type in db
     * function having no parameter
     * function using view to add testprofile type at location admin/test-profile-type/add.php
     * @access public
     * function will fill all field values for testprofile type after successful field validation
    */

    public function add(){
    $this->privilege->check_privileges();
    $this->template->set('adminlayout');
    $middle['formTitle']    = 'Add Artist Category';
    $middle['buttonText']   = 'Add';
    $middle['artist_category_name']           = $this->input->post('artist_category_name');
    $middle['artist_category_description']    = $this->input->post('artist_category_description');  
    $middle['artist_category_image'] = '';
    $middle['artist_category_is_active']      = $this->input->post('artist_category_is_active');       
    //print_r($middle);
    $config = array(
           array(
                 'field'   => 'artist_category_name',
                 'label'   => 'Artist Category Name',
                 'rules'   => 'trim|required|xss_clean|callback_checkexistance|alpha'
              ),
           array(
                 'field'   => 'artist_category_description',
                 'label'   => 'Description',
                 'rules'   => 'trim|xss_clean'
              ),            
        );
    
    $this->form_validation->set_rules($config);    
    if ($this->form_validation->run() == FALSE)
    {
        $middle['layout'] = 'admin/artistcategory/add';
    }
    else
    {          
       $artist_category_name           = $this->input->post('artist_category_name');
       $artist_category_description     = $this->input->post('artist_category_description');                 
       $artist_category_is_active            = $this->input->post('artist_category_is_active'); 
       
       $upload_result = $this->do_upload_file();
       $artist_category_image = $upload_result;
       $save_data = array(
                'artist_category_name'=>$artist_category_name,                
                'artist_category_description'=>$artist_category_description, 
                'artist_category_image' => $artist_category_image,                
                'artist_category_is_active'=>$artist_category_is_active,                
                'artist_category_is_deleted'=>'0',
                'created_time'=> $this->obj_artistcategory->currentDateTime,
                'artist_category_created_by'=> $this->admin_session_data['user_id'] 
                );
                
        $this->obj_artistcategory->save($this->obj_artistcategory->table,$save_data);        
        $this->session->set_flashdata('message','Artist Category Added Successfully.');
        redirect('admin/artistcategory');
    }
    $this->template->set_data('middle',$middle);
    $this->template->load(); 
   }

    /**
     * this is a generic function to check unique title for testprofile type to add 
     * function having single parameter title of testprofile type to check for existance 
     * @access public
     * @param string
     * @return boolean
    */ 
   
   function checkexistance($title){
        $where = array(
            'artist_category_name' => $title,
            'artist_category_is_deleted' => 0
        );
        $switch = $this->obj_artistcategory->checkRecord($this->obj_artistcategory->table,$where);
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


    function do_upload_file()
    {
        $config['upload_path'] = './uploads/artistcategorys';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = '1024*1024';
        $config['max_width']  = '1024';
        $config['max_height']  = '768';
        $data = '';
        $this->load->library('upload', $config);
        //print_r($_FILES['userfile']);
        if (!empty($_FILES['userfile']['name']))
        {
            $config['upload_path'] = './uploads/artistcategorys';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';     

            $this->upload->initialize($config);
            
            if ($this->upload->do_upload('userfile'))
            {
                $img = $this->upload->data();
                //print_r($img); die;
                $file_name = $img['file_name'];
                $data = $file_name;
                
            }
            else
            {
                $data = '';

            }
        }
           return $data;
    }


    /**
     * this is a generic function to update data about testprofile type in db
     * function having a single parameter having id of the testprofile type which have to update
     * function using view to update subject at location admin/test-profile-type/add.php
     * @access public
     * @param  integer
     * function will fill all field values for testprofile type,after successful field validation
    */  

    public function edit($id){
        $this->privilege->check_privileges();
        if(empty($id)){         
            $this->session->set_flashdata('error_message','Record not found.');
            redirect('admin/artistcategory','refresh');
        }
        $this->template->set('adminlayout');
        $data = array();
        $middle['formTitle']    = 'Edit Artist Category';
        $middle['buttonText']   = 'Update';
        if(isset($id)){        
             $data = $this->obj_artistcategory->get_artist_category($id);         
             $middle['artist_category_name']           = $data[0]['artist_category_name'];
             $middle['artist_category_description']     = $data[0]['artist_category_description'];               
             $middle['artist_category_image']     = $data[0]['artist_category_image'];   
             $middle['artist_category_is_active']       = $data[0]['artist_category_is_active'];   
             $config = array(
               array(
                     'field'   => 'artist_category_name',
                     'label'   => 'Artist Category Name',
                     'rules'   => 'trim|required|xss_clean|alpha'
                  ),
                array(
                 'field'   => 'artist_category_description',
                 'label'   => 'Description',
                 'rules'   => 'trim|xss_clean'
                ),
                
            );

        $this->form_validation->set_rules($config);        
        if ($this->form_validation->run() == FALSE)
        {
            $middle['layout'] = 'admin/artistcategory/add';
            $this->template->set_data('middle',$middle);
            $this->template->load();   
           
        }
        else
        {   
            $artist_category_name        = $this->input->post('artist_category_name');
            $artist_category_description  = $this->input->post('artist_category_description');   
            $artist_category_is_active    = $this->input->post('artist_category_is_active');
            $upload_result = $this->do_upload_file();
            $artist_category_image = $upload_result;
            if($artist_category_image!=''){
                $save_data = array(
                    'artist_category_name'=>$artist_category_name,                                  
                    'artist_category_description'=>$artist_category_description,                     
                    'artist_category_image'=>$artist_category_image,
                    'artist_category_is_active'=>$artist_category_is_active,                    
                    'artist_category_is_deleted'=>'0'
                    );

            }else{
                $save_data = array(
                    'artist_category_name'=>$artist_category_name,                                  
                    'artist_category_description'=>$artist_category_description,                     
                    'artist_category_is_active'=>$artist_category_is_active,                    
                    'artist_category_is_deleted'=>'0'
                    );

            }
            
            $this->obj_artistcategory->update_artist_category($id,$save_data);
            
            $this->session->set_flashdata('message','Artist Category Updated Successfully.');
            redirect('admin/artistcategory');
        }
       }else{
            $middle['layout'] = 'admin/artistcategory/add';
            $this->template->set_data('middle',$middle);
            $this->template->load();  
       } 
       
    }

    /**
     * this is a generic function to delete data about testprofile type from db
     * function having a single parameter having id of the testprofile type which have to delete  
     * @access public
     * @param  integer
     * function will delete a single testprofile type having id passed in function as parameter
    */  

    public function delete($id){
        $result = $this->obj_artistcategory->getRecords($this->obj_artistcategory->table,array('artist_category_id'=>$id));
        $this->obj_artistcategory->save($this->obj_artistcategory->table,array('artist_category_is_deleted'=> 1),array('artist_category_id' => $id ));
        $this->session->set_flashdata('message','Artist Category deleted successfully.');
        redirect('admin/artistcategory','refresh');
    }   

}

/* End of file artistcategory.php */
/* Location: ./application/controllers/admin/artistcategory.php */