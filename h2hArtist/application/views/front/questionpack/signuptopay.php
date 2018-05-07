<div id="sign-in">
  <div class="row-fluid">  
    <div class="span12">
    	<?php 
          $formAttr = array(
            'id' => 'login-form',
        'name' => 'login-form',
        'class' => 'login'                 
          );
            echo form_open('',$formAttr); 
        ?>
        <h2>Register here for payment to download question pack !!</h2>
        
        <div class="formSignIn">
            <div class="form-group">
              <label>
                First Name 
              </label>
              <input autocomplete="off" type="text" id="first_name" name="first_name"  value="<?php if(!empty($first_name)){ echo $first_name;} ?>" />
              <span class="required-server"><?php echo form_error('first_name'); ?>
            </div>
        
        
            <div class="form-group">
              <label>
                Last Name
              </label>
              <input autocomplete="off" type="text" id="last_name" name="last_name"  value="<?php if(!empty($last_name)){ echo $last_name;} ?>" />
              <span class="required-server"><?php echo form_error('last_name'); ?>
            </div>
      
      
            <div class="form-group">
              <label>
                Email Address
              </label>
              <input autocomplete="off" type="text" id="email" name="email"  value="<?php if(!empty($email)){ echo $email;} ?>" />
              <input type="hidden" id="profile_type_id" name="profile_type_id"  value="<?php if(!empty($profile_type_id)){ echo $profile_type_id;} ?>" />
              <span class="required-server"><?php echo form_error('email'); ?>
            </div>
          
            <div class="form-group">
              <label>
                Phone Number 
              </label>
              <input autocomplete="off" type="text" id="phone_number" name="phone_number"  value="<?php if(!empty($phone_number)){ echo $phone_number;} ?>" />
              <span class="required-server"><?php echo form_error('phone_number'); ?>
            </div>
            <div class="form-group">
              <label>
               Choose Payment Method
              </label>
              <label for="payment_method" class="checkbox-inline" title="Paypal">
                <input type="radio" value="paypal" id="payment_method" name="payment_method"/>
                Paypal
              </label>
              <label for="payment_method_global" class="checkbox-inline" title="Global Pay">
                <input type="radio" value="global_pay" id="payment_method_global" name="payment_method" />
                Global Pay
              </label>
              <label for="payment_method_offline" class="checkbox-inline" title="Offline Bank Transfer">
                <input type="radio" value="banktransfer" id="payment_method_offline" checked="true"  name="payment_method" />
                Offline Bank Transfer
              </label>
              <span class="required-server"><?php echo form_error('payment_method'); ?></span>       
            </div>
           
  <div class="row-fluid">
<div class="span4">
        <input type="submit" value="Submit" class="btn btn-primary checkout" /></div>
      <div class="span8 text-right">
<!--label> <input type="checkbox" name="login:loginForm:rememberMe" />Remember me </label-->
</div>
</div>
</div>
  <?php echo form_close(); ?>
  </div>
  </div>
</div>
