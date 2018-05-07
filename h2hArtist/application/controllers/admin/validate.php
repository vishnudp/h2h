<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Validate extends MY_Controller {

	var $data      = array();
	var $error     = array();
	var $template  = array();
	var $middle     = ''; 
	var $navigation  = '';
	var $breadcrumbs    = '';
    var $sidebar = '';
    var $upload_data = array();    

    public function __construct() {
        parent::__construct();
       
    }

    /**
       * this is a generic function to give information if a user can access a particular section of admin or not
       * function having no parameter   
       * function using view at location admin/validate/index to show information if user haven't permission for a specific section in admin
       * @access public
    */   
    
    public function index(){
        $this->template->set('adminlayout');
        $middle['layout'] = 'admin/validate/index';       
		$middle['formTitle'] = 'You do not have permission for this section.';
        $this->template->set_data('middle',$middle);
        $this->template->load();
    }
  }
  
  
/* End of file validate.php */
/* Location: ./application/controllers/admin/validate.php */