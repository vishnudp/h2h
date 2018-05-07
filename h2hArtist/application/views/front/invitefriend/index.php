<div id="dashboard-section">
<div class="row-fluid">
 <div class="span4">
  <?php $this->load->view('front/menu/profile-menu') ?>
 </div>

<div class="span8">
<div class="profile-zone"> 
<div class="invite-form">
<?php 
    $formAttr = array(
        'id' => 'invitefriend-form',
        'name' => 'invitefriend-form',
       
    );
echo form_open('',$formAttr); 
?>   

<h2>Invite Friends</h2>
<p>Copy and Paste the link below on your social network(facebook.twitter,google+,whatsup etc.) profile or comment box to invite your friends to "H2H Entertainment Company".</p>
<div class="form-group">
	<label>Copy this link</label>
	<textarea name="copy_link" readonly="true" id="copy_link" value="" rows="5" placeholder="Web Link to Share"><?php echo base_url();?></textarea>
	<span class="required-server"><?php echo form_error('to_email'); ?></span>
</div>
<p>Use this mailer below to send a special "H2H Entertainment Company" customize email to your friends with your name on it inviting them to "H2H Entertainment Company" Exam Practice. Please
ONLY send invitations to your friends and those you know.</p>
<div class="invite-form">
<h3>Your's Friends Detail </h3>
<div class="row-fluid">
<div class="span6">
<div class="form-group">
	<input name="name" id="name" autocomplete="off" type="text" value="" placeholder="Full Name" />
	<span class="required-server"><?php echo form_error('name'); ?></span>
	</div>
</div>
<div class="span6">
<div class="form-group">
	<input name="email" id="email" autocomplete="off" type="text" value="" placeholder="Email" />
	<span class="required-server"><?php echo form_error('email'); ?></span>	
</div>
</div>
</div>
</div>
<div class="form-group">
	  <label for="full_description">Description</label>
	  <textarea name="full_description" id="full_description" value="" rows="5" cols="50" placeholder="Message"></textarea>
	  <span class="required-server"><?php echo form_error('full_description'); ?></span>           
</div>
<div class="row-fluid">
<div class="span12"><div class="form-group"><input type="submit" class="btn btn-primary green-btn" value="Send Invitation Message" name="" /></div></div>

</div>
<?php echo form_close(); ?>
</div>
</div>
</div>
</div>
</div>
