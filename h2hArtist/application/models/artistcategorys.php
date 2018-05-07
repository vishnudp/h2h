<?php
class Artistcategorys extends MY_Model {

    var $table = "artist_category";
    
		
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
	
	
	
	public function show_all_artist_category(){
        $data = array();
		$query = $this->db->get_where($this->table, array('artist_category_is_deleted' => 0));
        $data = $query->result_array();
        return $data;
        $this->db->close();
	}

	public function show_active_artist_category(){
		$data = array();
		$query = $this->db->get_where($this->table, array('artist_category_is_deleted' => 0,'artist_category_is_active'=>1));
        $data = $query->result_array();
        return $data;
        $this->db->close();
	}
	
		public function update_artist_category($artist_category_id ='' , $data = ''){
		$this->db->where('artist_category_id', $artist_category_id);
		$this->db->update($this->table, $data);
        $this->db->close();
	}
    
    public function get_artist_category($artist_category_id){
		$result = $this->db->get_where($this->table,array('artist_category_id	' => $artist_category_id));
		return $result->result_array();
        $this->db->close();
		
	}
	
	
	public function delete_artist_category($artist_category_id){
		//$this->db->where('test_profile_id', $profile_Id);
		//$this->db->delete($this->table); 
	}
	
	
	 public function getartist_categoryName($id){
        $this->db->select('artist_category_name');
        $this->db->from($this->table);
		$this->db->where(array('artist_category_id' => $id));
		$query = $this->db->get();
		$result =  $query->result_array();	
		if(count($result)>0){
			return $result[0]['artist_category_name'];
		}
		else{
			return '';
		}
        $this->db->close();
    }

}