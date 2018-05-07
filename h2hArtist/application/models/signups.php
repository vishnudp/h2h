<?php
class Signups extends MY_Model {
	var $table = "users";
    var $table_session = "sessions";
    var $table_payment_reference = "payment_reference";
	var $table_role = "role";
    var $table_country ="country";
    var $table_sales   ="sales";
    var $table_zone ="zone";
    var $table_city ="cities";
    var $table_subscription ="subscriptions";
    var $table_orders = "orders";
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
    
  function getCountry(){
        $this->db->select('*');
        $this->db->from($this->table_country);
        $query = $this->db->get();        
        if($query->num_rows() > 0 )
        {
            return $query->result_array(); 
        }
        else{
            return false;
        }
        $this->db->close();
  }

  function getState($id=''){
        $this->db->select('*');
        $this->db->from($this->table_zone);
        $this->db->where('country_id',$id);
        $query = $this->db->get();    
        //echo $this->db->last_query(); die;     
        if($query->num_rows() > 0 )
        {
            return $query->result_array(); 
        }
        else{
            return false;
        }
        $this->db->close();
  }

  function getCity($id=''){
        $this->db->select('*');
        $this->db->from($this->table_city);
        $this->db->where('zone_id',$id);
        $query = $this->db->get();    
       //echo $this->db->last_query(); die;     
        if($query->num_rows() > 0 )
        {
            return $query->result_array(); 
        }
        else{
            return false;
        }
        $this->db->close();
  }
	
  function checkUser($users_uid = '',$users_password = ''){
	    $salt = $this->getSalt($users_uid);
	    $users_password = generateHash($users_password,$salt);
	    $users_uid = clean($users_uid);
        $users_password   = clean($users_password);
		$this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('email',$users_uid);
        $this->db->where('user_password',$users_password);
        $this->db->where('is_deleted',0);
        $this->db->where('is_active',1);
        #$this->db->or_where('username',$users_uid);
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
        $this->db->where('email',$code);
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
    
    public function show_All_users(){
		$result = $this->db
				->select('A.*')
				->from('wbt_users AS A')		
				->get();
		
		return $result->result_array();
        $this->db->close();
	}


}



