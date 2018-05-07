<?php

require('conn.php');

$action = $_GET['action'];

switch($action){	
	case 'add_user' : 
		$out_put = add_user();
		echo json_encode($out_put);
	break;	
	case 'sms_status' : 
		$out_put = set_sms_status();
		echo json_encode($out_put);
	break;	
	case 'verification_status':
	$out_put = set_verification_status();
	   echo json_encode($out_put);
	   break;	
	case 'get_user_detail':
	$out_put = get_user_detail();
	   echo json_encode($out_put);
	   break;
	case 'get_groups':
	$out_put = get_groups();
	   echo json_encode($out_put);
	   break;
	case 'get_groups_post':
	$out_put = get_groups_post();
	   echo json_encode($out_put);
	   break;
	case 'get_user_media':
	$out_put = get_user_media();
	   echo json_encode($out_put);
	   break;
	case 'add_user_post':
	$out_put = add_user_post();
	   echo json_encode($out_put);
	   break;
	case 'add_group_user':
	$out_put = add_group_user();
	   echo json_encode($out_put);
	   break;
	case 'get_group_user':
	$out_put = get_group_user();
	   echo json_encode($out_put);
	   break;
	case 'edit_group_user':
	$out_put = edit_group_user();
	   echo json_encode($out_put);
	   break;
	case 'delete_group_user':
	$out_put = delete_group_user();
	   echo json_encode($out_put);
	   break;
	case 'add_user_friend':
	$out_put = add_user_friend();
	   echo json_encode($out_put);
	   break;
default :
		echo 'Invalid Action Please Try Again!';
}

function add_user()
{
		
			$query=mysql_query("insert into tg_users (hardware_id,phone_number,email,location,verification_code,sms_status,get_verified)values('".$_GET['hardware_id']."','".$_GET['email']."','".$_GET['phone_number']."','".$_GET['location']."','".$_GET['verification_code']."','".$_GET['sms_status']."','".$_GET['get_verified']."')");
			if($query)
		     {
		     	 $id = mysql_insert_id();

		     	 $query1=mysql_query("SELECT * FROM tl_users WHERE id =$id");	    

				$out_result=mysql_fetch_array($query1);	
				if(isset($out_result['id'])){
				     $user_info[] = array("id" => $out_result['id'], "hardware_id" => $out_result['hardware_id'],"phone_number" => $out_result['phone_number'],
				     		"verification_code" => $out_result['verification_code'],
				     		"sms_status"=>$out_result['sms_status'],
				     		"get_verified" => $out_result['get_verified'],				     		
				     	 );
				  	 $json_output = array("success" => "1", "message" => "New User has been added successfully", "user_info" => $user_info);
				}
				else
				 {
				 	$json_output=array("success" => "0", "message" => "An Error has been occured while Add New User");
				 }
			 }
			 else
			{
			   $json_output=array("success" => "0", "message" => "An Error has been occured while Add New User");
			}
   
   return $json_output;
}

/* return set sms status  */
function set_sms_status(){
	if(isset($_GET['hardware_id']) && (isset($_GET['phone_number'])))
    {
	    $query=mysql_query("UPDATE tg_users set sms_status ='yes'  WHERE hardware_id ='".$_GET['hardware_id']."' AND phone_number = '".$_GET['phone_number']."'");	
	    $query1=mysql_query("SELECT * FROM tl_users WHERE hardware_id ='".$_GET['hardware_id']."' AND phone_number = '".$_GET['phone_number']."'");	    
	   // echo "insert into gk_login (user_name,hardware_id)values('".$_GET['username']."','".$_GET['hardware_id']."')";
		$out_result=mysql_fetch_array($query1);	
		if(isset($out_result['id']))
		{
		     $user_info[] = array("id" => $out_result['id'], "hardware_id" => $out_result['hardware_id'],"phone_number" => $out_result['phone_number'],
		     		"sms_status" => $out_result['sms_status'],
		     		"get_verified" => $out_result['get_verified'],
		     		"phone" => $out_result['phone_number'],		     		
		     		"created_at"=>$out_result['created_time']
		     	 );		    
		  	 $json_output = array("success" => "1", "message" => "SMS status set Successfully", "user_info" => $user_info);
		}
        else 
        {
		     $json_output = array("success" => "0", "message" => "You are not authentication user please try again!");
        }
	}
    return $json_output;
}

