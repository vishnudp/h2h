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

<div class="formSignIn">
<div class="form-group">
<label>Registration Number</label>
<input name="test_number" id="test_number" autocomplete="off" type="text" value="<?php if(!empty($test_number)){ echo $test_number;} ?>" />
<span class="required-server"><?php echo form_error('test_number'); ?></span>
</div>
<div class="form-group">
<label>Password </label>
<input name="test_password" id="test_password" autocomplete="off" type="password" value="" />
<span class="required-server"><?php echo form_error('test_password'); ?></span>
</div>
<div class="form-group">
<label for="captcha"><?php echo $captcha['image']; ?></label>
<input type="text" autocomplete="off" name="userCaptcha" value="<?php if(!empty($userCaptcha)){ echo $userCaptcha;} ?>" />
<span class="required-server"><?php echo form_error('userCaptcha'); ?></span>
</div>
<div class="row-fluid">
<div class="span4"><input type="submit" class="btn btn-default" value="START" name="" /></div>
<div class="span8 text-right">
<!--label> <input type="checkbox" name="login:loginForm:rememberMe" />Remember me </label-->
</div>
</div>
</div>
<?php echo form_close(); ?>
</div>
</div>
</div>