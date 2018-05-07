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
        <h4 class="panel-title"> Edit Page </h4>
      </div>
      <div class="panel-body"> <?php echo form_open_multipart('',array('name' => 'page_form', 'id' => 'page_form'));?>
        <div class="form_sep">
          <label for="page_title" class="req">Title </span></label>
          <input type="text" id="page_title" name="page_title" value="<?php echo set_value('page_title',$page_title) ?>" class="form-control" data-required="true" />
          <span class="required-server"><?php echo form_error('page_title'); ?> </div>
        <div class="form_sep">
          <label for="page_description" class="req">Description</label>
          <?php /*?><textarea name="page_description" id="page_description" cols="30" rows="4" class="form-control" data-required="true" data-minlength="40"><?php echo set_value('page_description',$page_description); ?></textarea><?php */?>
		    <?php echo $this->ckeditor->editor('page_description',$page_description);?>
          <span class="required-server"><?php echo form_error('page_description'); ?></span> </div>
        <div class="form_sep">
          <label for="is_top" class="checkbox-inline">Menu Location</label>
          <label for="reg_chbox_a" class="checkbox-inline">
          <?php $is_top = set_value('is_top',$is_top); ?>      
          <input type="radio" value="0" id="is_top" name="is_top" <?php if($is_top=='0'){ echo 'checked';}?>/>
          Bottom</label>
          <label for="reg_chbox_b" class="checkbox-inline">
          <input type="radio" value="1" id="is_top" name="is_top" <?php if($is_top=='1'){ echo 'checked';}?> />
          Top</label>
          <span class="required-server"><?php echo form_error('is_top'); ?></span> 
       </div>
       <div class="form_sep">
            <label for="page_order" class="req">Page Order </span></label>
            <input type="text" id="page_order" name="page_order" value="<?php echo set_value('page_order',$page_order) ?>" class="form-control" data-required="true" />
            <span class="required-server"><?php echo form_error('page_order'); ?> 
          </div>
        <div class="form_sep">
          <label for="is_active" class="checkbox-inline">Status</label>
          <label for="reg_chbox_a" class="checkbox-inline">
          <?php $is_active = set_value('is_active',$is_active); ?>		  
          <input type="radio" value="0" id="is_active" name="is_active" <?php if($is_active=='0'){ echo 'checked';}?>/>
          Inactive</label>
          <label for="reg_chbox_b" class="checkbox-inline">
          <input type="radio" value="1" id="is_active" name="is_active" <?php if($is_active=='1'){ echo 'checked';}?> />
          Active</label>
          <span class="required-server"><?php echo form_error('is_active'); ?></span> 
       </div>
        <div class="form_sep">
          <button class="btn btn-default" type="submit" style="cursor:pointer;" title="<?php echo @$buttonText;?>">
          <?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
          </button>
          <button class="btn btn-default" type="button" onclick="redirect('<?php echo site_url('admin/page');?>');" style="cursor:pointer;" title="Cancel">Cancel </button>
        </div>
        <?php echo form_close();?> </div>
    </div>
  </div>
</div>
