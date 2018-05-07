<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * CodeIgniter Custom Helpers
 *
 */
 
 if ( ! function_exists('check_blocked_ip'))
{
	function check_blocked_ip()
        {
            $CI =& get_instance();
            $CI->load->model('users','obj_users');
            $block_ip_list_ipaddress = $CI->input->ip_address();
            #echo $block_ip_list_ipaddress;
            $where = array(
                'block_ip_list_ipaddress' => $block_ip_list_ipaddress
                );
            $switch = $CI->obj_users->checkRecord($CI->obj_users->block_ip_list_table,$where);
            if($switch){
                $results = $CI->obj_users->getRecords($CI->obj_users->block_ip_list_table,$where);
                if($results[0]['login_attempt'] >= $CI->config->item('max_login_attempt_allowed')){
                    $CI->messages->add('<p>Your account is locked.</p>','error');
                    redirect('blocked');
                }
                
            }else{
                return true;
            }           
        }
}

//---------------------------------------------------------------------------------------


 if ( ! function_exists('unblocked_ip'))
{
	function unblocked_ip()
        {
            $CI =& get_instance();
            $CI->load->model('users','obj_users');
            $block_ip_list_ipaddress = $CI->input->ip_address();
            #echo $block_ip_list_ipaddress;
            $where = array(
                'block_ip_list_ipaddress' => $block_ip_list_ipaddress
                );
            $switch = $CI->obj_users->checkRecord($CI->obj_users->block_ip_list_table,$where);
            if($switch){
                $results = $CI->obj_users->getRecords($CI->obj_users->block_ip_list_table,$where);
                if($results[0]['login_attempt'] < $CI->config->item('max_login_attempt_allowed')){
                    redirect('home');
                }
                
            }else{
                return true;
            }           
        }
}

//---------------------------------------------------------------------------------------


 if ( ! function_exists('update_block_status'))
{
	function update_block_status()
        {
            $CI =& get_instance();
            $CI->load->model('users','obj_users');
            $block_ip_list_ipaddress = $CI->input->ip_address();
            $where = array(
                'block_ip_list_ipaddress' => $block_ip_list_ipaddress
                );
            $switch = $CI->obj_users->checkRecord($CI->obj_users->block_ip_list_table,$where);
            if($switch){
                $results = $CI->obj_users->getRecords($CI->obj_users->block_ip_list_table,$where);
                if($results[0]['login_attempt'] >= $CI->config->item('max_login_attempt_allowed') && $results[0]['block_ip_list_time'] < time()){
                    $saveData = array(
                        'login_attempt' => 0,
                        'block_ip_list_authentication' => 1,
                        'block_ip_list_time' => time()
                    );
                    $CI->obj_users->save($CI->obj_users->block_ip_list_table,$saveData,$where);
                }
                return true;
                
            }else{
                return true;
            }           
        }
}

//---------------------------------------------------------------------------------------

if ( ! function_exists('generateHash'))
{
	function generateHash($plainText, $salt = null)
        {
            if ($salt === null)
            {
                $salt = substr(md5(uniqid(rand(), true)), 0, 25);
            }
            else
            {
                $salt = substr($salt, 0, 25);
            }
            
            return $salt . sha1($salt . $plainText);
        }
}

// ------------------------------------------------------------------------

if ( ! function_exists('setCookies'))
{
	function setCookies($uname = '', $pass = '')
        {
            if(isset($uname) && isset($pass)) {
                //set the cookies for 1 day, ie, 1*24*60*60 secs
                //change it to something like 30*24*60*60 to remember user for 30 days
                $this->input->set_cookie('login_username', $uname, time() + 1*24*60*60);
                $this->input->set_cookie('login_password', $pass, time() + 1*24*60*60);
            } 
            
        }
}
//pr()
// ------------------------------------------------------------------------


if ( ! function_exists('pr'))
{
	function pr($array)
        {
           echo "<pre>";
		   print_r($array);
	       echo "</pre>";  
        }
}
if ( ! function_exists('prd'))
{
	function prd($array)
        {
           echo "<pre>";
		   print_r($array);
	       echo "</pre>";
		   die;  
        }
}
//---------------------------------------------------------------------------

if (!function_exists('commaArray')) {

 function commaArray($string) {
  if (!is_string($string)) {
   return FALSE;
  }

  $a = explode(',', $string);
  if (count($a) < 1) {
   return false;
  } else {
   $i = 0;
   $c = array();
   foreach ($a as $b) {
    if (!empty($b)) {
     $c[$i] = $b;
     $i++;
    }
   }
  }

  return $c;

 }

}

