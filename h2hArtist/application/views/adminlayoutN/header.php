<header id="top_header">
  <div class="container">
    <div class="row">
      <div class="col-xs-6 col-sm-1"> <a href="<?php echo base_url(); ?>admin/dashboard" class="logo_main" title="H2H Entertainment Company"> <img src="<?php echo base_url(); ?>assets/images/logo.png" height="40" alt="logo" /> </a> </div>
      <div class="col-sm-push-6 col-sm-4 text-right hidden-xs">
	  <?php /*?><p>Time: <?php echo date('d/m/Y H:i:s',time());?><?php */?>
	   <span id="date_time"></span>
       
	   <script type="text/javascript">date_time('date_time');</script>
       
	  <p><?php echo $this->session->userdata['admin_session_data']['first_name'];?></p>
        <!--<div class="notification_dropdown dropdown">
								<a href="#" class="notification_icon dropdown-toggle" data-toggle="dropdown">
									<span class="label label-danger">8</span>
									<i class="icon-comment-alt icon-2x"></i>
								</a>
								<ul class="dropdown-menu">
									<li>
										<div class="dropdown_heading">Comments</div>
										<div class="dropdown_content">
											<ul class="dropdown_items">
												<li>
													<h3><span class="small_info">12:43</span><a href="#">Lorem ipsum dolor&hellip;</a></h3>
													<p>Lorem ipsum dolor sit amet&hellip;</p>
												</li>
												<li>
													<h3><span class="small_info">Today</span><a href="#">Lorem ipsum dolor&hellip;</a></h3>
													<p>Lorem ipsum dolor sit amet&hellip;</p>
												</li>
												<li>
													<h3><span class="small_info">14 Aug</span><a href="#">Lorem ipsum dolor&hellip;</a></h3>
													<p>Lorem ipsum dolor sit amet&hellip;</p>
												</li>
											</ul>
										</div>
										<div class="dropdown_footer"><a href="#" class="btn btn-sm btn-default">Show all</a></div>
									</li>
								</ul>
							</div>
							<div class="notification_separator"></div>
							<div class="notification_dropdown dropdown">
								<a href="#" class="notification_icon dropdown-toggle" data-toggle="dropdown">
									<span class="label label-danger">12</span>
									<i class="icon-envelope-alt icon-2x"></i>
								</a>
								<ul class="dropdown-menu dropdown-menu-wide">
									<li>
										<div class="dropdown_heading">Messages</div>
										<div class="dropdown_content">
											<ul class="dropdown_items">
												<li>
													<h3><a href="#">Lorem ipsum dolor sit amet</a></h3>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
													<p class="large_info">Sean Walter, 24.05.2014</p>
													<i class="icon-exclamation-sign indicator"></i>
												</li>
												<li>
													<h3><a href="#">Lorem ipsum dolor&hellip;</a></h3>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi aliquam assumenda&hellip;</p>
													<p class="large_info">Sean Walter, 24.05.2014</p>
												</li>
												<li>
													<h3><a href="#">Lorem ipsum dolor&hellip;</a></h3>
													<p>Lorem ipsum dolor sit amet, consectetur&hellip;</p>
													<p class="large_info">Sean Walter, 24.05.2014</p>
													<i class="icon-exclamation-sign indicator"></i>
												</li>
											</ul>
										</div>
										<div class="dropdown_footer">
											<a href="#" class="btn btn-sm btn-default">Show all</a>
											<div class="pull-right dropdown_actions">
												<a href="#"><i class="icon-refresh"></i></a>
												<a href="#"><i class="icon-cog"></i></a>
											</div>
										</div>
									</li>
								</ul>
							</div> -->
      </div>
      <div class="col-xs-6 col-sm-push-4 col-sm-3">
        <div class="pull-right dropdown"> <a href="#" class="user_info dropdown-toggle" title="" data-toggle="dropdown"> <img src="<?php echo base_url(); ?>assets/img/user_avatar.png" alt="<?php echo $this->session->userdata['admin_session_data']['first_name'];?>" title="<?php echo $this->session->userdata['admin_session_data']['first_name'];?>" /> <span class="caret"></span> </a>
          <ul class="dropdown-menu">
            <li><a href="<?php echo base_url(); ?>" target="_blank" title="Visit Site">Visit Site</a></li>
            <li><a href="<?php echo base_url(); ?>admin/user/profile" title="My Profile">My Profile</a></li>
			<!--li><a href="<?php echo base_url(); ?>" target="_blank">Visit Website</a></li-->
            <li><a href="<?php echo base_url(); ?>admin/logout" title="Logout">Log Out</a></li>
          </ul>
        </div>
      </div>
      <?php /*?><div class="col-xs-12 col-sm-pull-6 col-sm-4">
        <form class="main_search">
          <input type="text" id="search_query" name="search_query" class="typeahead form-control" />
          <button type="submit" class="btn btn-primary btn-xs"><i class="icon-search icon-white"></i></button>
        </form>
      </div><?php */?>
    </div>
  </div>
</header>
