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
	 
	   if(empty($this->data['user_result'][0]['user_config_id'] )){
	   
	   	  $middle['formTitle']    = 'Add Bank Details';
		  $middle['buttonText']   = 'Update';
		  $config = array(
				  array(
						 'field'   => 'vat_number',
						 'label'   => 'Vat Number',
						 'rules'   => 'trim|required|xss_clean'
					  ),
				   array(
						 'field'   => 'address1',
						 'label'   => 'Address1',
						 'rules'   => 'trim|required|xss_clean'
					  ),
				   array(
						 'field'   => 'address2',
						 'label'   => 'Address2',
						 'rules'   => 'trim|required|xss_clean'
					 ),
				   array(
						 'field'   => 'ac_number',
						 'label'   => 'Account Number',
						 'rules'   => 'trim|required|xss_clean'
					 ),
				   array(
						 'field'   => 'bank_short_code',
						 'label'   => 'Bank Short Code',
						 'rules'   => 'trim|required|xss_clean'
					 ),
				   array(
						 'field'   => 'bank_name',
						 'label'   => 'Bank Name',
						 'rules'   => 'trim|required|xss_clean'
					 )
					 
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
				//pr($_POST); die;			
				$vat_number        = $this->input->post('vat_number');
				$address1        = $this->input->post('address1');            
				$address2  = $this->input->post('address2');			
				$bank_short_code     = $this->input->post('bank_short_code');
				$account_number    = $this->input->post('ac_number');
				$bank_name    = $this->input->post('bank_name');
				$user_id = $id;		
				$save_data = array(
						'vat_number'=>$vat_number,
						'address1'=>$address1,
						'address2'=>$address2,
						'bank_short_code'=>$bank_short_code,
						'ac_number' => $account_number,
						'bank_name'=>$bank_name,
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
			
		  $config = array(
				  array(
						 'field'   => 'vat_number',
						 'label'   => 'Vat Number',
						 'rules'   => 'trim|required|xss_clean'
					  ),
				   array(
						 'field'   => 'address1',
						 'label'   => 'Address1',
						 'rules'   => 'trim|required|xss_clean'
					  ),
				   array(
						 'field'   => 'address2',
						 'label'   => 'Address2',
						 'rules'   => 'trim|required|xss_clean'
					 ),
				   array(
						 'field'   => 'ac_number',
						 'label'   => 'Account Number',
						 'rules'   => 'trim|required|xss_clean'
					 ),
				   array(
						 'field'   => 'bank_short_code',
						 'label'   => 'Bank Short Code',
						 'rules'   => 'trim|required|xss_clean'
					 ),
				   array(
						 'field'   => 'bank_name',
						 'label'   => 'Bank Name',
						 'rules'   => 'trim|required|xss_clean'
					 )
					 
				);
	
			$this->form_validation->set_rules($config);
		   
			if ($this->form_validation->run() == FALSE)
			{
				$this->middle = 'admin/userconfig/index';
				
			}
			else
			{   
				//pr($this->input->post()); die;			
				$vat_number        = $this->input->post('vat_number');
				$address1        = $this->input->post('address1');            
				$address2  = $this->input->post('address2');			
				$bank_short_code     = $this->input->post('bank_short_code');
				$account_number    = $this->input->post('ac_number');
				$bank_name    = $this->input->post('bank_name');
							
				$save_data = array(
						'vat_number'=>$vat_number,
						'address1'=>$address1,
						'address2'=>$address2,
						'bank_short_code'=>$bank_short_code,
						'ac_number' => $account_number,
						'bank_name'=>$bank_name
						);
						
				$this->obj_user->save($this->obj_config->table, $save_data, array( 'user_id'=>$id ) );			
				$this->session->set_flashdata('message','Bank details updated successfully.');
				redirect('admin/userconfig','refresh');
			}       
		
			}
	
	
	
	}

}