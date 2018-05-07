<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pages extends MY_Model {

   	var $table                = "static_pages";	
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
	
	public function show_all_pages($where = array()){        
		$data = array();		
		$query = $this->db->get_where($this->table, $where);
		//print_r($this->db->last_query());
        $data = $query->result_array();
        return $data;
        $this->db->close();
	}	
	public function delete($page_id){
		//$this->db->where('page_id', $page_id);
		//$this->db->delete($this->table);        
        
	}
	
}
