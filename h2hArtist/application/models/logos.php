<?php
class Logos extends MY_Model {

    var $table = "logo";		
	var $datestring = "%Y-%m-%d";
	var $dateStringWithTime = "%Y-%m-%d %H:%i:%s";
	var $currentDate = '';
    var $currentDateTime = '';
	
	function __construct(){
		parent::__construct();
		$this->load->database();
		$this->currentDate = mdate($this->datestring, time()) ;
		$this->currentDateTime = mdate($this->dateStringWithTime, time()) ;
		$this->currentTime = time();
     }
	
	public function show_all_logo($where = array()){        
		$data = array();		
		$query = $this->db->get_where($this->table, $where);
		//print_r($this->db->last_query());
        $data = $query->result_array();
        return $data;
        $this->db->close();
	}
	
	function get_active_logo(){
	   $result = array();
	   $this->db->distinct();
	   $this->db->select('*');
	   $this->db->from($this->table);
	   $this->db->where(array('logo_is_active'=>1,'logo_is_deleted'=>0));
	   $this->db->order_by('logo_id', 'RANDOM'); 
	   //$this->db->limit(10);	   
	   $query = $this->db->get();
	   $result =  $query->result_array();
	   return $result;
       $this->db->close();
	}
}