<?php 
if(!empty($result)){
	extract($result[0]);
}
?>
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
         <?php echo form_open_multipart('',array('name' => 'logo_form', 'id' => 'logo_form'));?>
          <div class="form_sep">
            <label for="category_title" class="req">Title </span></label>
            <input type="text" id="logo_title" name="logo_title" value="<?php echo set_value('logo_title',$logo_title); ?>" class="form-control" data-required="true" />
            <span class="required-server"><?php echo form_error('logo_title'); ?> </div>
          <div class="form_sep">
            <label for="category_description" class="req">Url</label>
			 <input type="text" id="logo_url" name="logo_url" value="<?php echo set_value('logo_url',$logo_url); ?>" class="form-control" data-required="true" />
            <span class="required-server"><?php echo form_error('logo_url'); ?></span> </div>			
			<?php 

			if(isset($logo_image) && !empty($logo_image) && file_exists('./uploads/logo/'.$logo_image) ){?>
			<div class="form_sep">
            <div class="form-group">
              
              <div class="input-group">
                
                <div class="input-group-btn"> 
				<span class="btn btn-default btn-file">  
				<img src="<?php echo base_url().'uploads/logo/'.$logo_image;?>" height="100" width="100">
                </span> <span class="required-server"><?php echo form_error('logo_image'); ?></span> </div>
              </div>
            </div>
          </div><?php } ?>
			
			
			
          <div class="form_sep">
            <div class="form-group">
              <label for="logo_image" class="req">Image</label>
              <div class="input-group">
                
                <div class="form-control"> <i class="icon-file fileupload-exists"></i> <span class="fileupload-preview"></span>
                <span><?php echo set_value('logo_image',$logo_image); ?></span> </div>
                <div class="input-group-btn"> <span class="btn btn-default btn-file"> <span class="fileupload-new">Select</span>
                  <input type="file" name="logo_image" id="logo_image" value="<?php echo set_value('logo_image',$logo_image); ?>" />
                  
                  </span> <span class="required-server"><?php echo form_error('logo_image'); ?></span> </div>
              </div>
            </div>
          </div>

          <?php 
      if(isset($logo_thumb_image) && !empty($logo_thumb_image) && file_exists('./uploads/logo/'.$logo_thumb_image) ){?>
      <div class="form_sep">
            <div class="form-group">
              
              <div class="input-group">
                
                <div class="input-group-btn"> 
        <span class="btn btn-default btn-file">  
        <img src="<?php echo base_url().'uploads/logo/'.$logo_thumb_image;?>" height="100" width="100">
                </span> <span class="required-server"><?php echo form_error('logo_thumb_image'); ?></span> </div>
              </div>
            </div>
          </div><?php } ?>

          <div class="form_sep">
          <div class="form-group">
            <label for="logo_thumb_image">Small Logo Image</label>
            <div class="input-group">
              <div class="form-control"> <i class="icon-file fileupload-exists"></i> <span class="fileupload-preview"></span> 
                <?php echo set_value('logo_thumb_image', $logo_thumb_image); ?>
              </div>
              <div class="input-group-btn"> <span class="btn btn-default btn-file"> <span class="fileupload-new">Select</span>
                <input type="file" name="logo_thumb_image" id="logo_thumb_image" value="<?php echo set_value('logo_thumb_image'); ?>" />
                </span> <span class="required-server"><?php echo form_error('logo_thumb_image'); ?></span> </div>
            </div>
          </div>
        </div>

        <?php 
      if(isset($logo_fav_icon) && !empty($logo_fav_icon) && file_exists('./uploads/logo/'.$logo_fav_icon) ){?>
      <div class="form_sep">
            <div class="form-group">
              
              <div class="input-group">
                
                <div class="input-group-btn"> 
        <span class="btn btn-default btn-file">  
        <img src="<?php echo base_url().'uploads/logo/'.$logo_fav_icon;?>" height="100" width="100">
                </span> <span class="required-server"><?php echo form_error('logo_fav_icon'); ?></span> </div>
              </div>
            </div>
          </div><?php } ?>
        <div class="form_sep">
          <div class="form-group">
            <label for="logo_fav_icon">Fav Icon Image</label>
            <div class="input-group">
              <div class="form-control"> <i class="icon-file fileupload-exists"></i> <span class="fileupload-preview"></span>
                <?php echo set_value('logo_fav_icon', $logo_fav_icon); ?>
               </div>
              <div class="input-group-btn"> <span class="btn btn-default btn-file"> <span class="fileupload-new">Select</span>
                <input type="file" name="logo_fav_icon" id="logo_fav_icon" value="<?php echo set_value('logo_fav_icon'); ?>" />
                </span> <span class="required-server"><?php echo form_error('logo_fav_icon'); ?></span> </div>
            </div>
          </div>
        </div>

      
          <div class="form_sep">
            <label for="is_active" class="checkbox-inline">Status</label>
            <label for="reg_chbox_a" class="checkbox-inline">
			<?php $logo_is_active = set_value('logo_is_active',$logo_is_active); ?>
            <input type="radio" value="0" id="logo_is_active" name="logo_is_active" <?php if($logo_is_active=='0'){ echo 'checked';}?>/>
            Inactive</label>
            <label for="reg_chbox_b" class="checkbox-inline">
            <input type="radio" value="1" id="logo_is_active" name="logo_is_active" <?php if($logo_is_active=='1'){ echo 'checked';}?> />
            Active</label>
            <span class="required-server"><?php echo form_error('logo_is_active'); ?></span> </div>
          <div class="form_sep">
		 
            <button class="btn btn-default" type="submit" style="cursor:pointer;" title="<?php echo @$buttonText;?>">			 
            <?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
            </button>
			<button class="btn btn-default" type="button" onclick="redirect('<?php echo site_url('admin/logo');?>');" style="cursor:pointer;" title="Cancel">Cancel </button>
			
          </div>
         <?php echo form_close();?> 
      </div>
    </div>
  </div>
</div>
