<div id="sign-in">
  <div class="row-fluid">  
    <div class="span7">
    	<?php 
          $formAttr = array(
            'id' => 'add_user',
            'class' => 'registrationForm',
            'name' => 'add_user'                    
          );
            echo form_open('',$formAttr); 
        ?>
        <h2>
          New here?
        </h2>
        <h5>
          Create your own new account.
        </h5>
        <p>
          
        </p>
        <div class="row ruler">
        </div>
        <h3 class="delta">
          Account Details
        </h2>
        <div class="row-fluid">
          <div class="span6">
            <div class="form-group">
              <label>
                Choose the test you're interested in
              </label>
              <select name="interested_test" id="interested_test">
                 <option value="">--Choose Test Profile--</option>                           
                 <?php foreach($profiletype as $key=>$value) { ?>
                  <optgroup label="<?php echo ucfirst($value["profile_type_title"]);?>">
                      <?php foreach($testprofile as $key=>$tvalue) { if($value["profile_type_id"]==$tvalue["profile_type_id"]) { ?>
                        <option value="<?php echo $tvalue["test_profile_id"];?>" <?php if($test_profile_id == $tvalue['test_profile_id']){ echo 'selected';}?>><?php echo ucfirst($tvalue["profile_title"]);?></option>
                      <?php } }?>
                  </optgroup>
                <?php } ?>
              </select>
              <span class="required-server"><?php echo form_error('interested_test'); ?></span>
            </div>
          </div>
          <div class="span6">
            <div class="form-group">
              <label>
                Choose Plan
              </label>
              <select name="subscription_plan" id="subscription_plan" >                
                <option value="">--Choose Plan--</option> 
                <optgroup label="Free Plan">                
                <option value="0" rel_plan_value="free">Free</option>
                </optgroup>   
                <optgroup label="Paid Plan">    
                 <?php foreach($all_subscriber as $key=>$value) { ?>
                    
                    <option value="<?php echo $value["plan_id"];?>" <?php if($subscription_plan == $value['plan_id']){ echo 'selected';}?> rel_plan_value="<?php echo $value["plan_title"];?>"><?php echo ucfirst($value["plan_title"]);?></option>
                    
                <?php } ?>
                </optgroup> 
              </select>
              <span class="required-server"><?php echo form_error('subscription_plan'); ?></span>
            </div>
          </div>
        </div>        
        <div class="row-fluid">
          <div class="span6">
            <div class="form-group">
              <label>
                First Name 
              </label>
              <input autocomplete="off" type="text" id="first_name" name="first_name"  value="<?php if(!empty($first_name)){ echo $first_name;} ?>" />
              <span class="required-server"><?php echo form_error('first_name'); ?>
            </div>
          </div>
          <div class="span6">
            <div class="form-group">
              <label>
                Last Name
              </label>
              <input autocomplete="off" type="text" id="last_name" name="last_name"  value="<?php if(!empty($last_name)){ echo $last_name;} ?>" />
              <span class="required-server"><?php echo form_error('last_name'); ?>
            </div>
          </div>
        </div>
        <div class="row-fluid">
          <div class="span6">
            <div class="form-group">
              <label>
                Email Address
              </label>
              <input autocomplete="off" type="text" id="email" name="email"  value="<?php if(!empty($email)){ echo $email;} ?>" />
              <span class="required-server"><?php echo form_error('email'); ?>
            </div>
          </div>
          <div class="span6">
            <div class="form-group">
              <label>
                Confirm Email
              </label>
              <input autocomplete="off" type="text" id="confirm_email" name="confirm_email"  value="<?php if(!empty($confirm_email)){ echo $confirm_email;} ?>" />
              <span class="required-server"><?php echo form_error('confirm_email'); ?>
            </div>
          </div>
        </div>
        <div class="row-fluid">
          <div class="span6">
            <div class="form-group">
              <label>
                Password
              </label>
              <input autocomplete="off" type="password" id="user_password" name="user_password"  value="" />
              <span class="required-server"><?php echo form_error('user_password'); ?>
            </div>
          </div>
          <div class="span6">
            <div class="form-group">
              <label>
                Confirm Password
              </label>
              <input autocomplete="off" type="password" id="reg_password_repeat" name="reg_password_repeat"  value="" />
              <span class="required-server"><?php echo form_error('reg_password_repeat'); ?>
            </div>
          </div>
        </div>
        
        <div class="row-fluid">
        <div class="span12">
        <div class="form-group">
        <label>
        Country 
        </label>
        
        <!--select name="country_id" id="country_id" onchange="getState(this.options[this.selectedIndex].value);">        
          <option value="">--Select Country--</option>
          <?php foreach($all_country as $key=>$value) { ?>
          <!--option value="<?php echo $value["country_id"];?>" <?php if($country == $value['country_id']){ echo 'selected';}?> <?php if($value["name"] == "Nigeria"){ echo 'selected';}?>><?php echo $value["name"];?></option>
          <?php } ?>
        </select-->
        
        <?php 
        
            $whereString = array('status' => 1);
            $attribute = 'onchange="getState(this.options[this.selectedIndex].value, '."'$zone_id'".' ,'."'$city'".');"';
            echo dropdownMenu('156','country_id','signups','country','name',$whereString,$attribute); 
        
        ?>
        
        <span class="required-server"><?php echo form_error('country_id'); ?></span>
        </div>
        </div>
        </div>

        <div class="row-fluid">
        <div class="span12">
        <div class="form-group changeState">      
        
        <span class="required-server"><?php echo form_error('state_id'); ?></span>
        
        </div>
        </div>
        </div>        
        
        <div class="row-fluid">
        <div class="span12">
        <div class="form-group changeCity" id="cityDiv">
       <!--  <label class="city_label">
         City / Nearest City
        </label>
        <select name="city" id="city" class="form-control">
          <option value="">--Choose--</option>
          
        </select> -->
        <span class="required-server"><?php echo form_error('city'); ?></span>
        </div>
        </div>
    </div>

  
  <div class="row-fluid">
    <div class="span12">
      <div class="form-group">
        <label>
          Phone Number 
        </label>
        <input autocomplete="off" type="text" id="phone_number" name="phone_number"  value="<?php if(!empty($phone_number)){ echo $phone_number;} ?>" />
        <span class="required-server"><?php echo form_error('phone_number'); ?>
      </div>
    </div>
  </div>
  <div class="row-fluid payment_method">
    <div class="span12">
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
          <input type="radio" value="banktransfer" id="payment_method_offline" name="payment_method" />
          Offline Bank Transfer
        </label>
        <span class="required-server"><?php echo form_error('payment_method'); ?></span>       
      </div>
    </div>
  </div>
  <div class="row ruler">
  </div>
  <div class="row-fluid">
    <div class="span12">
      <div class="form-group">
        <input type="submit" value="Save and continue" class="btn btn-primary checkout" />
      </div>
    </div>
  </div>
  <?php echo form_close(); ?>
  </div>
  <div class="span5">
  <?php 
    $formAttr = array(
        'id' => 'sign-in-form',
        'name' => 'sign-in-form',
        'class' => 'login',
    );
    echo form_open('signin',$formAttr); 
    ?>  
    <form class="login">
      <h2>
        Have an account?
      </h2>
      <h5>
        Sign in.
      </h5>
      <p></p>
      <div class="row ruler">
        </div>
      <div class="formSignIn">
       <div class="form-group">
          <label>Email Address </label>
          <input name="username" id="username" autocomplete="off" type="text" value="" />          
          </div>
          <div class="form-group">
          <label>Password </label>
          <input name="user_password" id="user_password" autocomplete="off" type="password" value="" />          
          </div>
          <div class="form-group">
          <label for="captcha"><?php echo $captcha['image']; ?></label>
          <input autocomplete="off" type="text" name="userCaptcha" value="" />          
          </div>
        <div class="row-fluid">
          <div class="span4">
            <input type="submit" class="btn btn-default" value="Sign In" name="" />
          </div>
         
          <div class="span8 text-right">
            <!--label>

<input type="checkbox" name="login:loginForm:rememberMe" />
Remember me 
</label-->
  </div>
  </div>
  </div>
  
   <?php echo form_close(); ?>
  </div>
  <div class="clearfix"></div>
  </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        $("#subscription_plan").on('change',function(){
            var plan_value = $('#subscription_plan option:selected').text();
            if(plan_value=="Free" || plan_value=="free"){
                $(".payment_method").hide();
            }else{
              $(".payment_method").show();
            }
            
        });

    });
</script>