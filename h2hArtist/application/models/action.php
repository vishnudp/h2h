<?php
class Action extends MY_Model {

    var $table = "actions";
	function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
	
	
	public function get_all_actions($select = '*'){		
		$this->db->select($select);
		$this->db->from($this->table);
		
		$query = $this->db->get();
		//print_r($this->db->last_query()).'<hr>';		
		if($query->num_rows > 0 ){ 
			return $query->result_array();			
		}else{ 		
			return array();
		}
        $this->db->close();		
	}
	public function get_all_action_by_controller($controller_id){		
		
		$result = $this->db->get_where($this->table,array('controller_id' => $controller_id));	
		return $result->result_array();
        $this->db->close();
		
	}
	public function get_action_id($controller_name,$action_name){
		$controller = $this->load->model('controllers');
		$controller_id = $this->controllers->get_controller_id($controller_name);
		
		$this->db->select('id');
		$this->db->from($this->table);
		$result = $this->db->where(array('action'=>$action_name,'controller_id'=>$controller_id));
		$query = $this->db->get();
		$result =  $query->result_array();	
		return (isset($result[0]['id'])&&!empty($result[0]['id'])?$result[0]['id']:0);
        $this->db->close();
	}
	public function add_action($controller_id,$action,$alias)
	{
		$this->db->select('id');
		$this->db->where(array('controller_id'=>$controller_id,'action'=>$action));
		$this->db->from($this->table);
		$query = $this->db->get();
		$result =  $query->result_array();	
		if(count($result))
		{  
			$this->session->set_flashdata('message','<font style="color:red;">This action alredy exists with associated controller.</font>');
			redirect(base_url().'admin/privileges/add_action');
		}
		else
		{
			$data['controller_id']= $controller_id;
			$data['action']= $action;
            $data['action_url']= '/'.$action;
			$data['alias']= ucfirst($alias);
			if ( $this->db->insert($this->table,$data) )
			{
				$this->session->set_flashdata('message','Action added successfully with associated controller.</font>');
				redirect(base_url().'admin/privileges/index');
			}
		}
        $this->db->close();
	}
	
}