if ( ! function_exists('create_unique_slug'))
{
	function create_unique_slug($string, $table,$field='slug',$key=NULL,$value=NULL){	 
			$t =& get_instance(); 	 
			$slug = url_title($string);
			$slug = strtolower($slug);
			$i = 0;
			$params = array ();
			$params[$field] = $slug;
	 
			if($key)$params["$key !="] = $value;   
	 
			while ($t->db->where($params)->get($table)->num_rows()) {
				if (!preg_match ('/-{1}[0-9]+$/', $slug )) {
					$slug .= '-' . ++$i;
				} else {
					$slug = preg_replace ('/[0-9]+$/', ++$i, $slug );
				}
				$params [$field] = $slug;
				}
			return $slug;
		
	}
	
	
}

if ( ! function_exists('contextual_time'))
{
	function contextual_time($small_ts, $large_ts=false) {
	  if(!$large_ts) $large_ts = strtotime(date('Y-m-d H:i:s',time()));
	  $n = $large_ts - $small_ts;
	   //echo '<br>'.$small_ts.'<br>'.$large_ts.'<br>'.$n.'<br>';  
	  if($n <= 1) return 'less than 1 second ago';
	  
	  if($n < (60)) return $n . ' seconds ago';
	  
	  if($n < (60*60)) { $minutes = round($n/60); return 'about ' . $minutes . ' minute' . ($minutes > 1 ? 's' : '') . ' ago'; }
	  
	  if($n < (60*60*16)) { $hours = round($n/(60*60)); return 'about ' . $hours . ' hour' . ($hours > 1 ? 's' : '') . ' ago'; }
	  
	  if($n < (time() - strtotime('yesterday'))) return 'yesterday';
	  
	  //if($n < (60*60*24*2)) { $hours = round($n/(60*60)-24); return '1 day, ' . $hours . ' hour' . ($hours > 1 ? 's' : '') . ' ago'; } 
	  
	  if($n < (60*60*24)) { $hours = round($n/(60*60)); return 'about ' . $hours . ' hour' . ($hours > 1 ? 's' : '') . ' ago'; }
	  
	  if($n < (60*60*24*6.5)) return 'about ' . round($n/(60*60*24)) . ' days ago';
	  
	  if($n < (time() - strtotime('last week'))) return 'last week';
	  
	  if(round($n/(60*60*24*7))  == 1) return 'about a week ago';
	  
	  if($n < (60*60*24*7*3.5)) return 'about ' . round($n/(60*60*24*7)) . ' weeks ago';
	  
	  if($n < (time() - strtotime('last month'))) return 'last month';
	  
	  if(round($n/(60*60*24*7*4))  == 1) return 'about a month ago';
	  
	  if($n < (60*60*24*7*4*11.5)) return 'about ' . round($n/(60*60*24*7*4)) . ' months ago';
	  
	  if($n < (time() - strtotime('last year'))) return 'last year';
	  
	  if(round($n/(60*60*24*7*52)) == 1) return 'about a year ago';
	  
	  if($n >= (60*60*24*7*4*12)) return 'about ' . round($n/(60*60*24*7*52)) . ' years ago'; 
	  
	  return false;
	}
}

if ( ! function_exists('show_datetime'))
{
	function show_datetime($data,$type='dd/mm/yyyy:H:i a'){ 
		switch($type){
  			case "dd/mm/yyyy" : return date('d/m/Y',strtotime($data));
		  	case "dd-mm-yyyy" : return date('d-m-Y',strtotime($data));
			case "yyyy-mm-dd" : return date('d/m/Y',strtotime($data));
			case "dd/mm/yyyy:H:i:s" : return date('d/m/Y H:i:s',strtotime($data));
			case "dd/mm/yyyy:H:i a" : return date('d/m/Y H:i a',strtotime($data));
		 } 
	}
}

//---------------------------------------------------------------------------

