<div id="dashboard-section">
<div class="row-fluid">
<!--  <div class="span4">
  <?php $this->load->view('front/menu/profile-menu') ?>
 </div> -->

<div class="span12">
<div class="profile-zone"> 
<div class="invite-form">
<?php 
    $formAttr = array(
        'id' => 'invitefriend-form',
        'name' => 'invitefriend-form',
        'class' => 'login full-width'
    );
echo form_open('',$formAttr); 
?>   

<h2>Contact Us</h2>
<div class="invite-form">
<div class="row-fluid">
<div class="span12">
<div class="span6">
<h2>Your's Detail </h2>
<div class="form-group">
	<input name="name" id="name" autocomplete="off" type="text" value="<?php if(!empty($name)){echo $name;}?>" placeholder="Full Name" />
	<span class="required-server"><?php echo form_error('name'); ?></span>
	</div>
<div class="form-group">
	<input name="email" id="email" autocomplete="off" type="text" value="<?php if(!empty($email)){echo $email;}?>" placeholder="Email" />
	<span class="required-server"><?php echo form_error('email'); ?></span>	
</div>    
<div class="form-group textrea-box">
	  <label for="full_description">Description</label>
	  <textarea name="full_description" id="full_description" value="" rows="5" cols="50" placeholder="Message"><?php if(!empty($full_description)){echo $full_description;}?></textarea>
	  <span class="required-server"><?php echo form_error('full_description'); ?></span>           
</div>
<div class="form-group"><input type="submit" class="btn btn-primary green-btn" value="Send" name="" /></div>
</div>
<div class="span6">
<div class="contact-info">
<h2>CONTACT INFO</h2>
<h5>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</h5>
<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque la udantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.<br>
</p>
<strong>The Company Name Inc.<br>
9870 St Vincent Place,<br>
Glasgow, DC 45 Fr 45<br>
FAX: +1 800 889 9898<br>
E-mail: mail@demolink.org.</strong>
</div>
</div>
</div>
</div>
</div>

<?php echo form_close(); ?>
</div>
</div>
</div>
</div>
</div>
