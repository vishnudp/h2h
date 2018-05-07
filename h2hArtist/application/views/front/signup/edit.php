<div id="dashboard-section">
  <div class="row-fluid">  
    <div class="span4">
      <?php $this->load->view('front/menu/profile-menu') ?>
    </div>
     <div class="span8">
    	<?php 
          $formAttr = array(
            'id' => 'add_user',
            'class' => 'registrationForm',
            'name' => 'add_user'                    
          );
            echo form_open_multipart('',$formAttr); 
        ?>
    
        <h3 class="delta">
           Edit Profile 
        </h3>               
        <div class="row-fluid">
          <div class="span6">
            <div class="form-group">
              <label>
                First Name 
              </label>
              <input class="edit-input-field"  autocomplete="off" type="text" id="first_name" name="first_name" data-required="true" value="<?php if(!empty($first_name)){ echo $first_name;} ?>" />
              <span class="required-server"><?php echo form_error('first_name'); ?>
            </div>
          </div>
          <div class="span6">
            <div class="form-group">
              <label>
                Last Name
              </label>
              <input class="edit-input-field"  autocomplete="off" type="text" id="last_name" name="last_name" data-required="true" value="<?php if(!empty($last_name)){ echo $last_name;} ?>" />
              <span class="required-server"><?php echo form_error('last_name'); ?>
            </div>
          </div>
        </div>
        
               
        <div class="row-fluid">
          <div class="span6">
            <div class="form-group">
              <label>
                Password
              </label>
              <input class="edit-input-field"  autocomplete="off" type="password" id="user_password" name="user_password" data-required="true" value="" />
              <span class="required-server"><?php echo form_error('user_password'); ?>
            </div>
          </div>
          <div class="span6">
            <div class="form-group">
              <label>
                Confirm Password
              </label>
              <input class="edit-input-field"  autocomplete="off" type="password" id="reg_password_repeat" name="reg_password_repeat" data-required="true" value="" />
              <span class="required-server"><?php echo form_error('reg_password_repeat'); ?>
            </div>
          </div>
        </div>
        
        
        <div class="row-fluid">
        <div class="span6">
            <div class="form-group">
            <label>Select image</label>
              <div data-provides="fileupload" class="fileupload fileupload-new">
                  <div style="width: 67px; height: 50px;" class="fileupload-new img-thumbnail">
                    <img id="profile_image_preview" src="<?php if(!empty($profile_image)){  echo base_url(); ?>uploads/profile/<?php echo $profile_image; } else {  echo base_url(); ?>assets/img/no_img_50.png<?php } ?>" alt="" />
                  </div>                  
                  <span class="btn btn-default btn-file">
                        <input name="profile_image" id="profile_image" type="file" onchange="readURL(this,'profile_image_preview');" />
                  </span>                 
                  <span class="required-server"><?php echo form_error('profile_image'); ?> </span>
              </div>
            </div>
          </div>
                
        
        <div class="span6">
        <div class="form-group">
        <label>
        Country 
        </label>
        
        <select class="edit-input-field"  name="country" id="country_id" onchange="getState(this.options[this.selectedIndex].value,'<?php echo $zone_id ?>','<?php echo $city ?>');">        
          <option value="">--Select Country--</option>
          <?php foreach($all_country as $key=>$value) { ?>
          <option value="<?php echo $value["country_id"];?>" <?php if($country == $value['country_id']){ echo 'selected';}?> <?php if($value["name"] == "Nigeria"){ echo 'selected';}?>><?php echo $value["name"];?></option>
          <?php } ?>
        </select>
        <span class="required-server"><?php echo form_error('country'); ?></span>
        </div>
        </div>
        </div>

        <div class="row-fluid">
        <div class="span6">
        <div class="form-group changeState">      
        <label>
        State/Region 
        </label>
        <select class="edit-input-field"  name="state_id" id="state_id" class="form-control" onchange="getCity(this.options[this.selectedIndex].value);" >  
          <option value="">--Choose--</option>            
          <span class="required-server"><?php echo form_error('state_id'); ?></span>                
        </select>
        </div>
        </div>
        
        <div class="span6">
        <div class="form-group changeCity" id="city">
        <label>
         City / Nearest City
        </label>
        <select class="edit-input-field"  name="city" id="city" class="form-control edit-input-field">
          <option value="">--Choose--</option>
          <span class="required-server"><?php echo form_error('city'); ?></span>
        </select>
        </div>
        </div>
    </div>

<!--div class="row-fluid">
<div class="span6">
<div class="form-group">
<label>
Estimated Test Date
</label>
<input type="text" value="" />
</div>
</div>
<div class="span6">
<div class="form-group">
<label>
Estimated Test Date 
</label>
<input type="text" value="" />
</div>
<div class="form-group">
<label class="checkbox">

<input type="checkbox" value="" />
I do not know my test date 
</label>
</div>
</div>
</div-->
  
  <!--div class="row-fluid">
<div class="span6">
<div class="form-group">
<label>
Country
</label>
<select>
<option>
--Select--
</option>
<!--/select>
</div>
</div>
<div class="span6">
<div class="form-group">
<label>
Zip/Postal Code
</label>
<input type="text" value="" />
</div>
</div>
</div-->
  
  <div class="row-fluid">
    <div class="span6">
      <div class="form-group">
        <label>
          Phone Number 
        </label>
        <input class="edit-input-field" type="text" id="phone_number" name="phone_number" data-required="true" value="<?php if(!empty($phone_number)){ echo $phone_number;} ?>" />
        <span class="required-server"><?php echo form_error('phone_number'); ?>
      </div>
    </div>
  </div>
  <!-- <div class="row ruler">
  </div> -->
  <div class="row-fluid">
    <div class="span12">
      <div class="form-group">
        <input type="submit" value="Update" class="btn btn-primary checkout" />
      </div>
    </div>
  </div>
  <?php echo form_close(); ?>
  </div>
  <div class="clearfix"></div> 
  </div>
</div>
<style>
#state_id{
   width:99%; 
}
#city{
   width:100%; 
}
#country_id{
width: 99%;;
}
</style>