if ( ! function_exists('objectToArray'))
{
 function objectToArray($d)
	{
		if (is_object($d))
		{
			$d = get_object_vars($d);
		}
		if (is_array($d))
		{
			return array_map(__FUNCTION__, $d);
		}
		else
		{
			return $d;
		}
	}
 }
 
 //----------------------------------------------------------------------------------------------------
 
 if ( ! function_exists('secondsToWords'))
    {
     function secondsToWords($seconds)
        {
            /*** return value ***/
            $ret = "";
        
            /*** get the hours ***/
            $hours = intval(intval($seconds) / 3600);
            if($hours > 0)
            {
                $ret .= "$hours:";
            }
            /*** get the minutes ***/
            $minutes = bcmod((intval($seconds) / 60),60);
            if($hours > 0 || $minutes > 0)
            {
                $ret .= "$minutes:";
            }
          
            /*** get the seconds ***/
            $seconds = bcmod(intval($seconds),60);
                if($seconds < 10){
                    $ret .= "0"."$seconds";
                }else{
                    $ret .= "$seconds";
                }
            
        
            return $ret;
        }
     }
     
     
//----------------------------------------------------------------------------------------------------
   if ( ! function_exists('getcatTitle'))
    { 
     function getcatTitle($secId){
        $CI =& get_instance();
        $CI->load->model('subjects');
        $title = $CI->subjects->getsubjectTitle($secId);
        return $title; 
     }
    }
	
//----------------------------------------------------------------------------------------------------

 if ( ! function_exists('getSectionParentid'))
    { 
     function getSectionParentid($secId){
        $CI =& get_instance();
        $CI->load->model('subjects');
        $title = $CI->subjects->getsubjectParentidbysubjectid($secId);
        return $title; 
     }
    }
	
//----------------------------------------------------------------------------------------------------


   if ( ! function_exists('getsetupTitle'))
    { 
     function getsetupTitle($setId){
        $CI =& get_instance();
        $CI->load->model('testprofiles');
        $title = $CI->testprofiles->getprofileTitle($setId);
        return $title; 
     }
    }
    
    
//---------------------------------------------------------------------------------------------------------
   if ( ! function_exists('getcatTotalnoofQuestionbySectionid'))
    {  
     function getcatTotalnoofQuestionbysubjectid($subId){
        $CI =& get_instance();
        $CI->load->model('configurations');
        $title = $CI->configurations->getTotalquestion($subId);
        return $title; 
     }
    }
    
//-------------------------------------------------------------------------------------------------------

//-------------------------Get data from answoer sheet--------------------------------------
   if ( ! function_exists('getquestionAnswerInfo'))
    {  
     function getquestionAnswerInfo($quId){
	 	
        $CI =& get_instance();
       	$CI->load->model('reports');
		
        $row = $CI->reports->getQuestionSuccessRate($quId);
		//$row['correct'] = $CI->answers->getTotalCorrectQuestion($quId);
		return $row; 
     }
    }
    
//-------------------------End of answer sheet section--------------------------------------------------------

//-------------------------Get result using send value that mentioned in options--------------------------------------
   if ( ! function_exists('getUserAnswerInfo'))
    { 
	/*
	$options = array('test_number'=>$res['setup_test_number'],'category_type'=>$res['category_type'],'max_total_marks'=>$res['setting_max_total_marks'],'pass_marks'=>$res['setting_pass_marks'],'setting_description'=>$res['setting_description']);
	*/	
	 
     function getUserAnswerInfo($options = array()){
	 	
        $CI =& get_instance();
       	$CI->load->model('reports');
		
        $row = $CI->reports->getUserresult($options);
		//$row['correct'] = $CI->answers->getTotalCorrectQuestion($quId);
		return $row; 
     }
    }
    
//-------------------------End of Get result using send value that mentioned in options--------------------------------------------------------

//-------------------------get options array passing test number--------------------------------------
   if ( ! function_exists('getOptionArr'))
    { 
	/*
	 return $options = array('test_number'=>$res['setup_test_number'],'category_type'=>$res['category_type'],'max_total_marks'=>$res['setting_max_total_marks'],'pass_marks'=>$res['setting_pass_marks'],'setting_description'=>$res['setting_description']);
	*/	
	 
     function getOptionsArr($options = array()){
	 	
        $CI =& get_instance();
       	$CI->load->model('reports');
		
        $row = $CI->reports->getOptionsArr($options);
		//$row['correct'] = $CI->answers->getTotalCorrectQuestion($quId);
		return $row; 
     }
    }
    
//-------------------------End of get options array passing test number--------------------------------------------------------


if ( ! function_exists('getOverallresult'))
    {  
        function getOverallresult($total_correct,$passMarks){
            $str = 'Failed';
            if($total_correct >= $passMarks){
                $str = 'Passed';
            }
            return $str;
        }
    }



