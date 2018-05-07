<?php #pr($subject_id); ?>
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
      <!--form name="addsetting" id="parsley_reg" action="" method="POST"-->
      <?php echo form_open_multipart('',array('name' => 'addsetting', 'id' => 'parsley_reg'));?>
        <div class="row">
        
         <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Please select test type: </label>
              <?php if(empty($test_type)) { $test_type = '';}?>
              <select name="test_type" id="test_type" class="form-control" data-required="true">
                <option value="" <?php if($test_type == ''){ echo 'selected';}?>>--Choose--</option>
                <?php
    			  	if(!empty($test_type_array)){
    					foreach ($test_type_array as $key => $row){	?>
                <option value="<?php echo $key;?>" <?php if($test_type == $key){ echo 'selected';}?>> <?php echo $row;?></option>
                <?php } }?>
              </select>
              <span class="required-server"><?php echo form_error('test_type'); ?></span> </div>
          </div>
        
        
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Please select test profile:</label>
              <?php if(empty($test_profile_id)) { $test_profile_id = '';}?>
              <select name="test_profile_id" id="test_profile_id" onchange="getval(this);" class="form-control" data-required="true">
                <option value="" <?php if($test_profile_id == ''){ echo 'selected';}?>>--Choose--</option>

                <?php
    			  	if(!empty($all_test_profile)){?>
                <option value="0" <?php if($test_profile_id == '0'){ echo 'selected';}?>>All Questions</option>
    					<?php foreach ($all_test_profile as $row){	?>
                <option value="<?php echo $row['test_profile_id'];?>" <?php if($test_profile_id == $row['test_profile_id']){ echo 'selected';}?>> <?php echo $row['profile_title'];?></option>
                <?php } }?>
              </select>
              <span class="required-server"><?php echo form_error('test_profile_id'); ?></span> </div>
          </div>
          
           <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Please enter total time allowed for each question (In Minute) </label>
              <input type="text" id="question_time_allowed" name="question_time_allowed" value="<?php if(isset($question_time_allowed)){ echo $question_time_allowed; } ?>" class="form-control" data-required="true" />              
          </div>
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Please enter total time allowed (In Minute) </label>
              <input type="text" id="time_allowed" name="time_allowed" value="<?php if(isset($time_allowed)){ echo $time_allowed; } ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('time_allowed'); ?></span> </div>
          </div>
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Max total marks (Full Marks) </label>
              <input type="text" id="max_total_marks" name="max_total_marks" value="<?php if(isset($max_total_marks)){ echo $max_total_marks; } ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('max_total_marks'); ?></span> </div>
          </div>
          <!-- <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Please enter total no of question for this test type </label>
              <input type="text" id="total_question" name="total_question" value="<?php if(isset($total_question)){ echo $total_question; } ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('total_question'); ?></span> </div>
          </div> -->
          
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Please enter pass marks for this test type </label>
              <input type="text" id="pass_marks" name="pass_marks" value="<?php if(isset($pass_marks)){ echo $pass_marks; } ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('pass_marks'); ?></span> </div>
          </div>
          
          
        </div>
        </div>
           <fieldset>          
          <div class="row">
            <div class="col-sm-5">
              <button type="submit" class="btn btn-default">
              <?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
              </button>
            </div>
          </div>
          </fieldset>
         
        </div>
      
      <?php echo form_close(); ?>
    </div>
  </div>
</div>
<script type="text/javascript">

function checkValue(val,total) {
    val = Number(val.trim());
    total = Number(total.trim());
    
    if(val <= total){
        return true;
    }
    else{
        alert('Value of this textbox allowed only less then or equal to '+total);
        this.focus();
        return false;
    }
}

function getval(sel) {
   //alert(sel.value);
   var test_type = $('#test_type').val();
   var test_profile_id = $('#test_profile_id').val();
   window.location.href = '<?php echo site_url('admin/configuration/add');?>?test_profile_id='+test_profile_id+'&test_type='+test_type;
   // or try window.location.href = '?year='+sel.value;
}
</script>
