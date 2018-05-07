<?php
class Users extends MY_Model {
	var $table = "users";
    var $table_orders = "orders";
	var $table_role = "role";
    var $block_ip_list_table = "block_ip_list";
    
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
    

	
  function checkUser($users_uid = '',$users_password = ''){
	    $salt = $this->getSalt($users_uid);
	    $users_password = generateHash($users_password,$salt);
	    $users_uid = clean($users_uid);
        $users_password   = clean($users_password);
		$this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('username',$users_uid);
        #$this->db->or_where('email',$users_uid);
        $this->db->where('user_password',$users_password);
        $this->db->where('is_deleted',0);
        $this->db->where('is_active',1);
        $query = $this->db->get();
		if($query->num_rows()== 1)
		{
			return true;
		}
		else{
			return false;
		}
        $this->db->close();
	}
    
    function getSalt($code = ''){
            $pass = '';
            $code = clean(trim($code));
            $this->db->select('user_password');
            $this->db->from($this->table);
            $this->db->where('username',$code);
            #$this->db->or_where('email',$code);
            $this->db->where('is_deleted',0);
            $this->db->where('is_active',1);
            $query = $this->db->get();
            $data = $query->result_array();
            if(isset($data[0])){
                $pass = $data[0]['user_password'];
            }
            return $pass;
            $this->db->close();
        }
        
    function getSalt_reset($code = ''){
        $auth_key = '';
        $code = clean(trim($code));
        $this->db->select('auth_key');
        $this->db->from($this->table);
        $this->db->where('key_code',$code);
        $this->db->where('is_deleted',0);
        $this->db->where('is_active',1);
        $query = $this->db->get();
        $data = $query->result_array();
        if(isset($data[0])){
            $auth_key = $data[0]['auth_key'];
        }
        return $auth_key;
        $this->db->close();
    }
    
    public function show_All_users($where = ''){
		$result = $this->db
				->select('A.*, B.role_title')
				->from('tg_users AS A')
				->join('tg_role AS B', 'A.role_id = B.role_id', 'left outer')
                ->where($where)
				->get();
		#echo $this->db->last_query();
		return $result->result_array();
        $this->db->close();
	}
    
    public function getName($user_id){
            $name = '';
            $user_id = clean(trim($user_id));
            $this->db->select('first_name,last_name');
            $this->db->from($this->table);
            $this->db->where('user_id',$user_id);
            $this->db->where('is_deleted',0);
            $this->db->where('is_active',1);
            $query = $this->db->get();
            $data = $query->result_array();
            if(isset($data[0])){
                $name = $data[0]['first_name'].' '.$data[0]['last_name'];
            }
            return $name;
            $this->db->close();
    }

    function search_users($where = false ,$custome_query = false ,$num = false, $offset = false,$order_by = false, $count = false, $select = false)
    {
        if(!$select){
             $select = 'A.*, B.role_title';
        }
        
        $this->db->select($select);     
        $this->db->from('tg_users AS A');
        $this->db->join('tg_role AS B', 'A.role_id = B.role_id', 'left outer');
        if(!empty($where)){
            $this->db->where($where);       
        }
        if($custome_query){
            $this->db->where($custome_query);
        }
             
        if($num!="" || $offset!=""){
            $this->db->limit($num, $offset);
        }
                
        if($order_by){ 
           $this->db->order_by($order_by[0], $order_by[1]);
        }   
        else{
           $this->db->order_by('user_id','DESC');
        }
        
        $query = $this->db->get();
       
        
                
        $rec = $query->result_array();
	
        $recount = $query->num_rows;  
    
        if($count) {
            return $recount;    
        }
        
        if($recount > 0)
        {	
	 
            return $rec;
        }else{ 
        
            return false;
        }
        $this->db->close();

    }
}



