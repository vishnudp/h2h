<?php
class Homes extends MY_Model {

   
    var $table_users           = "users";
    
 //   	var $table_question_banks       = "question_banks";
 //    var $table_options              = "options";
	// var $table_test_profile_setups  = "test_profile_setups";
	// var $table_test_profile_configs = "test_profile_configs";
 //    var $table_answer               = "answers";
    //var $table_group                = "group";
    //var $table_test_profiles        = "test_profiles";
    //var $table_subjects             = "subjects";
    //var $table_uploaded_file        = "uploaded_file";
    var $table_artist_category                 = "artist_category";
    //var $table_static_pages         = "static_pages";
    //var $table_pricing_plan         = "pricing_plan";

	
	var $datestring = "%Y-%m-%d";
	var $dateStringWithTime = "%Y-%m-%d %H:%i:%s";
	var $currentDate = '';
    var $currentDateTime = "";
	
	
	function __construct()
    {
        parent::__construct();
        $this->load->database();

		$this->currentDate = mdate($this->datestring, time()) ;
        $this->currentDateTime = mdate($this->dateStringWithTime, time()) ;
		$this->currentTime = time();
    }
	
    function getAlltotal($string = ''){
        $where ='';$id='';$table='';
        // if($string == 'questions'){
        //     $id = 'question_id';
        //     $where = array('question_is_deleted' => 0,'question_is_active' => 1);
        //     $table = $this->table_question_banks;
        // }
        // if($string == 'group'){
        //     $id = 'group_id';
        //     $where = array('group_is_deleted' => 0,'group_is_active' => 1);
        //     $table = $this->table_group;
        // }
        
        
        
        if($string == 'users'){
            $id = 'user_id';
            $where = array('is_deleted' => 0,'is_active' => 1);
            $table = $this->table_users;
        }
        
        // if($string == 'subjects'){
        //     $id = 'subject_id';
        //     $where = array('subject_is_deleted' => 0,'subject_is_active' => 1,'subject_parent_id' => 0);
        //     $table = $this->table_subjects;
        // }
        
        // if($string == 'pages'){
        //     $id = 'page_id';
        //     $where = array('is_deleted' => 0,'is_active' => 1);
        //     $table = $this->table_static_pages;
        // }
        
        // if($string == 'subscriptions'){
        //     $id = 'plan_id';
        //     $where = array('plan_is_deleted' => 0,'plan_is_active' => 1);
        //     $table = $this->table_pricing_plan;
        // }
        
        if($string == 'artist_category'){
            $id = 'artist_category_id';
            $where = array('artist_category_is_deleted' => 0,'artist_category_is_active' => 1);
            $table = $this->table_artist_category;
        }
        
        // if($string == 'concept'){
        //     $id = 'subject_id';
        //     $where = array('subject_parent_id !='=>0,'subject_is_active' => 1);
        //     $table = $this->table_subjects;
        // }
        ##################### Total  #######################
        $this->db->select($id);
        $this->db->from($table);
		$this->db->where($where);
		$query = $this->db->get();
		return $query->num_rows();
        $this->db->close();
        ##################### Total End ###################
        
    }
    
    // public function getFootercontent(){
    //     $res = array();
    //     $wheregroup = array('group_is_active'=>1,'group_is_deleted'=>0);
    //     $this->db->select('group_id,group_name,group_description');
    //     $this->db->from($this->table_group);
    //     $this->db->where($wheregroup);
    //     $query = $this->db->get();
    //     $result = $query->result_array();
    //     if(!empty($result[0])){
    //         foreach($result as $key => $value){
    //             $wheregroup = array('group_id' => $value['group_id'],'group_is_active'=>1,'group_is_deleted'=>0);
    //             $result[$key][$value['group_name']] = $this->getRecords($this->table_group,$wheregroup);
    //         }
    //     }
    //     #pr($result);
    //     return $result;
    //     $this->db->close();
    // }

    // public function getNavigationcontent(){
    //     $res = array();
    //     $page_slug = 'home-text';
    //     $this->db->select('*');
    //     $this->db->from('static_pages');        
    //     $where = array('is_active'=>1,'is_deleted'=>0,'is_top'=>1);
    //     $this->db->where($where);  
    //     $this->db->order_by('page_order');     
    //     $this->db->where('page_slug !=', $page_slug);
    //     $query = $this->db->get();
    //     $res['all_pages'] = $query->result_array();
    //     return $res;
    //     $this->db->close();
    // }

    // public function getFooterNavigationcontent(){
    //     $res = array();
    //     $page_slug = 'home-text';
    //     $this->db->select('*');
    //     $this->db->from('static_pages');        
    //     $where = array('is_active'=>1,'is_deleted'=>0,'is_top'=>0);
    //     $this->db->where($where);       
    //     $this->db->where('page_slug !=', $page_slug);
    //     $this->db->order_by('page_order');
    //     $query = $this->db->get();
    //     $res['all_pages'] = $query->result_array();
    //     return $res;
    //     $this->db->close();
    // }

    // public function getProfilemenucontent($test_profile_id=''){
    //     $res = array();
    //     $where = array('test_profile_id'=>$test_profile_id);
    //     $this->db->select('*');
    //     $this->db->from('test_profiles'); 
    //     $this->db->where($where);   
    //     $query = $this->db->get();
    //     $res = $query->result_array();
    //     return $res;
    //     $this->db->close();
    // }



}
