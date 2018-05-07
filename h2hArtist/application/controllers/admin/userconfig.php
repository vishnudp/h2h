<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Profile controller
 */
class Userconfig extends MY_Controller {
	
/**
 * class constructor.
 */	
	function __construct() {
        parent::__construct();
		$this->load->model('userconfigs','obj_config');
		$this->load->model('users','obj_user');
		$this->admin_session_data = $this->session->userdata("admin_session_data");

    }

/**
 * default function index.
 * validate user data, check and make user login.
 * @return user data.
 */		
	public function index()	{   
	   $this->template->set('adminlayout');	
	   $id = $this->admin_session_data['user_id'];
	   $middle['user_result'] = $this->obj_config->get_user(array('user_id'=> $id));
	   #pr($middle['user_result']);
	   if(empty($middle['user_result'][0]['user_config_id'] )){
	      	
	   	  $middle['formTitle']    = 'Add Bank Details';
		  $middle['buttonText']   = 'Update';
		  $middle['bank_transfer_details']     = $this->input->post('bank_transfer_details');
		  $path='../../assets/js/ckfinder';       
		  $width='850px';
		  parent::editor($path,$width);
		  $config = array(
				  array(
						 'field'   => 'bank_transfer_details',
						 'label'   => 'Bank Transfer Details',
						 'rules'   => 'trim|required|xss_clean'
					  ),				   
				);
	
			$this->form_validation->set_rules($config);
		   
			if ($this->form_validation->run() == FALSE)
			{
				$middle['layout'] = 'admin/userconfig/index';
				$this->template->set_data('middle',$middle);
				$this->template->load();
			}
			else
			{   
						
				$bank_transfer_details = $this->input->post('bank_transfer_details');
				$user_id = $id;		
				$save_data = array(						
						'bank_transfer_details'=>$bank_transfer_details,
						'user_id' => $id
						);						
				$this->obj_user->save($this->obj_config->table, $save_data );			
				$this->session->set_flashdata('message','Bank details added successfully.');
				redirect('admin/userconfig','refresh');
			}       
	    }
		else{
		
		  $middle['formTitle']    = 'Edit Bank Details';
		  $middle['buttonText']   = 'Update';
		  $middle['bank_transfer_details']     = $this->input->post('bank_transfer_details');
		  $path='../../assets/js/ckfinder';       
		  $width='850px';
		  parent::editor($path,$width);
		  $config = array(
				  array(
						 'field'   => 'bank_transfer_details',
						 'label'   => 'Bank Transfer details',
						 'rules'   => 'trim|required|xss_clean'
					  ),
					 
				);
	
			$this->form_validation->set_rules($config);
		   
			if ($this->form_validation->run() == FALSE)
			{
				$middle['layout'] = 'admin/userconfig/index';
				$this->template->set_data('middle',$middle);
				$this->template->load();
			}
			else
			{   
					
				$bank_transfer_details = $this->input->post('bank_transfer_details');
				$save_data = array(
						'bank_transfer_details'=>$bank_transfer_details,						
						);						
				$this->obj_user->save($this->obj_config->table, $save_data, array( 'user_id'=>$id ) );			
				$this->session->set_flashdata('message','Bank details updated successfully.');
				redirect('admin/userconfig','refresh');
			}       
		
			}
	}

}