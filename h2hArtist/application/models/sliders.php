<?php
class sliders extends MY_Model {

    var $table = "slider_posts";
    //var $table_slider = "slider";
		
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
	
	
	
	public function show_all_post(){
        $data = array();
        $this->db->select('slider_posts.*');
        $this->db->from('slider_posts');
		$this->db->where(array('post_is_deleted' => 0));
		

		$query = $this->db->get();
		//echo $this->db->last_query(); die;
        $data = $query->result_array();
        //print_r($data);
        return $data;
        $this->db->close();
	}

	public function show_active_post(){
		$data = array();
		$query = $this->db->get_where($this->table, array('post_is_deleted' => 0,'post_is_active'=>1));
        $data = $query->result_array();
        return $data;
        $this->db->close();
	}
	
		public function update_post($post_id ='' , $data = ''){
		$this->db->where('post_id', $post_id);
		$this->db->update($this->table, $data);
        $this->db->close();
	}
    
    public function get_post($post_id){
		$result = $this->db->get_where($this->table,array('post_id	' => $post_id));
		return $result->result_array();
        $this->db->close();
		
	}
	
	
	public function delete_post($post_id){
		//$this->db->where('test_profile_id', $profile_Id);
		//$this->db->delete($this->table); 
	}
	
	
	 public function getpostName($id){
        $this->db->select();
        $this->db->from($this->table);
		$this->db->where(array('post_id' => $id));
		$query = $this->db->get();
		$result =  $query->result_array();	
		if(count($result)>0){
			return $result;
		}
		else{
			return '';
		}
        $this->db->close();
    }

}