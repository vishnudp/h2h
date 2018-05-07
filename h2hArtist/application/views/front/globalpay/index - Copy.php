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
	<h2>Global Pay Details</h2>
	<p>
	<?php echo $bank_transfer_details;?>
	</p>
	<?php echo form_close(); ?>
</div>
</div>
</div>