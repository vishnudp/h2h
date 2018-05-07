<?php
class Privilege extends MY_Model {

    var $table             = "privileges";
    var $table_controllers = "controllers";
    var $table_actions     = "actions";
    
	function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
	
	
	public function get_all_role_actions($select = '*'){		
		$this->db->select($select);
		$this->db->from($this->table);
		
		$query = $this->db->get();	
		if($query->num_rows > 0 ){ 
			return $query->result_array();			
		}else{ 		
			return array();
		}
        $this->db->close();		
	}
	public function get_role_action( $role_id ){		
		$result = $this->db->get_where($this->table,array('role_id' => $role_id));		
		return $result ;
        $this->db->close();	
	}
	public function add_role_action( $controller_id, $role_id , $action_id ){		
		$data = array(
			   'controller_id' => $controller_id,	
               'role_id' => 	$role_id,
               'action_id' =>	$action_id,
       );
	   $this->db->insert($this->table,$data);
       $this->db->close();
	}
	
	public function check_privileges($debug=false)
	{
		$this->admin_session_data = $this->session->userdata("admin_session_data");	
		$role_id = $this->admin_session_data['role_id'];	
		$controller = $this->load->model('controllers'); 
		$controller_id = $this->controllers->get_controller_id($this->router->fetch_class());
		
		
		$action = $this->load->model('action');
		$action_id = $this->action->get_action_id($this->router->fetch_class(),$this->router->fetch_method());
		
		$this->db->select('id');
		$this->db->from($this->table);
		$result = $this->db->where(array('controller_id'=>$controller_id,'action_id'=>$action_id,'role_id'=>$role_id));
		$query = $this->db->get();
		$result =  $query->result_array();	
		
		$check_id =  (isset($result[0]['id'])&&!empty($result[0]['id'])?$result[0]['id']:0);
		if( $debug == true)
		{
			echo "<pre>";
				echo "Checking Controller Id : ".$controller_id."<br/>";
				echo "Checking Role Id : ".$role_id."<br/>";
				echo "Checking Action Id : ".$action_id."<br/>";
				
				
				echo "Checking Controller Name : ". $this->router->fetch_class() . "<br/>";
				echo "Checking Action Name : ". $this->router->fetch_method() . "<br/>";
				
				
				
				echo "Check Id :".$check_id ;
			echo "</pre>";
			die;
		}
		if(!$check_id){
			redirect('admin/validate');
		}
        
		$this->db->close();
		
	}
    
    
    public function get_controller_and_action_by_role_id( $role_id ){
        $result = array();
        $this->db->distinct();
        $this->db->select('P.controller_id,C.controller_name,C.controller_alias');
		$this->db->from($this->table.' AS P');
        $this->db->join($this->table_controllers.' AS C','P.controller_id = C.controller_id', 'left');
        $this->db->where('P.role_id',$role_id);
        $this->db->order_by('C.ordering');
        $query = $this->db->get();
        if($query->num_rows > 0 ){ 
		    $result = $query->result_array();	
		}
        
        if(!empty($result)){
            foreach($result as $key => $res){
                $this->db->select('P.action_id,A.action,A.action_url,A.alias');
                $this->db->from($this->table.' AS P');
                $this->db->join($this->table_actions.' AS A','P.action_id = A.id', 'left');
                $this->db->where('P.role_id',$role_id);
                $this->db->where('P.controller_id',$res['controller_id']);
                $query = $this->db->get();
                if($query->num_rows > 0 ){ 
        		    $result[$key]['action'] = $query->result_array();	
        		}else{
        		    $result[$key]['action'] = array();	
        		}
            }
        }
        return $result ;
        $this->db->close();
        
	}
}