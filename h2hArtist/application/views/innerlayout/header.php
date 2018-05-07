
<header id="header">
<div class="row-fluid header-top clearfix">
<div class="span6">
<div class="logo"><a href="<?php echo base_url(); ?>" title="logo"><img src="<?php echo base_url(); ?>assets/front/images/logo.png" alt="logo" /></a></div>
</div>
<div class="span6">
<div class="head-right">
<div class="sign-in clearfix">
<?php if(!$this->session->userdata('user_session_data')){ ?>
<a href="<?php echo base_url(); ?>plan" title="Sign up">Sign up</a><a href="<?php echo base_url(); ?>signin" title="Sign in">Sign in</a>
<?php }else{ ?>
<a href="<?php echo base_url(); ?>dashboard" title="My Dashboard">My Dashboard</a><a href="<?php echo base_url(); ?>signout" title="Logout">Logout</a>
<?php } ?>
</div>
<div class="socialMedia">
<ul class="soc_icons">
<li class="item1"><a href="#"></a></li>
<li class="item2"><a href="#"></a></li>
<li class="item3"><a href="#"></a></li>
<li class="item4"><a href="#"></a></li>
<li class="item5"><a href="#"></a></li>
<li class="item6"><a href="#"></a></li>
</ul>
</div>
</div>
</div>
</div>
</header>