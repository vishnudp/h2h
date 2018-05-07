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
            <label for="post_name" class="req">Post Name </span></label>
            <input type="text" id="post_name" name="post_name" value="<?php if(isset($post_name)){ echo $post_name; } ?>" class="form-control" data-required="true" />
            <span class="required-server"><?php echo form_error('post_name'); ?> </div>
            <div class="form_sep">
            <label for="post_image" class="req">Post Media </span></label>
            <input type="file" id="post_image" name="userfile" class="form-control" data-required="true" />
            <?php if(!empty($post_image) ){ echo '<img src="'.base_url()."/uploads/slider_pics/".$post_image.'" height="150" width="150">'; }else{echo '<img src="'.base_url().'/uploads/slider_pics/no_slider.png" height="150" width="150">';} ?>
            <span class="required-server"><?php echo form_error('userfile'); ?> </div>
          <div class="form_sep">
            <label for="post_description">Post Description</label>
            <textarea name="post_description" id="post_description" cols="30" rows="4" class="form-control" data-required="true" data-minlength="40"><?php if(isset($post_description)){ echo $post_description; } ?>
</textarea>
            <span class="required-server"><?php echo form_error('post_description'); ?></span> </div>
		  <div class="form_sep">
            <label for="is_active" class="checkbox-inline">Status</label>
            <label for="reg_chbox_a" class="checkbox-inline" title="Inactive">
			<?php if($post_is_active == '') { $post_is_active = '1';}?>
            <input type="radio" value="0" id="post_is_active" name="post_is_active" <?php if($post_is_active=='0'){ echo 'checked';}?>/>
            Inactive</label>
            <label for="reg_chbox_b" class="checkbox-inline" title="Active">
            <input type="radio" value="1" id="post_is_active" name="post_is_active" <?php if($post_is_active=='1'){ echo 'checked';}?> />
            Active</label>
            <span class="required-server"><?php echo form_error('post_is_active'); ?></span> </div>
			
		
			
          <div class="form_sep">
		  <input type="hidden" name="category_image_old" id="category_image_old" value="<?php echo @$category_image;?>" />
            <button class="btn btn-default" type="submit" style="cursor:pointer;" title="<?php echo @$buttonText;?>">			 
            <?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
            </button>
			<button class="btn btn-default" type="button" onclick="redirect('<?php echo site_url('admin/slider');?>');" style="cursor:pointer;" title="Cancel">Cancel </button>
			
          </div>
         <?php echo form_close();?> 
      </div>
    </div>
  </div>
</div>
