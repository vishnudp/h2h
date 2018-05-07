<div id="sign-in">
  <div class="row-fluid">

    <div class="span12">
      <?php 
	    $formAttr = array(
	        'id' => 'login-form',
	        'name' => 'login-form',
	        'class' => 'login full-width'
	    );
            echo form_open($action,$formAttr);
      ?>
      <div class="row-fluid">
        <div class="span6">
          <div class="bank-transfer">
            <h2>Bank Transfer Details</h2>
            <div class="form-group">
              <label>Name</label>:
              <?php if(isset($names)){echo $names;}?>
              <input type="hidden" id="name" name="name" value="<?php if(isset($names)){echo $names;}?>">
            </div>
            <div class="form-group">
              <label>Amount</label>:
              <?php if(isset($amount)){echo $amount;}?>
              <input type="hidden" id="amount" name="amount" value="<?php if(isset($amount)){echo $amount;}?>">
            </div>
            <div class="form-group">
              <label>Email Address</label>:
              <?php if(isset($email_address)){echo $email_address;}?>
              <input type="hidden" id="email_address" name="email_address" value="<?php if(isset($email_address)){echo $email_address;}?>">
            </div>
            <div class="form-group">
              <label>Phone Number:</label>:
              <?php if(isset($phone_number)){echo $phone_number;}?>
              <input type="hidden" id="phone_number" name="phone_number" value="<?php if(isset($phone_number)){echo $phone_number;}?>">
            </div>
            <input type="hidden" id="currency" name="currency" value="<?php echo $currency; ?>">
            <br/>
            <input type="hidden" id="merch_txnref" name="merch_txnref" value="<?php if(isset($merch_txnref)){echo $merch_txnref;}?>">
            <br/>
            <!-- Merchant reference number should be unique per transaction--> 
            <!-- Merchant Id value should be changed to your merchant id-->
            <input type="hidden" id="merchantid" name="merchantid" value="<?php if(isset($merchantid)){echo $merchantid;}  ?>">
            <br/>
            <input type="submit" id="cmdsubmit" name="cmdsubmit" value="Confirm Payment">
          </div>
        </div>
        <?php echo form_close(); ?> 
      </div>
    </div>
  </div>
</div>

    