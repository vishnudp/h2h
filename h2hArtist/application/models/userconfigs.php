<?php
class Userconfigs extends MY_Model {
	var $table = "userconfig";
	//var $table_role = TBL_ROLE;
	var $datestring = "%Y-%m-%d";
	var $dateStringWithTime = "%Y-%m-%d %H:%i:%s";
	var $currentDate = '';
    var $currentDateTime = '';	
	
	
    function __construct()
    {
        parent::__construct();
        $this->load->database();
		$this->currentDate = mdate($this->datestring, time()) ;
        $this->currentDateTime = mdate($this->dateStringWithTime, time()) ;
		$this->currentTime = time();
    }
    
		//Get users	
	public function get_user($where = NULL,$select='*',$order_by = NULL){	
	  $this->db->select($select);
	  $this->db->from($this->table);
	  $this->db->where($where);
	  $result =  $this->db->get();
	   //print_r($this->db->last_query()); die;
	   return $result->result_array();	
	}
	
}