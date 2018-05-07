<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Privileges extends MY_Controller {

	var $data      = array();
	var $error     = array();
	var $template  = array();
	var $middle     = ''; 
	var $navigation  = '';
	var $breadcrumbs    = '';
    var $sidebar = '';

    public function __construct() {
        parent::__construct();
        $this->load->model(array('action','roles','controllers','privilege'));
		$this->load->model('users','obj_customer');
		$this->admin_session_data = $this->session->userdata("admin_session_data");
    }
          
    /**
       * this is a generic function to show all role actions,active roles, all controllers
       * function having no parameter   
       * function using action,roles, controller, privilege module with users module to whome role assigned
       * function set all privileges on view at location admin/action/index 
       * @access public
    */

	public function index()
	{	
	    $this->template->set('adminlayout');        
		$assigned_privileges = $this->privilege->get_all_role_actions();
		$role_privileges = array();
		foreach($assigned_privileges as $assigns)
		{
			$role_privileges[$assigns['role_id']][] = $assigns['action_id'];
		}
		$middle['assigned_privileges'] = $role_privileges;		
		$middle['result'] = $this->action->get_all_actions();
		$middle['groups'] = $this->roles->show_all_active_roles();
		$controllers = array();
		$Pcontrollers = $this->controllers->get_all_controllers();
		
		foreach($Pcontrollers as $controller)
		{
			$controllers[ $controller['controller_id'] ] = $controller;
			$controllers[ $controller['controller_id'] ]['actions'] = $this->action->get_all_action_by_controller($controller['controller_id']);
			
		}
        
		$middle['controllers'] = $controllers;
        
		$middle['formTitle'] = 'Privilege Manager';
        
        $middle['layout'] = 'admin/action/index';
        
        $this->template->set_data('middle',$middle);
		
		if( is_array( $this->input->post('privileges') ) && count ($this->input->post('privileges')) > 0) 
		{
			
			$this->db->query("TRUNCATE tg_privileges");
			$privileges = $this->input->post('privileges');
			
			$count_privilege = count($privileges);			
			
			$i = 1 ;
			foreach($privileges as $role_id => $privilege )
			{
				foreach($privilege as $pri )
				{
					$data['role_id']  = $role_id ;
					$controller_action = explode('_',$pri );
					
					$data['controller_id'] = $controller_action[0];
					$data['action_id'] = $controller_action[1];
					if( (isset($data['role_id']) && !empty($data['role_id'])) && (isset($data['controller_id']) && !empty($data['controller_id'])) && (isset($data['action_id']) && !empty($data['action_id'])) )
					{
						$this->privilege->add_role_action($data['controller_id'],$data['role_id'],$data['action_id']);
						$this->session->set_flashdata('message','Privileges assigned successfully.');
					}
				}
				if($i == $count_privilege){
					redirect('admin/privileges/index');
				}
				$i ++;
			}
		}
		
        $this->template->load();
	}
	
	/**
	 * this is a generic function to add data about controller
	 * function having no parameter
	 * function using view to add controller 
 	 * @access public
	*/


	public function add_controller()
	{
	    #$this->privilege->check_privileges();
        $this->template->set('adminlayout');
        $middle['layout'] = 'admin/action/add_controller';
        $middle['formTitle'] = 'Add Controller';
        $middle['buttonText'] = 'Add Controller';
        $this->template->set_data('middle',$middle);
        
		
		if( $this->input->post('controller_name') != '')
		{
			$this->controllers->add_controller($this->input->post('controller_name'),$this->input->post('alias'),$this->input->post('ordering'));
			
		}
		$this->template->load();
	}

	/**
	 * this is a generic function to add data about action
	 * function having no parameter
	 * function using view to add action for controller 
 	 * @access public
	*/

	public function add_action()
	{
	    #$this->privilege->check_privileges();
        $this->template->set('adminlayout');
		$middle['layout'] = 'admin/action/add_action';
		$middle['formTitle'] = 'Add Action';
		$middle['buttonText'] = 'Add Action';
		$middle['controllers'] = $this->controllers->get_all_controllers();
		
		if( $this->input->post('controller_id') != '' && $this->input->post('action') != '' && $this->input->post('alias') != '')
		{
			
			$this->action->add_action($this->input->post('controller_id'),$this->input->post('action'),$this->input->post('alias'));
		}
        $this->template->set_data('middle',$middle);
		$this->template->load();
	}


  }

   /* End of file privileges.php */
  /* Location: ./application/controllers/admin/privileges.php */
  ?>