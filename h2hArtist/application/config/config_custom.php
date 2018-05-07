<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
if($_SERVER['HTTP_HOST'] == '192.168.2.45'){
	$config['root_url'] = $_SERVER['DOCUMENT_ROOT'].'/wbt/';			
}else if($_SERVER['HTTP_HOST'] == 'ds02.projectstatus.co.uk'){    
	$config['root_url'] = $_SERVER['DOCUMENT_ROOT'].'/wbt/';			
}else{
    $config['root_url'] = $_SERVER['DOCUMENT_ROOT'].'/tmc_groups/';  
}


date_default_timezone_set('Europe/London');
$config['setup_status'] = array(
		'1'=>'New',
		'2'=>'Accessed',
		'3'=>'Completed',
		'4'=>'Canceled'	);
       

$config['difficulty_level'] = array(
        '0'=>'None',
		'1'=>'Easy',
		'2'=>'Intermediate',
		'3'=>'Expert'
        );
$config['orders_status'] = array(
        '0'=>'confirmed',
		'1'=>'pending'
        );
        
$config['category_type'] = array(
		'1'=>'Flat',
		'2'=>'Section Wise');

$config['test_type'] = array(
		'1'=>'Sample',
		'2'=>'Practice',
        '3'=>'Mock'
        );

$config['sms_username'] = "Gojamb";
$config['sms_password'] = "Dw78WfxA";
$config['sms_api']	    = "3496139";
$config['sms_url']      ="http://api.clickatell.com";
               
        
$config['per_page'] = 100;
        
$config['paypal_username'] = 'platfo_1255077030_biz_api1.gmail.com';
$config['paypal_password'] = '1255077037';
$config['paypal_signature'] = 'Abg0gYcQyxQvnf2HDJkKtA-p6pqhA1k-KTYE0Gcy1diujFio4io5Vqjf';
$config['test_mode'] = true;
$config['currency'] = 'USD';

$config['merchantid'] = '1257';
$config['globalpay_currency'] = 'NGN';
$config['globalpay_uid'] = 'km_ws_user';
$config['globalpay_password'] = 'km_ws_password';
		
$config['full_marks'] = 40 ;
$config['flat_pass_marks_counts'] = 35 ;
$config['flat_pass_marks_percents'] = 87.5;

$config['max_login_attempt_allowed'] = 4;
$config['ip_block_time'] = 20;

$config['administrator'] = 'Site Administrator';

$config['admin_email'] = 'vishnubansalcomp@gmail.com';
$config['admin_email_from'] = 'vishnubansalcomp@gmail.com';
$config['admin_email_cc'] = 'vishnubansalcomp@gmail.com';
$config['admin_email_bcc'] = 'vishnubansalcomp@gmail.com';
$config['mail_regards'] = 'vishnubansalcomp@gmail.com';