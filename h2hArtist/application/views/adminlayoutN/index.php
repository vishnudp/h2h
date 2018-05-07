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
$this->template->checkSession();
$class = strtolower($this->uri->segment(2)); 
$site_name = substr(base_url(),7,-1);
?>
<!doctype html>
<html lang="en">
<head>
<?php
header("cache-Control: no-store, no-cache, must-revalidate");
header("cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header("Expires: Sat, 26 Jul 1997 05:00:00 GMT");
?>
<meta charset="UTF-8" />
<meta http-equiv="cache-control" content="no-cache" /> 
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<title>:: Administration ::</title>
<link rel="shortcut icon" type="image/png" href="<?php echo base_url();?>assets/images/favicon.png" />
<meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no" />

<?php #if(0){ ?>

<!-- bootstrap framework-->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap.min.css" />
<!-- todc-bootstrap -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/todc-bootstrap.min.css" />

<!-- font awesome -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/font-awesome/css/font-awesome.min.css" />
<!-- flag icon set -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/img/flags/flags.css" />
<!-- retina ready -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/retina.css" />
<!-- aditional stylesheets -->


<!-- aditional stylesheets -->
		
<!-- timepicker -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/timepicker/css/bootstrap-timepicker.min.css" />
<!-- colorpicker -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/colorpicker/css/colorpicker.css" />
<!-- iCheck -->
	<link href="<?php echo base_url(); ?>assets/js/lib/iCheck/skins/minimal/minimal.css" rel="stylesheet" id="icheck_theme" />
	<!--<link href="js/lib/iCheck/skins/minimal/green.css" rel="stylesheet">
	<link href="js/lib/iCheck/skins/minimal/blue.css" rel="stylesheet">
	<link href="js/lib/iCheck/skins/minimal/red.css" rel="stylesheet">
	<link href="js/lib/iCheck/skins/minimal/yellow.css" rel="stylesheet">
	<link href="js/lib/iCheck/skins/minimal/purple.css" rel="stylesheet">
	<link href="js/lib/iCheck/skins/minimal/orange.css" rel="stylesheet">-->
<!-- bootstrap switch -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/bootstrap-switch/stylesheets/bootstrap-switch.css" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/bootstrap-switch/stylesheets/ebro_bootstrapSwitch.css" />
<!-- noUI slider -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/noUiSlider/jquery.nouislider.min.css" />
<!-- Ion rangeSlider -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/ion_rangeSlider/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/ion_rangeSlider/css/ion.rangeSlider.ebro.css" />





<!-- 2col multiselect -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/multi-select/css/multi-select.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/multi-select/css/ebro_multi-select.css" />
<!-- select2 -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/select2/select2.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/select2/ebro_select2.css" />
<!-- datepicker -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/datepicker/css/datepicker.css" />
<!-- iCheck -->
<link href="<?php echo base_url(); ?>assets/js/lib/iCheck/skins/minimal/minimal.css" rel="stylesheet" />
<!-- aditional stylesheets -->
<!-- vector map -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/jvectormap/jquery-jvectormap-1.2.2.css" />
<!-- datatbles -->
<link  rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/dataTables/media/DT_bootstrap.css" />
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/dataTables/extras/TableTools/media/css/TableTools.css" />
<!-- aditional stylesheets -->
<!-- jqueryUI theme -->
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/js/lib/jquery_ui/css/delta/jquery-ui.css" />
<!-- elfinder -->
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/file_manager/css/elfinder.min.css" />
<!-- aditional stylesheets -->
<!-- multiuplaod -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/lib/jQuery-File-Upload/css/jquery.fileupload-ui.css" />
<!-- ebro styles -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/style.css" />
<!-- ebro theme -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/theme/color_1.css" id="theme" />
<!-- invoice -->
<link rel='stylesheet' type='text/css' href='<?php echo base_url(); ?>assets/css/invoice.css' />
<link rel='stylesheet' type='text/css' href='<?php echo base_url(); ?>assets/css/print.css' media="print" />
<link class="include" rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/js/dist/jquery.jqplot.min.css" />
<!-- invoice end -->
<?php 
$this->load->library('user_agent');

if ($this->agent->is_browser())
{
    $agent = $this->agent->browser().' '.$this->agent->version();
    if($agent == 'Internet Explorer'){
if($this->agent->version() == 9){
?>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/ie/ie9.css" />
<?php } 

if($this->agent->version() == 8){
?>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/ie/ie8.css" />
<?php }
if($this->agent->version() == 7){
?>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/ie/ie7.css" />
<?php } ?>
		
<?php }}?>


<link href='http://fonts.googleapis.com/css?family=Roboto:300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css' />


<?php #} ?>

<script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>

<script src="<?php echo base_url(); ?>assets/js/ie/html5shiv.js"></script>
<script src="<?php echo base_url(); ?>assets/js/ie/respond.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/ie/excanvas.min.js"></script>

<script type="text/javascript" src="<?php echo base_url();?>assets/js/realtimeclock.js"></script>
<script type="text/javascript"> var base_url = '<?php echo base_url(); ?>'</script>
<!-- Don't touch this! -->
    <script class="include" type="text/javascript" src="<?php echo base_url(); ?>assets/js/dist/jquery.jqplot.min.js"></script>
<!-- Additional plugins go here -->
    <script class="include" language="javascript" type="text/javascript" src="<?php echo base_url(); ?>assets/js/dist/plugins/jqplot.barRenderer.min.js"></script>
    <script class="include" language="javascript" type="text/javascript" src="<?php echo base_url(); ?>assets/js/dist/plugins/jqplot.categoryAxisRenderer.min.js"></script>   
    <script class="include" language="javascript" type="text/javascript" src="<?php echo base_url(); ?>assets/js/dist/plugins/jqplot.pointLabels.min.js"></script>   

    <script class="include" language="javascript" type="text/javascript" src="<?php echo base_url(); ?>assets/js/lib/flot/jquery.flot.min.js"></script>   
    <script class="include" language="javascript" type="text/javascript" src="<?php echo base_url(); ?>assets/js/lib/flot/jquery.flot.pie.min.js"></script>   
<!-- End additional plugins -->
</head>

<body class="boxed pattern_1">
<div id="wrapper_all">
  <!-- header starts here-->
  <?php get_header(); ?>
  <?php #if($header) echo $header ;?>
  <!-- header ends here-->
  <!-- navigation starts here-->
  <?php get_navigation(); ?>
  <?php #if($navigation) echo $navigation ;?>
  <!-- navigation ends here-->
  <!-- breadcrumb starts here-->
  
  <?php get_breadcrumbs(); ?>
  <?php #if($breadcrumbs) echo $breadcrumbs ;?>
  <!-- breadcrumb ends here-->
  <!-- main container starts here-->
  <section class="container clearfix main_section">
    <div id="main_content_outer" class="clearfix">
      <div id="main_content">
        <?php #if($middle) echo $middle ;?>
        
        <?php get_middle();?>
      </div>
    </div>
    <!-- main container ends here-->
    <?php get_sidebar(); ?>
    <?php #if($sidebar) echo $sidebar ;?>
  </section>
  <div id="footer_space"></div>
</div>
<?php get_footer(); ?>
<?php #if($footer) echo $footer ;?>
</body>
</html>
