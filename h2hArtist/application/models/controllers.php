<?php
class Controllers extends MY_Model {

    var $table = "controllers";
	function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
	
	
	public function get_all_controllers($select = '*'){		
		$this->db->select($select);
		$this->db->from($this->table);
		$query = $this->db->get();
		//print_r($this->db->last_query()).'<hr>';		
		if($query->num_rows > 0 ){ 
			return $query->result_array();			
		}else{ 		
			return array();
		}		
	}
	public function get_controller_id($controller_name){
		$this->db->select('controller_id');
		$this->db->from($this->table);
		$result = $this->db->where('controller_name', $controller_name);
		$query = $this->db->get();
		//print_r($this->db->last_query()).'<hr>';
		$result =  $query->result_array();	
		
		return (isset($result[0]['controller_id'])&&!empty($result[0]['controller_id'])?$result[0]['controller_id']:0);
        $this->db->close();
	}
	
	public function add_controller($controller_name,$alias,$ordering = false)
	{
		$this->db->select('controller_id');
		//$this->db->where('controller_alias',$alias);
		$this->db->where('controller_name',$controller_name);
		$this->db->from($this->table);
		$query = $this->db->get();
  
		$result =  $query->result_array();	
		 //print_r(count($result)).'<hr>'; die;
		if(count($result))
		{
			  
			$this->session->set_flashdata('message','<font style="color:red;">This controller name already exists.</font>');
			redirect(base_url().'admin/privileges/add_controller');
		}
		else
		{
			$data['controller_name']= $controller_name;
            $data['controller_url']= '/'.$controller_name;
			$data['controller_alias']= ucfirst($alias);
            $data['ordering']= $ordering;
			if ( $this->db->insert($this->table,$data) )
			{
				$this->session->set_flashdata('message','Controller added successfully.</font>');
				redirect(base_url().'admin/privileges/index');
			}
		}
        $this->db->close();
	}
}