//-------------------------End of getOverallresult--------------------------------------------------------


if ( ! function_exists('getSidebar'))
    {  
        function getSidebar($role_id){
            $CI =& get_instance();
            $CI->load->model('privilege');
            $sidebar = $CI->privilege->get_controller_and_action_by_role_id( $role_id );
            return $sidebar;
        }
    }
    
//---------------------------------------------------------------------------------
        
if ( ! function_exists('clean')) {    
    function clean($str) {
    	$str = @trim($str);
    	if(get_magic_quotes_gpc()) {
    		$str = stripslashes($str);
    	}
    	return mysql_real_escape_string($str);
    } 
}

//-----------------------------------------------------------------------------------

 if ( ! function_exists('dropdownMenu')) {  
            function dropdownMenu($id = '',$select_name = '',$modelname = '',$table = '',$text_field_name = '',$whereString = NULL,$attribute = ''){
                $CI =& get_instance();
                 $CI->load->model($modelname);
                 $where = array('is_deleted' => 0,'is_active' => 1);
                 if($whereString != NULL){
                    $where = $whereString;
                 }
                 $data = $CI->$modelname->getRecords($table,$where);
        		
                $str = '';
                $selected = FALSE;
                #onchange="getZonebyid(this.options[this.selectedIndex].value)";
                $str = '<select name="'.$select_name.'" id="'.$select_name.'"  '.$attribute. '>';
                $str.= '<option value=""'.set_select($select_name, '--Choose--', TRUE).'>--Choose--</option>';
                if(!empty($data[0])){
                    foreach($data as $rows){
                        if($id == $rows[$select_name]){
                            $selected = TRUE;
                        }
                    $str.= '<option value="'.$rows[$select_name].'" '.set_select($select_name,$rows[$select_name], ($id == $rows[$select_name]) ).' >'.$rows[$text_field_name].'</option>';   
                    }
                }
                $str.= '</select>'; 
                echo $str;  
        }
    
    }
    

    
 //---------------------------------------------------------------------------------
 
if ( ! function_exists('getRoletitle'))
    {  
        function getRoletitle($role_id){
            $CI =& get_instance();
            $CI->load->model('roles');
            $title = $CI->roles->gettitleRole( $role_id );
            return $title;
        }
    }
//---------------------------------------------------------------------------------


if ( ! function_exists('getFullname'))
    {  
        function getFullname($user_id){
            $CI =& get_instance();
            $CI->load->model('users');
            $name = $CI->users->getName($user_id);
            return $name;
        }
    }
//---------------------------------------------------------------------------------



if ( ! function_exists('getFooter'))
    {  
        function getFooter(){
            $CI =& get_instance();
            $CI->load->model('homes');
            $content = $CI->homes->getFootercontent();
            return $content;
        }
    }
        
//---------------------------------------------------------------------------------



if ( ! function_exists('getNavigation'))
    {  
            function getNavigation(){
                $CI =& get_instance();
                $CI->load->model('homes');
                $content = $CI->homes->getNavigationcontent();
                return $content;
            }
    }
        
//---------------------------------------------------------------------------------

if ( ! function_exists('getFooterNavigation'))
    {  
            function getFooterNavigation(){
                $CI =& get_instance();
                $CI->load->model('homes');
                $content = $CI->homes->getFooterNavigationcontent();
                return $content;
            }
    }
        
//---------------------------------------------------------------------------------

if ( ! function_exists('getSponsors'))
    {  
            function getSponsors(){
                $CI =& get_instance();
                $CI->load->model('sponsers');
                $content = $CI->sponsers->get_active_sponser();
                return $content;
            }
    }
        
//---------------------------------------------------------------------------------

if ( ! function_exists('is_login'))
    {  
        function is_login(){
            $CI =& get_instance();
            $content = $CI->session->userdata('user_session_data');
            if(empty($content)){
                $CI->messages->add('<p>Please login to view your profile.</p>','error');  
                redirect('signin');
            }
        }
    }
        
//---------------------------------------------------------------------------------



//-------------------------six digit random number number--------------------------------------------------------


if ( ! function_exists('randomnumber'))
    {  
        function randomnumber($digit = 6){
            $random_number = substr(number_format(time() * rand(),0,'',''),0,$digit);
            return $random_number;
        }
    }



//-------------------------End of six digit random number number--------------------------------------------------------



  

/* End of file array_helper.php */
/* Location: ./system/helpers/custom_helper.php */