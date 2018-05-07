<?php
/**
 * This function update the status of blocked ip address 
 **/
update_block_status();
/**
 * This function check the status of blocked ip address and redirect the right way for users. 
 **/
check_blocked_ip();
/**
 * This function check is user login or not. 
 **/
//-----------------------------------------------------------------------
#$this->template->checkSession();
$class = strtolower($this->uri->segment(2)); 
$site_name = substr(base_url(),7,-1);
?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no'/>
<title><?php if(!empty($meta_title)){echo $meta_title;} ?></title>
<link rel="shortcut icon" type="image/png" href="<?php echo base_url();?>assets/images/logo.png" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width" />
<link href="<?php echo base_url(); ?>assets/front/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/main.css" />
<!--[if IE]>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/ie8.css" />
<![endif]-->

<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/colorbox.css" />
<!-- Used for Plan Layout Front End -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/styles.css" />

<!-- datatbles -->
<link  rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/dataTables/media/DT_bootstrap.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/dataTables/extras/TableTools/media/css/TableTools.css" />


<!-- End Used for Plan Layout Front End -->
<script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>assets/front/js/html5shiv.js"></script> 
<script src="<?php echo base_url(); ?>assets/front/js/html5shiv-printshiv.js"></script> 
<script src="<?php echo base_url();?>assets/js/jquery.cookie.js"></script>
<script type="text/javascript"> var base_url = '<?php echo base_url(); ?>'</script>
<script type="text/javascript">
window.history.forward();
function noBack() { window.history.forward(); }
</script>
</head>
<body onpageshow="if (event.persisted) noBack();">
<!--[if lt IE 9]>
<script src="dist/html5shiv.js"></script>
<![endif]-->



<div class="container">
<div class="row-fluid">
<div class="span12">

  <?php #get_header(); ?>

  

  <?php get_navigation(); ?>


  <?php #get_banner(); ?>


  <?php get_middle();?>

  
 <?php #get_footer(); ?>
 <footer id="footer">
 <div class="copyright">
<p>Copyright &copy; 2014. All Rights Reserved.</p>
</div>
</footer>
 </div>
</div>
</div>


<script src="<?php echo base_url(); ?>assets/front/js/bootstrap.min.js"></script> 
<script src="<?php echo base_url(); ?>assets/front/js/bootstrap.js"></script> 
<script src="<?php echo base_url();?>assets/js/jquery.cookie.js"></script>
<script src="<?php echo base_url();?>assets/js/jquery.colorbox.js"></script>
<script src="<?php echo base_url(); ?>assets/js/common.js"></script> 
<script src="<?php echo base_url(); ?>assets/js/ajax.js"></script> 


</body>
</html>

