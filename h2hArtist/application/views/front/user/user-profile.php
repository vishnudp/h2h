<div id="sign-in">
  <div class="row-fluid">  
    <div class="span7">
			<div class="row-fluid">
          		<div class="span6">
                <?php $pImage = 'user_avatar_lg.png'; if(!empty($profile_image)){$pImage = $profile_image; } ?>
					<img src="<?php echo base_url(); ?>assets/img/<?php echo $pImage; ?>" alt="<?php echo $pImage; ?>" title="<?php echo $pImage; ?>" class="img-thumbnail user_avatar">
				</div>
				<div class="col-sm-10">
					<div class="user_heading_info">
						<div class="user_actions pull-right">
                        <?php $user_id = $this->session->userdata['user_session_data']['user_id']; ?>
							<a href="<?php echo base_url('profile/edit/'.$user_id); ?>" class="edit_form" data-toggle="tooltip" data-placement="top auto" title="Edit profile"><span class="icon-edit"></span></a>
							<!--a href="#" class="remove_user" data-toggle="tooltip" data-placement="top auto" title="Remove User"><span class="icon-remove"></span></a-->
						</div>
						<h1><?php echo ucfirst($fullname); ?></h1>
					</div>
				</div>			
			</div>
			<div class="row-fluid">
          		<div class="span6">
						
						<div class="form-group">
							<label class="col-sm-2 control-label">Name</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static"><?php echo ucfirst($fullname); ?></p>								
							</div>
						</div>
				</div>
			</div>
		    <div class="row-fluid">
          		<div class="span6">
						<h3 class="heading_a">Contact info</h3>
						<div class="form-group">
							<label class="col-sm-2 control-label">Phone Number</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static"><?php echo $phone_number; ?></p>								
							</div>
						</div>
				</div>
			</div>
			<div class="row-fluid">
          		<div class="span6">
						<div class="form-group">
							<label class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static"><?php echo $email; ?></p>
							</div>
						</div>
				</div>
			</div>	
			<div class="row-fluid">
          		<div class="span6">					
					<div class="form_submit clearfix" style="display:none">
						<div class="row">
							<div class="col-sm-10 col-sm-offset-2">
								<button class="btn btn-primary btn-lg" title="Save all data">Save all data</button>
							</div>
						</div>
					</div>
				</div>			
			</div>
		</div>
	</div>
</div>
	