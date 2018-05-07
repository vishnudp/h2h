<?php
class Ajaxs extends MY_Model {

    var $datestring = "%Y-%m-%d";
	var $dateStringWithTime = "%Y-%m-%d %H:%i:%s";
	var $currentDate = '';
    var $currentDateTime = '';
	
	function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
	

	
	public function update_status($id,$table,$fieldname,$data,$unique_key_field){
        
		$this->db->where($unique_key_field, $id);
		$this->db->update($table, $data);
        $result = $this->db
				->select($fieldname)
				->from($table)
				->where($unique_key_field,$id)
				->get();
		#echo $this->db->last_query(); die;
		return $result->result_array();
	}
    
   	public function get_status($id,$table,$fieldname,$unique_key_field){
        $result = $this->db
				->select($fieldname)
				->from($table)
				->where($unique_key_field,$id)
				->get();
		#echo $this->db->last_query(); die;
		$status =  $result->result_array();
        if(isset($status[0])){
            return $status[0][$fieldname];
        }
        $this->db->close();
	}
    
    
   	public function getsectionbyid(){
        $data = array();
        $this->table = 'gk_test_profiles';
         $where = array('profile_is_deleted' => 0,'profile_is_active' =>1);
		
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where($where);
        $this->db->order_by('profile_title','ASC');
	
        $query = $this->db->get();
        $data = $query->result_array();
        return $data;
        $this->db->close();
	}
	
	public function getsubsectionbyid($subsectionid){	
        $data = array();
        $this->table = 'gk_test_profiles';
		if(!empty($subsectionid)):
        $where = array('profile_is_deleted' => 0,'profile_is_active' =>1,'test_profile_id' =>$subsectionid);
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where($where);
        $this->db->order_by('profile_title','ASC');
        $query = $this->db->get();
        $data = $query->result_array();  
		endif;
        return $data;
        $this->db->close();	
	}
}
