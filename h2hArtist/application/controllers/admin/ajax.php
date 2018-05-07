<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ajax extends MY_Controller {

	var $data      = array();
	var $error     = array();
	var $template  = array();
	var $middle     = ''; 
	var $navigation  = '';
	var $breadcrumbs    = '';
    var $sidebar = '';

    public function __construct() {
        parent::__construct();
        $this->load->model('ajaxs','obj_ajaxs');
		$this->load->model('privilege');	
    }
          

    /**
     * this is a generic function to change status for active and inactive of a row entry
     * function having no parameter
     * on behalf of id the function will update the status 
     * @access public 
     */

    public function change_status(){
		#$this->privilege->check_privileges();
        $id = $this->input->post('id');
        $table = $this->input->post('table');
        $unique_key_field = $this->input->post('unique_key_field');
        $fieldname = $this->input->post('fieldname');
        $status = $this->obj_ajaxs->get_status($id,$table,$fieldname,$unique_key_field);
        if($status == 1){
            $data = array(
                $fieldname => '0'
            );
        }else{
            $data = array(
                $fieldname => '1'
            );
        }
        $result = $this->obj_ajaxs->update_status($id,$table,$fieldname,$data,$unique_key_field);
        if(isset($result[0])){
            echo $result[0][$fieldname];
        }   
    }
	
    /** function not in use **/

	// public function change_priority(){
	// 	 $this->privilege->check_privileges();
 //         $id = $this->input->post('id');
 //         $table = $this->input->post('table');
 //         $fieldname = $this->input->post('fieldname');
 //         $status = $this->obj_ajaxs->get_status($id,$table,$fieldname);
	// 	 if($status == 1){
	// 	 	$data = array($fieldname => '0');
	// 	}else{
	// 		$data = array($fieldname => '1');
	// 	}
 //        $result = $this->obj_ajaxs->update_status($id,$table,$fieldname,$data);
 //        if(isset($result[0])){
 //            echo $result[0][$fieldname];
 //        }   
 //    }
 

    /**
     * this is a generic function to fill select box for subjects
     * function having no parameter  
     * print select box on html
     * @access public 
     */
    
    public function fillselect(){
        $all_section = $this->obj_ajaxs->getsectionbyid();		
        $str = '';
        $subject_id = '';
        if($subject_id == ''){
            $selected = '"selected"';
        }
        $str = '<select name="subject_id" id="subject_id" class="form-control" data-required="true" onchange="getsubSection(this.options[this.selectedIndex].value)">';
        $str.= '<option value=""'.$selected.'>--Choose--</option>';
        if(!empty($all_section)){
            foreach($all_section as $rows){
                if($subject_id == $rows['subject_id']){
                    $selected = '"selected"';
                }else{
                   $selected = 'selected=""'; 
                }
            $str.= '<option value="'.$rows['subject_id'].'"'.$selected.'>'.$rows['subject_title'].'</option>';   
            }
        }
        $str.= '</select>'; 
        echo $str; 
    }
	


     /**
     * this is a generic function to fill select box for subjects
     * function having no parameter  
     * print select box on html
     * @access public 
     */
    

	 public function fillselect_new(){
	 $id = $this->input->post('id');
		$selected_id = $this->input->post('selected_id');				
	
        $all_section = $this->obj_ajaxs->getsectionbyid();	
        	
        $str = '';
        $str = '<select name="subject_id" id="subject_id" class="form-control" data-required="true" onchange="getsubSection(this.options[this.selectedIndex].value,'.$selected_id.')">';
        if($selected_id ==''){
	    	$str.= '<option value="" selected="selected">--Choose--</option>';
		}else{
			$str.= '<option value="">--Choose--</option>';
		}
        if(!empty($all_section)){
            foreach($all_section as $rows){
                if($rows['test_profile_id'] == $selected_id){
                   $selected = 'selected="selected"'; 
                }else{
                   $selected = ''; 
                }
            $str.= '<option value="'.$rows['test_profile_id'].'"'.$selected.'>'.$rows['profile_title'].'</option>';   
            }
        }
        $str.= '</select>'; 
        echo $str; 
    }


    /**
     * this is a generic function to fill select box for concepts
     * function having no parameter  
     * print select box for all concept behalf of subject id choosen on html
     * @access public 
     */
    
	
	public function fillsubSection(){
        $id = $this->input->post('id');
	
		$selected_id = $this->input->post('selected_id');
        $all_sub_section = $this->obj_ajaxs->getsubsectionbyid($id);            
        $str = '';        
        $str = '<select name="subject_parent_id" id="subject_parent_id" class="form-control" data-required="true">';
        if($selected_id ==''){
	    	$str.= '<option value="" selected="selected">--Choose--</option>';
		}else{
			$str.= '<option value="">--Choose--</option>';
		}
        if(!empty($all_sub_section)){
            foreach($all_sub_section as $rows){
                if($rows['test_profile_id'] == $selected_id){
                   $selected = 'selected="selected"'; 
                }else{
                   $selected = ''; 
                }
            $str.= '<option value="'.$rows['test_profile_id'].'"'.$selected.'>'.$rows['profile_title'].'</option>';   
            }
        }
        $str.= '</select>'; 
        echo $str; 
    }
	
}

/* End of file ajax.php */
/* Location: ./application/controllers/admin/ajax.php */
