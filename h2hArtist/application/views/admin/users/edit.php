
<div class="row">
  <div class="col-sm-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title"><?php echo $formTitle; ?></h4>
			</div>
			<div class="panel-body">
                <?php 
                  $formAttr = array(
                    'id' => 'parsley_reg',
                    'name' => 'edit_user'
                  );
                    echo form_open('',$formAttr); 
                ?>
				<!--form action="http://ebro-admin.tzdthemes.com/" id="parsley_reg"-->
					<div class="form_sep">
						<label for="first_name" class="req">First Name</label>
						<input type="text" id="first_name" name="first_name" class="form-control" data-required="true" value="<?php if(!empty($first_name)){echo $first_name; } ?>" />
                        <span class="required-server"><?php echo form_error('first_name'); ?>
					</div>
                    
                    <div class="form_sep">
						<label for="last_name" class="req">Last Name</label>
						<input type="text" id="last_name" name="last_name" class="form-control" data-required="true" value="<?php if(!empty($last_name)){echo $last_name;} ?>" />
                        <span class="required-server"><?php echo form_error('last_name'); ?>
					</div>
                    
                    <div class="form_sep">
						<label for="username" class="req">Username</label>
						<input type="text" readonly="true" id="username" name="username" class="form-control" data-required="true" value="<?php if(!empty($username)){echo $username;} ?>" />
                        <span class="required-server"><?php echo form_error('username'); ?>
                    </div>
                    
                    <div class="form_sep">
						<label>Date of Birth(iso date)</label>
						<div class="input-group date ebro_datepicker" data-date-format="yyyy-mm-dd">
							<input class="form-control input_validate" name="user_dob" id="user_dob" type="text"  data-type="dateIso" value="<?php if(!empty($user_dob)){echo $user_dob;} ?>" />
							<span class="input-group-addon"><i class="icon-calendar"></i></span>
                            <span class="required-server"><?php echo form_error('user_dob'); ?>
						</div>
					</div>
                    
					<div class="form_sep">
						<label for="email" class="req">Email</label>
						<input type="text" id="email" name="email" class="form-control" data-required="true" data-type="email" value="<?php if(!empty($email)){echo $email;} ?>" />
                        <span class="required-server"><?php echo form_error('email'); ?>
					</div>
					<div class="form_sep">
						<div class="form-group">
							<label for="reg_password">Password</label>
							<!--input type="text" name="reg_password" id="reg_password" class="form-control" data-required="true" data-minlength="8"-->
                            <div class="col-sm-4">
                                <div class="form-group">
    								<input type="password" name="user_password" id="password_meter" class="form-control" />
                                    <span class="required-server"><?php echo form_error('user_password'); ?>
    							</div>
    							<div class="progress progress-small">
    								<div class="progress-bar progress-bar-danger" id="pass_progress"></div>
    							</div>
                            </div>
                            <div class="col-sm-4">
                                <span id="complexity">0%</span>
                                <span id="complexityLabel">Complexity</span>
                            </div>
						</div>
						
					</div>  
                    
                    <div class="form_sep">
						<label for="reg_password_repeat">Repeat Password</label>
						<input type="password" name="reg_password_repeat" id="reg_password_repeat" class="form-control" data-equalto="#password_meter" />
                        <span class="required-server"><?php echo form_error('reg_password_repeat'); ?>
                    </div>  
                               
                    
					<div class="form_sep">
						<label for="reg_textarea_message">About</label>
                        <!--data-required="true" data-minlength="40"-->
						<textarea name="about" id="about" cols="30" rows="4" class="form-control" ><?php if(!empty($about)){echo $about;} ?></textarea>
                        <span class="required-server"><?php echo form_error('about'); ?>
					</div>
					<div class="form_sep">
						<label for="reg_select" class="req">Select Role</label>
                        <?php if(!empty($role_id)){$role_id = $role_id;} ?>
                        <?php $whereString = array('role_is_active' => 1,'role_is_deleted' => 0);
                        $attribute = "class='form-control' data-required='true'";
                         echo dropdownMenu($role_id,'role_id','users','role','role_title',$whereString,$attribute); ?>
                        <span class="required-server"><?php echo form_error('role_id'); ?>
						<!--select name="reg_select" id="reg_select" class="form-control" data-required="true">
							<option value="">---</option>
							<!--option value="val1">Option 1</option>
							<option value="val2">Option 2</option>
							<option value="val3">Option 3</option>
						</select-->
					</div>
					<div class="form_sep">
                        <label for="is_active" class="checkbox-inline">Status</label>
                        <label for="reg_chbox_a" class="checkbox-inline" title="Inactive">
            				<?php if($is_active == '') { $is_active = '1';}?>
            <input type="radio" value="0" id="is_active" name="is_active" <?php if($is_active=='0'){ echo 'checked';}?>/>
            Inactive</label>
            <label for="reg_chbox_b" class="checkbox-inline" title="Active">
            <input type="radio" value="1" id="is_active" name="is_active" <?php if($is_active=='1'){ echo 'checked';}?> />
            Active</label>
            <span class="required-server"><?php echo form_error('is_active'); ?></span>
                    </div>
                    
					<div class="form_sep">
						<button class="btn btn-default" type="submit" title="Save"  style="cursor:pointer">Save</button>
					</div>
                    <?php echo form_close(); ?>
				
			</div>
		</div>
	</div>
</div>
