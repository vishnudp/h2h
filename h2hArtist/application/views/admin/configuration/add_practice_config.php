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
              <label for="reg_input">Please select test profile: </label>
              <?php if(empty($test_profile_id)) { $test_profile_id = '';}?>
              <select name="test_profile_id" id="test_profile_id" class="form-control" data-required="true">
                <option value="" <?php if($test_profile_id == ''){ echo 'selected';}?>>--Choose--</option>
                <?php
    			  	if(!empty($all_test_profile)){
    					foreach ($all_test_profile as $row){	?>
                <option value="<?php echo $row['test_profile_id'];?>" <?php if($test_profile_id == $row['test_profile_id']){ echo 'selected';}?>> <?php echo $row['profile_title'];?></option>
                <?php } }?>
              </select>
              <span class="required-server"><?php echo form_error('test_profile_id'); ?></span> </div>
          </div>
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Please enter total time allowed (In Minut) </label>
              <input type="text" id="time_allowed" name="time_allowed" value="<?php if(isset($time_allowed)){ echo $time_allowed; } ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('time_allowed'); ?></span> </div>
          </div>
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Max total marks (Full Marks) </label>
              <input type="text" id="max_total_marks" name="max_total_marks" value="<?php if(isset($max_total_marks)){ echo $max_total_marks; } ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('max_total_marks'); ?></span> </div>
          </div>
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Please enter total no of question for this test type </label>
              <input type="text" id="total_question" name="total_question" value="<?php if(isset($total_question)){ echo $total_question; } ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('total_question'); ?></span> </div>
          </div>
          
          <div class="form-group">
            <div class="col-sm-11 padbottom">
              <label for="reg_input">Please enter pass marks for this test type </label>
              <input type="text" id="pass_marks" name="pass_marks" value="<?php if(isset($pass_marks)){ echo $pass_marks; } ?>" class="form-control" data-required="true" />
              <span class="required-server"><?php echo form_error('pass_marks'); ?></span> </div>
          </div>
          
          
        </div>
        </div>
        <div class="panel-body">
          <?php if(!empty($result['subject'])){ ?>
          <fieldset>
          <legend><span>Please enter test configuration value(according to subject) for this test</span></legend>
          <div class="row">
            <div class="col-sm-6">
              <label><strong> <i> Subject/Concept name </i></strong></label>
            </div>
            <div class="col-sm-3">
              <label><strong> <i>Max Question Allowed</i></strong></label>
            </div>
            <div class="col-sm-3">
              <label><strong> <i> Pass Marks ( Subject Wise )</i></strong></label>
            </div>
          </div>
          </fieldset>
          <?php 
		  #pr($result['subject']);
		  foreach ($result['subject'] as $keys => $value){ 
                $subject_no_of_question = 0;
                $subject_pass_marks = 0;
                if(isset($subject_id) || !empty($subject_id)){
                    if(in_array($value['subject_id'],$subject_id)){
                        foreach($config_description as $values){
                            if($value['subject_id'] == $values->subject_id){
                                $subject_no_of_question = $values->subject_no_of_question;
                                $subject_pass_marks = $values->subject_pass_marks;
                            }
                        }
                    }
                }
                $keys = $keys+1;
            ?>
          <fieldset>
          <div class="row">
            <div class="col-sm-6">
              <label><strong><?php echo $keys,') ',$value['subject_title'] ?></strong> <?php if(empty($value['concept'])){ ?>&nbsp;(Total Questions - <?php echo getcatTotalnoofQuestionbysubjectid($value['subject_id']); ?>)<?php } ?></label>
            </div>
            <div class="col-sm-3">
                <?php if(empty($value['concept'])){ ?>
              <input type="text" onkeydown="checkValue(this.value,'<?php echo getcatTotalnoofQuestionbysubjectid($value['subject_id']); ?>')"  onkeypress="checkValue(this.value,'<?php echo getcatTotalnoofQuestionbysubjectid($value['subject_id']); ?>')" id="subject_no_of_question_<?php echo $value['subject_id']; ?>" name="subject_no_of_question[]" value="<?php echo $subject_no_of_question; ?>"  class="form-control" data-required="true" />
			  <input type="hidden" name="subject_ids[]" value="<?php echo $value['subject_id']; ?>" />
			  <input type="hidden" name="subject_title[]" value="<?php echo $value['subject_title']; ?>" />
            <?php } ?>
            </div>
            <div class="col-sm-3">
             <?php if(empty($value['concept'])){ ?>
                <?php if(isset($scoring_type) && $scoring_type == 1){ echo 'N/A'; ?>
                    <input type="hidden" id="subject_pass_marks_<?php echo $value['subject_id']; ?>" name="subject_pass_marks[]" value="<?php echo $subject_pass_marks; ?>"  class="form-control" data-required="true" />
			     <?php }else{ ?>
                 <input type="text" id="subject_pass_marks_<?php echo $value['subject_id']; ?>" name="subject_pass_marks[]" value="<?php echo $subject_pass_marks; ?>"  class="form-control" data-required="true" />
                 <?php } ?>
             <?php } ?>
            </div>
          </div>
          </fieldset>
          <?php
            if(isset($value['concept']) && !empty($value['concept'])){
                foreach($value['concept'] as $key => $val){ 
                    $subject_no_of_question = 0;
                    $subject_pass_marks = 0;
                    if(isset($subject_id) || !empty($subject_id)){
                        if(in_array($val['subject_id'],$subject_id)){
                            foreach($config_description as $values){
                                if($val['subject_id'] == $values->subject_id){
                                    $subject_no_of_question = $values->subject_no_of_question;
                                    $subject_pass_marks = $values->subject_pass_marks;
                                }
                            }
                        }
                    }
                    $key = $key+1;
                ?>
          <fieldset>
          <div class="row">
            <div class="col-sm-6">
              <label>&nbsp;&nbsp;&nbsp;<?php echo $keys,'.',$key,') ',$val['subject_title'] ?>&nbsp;(Total Questions - <?php echo getcatTotalnoofQuestionbysubjectid($val['subject_id']); ?>)</label>
            </div>
             <div class="col-sm-3">
              <input type="text" onkeydown="checkValue(this.value,'<?php echo getcatTotalnoofQuestionbysubjectid($val['subject_id']); ?>')" onkeypress="checkValue(this.value,'<?php echo getcatTotalnoofQuestionbysubjectid($val['subject_id']); ?>')" id="subject_no_of_question_<?php echo $val['subject_id']; ?>" name="subject_no_of_question[]" value="<?php echo $subject_no_of_question; ?>"  class="form-control" data-required="true" />
              <input type="hidden" name="subject_ids[]" value="<?php echo $val['subject_id']; ?>" />
			  <input type="hidden" name="subject_title[]" value="<?php echo $val['subject_title']; ?>" />
			</div>
            <div class="col-sm-3">
             <?php if(isset($scoring_type) && $scoring_type == 1){ echo 'N/A'; ?>
                    <input type="hidden" id="subject_pass_marks_<?php echo $value['subject_id']; ?>" name="subject_pass_marks[]" value="<?php echo $subject_pass_marks; ?>"  class="form-control" data-required="true" />
			     <?php }else{ ?>
                 <input type="text" id="subject_pass_marks_<?php echo $value['subject_id']; ?>" name="subject_pass_marks[]" value="<?php echo $subject_pass_marks; ?>"  class="form-control" data-required="true" />
                 <?php } ?>             
			</div>
          </div>
          </fieldset>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          <fieldset>
          
         
          <fieldset>
          <div class="row">
            <div class="col-sm-6">
              
            </div>
             <div class="col-sm-3">
             
              <label><strong> Total : <?php if(isset($total_question)){ echo $total_question;} ?></strong></label>
              
			</div>
            <div class="col-sm-3">
             <?php if(isset($scoring_type) && $scoring_type != 1 && $test_profile_id != 4){ ?>
              <label><strong>&nbsp;  &nbsp;</strong></label>
              <?php }else{ ?> 
               <label><strong>&nbsp; &nbsp; </strong></label> 
               <?php } ?>            
			</div>
          </div>
          </fieldset>
          
           <fieldset>          
          <div class="row">
            <div class="col-sm-5">
              <button type="submit" class="btn btn-default">
              <?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
              </button>
            </div>
          </div>
          </fieldset>
          <?php } ?>
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
   window.location.href = '<?php echo site_url('admin/configuration/add');?>?test_profile_id='+sel.value;
   // or try window.location.href = '?year='+sel.value;
}
</script>
