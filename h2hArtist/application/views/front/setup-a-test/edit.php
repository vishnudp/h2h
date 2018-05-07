<style>
.padbottom{
    padding-bottom: 15px;
}
</style>
<div class="row">
  <div class="col-sm-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <?php if(isset($formTitle)){echo $formTitle;} ?>
        </h4>
      </div>
      <div class="panel-body">
      <fieldset>
      <legend><span>
      <?php if(isset($legendText)){echo $legendText;} ?>
      </span></legend>
      </fieldset>
	  <?php 
	   //echo"<pre>"; print_r($result);
	  ?>
      <form name="testsetup" id="parsley_reg" action="" method="POST">
        <div class="row">
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Please select test type </label>
              <?php if(empty($category_id)) { $category_id = '';}?>
              <select name="category_id" id="category_id"  class="form-control" data-required="true" disabled="disabled">
               <!-- <option value="" <?php if($category_id == ''){ echo 'selected';}?>>--Choose--</option> -->
                <?php
					if(!empty($parent_category)){
						foreach ($parent_category as $row){	?>
						  
			<option value="<?php echo $row['category_id'];?>" <?php if($result[0]['category_id'] == $row['category_id']){ echo 'selected';}?>> <?php echo $row['category_title'];?></option>
                <?php } }?>
              </select>
              <span class="required-server"><?php echo form_error('category_id'); ?></span> </div>
          </div>
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Test Number</label>
              <input type="text" id="setup_test_number" name="setup_test_number" value="<?php echo $result[0]['setup_test_number']; ?>" class="form-control" data-required="true" readonly="1" />
              <span class="required-server"><?php echo form_error('setup_test_number'); ?></span> </div>
          </div>
		  
		  <?php /*?><div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Test setup ID </label>
              <input type="text" id="setup_test_id" name="setup_test_id" value="<?php if(isset($setup_test_id)){ echo $setup_test_id; } ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('setup_test_id'); ?></span> </div>
          </div><?php */?>
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Password</label>
              <input type="text" id="" name="setup_test_password" value="<?php echo $result[0]['setup_test_password']; ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('setup_test_password'); ?></span> </div>
          </div>
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Candidate full name</label>
              <input type="text" id="firstname" name="firstname" value="<?php echo $result[0]['setup_firstname']; ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('firstname'); ?></span> </div>
          </div>
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <!--label for="reg_input">Candidate last name</label-->
              <input type="hidden" id="lastname" name="lastname" value="<?php echo $result[0]['setup_lastname']; ?>" class="form-control" />
			 
              <span class="required-server"><?php #echo form_error('lastname'); ?></span> </div>
          </div>
          <div class="col-sm-5">
		     <input type="hidden" id="editsetup" name="editsetup" value="editsetup" />
            <button type="submit" class="btn btn-default" style="cursor:pointer;" title="Submit">
            <?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
            </button>
			<button class="btn btn-default" type="button" onclick="redirect('<?php echo site_url('admin/setup');?>');" style="cursor:pointer;" title="Cancel">Cancel </button>
          </div>
        </div>
        
      </form>
    </div>
  </div>
</div>
</div>
<script type="text/javascript">
function getval(sel) {
   //alert(sel.value);
   window.location.href = '<?php echo site_url('admin/setting/add');?>?category_id='+sel.value;
   // or try window.location.href = '?year='+sel.value;
}
</script>
