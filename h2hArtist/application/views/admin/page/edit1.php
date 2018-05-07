<?php 
if(!empty($result)){
	extract($result[0]);
}
?>
<?php echo form_open_multipart('',array('name' => 'page_form', 'id' => 'page_form'));?>

<input type="text" id="page_title" name="page_title" value="<?php echo set_value('page_title',$page_title) ?>" class="form-control" data-required="true" />
<?php echo $this->ckeditor->editor('page_description',set_value('page_description',$page_description));?>
<?php $page_is_active = set_value('page_is_active',$page_is_active); ?>
<input type="radio" value="0" id="page_is_active" name="page_is_active" <?php if($page_is_active=='0'){ echo 'checked';}?>/>
<input type="radio" value="1" id="page_is_active" name="page_is_active" <?php if($page_is_active=='1'){ echo 'checked';}?> />
<button class="btn btn-default" type="submit" style="cursor:pointer;" title="<?php echo @$buttonText;?>">
<?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
</button>
<?php echo form_close();?> 