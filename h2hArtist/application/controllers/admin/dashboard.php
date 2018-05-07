<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends MY_Controller {
	
    var $data       = array();
	var $error      = array();
	var $template   = array();
	var $middle     = array(); 
	var $navigation = '';
	var $breadcrumbs= '';
    var $sidebar    = '';	
    var $role_id	= 0;
    public function __construct() {
        parent::__construct();
        $this->load->model('homes','obj_home');	
    }

	
    /**
     * this is a generic function to get data from model home 
     * function having no parameter
     * function using index view at location admin/dashboard
     * function use to show data with count for total active question,profile type, profiles,users, subjects, 
     * pages,subscriptions,news,concept on dashboard html
     * @access public
    */

	public function index(){   
	    $this->template->set('adminlayout');
        $array = array('artist_category','users');
        foreach($array as $value){
          $middle['total_'.$value] = $this->obj_home->getAlltotal($value);  
        }
        $middle['layout'] = 'admin/dashboard';
        $this->template->set_data('middle',$middle);
        $this->template->load();	  
	}
}

/* End of file dashboard.php */
/* Location: ./application/controllers/admin/dashboard.php */