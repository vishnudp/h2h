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
						</div>
						
					</div>  
                    
                    <div class="form_sep">
						<label for="reg_password_repeat">Repeat Password</label>
						<input type="password" name="reg_password_repeat" id="reg_password_repeat" class="form-control" data-equalto="#password_meter" />
                        <span class="required-server"><?php echo form_error('reg_password_repeat'); ?>
                    </div>   
                     <div class="form_sep">
						<label for="phone_number">Phone Number</label>
						<input type="text" name="phone_number" id="phone_number" class="form-control" value="<?php if(!empty($phone_number)){echo $phone_number;} ?>"/>
                        <span class="required-server"><?php echo form_error('phone_number'); ?>
                    </div> 
					<div class="form_sep">
						<button class="btn btn-default" type="submit" title="Save"  style="cursor:pointer">Save</button>
					</div>
                    <?php echo form_close(); ?>
				
			</div>
		</div>
	</div>
</div>
