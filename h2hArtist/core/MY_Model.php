<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class MY_Model extends CI_Model {

	function MY_Model()
	{	
		parent::__construct();
			
	}
	
	public function getNextAutoIncreament() {		
		
		$query = $this->db->query('SHOW TABLE STATUS LIKE \''.$this->db->dbprefix.$this->table.'\'');
		$last = $query->result_array();
		$last = $last[0]['Auto_increment'];
		return $last;
		$this->db->close();
	}
	
	/**
	 * this is a generic function to save data in db
	 * the 1st parameter is the table name
	 * the 2nd is an array with the data that will be saved
	 * the 3dt is optional. If you give an id the function will update the current id. 
	 * Without id a new entry will add into db
	 * 
 	 * @access public
	 * @param string
	 * @param array
	 * @param integer
	 * @return integer/boolean
	 */
	public function save($table,$columns = array(),$where = array())
	{
		if(empty($where) === false) {
			$this->db->where($where);
			$result = $this->db->update($table, $columns);			
		} else{		
			$result = $this->db->insert($table, $columns);
            $id = $this->db->insert_id();
            return $id;
		}
		
		#print_r($this->db->last_query()); 
		
		if($result) {
			if(empty($where))
				return $this->db->insert_id();
			else
				return true;
		} else
			return false;
        $this->db->close();
	}
	

	/**
	 * this is a generic function to update data in db
	 * the 1st parameter is the table name
	 * the 2nd is an array with the data that will be saved
	 * the 3dt is an array that will used in where condition (AND).
	 * Without where all entry will be updated in selected table
	 * 
 	 * @access public
	 * @param string
	 * @param array
	 * @param array
	 * @return integer/boolean
	 */
	public function updateRecord($table = NULL , $columns = NULL, $where = NULL)
	{
	//echo $table;die;
			if($table == NULL || $columns == NULL)
			{
				return ;
			}
			
		   if($where){
			   $this->db->where($where);
		   }
		   
		   //print_r($this->db->last_query()). '<hr>';
		   $result = $this->db->update($table, $columns);
		   return $result;
		$this->db->close();		
	}
	
	public function checkCardsRecord($table, $where = array())
	{
		$this->db->select('*');
		
		$this->db->where($where);
		
		$query = $this->db->get($table);
		
		//print_r($this->db->last_query()); die;	
		
		if($query->num_rows > 0 )
		{ 
			return $query->result_array();
			
		}
		else{ 
		
			return false ;
		}
        $this->db->close();
	}	


	/**
	 * this is a generic function to get data from db
	 * the 1st parameter is the table name
	 * the 2nd is an array that will used in where condition (AND)
	 * the 3rd is order by an array.array('id','DESC');
	 * the 4th and 5th is num and Limit that is using for Limit
 	 * @access public
	 * @param string
	 * @param array
	 * @return array
	 */	
 public function getRecords($table, $where = NULL,$whereOR = NULL,$order_by=NULL, $num = NULL, $offset = NULL)
	{
		$this->db->select('*');
		
		if($where != NULL )
		{
		 	$this->db->where($where);
		}
        
        if($whereOR != NULL){
            $this->db->or_where($whereOR);
        }
		
		if($num != NULL || $offset != NULL)
		{
			$this->db->limit($num, $offset);
		}
		
		if($order_by)
		{
		   $this->db->order_by($order_by[0], $order_by[1]);
		}	
			
		$query = $this->db->get($table); 
		
		#print_r($this->db->last_query()); echo '<hr>'; 	
				
		if($query->num_rows > 0 )
		{ 
			$ret = $query->result_array();
			$query->free_result();
			return $ret;
			
		}else{ 
		
			$ret = array();
			$query->free_result();
			return $ret;
		}
	
        $this->db->close();
	}
	
	/**
	 * this is a generic function to detele data from db
	 * the 1st parameter is the table name
	 * the 2nd is an array that will used in where condition (AND)
 	 * @access public
	 * @param array
	 * @return integer/boolean	 
	 */	
	
	public function deleteRecord($table, $where = array())
	{
		$this->db->where($where);
		
		$res = $this->db->delete($table); 
		
		//print_r($this->db->last_query()); //die;	
		
		if($res)
			return TRUE;
		else
			return FALSE;
        $this->db->close();
	}
	
	
	/**
	 * this is a generic function to check any records in db
	 * the 1st parameter is the table name
	 * the 2nd is an array that will used in where condition (AND)
 	 * @access public
	 * @param array
	 * @return integer/boolean	 
	 */
	public function checkRecord($table, $where = array())
	{
		$this->db->select('*');
		
		$this->db->where($where);
		
		$query = $this->db->get($table);
		#echo "<br />";
		#print_r($this->db->last_query()); 	
		
		if($query->num_rows > 0 )
		{ 
			return true ;
			
		}else{ 
		
			return false ;
		}
        $this->db->close();
	}	

	
	
	/**
	 * this is a generic function to send email
	 * the 1st parameter is the email as string
	 * the 2nd parameter is a string that will used as Subject
	 * the 3rd parameter is a string(Either HTML or text) that will used as email body
	 * the 4th parameter is a string( Name of user to whome email will be sent)
	 * the 5th parameter is a string used as cc
	 * the 6th parameter is a string used as bcc
 	 * @access public
	 * @param string
	 * @return integer/boolean	 
	 */
	public function sendEmail($to,$subject,$body,$name='',$cc='',$bcc='')
	{
		$mail = new PHPMailer;
		$mail->AddAddress($to, $name);                  
		$mail->From		= $this->config->item('admin_email_from');
		$mail->FromName = $this->config->item('admin_email_from');
		$mail->Subject 	=  $subject;	
		if($cc!=''){
			$mail->AddCC($cc);
		}
		if($bcc!=''){
			$mail->AddBCC($bcc);
		}
		
		$mail->IsSMTP();
		$mail->Host = "mail.dotsquares.com"; 
		$mail->SMTPAuth = true;
		$mail->IsMail();
		$mail->WordWrap = 200; 
		$mail->IsHTML(true);   
		$mail->Body  = $body;
		//echo $mail->Send(); die;
		if($mail->Send())
		{
			return true;
		}else{
			return false;
		}
	   $this->db->close();
	}
	
	
	/**
	 * this is a generic function to send email to all
	 * the 1st parameter array of emails
	 * the 2nd parameter is a string that will used as Subject
	 * the 3rd parameter is a string(Either HTML or text) that will used as email body
	 * the 4th parameter is a string( Name of user to whome email will be sent)
	 * the 5th parameter is a string used as cc
	 * the 6th parameter is a string used as bcc
 	 * @access public
	 * @param Array/string
	 * @return integer/boolean	 
	 */
	public function sendEmailAll($to=array(),$subject,$body,$name='',$cc=array(),$bcc =array())
	{
		$mail = new PHPMailer;
		if(count($to) > 0){
			foreach($to as $v){
			  if($v)
			  {
				$mail->AddAddress($v, $v);	
			  }
			}
			
		}else{
			
			$mail->AddAddress($to, $name);
		}
		                  
		$mail->From		= $this->config->item('admin_email_from');
		$mail->FromName = $this->config->item('admin_email_from');
		$mail->Subject 	=  $subject;
		
		if(!empty($cc)){
			foreach($cc as $cv){
			  if($cv)
			  {
				$mail->AddCC($cv);
			  }
			}
		}
		
		if(!empty($bcc)){
			foreach($bcc as $bccv){
			  if($bccv)
			  {
				$mail->AddBCC($bccv);
			  }
			}
		}	
		
		$mail->IsSMTP();
		$mail->Host = "mail.dotsquares.com"; 
		$mail->SMTPAuth = true;
		$mail->IsMail();		
		$mail->WordWrap = 200; 
		$mail->IsHTML(true);   
		$mail->Body  = $body;
		
		if($mail->Send())
		{
			return true;
		}else{
			return false;
		}
	   $this->db->close();
	}
	
	
	/*
	Get record for drop down
	$resultFormat =  key value pair of list
	*/
	public function getDropdownRecords($table, $where = NULL,$order_by=NULL, $resultFormat = array('id', 'title'), $empty = false)
	{
	
		$this->db->select("{$resultFormat[0]}, {$resultFormat[1]}");
		
		if($where != NULL )
		{
		 	$this->db->where($where);
		}
		
		if($order_by)
		{
		   $this->db->order_by($order_by[0], $order_by[1]);
		}	
		else
		{
		   $this->db->order_by('id', 'DESC');
		}	
			
		//$this->db->order_by('title desc, name asc'); 
		
		$query = $this->db->get($table); 
		
		
		//print_r($this->db->last_query()); die;	
				
		if($query->num_rows > 0 )
		{ 
			return $this->generateFormatedList($query->result_array(), $resultFormat[0], $resultFormat[1], $empty);
			
		}else{ 
		
			return array();;
		}
	
        $this->db->close();
	}
	
	// generate list for dropdown
	public function generateFormatedList($data = array(), $key = 'id', $value = 'title', $empty = false) {
		
		$return = array();
		if($empty) {
			$return[''] = $empty;
		}
		if(!empty($data)) {
			
			foreach($data as $k => $v) {
				
				$return[$v[$key]] = $v[$value];
			}
			
		} 
		
		return $return;
		
	   $this->db->close();	
	}
	
	
	public function fetchAll($return = 'list' , $table="",  $where = array(), $key = 'id', $value = 'title', $empty = false) {
		
		if($table != '') {
		$this->db->select('*');
		if(!empty($where)) {
			$this->db->where($where);
		}
		$this->db->order_by($value, 'ASC');
		$query = $this->db->get($table);
		
		if($return == 'list') {
			//return  $query->result_array();
			return MY_Model::generateFormatedList($query->result_array(), $key, $value, $empty) ;
		
		} else {
		
			return $query->result_array();
			
		}
		
		} else {
			return array();	
		}
		
		$this->db->close();
		
	}
	
	//Fetch all rows from table.
	 public function fetch_all_rows($table="",  $where = array()) {
		if($table != '') {
			$this->db->select('*');
			if(!empty($where)) {
				$this->db->where($where);
			}
			$query = $this->db->get($table);
			return $query->result_array();
			
		} 
		else 
		{
			return array();	
		}
        
        $this->db->close();
	}
	
	/**
	 * this is a generic function to save data in db as batch
	 * the 1st parameter is the table name
	 * the 2nd is an array with the data that will be saved
	 * the 3dt is optional field name. If you give an id the function will update the current column value. 
	 * 
 	 * @access public
	 * @param string
	 * @param array
	 * @param integer
	 * @return integer/boolean
	 */
	public function save_batch($table,$columns = array(),$field = NULL)
	{
		$this->db->cache_delete_all();
		
		if($field) {
			$result = $this->db->update_batch($table, $columns, $field);
		} else{
		
			$result = $this->db->insert_batch($table, $columns);
            $id = $this->db->insert_id();
            return $id;
		}
		
		#print_r($this->db->last_query());
		
		if($result) {
				return TRUE;
		} else
			return FALSE;
        $this->db->close();
	}
	
	//Fetch all rows from table.
	 public function fetch_config_rows($value='') {
	    $this->db->from('config AS A');
		if($value != '') {
			$this->db->where('A.config_namekey', $value);
			$query = $this->db->get();
			$arr = $query->result_array();
			return $arr[0]['config_value'];
			
		} 
		else 
		{
			return array();	
		}
        $this->db->close();
	}
	/**
	 * this is a generic function to count record in any table
	 * the 1st parameter is the table name
	 * @access public
	 * @param string
	 * @return integer/boolean
	 */
	public function countAllRecords($table_name){
		return $this->db->count_all($table_name);
        $this->db->close();
	}
	
	//send email using template
	 public function sendEmailTemplate($template_id, $replace = array(), $to_email = '', $to_name = '')
	 {}	
	 
	 
	
	//send email to all using template
	 public function sendToAllEmailTemplate($template_id, $replace = array(), $to_email = '', $to_name = '')
	 {}	
	
}