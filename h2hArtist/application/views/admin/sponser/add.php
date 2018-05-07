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
      <div class="panel-body"> <?php echo form_open_multipart('',array('name' => 'sponser_form', 'id' => 'sponser_form'));?>
        <div class="form_sep">
          <label for="category_title" class="req">Title </span></label>
          <input type="text" id="sponser_title" name="sponser_title" value="<?php echo set_value('sponser_title'); ?>" class="form-control" data-required="true" />
          <span class="required-server"><?php echo form_error('sponser_title'); ?> </div>
        <div class="form_sep">
          <label for="category_description" class="req">Url</label>
          <input type="text" id="sponser_url" name="sponser_url" value="<?php echo set_value('sponser_url'); ?>" class="form-control" data-required="true" />
          <span class="required-server"><?php echo form_error('sponser_url'); ?></span> </div>
        <?php if(isset($sponser_image) && !empty($sponser_image) && file_exists('uploads/sponser/'.$sponser_image) ){?>
        <div class="form_sep">
          <div class="form-group">
            <div class="input-group">
              <div class="input-group-btn"> <span class="btn btn-default btn-file"> <img src="<?php echo base_url().'timthumb.php?src='.base_url().'uploads/sponser/'.$sponser_image;?>&h=100&w=100"> </span> <span class="required-server"><?php echo form_error('sponser_image'); ?></span> </div>
            </div>
          </div>
        </div>
        <?php } ?>
        <div class="form_sep">
          <div class="form-group">
            <label for="category_image" class="req">Image</label>
            <div class="input-group">
              <div class="form-control"> <i class="icon-file fileupload-exists"></i> <span class="fileupload-preview"></span> </div>
              <div class="input-group-btn"> <span class="btn btn-default btn-file"> <span class="fileupload-new">Select</span>
                <input type="file" name="sponser_image" id="sponser_image" value="<?php echo set_value('sponser_image'); ?>" />
                </span> <span class="required-server"><?php echo form_error('sponser_image'); ?></span> </div>
            </div>
          </div>
        </div>
        <div class="form_sep">
          <label for="is_active" class="checkbox-inline">Status</label>
          <label for="reg_chbox_a" class="checkbox-inline">
          <?php 
		  $page_is_active = set_value('page_is_active');
		  if($sponser_is_active == '') { $sponser_is_active = '1';}?>
          <input type="radio" value="0" id="sponser_is_active" name="sponser_is_active" <?php if($sponser_is_active=='0'){ echo 'checked';}?>/>
          Inactive</label>
          <label for="reg_chbox_b" class="checkbox-inline">
          <input type="radio" value="1" id="sponser_is_active" name="sponser_is_active" <?php if($sponser_is_active=='1'){ echo 'checked';}?> />
          Active</label>
          <span class="required-server"><?php echo form_error('sponser_is_active'); ?></span> </div>
        <div class="form_sep">
          <button class="btn btn-default" type="submit" style="cursor:pointer;" title="<?php echo @$buttonText;?>">
          <?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
          </button>
          <button class="btn btn-default" type="button" onclick="redirect('<?php echo site_url('admin/sponser');?>');" style="cursor:pointer;" title="Cancel">Cancel </button>
        </div>
        <?php echo form_close();?> </div>
    </div>
  </div>
</div>
