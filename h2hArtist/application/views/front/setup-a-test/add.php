<div id="dashboard-section">
  <div class="row-fluid">
    
     <div class="span4">
        <?php $this->load->view('front/menu/profile-menu') ?>
     </div>
  
  
    
    <div class="span8">
	<div class="profile-zone">
    	<?php 
          $formAttr = array(
            'id' => 'setupatest',
            'class' => 'registrationForm',
            'name' => 'setupatest'                    
          );
            echo form_open('',$formAttr); 
        ?>
        <h2>Setup a new test </h2> 
        <div class="row-fluid">
          <div class="span4">
            <div class="form-group">
              <label for="reg_input">Please Select Test Profile : </label>
              <?php if(empty($test_profile_id)) { $test_profile_id = '';}?>
              <select name="test_profile_id" id="test_profile_id"  class="form-control" data-required="true">
                <option value="" <?php if($test_profile_id == ''){ echo 'selected';}?>>--Choose--</option>
                <?php
					if(!empty($all_test_profile)){
						foreach ($all_test_profile as $row){	?>
			<option value="<?php echo $row['test_profile_id'];?>" <?php if($test_profile_id == $row['test_profile_id']){ echo 'selected';}?>> <?php echo $row['profile_title'];?></option>
                <?php } }?>
              </select>
              <span class="required-server"><?php echo form_error('test_profile_id'); ?></span>
            </div>
          </div>
          <div class="span4">
            <div class="form-group">
              <label for="reg_input">Registration Number :</label>
              <input type="text" id="setup_test_number" name="setup_test_number" value="<?php if(isset($setup_test_number)){ echo $setup_test_number; } ?>" class="form-control" data-required="true" readonly="1" />
              <span class="required-server"><?php echo form_error('setup_test_number'); ?></span>
            </div>
          </div>
        </div>        
        <div class="row-fluid">
          <div class="span4">
            <div class="form-group">
              <label for="reg_input">Password :</label>
              <input type="text" id="" name="setup_test_password" value="<?php if(isset($setup_test_password)){ echo $setup_test_password; } ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('setup_test_password'); ?></span>
            </div>
          </div>
          
        </div>
<div class="row-fluid">
    <div class="span8">
      <div class="form-group">
        <input type="submit" value="Save and continue" class="btn btn-primary checkout" />
      </div>
    </div>
  </div>
  </div>
  </div>
  
  <?php echo form_close(); ?>
  </div>
  
  </div>
</div>