/* return set verification status  */
function set_verification_status(){
	if(isset($_GET['hardware_id']) && (isset($_GET['phone_number'])))
    {
	    $query=mysql_query("UPDATE tg_users set get_verified ='yes'  WHERE hardware_id ='".$_GET['hardware_id']."' AND phone_number = '".$_GET['phone_number']."'");	
	    $query1=mysql_query("SELECT * FROM tl_users WHERE hardware_id ='".$_GET['hardware_id']."' AND phone_number = '".$_GET['phone_number']."'");	    
	   // echo "insert into gk_login (user_name,hardware_id)values('".$_GET['username']."','".$_GET['hardware_id']."')";
		$out_result=mysql_fetch_array($query1);	
		if(isset($out_result['id']))
		{
		     $user_info[] = array("id" => $out_result['id'], "hardware_id" => $out_result['hardware_id'],"phone_number" => $out_result['phone_number'],
		     		"sms_status" => $out_result['sms_status'],
		     		"get_verified" => $out_result['get_verified'],
		     		"phone" => $out_result['phone_number'],		     		
		     		"created_at"=>$out_result['created_time']
		     	 );		    
		  	 $json_output = array("success" => "1", "message" => "verification status set Successfully", "user_info" => $user_info);
		}
        else 
        {
		     $json_output = array("success" => "0", "message" => "You are not authentication user please try again!");
        }
	}
    return $json_output;
}

/* return user detail */

function get_user_detail(){
  if(isset($_GET['hardware_id']) )
    {
	    $query=mysql_query("SELECT * FROM tg_users WHERE hardware_id ='".$_GET['hardware_id']."' and get_verified='yes'");	
	   
	   
		$out_result=mysql_fetch_array($query);	
		if(isset($out_result['id']))
		{
		     $user_info[] = array("id" => $out_result['id'], "first_name" => $out_result['first_name'],"last_name" => $out_result['last_name'],
		     		"location" => $out_result['location'],
		     		"phone_number" => $out_result['phone_number'],
		     		"email" => $out_result['email'],
		     		"hardware_id" => $out_result['hardware_id'],		     		
		     	 );
		  	 $json_output = array("success" => "1", "message" => "Login Successfully", "user_info" => $user_info);
		}
        else 
        {
		     $json_output = array("success" => "0", "message" => "You are not authentication user please try again!");
        }
	}
    return $json_output;
}

// function get_groups(){
// 		$query=mysql_query("SELECT tg_group.*,tg_users.first_name,tg_users.last_name FROM tg_group left join tg_users ON tg_users.user_id = tg_group.group_created_by");	
	   
	   
// 		//$out_result=mysql_fetch_array($query);	
// 		while($out_result=mysql_fetch_array($query))
//     	{
// 		if(isset($out_result['group_id']))
// 		{
// 		     $group_info[] = array("id" => $out_result['group_id'], "group_name" => $out_result['group_name'],"group_description" => $out_result['group_description'],
// 		     		"group_image" => $out_result['group_image'],
// 		     		"group_created_by" => $out_result['first_name']." ".$out_result['last_name'],
// 		     		"group_creaed_time" => $out_result['created_time'],
// 		     	 );
// 		  	 $json_output = array("success" => "1", "message" => "Group Details Fetched Successfully", "group_info" => $group_info);
// 		}
//         else 
//         {
// 		     $json_output = array("success" => "0", "message" => "Error in Fetching Group Details");
//         }
//        }
//       return $json_output;  
// }

// function get_groups_post(){

// 		$query=mysql_query("SELECT tg_group_posts.*,tg_group.group_name,tg_users.first_name,tg_users.last_name FROM tg_group_posts left join tg_group ON tg_group.group_id = tg_group_posts.group_id left join tg_users ON tg_users.user_id = tg_group_posts.user_id where tg_group.group_id='".$_GET['group_id']."'");	
	   
// 	   //echo "SELECT tg_group_posts.*,tg_group.group_name,tg_users.first_name,tg_users.last_name FROM tg_group_posts left join tg_group ON tg_group.group_id = tg_group_posts.group_id left join tg_users ON tg_users.user_id = tg_group_posts.user_id where tg_group.group_id='".$_GET['group_id']."'";
// 		//$out_result=mysql_fetch_array($query);	
// 		while($out_result=mysql_fetch_array($query))
//     	{
// 		if(isset($out_result['post_id']))
// 		{
// 		     $group_post_info[] = array("id" => $out_result['post_id'], "group_name" => $out_result['group_name'],"post_name" => $out_result['post_name'],
// 		     		"post_type" => $out_result['post_type'],
// 		     		"post_media_name" => $out_result['post_media_name'],
// 		     		"post_author" => $out_result['first_name']." ".$out_result['last_name'],
// 		     		"post_date" => $out_result['created_time'],
// 		     	 );
// 		  	 $json_output = array("success" => "1", "message" => "Group Posts Details Fetched Successfully", "group_post_info" => $group_post_info);
// 		}
//         else 
//         {
// 		     $json_output = array("success" => "0", "message" => "Error in Fetching Group Posts Details");
//         }
//        }
//       return $json_output; 

// }





// function add_user_post(){

