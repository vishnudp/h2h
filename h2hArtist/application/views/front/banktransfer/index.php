<div id="sign-in">
<div class="row-fluid">
<div class="span12">

	<?php 
	    $formAttr = array(
	        'id' => 'login-form',
	        'name' => 'login-form',
	        'class' => 'login full-width'
	    );
	echo form_open('',$formAttr); 
	?>   
    <div class="row-fluid">
    <div class="span6">
       <div class="bank-transfer">
	<h2>Bank Transfer Details</h2>
	<p>Please make payment to H2H Entertainment Company's bank account for choosen package with mentioned amount below to take benifits</p>
    <div class="form-group">
	<label>Choosen Plan</label>
	<p><?php if(isset($plan_title)){echo $plan_title;}else{echo 'No Plan choosen';}?></p>
    </div>
    <div class="form-group">
	<label>Plan Amount</label>
	<p><?php if(isset($amount)){echo $amount;}else{echo '0';}?></p>
    </div>
	<p><?php echo $bank_transfer_details;?></p>
	
    </div>
    </div>
    
    <div class="span6">
      <div class="border-left"> 
    <img src="<?php echo base_url('assets/images/bank-transfer.png');?>" width="400" />
    </div>
    </div>
    <?php echo form_close(); ?>
    </div>
    
</div>
</div>
</div>