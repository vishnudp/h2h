<div class="row">
	<div class="col-sm-12">
		<div class="user_heading">
			<div class="row">
				<div class="col-sm-2 hidden-xs">
                <?php $pImage = 'user_avatar_lg.png'; if(!empty($profile_image)){$pImage = $profile_image; } ?>
					<img src="<?php echo base_url(); ?>assets/img/<?php echo $pImage; ?>" alt="<?php echo $pImage; ?>" title="<?php echo $pImage; ?>" class="img-thumbnail user_avatar">
				</div>
				<div class="col-sm-10">
					<div class="user_heading_info">
						<div class="user_actions pull-right">
                        <?php $user_id = $this->session->userdata['admin_session_data']['user_id']; ?>
							<a href="<?php echo base_url('admin/user/edit/'.$user_id); ?>" class="edit_form" data-toggle="tooltip" data-placement="top auto" title="Edit profile"><span class="icon-edit"></span></a>
							<!--a href="#" class="remove_user" data-toggle="tooltip" data-placement="top auto" title="Remove User"><span class="icon-remove"></span></a-->
						</div>
						<h1><?php echo $fullname; ?></h1>
						<h2><?php echo getRoletitle($role_id); ?></h2>
					</div>
				</div>
			</div>
		</div>
		<div class="user_content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-2">
					<form class="form-horizontal user_form">
						<h3 class="heading_a">General</h3>
						<div class="form-group">
							<label class="col-sm-2 control-label">Username</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static"><?php echo $username; ?></p>
								<div class="hidden_control">
									<input type="text" class="form-control" value="jSmith" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Name</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static"><?php echo $fullname; ?></p>
								<div class="hidden_control">
									<input type="text" class="form-control" value="John Smith" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Birthdate</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static"><?php echo $user_dob; ?></p>
								<div class="hidden_control">
									<input type="text" class="form-control" value="23/10/1974" />
								</div>
							</div>
						</div>
						<h3 class="heading_a">Contact info</h3>
						<div class="form-group">
							<label class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static"><?php echo $email; ?></p>
								<div class="hidden_control">
									<input type="text" class="form-control" value="jsmith@example.com" />
								</div>
							</div>
						</div>
						<!--div class="form-group">
							<label class="col-sm-2 control-label">Phone</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static">(+32) 123 456 789</p>
								<div class="hidden_control">
									<input type="text" class="form-control" value="(+32) 123 456 789" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Skype</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static">jsmith_skype</p>
								<div class="hidden_control">
									<input type="text" class="form-control" value="jsmith_skype" />
								</div>
							</div>
						</div>
						<h3 class="heading_a">Other info</h3>
						<div class="form-group">
							<label class="col-sm-2 control-label">Languages</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static">English, French</p>
								<div class="hidden_control">
									<input type="text" class="form-control" value="jsmith@example.com" />
								</div>
							</div>
						</div-->
						<div class="form-group">
							<label class="col-sm-2 control-label">About</label>
							<div class="col-sm-10 editable">
								<p class="form-control-static"><?php echo $about; ?></p>
								<div class="hidden_control">
									<textarea name="user_signature" id="user_signature" cols="30" rows="5" class="form-control">
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus sed dicta earum mollitia maxime architecto magnam tempore doloremque natus asperiores autem totam incidunt odio porro placeat ut eos officia laudantium!
									</textarea>
								</div>
							</div>
						</div>
						
						<div class="form_submit clearfix" style="display:none">
							<div class="row">
								<div class="col-sm-10 col-sm-offset-2">
									<button class="btn btn-primary btn-lg" title="Save all data">Save all data</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>