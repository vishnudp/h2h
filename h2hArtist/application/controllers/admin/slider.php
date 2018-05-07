<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Slider extends MY_Controller {
    
   var $user_session_data = array();
   var  $middle = array();
    function __construct()
    {
        parent::__construct();
        $this->load->model('sliders','obj_post');        
        //$this->load->model('newss','obj_news');
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
        $middle['title']            = 'All Sliders Posts';
        $middle['db_table']         = $this->obj_post->table;
        $middle['fieldname']        = 'post_is_active';
        $middle['unique_key_field'] = 'post_id';
        $middle['result']           = $this->obj_post->show_all_post(); 


        $middle['layout']           = 'admin/slider/index';
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
    $middle['formTitle']    = 'Add Slider Post';
    $middle['buttonText']   = 'Add';
    //$middle['newss_list']             = $this->obj_news->show_active_news();
    //$middle['news_id']           = $this->input->post('news_name');
    $middle['post_name']           = $this->input->post('post_name');
    $middle['post_description']    = $this->input->post('post_description');  
    
    $middle['post_is_active']      = $this->input->post('post_is_active');       
    //print_r($middle);
    $config = array(
           array(
                 'field'   => 'post_name',
                 'label'   => 'Slider Post Name',
                 'rules'   => 'trim|required|xss_clean|callback_checkexistance|alpha'
              ),
           array(
                 'field'   => 'post_description',
                 'label'   => 'Description',
                 'rules'   => 'trim|xss_clean'
              ),            
        );
    
    $this->form_validation->set_rules($config);    
    if ($this->form_validation->run() == FALSE)
    {
        $middle['layout'] = 'admin/slider/add';
    }
    else
    {          
       
       $post_name           = $this->input->post('post_name');
       $post_description     = $this->input->post('post_description');                 
       $post_is_active            = $this->input->post('post_is_active'); 
       
       $upload_result = $this->do_upload_file();
       $post_image = $upload_result;
       $user_id = $this->admin_session_data['user_id'];
       $post_type = '';
       $file_extension = substr(strrchr($post_image,'.'),1);
       
       if($file_extension == 'gif' || $file_extension =='jpg' || $file_extension=='png' || $file_extension=='jpeg'){
                $post_type = 'image';
        }else if($file_extension == 'mov' || $file_extension =='avi' || $file_extension=='wmv'){
                $post_type = 'video';
        }
       
       $save_data = array(
                
                'user_id'  =>$user_id,
                'post_name'=>$post_name,                
                'post_description'=>$post_description,
                'post_type'       => $post_type, 
                'post_media_name' => $post_image,                
                'post_is_active'=>$post_is_active,                
                'post_is_deleted'=>'0',
                'created_time'=> $this->obj_post->currentDateTime,
                
                );
                
        $this->obj_post->save($this->obj_post->table,$save_data);        
        $this->session->set_flashdata('message','Slider Post Added Successfully.');
        redirect('admin/slider');
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
            'post_name' => $title,
            'post_is_deleted' => 0
        );
        $switch = $this->obj_post->checkRecord($this->obj_post->table,$where);
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
        $config['upload_path'] = './uploads/slider_pics';
        $config['allowed_types'] = '*';
        $config['max_size'] = '1000000000000';
        
        $data = '';
        $this->load->library('upload', $config);
        //print_r($_FILES);
        if (!empty($_FILES['userfile']['name']))
        {
            $config['upload_path'] = './uploads/slider_pics';
            $config['allowed_types'] = '*';     

            $this->upload->initialize($config);
            
            if ($this->upload->do_upload('userfile'))
            {
                $img = $this->upload->data();
                
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
            redirect('admin/slider','refresh');
        }
        $this->template->set('adminlayout');
        $data = array();
        $middle['formTitle']    = 'Edit Slider Post';
        $middle['buttonText']   = 'Update';
        if(isset($id)){        
             $data = $this->obj_post->getpostName($id);
             
             //$middle['newss_list']             = $this->obj_news->show_active_news();
             
             $middle['post_name']           = $data[0]['post_name'];
             $middle['post_description']     = $data[0]['post_description'];               
             $middle['post_image']     = $data[0]['post_media_name'];   
             $middle['post_is_active']       = $data[0]['post_is_active'];   
             $config = array(
               array(
                     'field'   => 'post_name',
                     'label'   => 'Slider Post Name',
                     'rules'   => 'trim|required|xss_clean|alpha'
                  ),
                array(
                 'field'   => 'post_description',
                 'label'   => 'Description',
                 'rules'   => 'trim|xss_clean'
                ),
                
            );

        $this->form_validation->set_rules($config);        
        if ($this->form_validation->run() == FALSE)
        {
            $middle['layout'] = 'admin/slider/add';
            $this->template->set_data('middle',$middle);
            $this->template->load();   
           
        }
        else
        {   
            
            $post_name        = $this->input->post('post_name');
            $post_description  = $this->input->post('post_description');   
            $post_is_active    = $this->input->post('post_is_active');
            $upload_result = $this->do_upload_file();
            $post_image = $upload_result;
            $post_type = '';
            $file_extension = substr(strrchr($post_image,'.'),1);
            if($file_extension == 'gif' || $file_extension =='jpg' || $file_extension=='png' || $file_extension='jpeg'){
                $post_type = 'image';
            }else if($file_extension == 'mov' || $file_extension =='avi' || $file_extension=='wmv'){
                $post_type = 'video';
            }
            $user_id = $this->admin_session_data['user_id'];
            if($post_image!=''){
                $save_data = array(
                    
                    'user_id'  =>$user_id,
                    'post_name'=>$post_name,                
                    'post_description'=>$post_description,
                    'post_type'       => $post_type, 
                    'post_media_name' => $post_image, 
                    'post_is_active'=>$post_is_active,                    
                    'post_is_deleted'=>'0'
                    );

            }else{
                $save_data = array(
                    
                    'user_id'  =>$user_id,
                    'post_name'=>$post_name,                
                    'post_description'=>$post_description,
                    'post_type'       => $post_type,                      
                    'post_is_active'=>$post_is_active,                    
                    'post_is_deleted'=>'0'
                    );

            }
            //echo $post_image;
            //echo $post_type;
            //print_r($save_data); die;
            $this->obj_post->update_post($id,$save_data);
            
            $this->session->set_flashdata('message','Slider Post Updated Successfully.');
            redirect('admin/slider');
        }
       }else{
            $middle['layout'] = 'admin/slider/add';
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
        $result = $this->obj_post->getRecords($this->obj_post->table,array('post_id'=>$id));
        $this->obj_post->save($this->obj_post->table,array('post_is_deleted'=> 1),array('post_id' => $id ));
        $this->session->set_flashdata('message','Slider Post deleted successfully.');
        redirect('admin/slider','refresh');
    }   

}

/* End of file news.php */
/* Location: ./application/controllers/admin/news.php */