<?php
class Roles extends MY_Model {

    var $table = "role";
    var $datestring = "%Y-%m-%d";
	var $dateStringWithTime = "%Y-%m-%d %H:%i:%s";
	var $currentDate = '';
    var $currentDateTime = '';
	
	function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
	
	
	
	public function show_all_roles(){
		//$result = $this->db->get($this->table);
		
		$result = $this->db
				->select('*')
				->from($this->table)
				->get();
		
		return $result->result_array();
		
		
	}

	public function show_all_active_roles(){
		//$result = $this->db->get($this->table);
		
		$result = $this->db->get_where($this->table,array('role_is_active' => 1));		
		
		return $result->result_array();
        $this->db->close();
		
		
	}
	
	public function edit_role($role_id){
		$result = $this->db->get_where($this->table,array('role_id' => $role_id));
		return $result->result_array();
		$this->db->close();
	}
    
    public function gettitleRole($role_id){
        $res = '';
		$result = $this->db->get_where($this->table,array('role_id' => $role_id));
		$data = $result->result_array();
        if(!empty($data[0])){
            $res = $data[0]['role_title'];
        }
	   return $res;
       $this->db->close();	
	}
	
	public function update_role($role_id,$data){

		$this->db->where('role_id', $role_id);
		$this->db->update($this->table, $data);
        $this->db->close();
	}
	
	public function delete_role($role_id,$data){
		$this->db->where('role_id', $role_id);
		$this->db->update($this->table,$data);
        $this->db->close(); 
	}
    
}