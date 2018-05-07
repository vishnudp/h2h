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
        <div class="renewplan">
               <h2>Renew your plan</h2>
            <div class="form-group">
              <label>
                Choosen Plan 
              </label>
              <?php if(!empty($plan_result)){ ?>
                <select name="subscription_plan" id="subscription_plan" onChange="getPlanamount(this.options[this.selectedIndex].value);" >                
                <option value="">--Choose Plan--</option> 
                <optgroup label="Free Plan">                
                <option value="0">Free</option>
                </optgroup>   
                <optgroup label="Paid Plan">    
                 <?php foreach($plan_result as $key=>$value) { ?>                    
                    <option value="<?php echo $value["plan_id"];?>" <?php if($subscription_plan == $value['plan_id']){ echo 'selected';}?>><?php echo ucfirst($value["plan_title"]);?></option>                    
                <?php } ?>
                </optgroup> 
              </select>
              <span class="required-server"><?php echo form_error('subscription_plan'); ?></span>
              <?php  }else{?>
              <p><?php if(isset($plan_title)) {echo $plan_title; }else{ echo 'No Plan choosen';} ?></p>              
              <?php } ?>
            </div>        
            <div class="form-group">
              <label>
                Plan Price
              </label>

             <?php if(!empty($plan_result)){ ?> <p class="plan_amount"> 0 </p> <?php }else{ ?>
             
              <p><?php if(isset($plan_amount)) {echo $plan_amount; }else{ echo '0';}?></p>              
             <?php } ?>
            </div>
            <div class="form-group">
              <label>
               Choose Payment Method to Renew Plan
              </label>
            </div>
            <div class="form-group">
              <label for="reg_chbox_a" class="checkbox-inline" title="Paypal">
                <input type="radio" value="paypal" id="payment_method" name="payment_method"/>
                Paypal
              </label>
            </div>
            <div class="form-group">
              <!-- <label for="reg_chbox_b" class="checkbox-inline" title="Global Pay">
                <input type="radio" value="global_pay" id="payment_method" name="payment_method" />
                Global Pay
              </label> -->
              <label for="reg_chbox_c" class="checkbox-inline" title="Offline Bank Transfer">
                <input type="radio" value="banktransfer" id="payment_method" checked="true"  name="payment_method" />
                Offline Bank Transfer
              </label>
              <span class="required-server"><?php echo form_error('payment_method'); ?></span>       
            </div>   
            <div class="row-fluid">
<div class="span12">
        <input type="submit" value="Submit" class="btn btn-primary checkout" /></div>
      <div class="span8 text-right">
<!--label> <input type="checkbox" name="login:loginForm:rememberMe" />Remember me </label-->
</div>
</div>
        </div>
        </div>
         <div class="span6">
         <div class="border-left">   
         <img src="<?php echo base_url('assets/images/plan.png');?>" width="400" />
         </div>
         </div>
        </div>
  <?php echo form_close(); ?>
  </div>
  </div>
</div>
