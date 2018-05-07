<style>
.col-sm-5{
    width: 99.667%;
}
</style>
<div class="row">
  <div class="col-sm-5">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <?php if(isset($formTitle)){echo $formTitle;} ?>
        </h4>
      </div>
      <div class="panel-body">
         <?php echo form_open_multipart('',array('name' => 'profile_form', 'id' => 'profile_form'));?>
          <div class="form_sep">
            <label for="widget_name" class="req">Widget</label>
            <input type="text" id="widget_name" name="widget_name" value="<?php if(isset($widget_name)){ echo $widget_name; } ?>" class="form-control" data-required="true" />
            <span class="required-server"><?php echo form_error('widget_name'); ?> </div>            
          <div class="form_sep">
            <label for="grade_description">Description</label>
            <!-- <textarea name="grade_description" id="grade_description" cols="30" rows="4" class="form-control" data-required="true" data-minlength="40"><?php if(isset($grade_description)){ echo $grade_description; } ?>
</textarea> -->
            <?php //echo $this->ckeditor->editor("grade_description",""); ?>
            <?php //echo form_textarea(array('name' =>'widget_description','id'=>'widget_description','class'=>"ckeditor",'value'=> $widget_description)); ?>
            <?php //if(isset($grade_description)){ echo $grade_description; } ?>
             <input type="text" id="grade_name" name="widget_description" value="<?php if(isset($widget_description)){ echo $widget_description; } ?>" class="form-control" data-required="true" />
            <span class="required-server"><?php echo form_error('widget_description'); ?></span> </div>
            <?php if($role_id==1){?>
		  <div class="form_sep">
            <label for="is_active" class="checkbox-inline">Status</label>
            <label for="reg_chbox_a" class="checkbox-inline" title="Inactive">
			<?php if($widget_is_active == '') { $widget_is_active = '0';}?>
            <input type="radio" value="0" id="grade_is_active" name="widget_is_active" <?php if($widget_is_active=='0'){ echo 'checked';}?>/>
            Inactive</label>
            <label for="reg_chbox_b" class="checkbox-inline" title="Active">
            <input type="radio" value="1" id="grade_is_active" name="widget_is_active" <?php if($widget_is_active=='1'){ echo 'checked';}?> />
            Active</label>
            <span class="required-server"><?php echo form_error('widget_is_active'); ?></span> </div>
			      <?php } ?>
		
			
          <div class="form_sep">
		  <input type="hidden" name="category_image_old" id="category_image_old" value="<?php echo @$category_image;?>" />
            <button class="btn btn-default" type="submit" style="cursor:pointer;" title="<?php echo @$buttonText;?>">			 
            <?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
            </button>
			<button class="btn btn-default" type="button" onclick="redirect('<?php echo site_url('admin/widget');?>');" style="cursor:pointer;" title="Cancel">Cancel </button>
			
          </div>          
         <?php echo form_close();?> 
      </div>
    </div>
  </div>
</div>