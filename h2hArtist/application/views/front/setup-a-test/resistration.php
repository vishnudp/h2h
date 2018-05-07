<?php $test_type_array = $this->config->item('test_type'); ?>
<div id="dashboard-section">
  <div class="row-fluid">
    
     <div class="span4">
        <?php 
        $this->load->view('front/menu/profile-menu');
        ?>
     </div>
  
  
    
    <div class="span8">
	<div class="profile-zone">
            <h2>Test Login Information</h2>
    <div class="successfully-msg">
        <h2>Your <?php echo strtolower($test_type_array[$test]); ?> test has been created successfully.</h2>
        <p>You can use this registration number and password for login.</p>
        </div>
          <div class="register-successfully">
        <strong>Registration No :</strong> <p><?php echo $test_number; ?></p> <strong>Password :</strong><p> <?php echo $test_password; ?></p>
        <p><p>Click here for login to take a test</p> <strong><a title="Take A Test" target="_blank" href="<?php echo base_url().'take-a-test/login' ?>">Take A Test</a> </strong></p>
        </div>
    </div>
    </div>
  
  <?php echo form_close(); ?>
  </div>
  
  </div>
</div>