// 	$query=mysql_query("insert into tg_group_posts (group_id,user_id,post_name,post_description,post_type,post_media_name,created_time)values('".$_GET['group_id']."','".$_GET['user_id']."','".$_GET['post_name']."','".$_GET['post_description']."','".$_GET['post_type']."','".$_GET['post_media_name']."','".$_GET['created_time']."')");
// 			if($query)
// 		     {
// 		     	 $id = mysql_insert_id();

// 		     	 $query1=mysql_query("SELECT * FROM tg_group_posts WHERE post_id =$id");	    

// 				$out_result=mysql_fetch_array($query1);	
// 				if(isset($out_result['post_id'])){
// 				     $user_post_info[] = array("id" => $out_result['post_id'], "group_id" => $out_result['group_id'],"post_name" => $out_result['post_name'],
// 				     		"post_description" => $out_result['post_description'],
// 				     		"post_type"=>$out_result['post_type'],
// 				     		"post_media_name" => $out_result['post_media_name'],				     		
// 				     		"created_time" => $out_result['created_time'],				     		
// 				     	 );
// 				  	 $json_output = array("success" => "1", "message" => "New User Post has been added successfully", "user_post_info" => $user_post_info);
// 				}
// 				else
// 				 {
// 				 	$json_output=array("success" => "0", "message" => "An Error has been occured while Add New User Post");
// 				 }
// 			 }
// 			 else
// 			{
// 			   $json_output=array("success" => "0", "message" => "An Error has been occured while Add New User Post");
// 			}
   
//    return $json_output;

// }


// function add_group_user(){

// 	$query=mysql_query("insert into tg_group_user (group_id,user_id,created_time)values('".$_GET['group_id']."','".$_GET['user_id']."','".$_GET['created_time']."')");
// 			if($query)
// 		     {
// 		     	 $id = mysql_insert_id();

// 		     	 $query1=mysql_query("SELECT * FROM tg_group_user WHERE id =$id");	    

// 				$out_result=mysql_fetch_array($query1);	
// 				if(isset($out_result['id'])){
// 				     $group_user_info[] = array("id" => $out_result['id'], "group_id" => $out_result['group_id'],"user_id" => $out_result['user_id'],
// 				     		"created_time" => $out_result['created_time'],				     		
// 				     	 );
// 				  	 $json_output = array("success" => "1", "message" => "New User to group has been added successfully", "group_user_info" => $group_user_info);
// 				}
// 				else
// 				 {
// 				 	$json_output=array("success" => "0", "message" => "An Error has been occured while Add Ner User to group");
// 				 }
// 			 }
// 			 else
// 			{
// 			   $json_output=array("success" => "0", "message" => "An Error has been occured while Add New User to group");
// 			}
   
//    return $json_output;

// }


function add_user_friend(){

	$query=mysql_query("insert into tg_user_friend (user_id,friend_id,created_time)values('".$_GET['user_id']."','".$_GET['friend_id']."','".$_GET['created_time']."')");
			if($query)
		     {
		     	 $id = mysql_insert_id();

		     	 $query1=mysql_query("SELECT * FROM tg_user_friend WHERE id =$id");	    

				$out_result=mysql_fetch_array($query1);	
				if(isset($out_result['id'])){
				     $user_friend_info[] = array("id" => $out_result['id'], "user_id" => $out_result['user_id'],"friend_id" => $out_result['friend_id'],
				     		"created_time" => $out_result['created_time'],				     		
				     	 );
				  	 $json_output = array("success" => "1", "message" => "New Friend to user has been added successfully", "user_friend_info" => $user_friend_info);
				}
				else
				 {
				 	$json_output=array("success" => "0", "message" => "An Error has been occured while Add Ner Friend to user");
				 }
			 }
			 else
			{
			   $json_output=array("success" => "0", "message" => "An Error has been occured while Add New Friend to user");
			}
   
   return $json_output;

}


// function get_user_media(){
// 	$query=mysql_query("SELECT * FROM tg_group_posts where user_id='".$_GET['user_id']."' and group_id='".$_GET['group_id']."'");	
	 	
// 		while($out_result=mysql_fetch_array($query))
//     	{
// 		if(isset($out_result['post_id']))
// 		{
// 		     $user_media_post_info[] = array("id" => $out_result['post_id'], "post_name" => $out_result['post_name'],"post_media_name" => $out_result['post_media_name'],"post_description" => $out_result['post_description'],
// 		     		"post_type" => $out_result['post_type'],
// 		     		"post_author" => $out_result['first_name']." ".$out_result['last_name'],
// 		     		"post_date" => $out_result['created_time'],
// 		     	 );
// 		  	 $json_output = array("success" => "1", "message" => "User Media Posts Details Fetched Successfully", "user_media_post_info" => $user_media_post_info);
// 		}
//         else 
//         {
// 		     $json_output = array("success" => "0", "message" => "Error in Fetching Group Posts Details");
//         }
//        }
//       return $json_output; 
// }







?>
