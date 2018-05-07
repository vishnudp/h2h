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
            <label for="role_title" class="req">Role Name </span></label>
            <input type="text" id="role_title" name="role_title" value="<?php if(isset($role_title)){ echo $role_title; } ?>" class="form-control" data-required="true" />
            <span class="required-server"><?php echo form_error('role_title'); ?> </div>            
          <div class="form_sep">
            <label for="role_description">Role Description</label>
            <!-- <textarea name="role_description" id="role_description" cols="30" rows="4" class="form-control" data-required="true" data-minlength="40"><?php if(isset($role_description)){ echo $role_description; } ?>
</textarea> -->
            <?php //echo $this->ckeditor->editor("role_description",""); ?>
            <?php echo form_textarea(array('name' =>'role_description','id'=>'role_description','class'=>"ckeditor",'value'=>$role_description)); ?>
            <?php //if(isset($role_description)){ echo $role_description; } ?>
            <span class="required-server"><?php echo form_error('role_description'); ?></span> </div>
            <?php if($role_id==1){?>
		  <div class="form_sep">
            <label for="is_active" class="checkbox-inline">Status</label>
            <label for="reg_chbox_a" class="checkbox-inline" title="Inactive">
			<?php if($role_is_active == '') { $role_is_active = '0';}?>
            <input type="radio" value="0" id="role_is_active" name="role_is_active" <?php if($role_is_active=='0'){ echo 'checked';}?>/>
            Inactive</label>
            <label for="reg_chbox_b" class="checkbox-inline" title="Active">
            <input type="radio" value="1" id="role_is_active" name="role_is_active" <?php if($role_is_active=='1'){ echo 'checked';}?> />
            Active</label>
            <span class="required-server"><?php echo form_error('role_is_active'); ?></span> </div>
			      <?php } ?>
		
			
          <div class="form_sep">
		  <input type="hidden" name="category_image_old" id="category_image_old" value="<?php echo @$category_image;?>" />
            <button class="btn btn-default" type="submit" style="cursor:pointer;" title="<?php echo @$buttonText;?>">			 
            <?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
            </button>
			<button class="btn btn-default" type="button" onclick="redirect('<?php echo site_url('admin/role');?>');" style="cursor:pointer;" title="Cancel">Cancel </button>
			
          </div>          
         <?php echo form_close();?> 
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/ckeditor/ckeditor.js"></script>
<!-- <script type="text/javascript" src="/asset/js/ckfinder/ckfinder.js"></script> -->
