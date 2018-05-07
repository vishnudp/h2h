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
<h2>Have an account? &nbsp;<a href="<?php echo base_url('signup'); ?>" title="Sign up">Sign up</a></h2>

<div class="formSignIn">
<div class="form-group">
<label>Email Address </label>
<input name="username" id="username" autocomplete="off" type="text" value="<?php if(!empty($username)){ echo $username;} ?>" />
<span class="required-server"><?php echo form_error('username'); ?></span>
</div>
<div class="form-group">
<label>Password </label>
<input name="user_password" id="user_password" autocomplete="off" type="password" value="" />
<span class="required-server"><?php echo form_error('user_password'); ?></span>
</div>
<div class="form-group">
<label for="captcha"><?php echo $captcha['image']; ?></label>
<input type="text" autocomplete="off" name="userCaptcha" value="<?php if(!empty($userCaptcha)){ echo $userCaptcha;} ?>" />
<span class="required-server"><?php echo form_error('userCaptcha'); ?></span>
</div>
<div class="row-fluid">
<div class="span4"><input type="submit" class="btn btn-default" value="Sign In" name="" /></div>
<div class="span8 text-right">
<!--label> <input type="checkbox" name="login:loginForm:rememberMe" />Remember me </label-->
</div>
</div>
</div>
<?php echo form_close(); ?>
</div>
</div>
</div>