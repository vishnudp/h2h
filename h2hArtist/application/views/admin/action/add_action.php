<?php
/*echo "<pre>";
print_r($assigned_privileges);*/
?>
<script type="text/javascript">
	function show_actions(element)
	{
		var id = $(element).attr('id');
		var ul_id = 'ul-'+id;
		$('ul#'+ul_id).slideToggle('slow');
		/*$('ul.controller_actions').each(function(){
			if($(this).attr('id')!=ul_id)
				$(this).slideUp('slow');
		});*/
	}
	function check_action(element)
	{
		if( $(element).is(':checked'))
		{
			var data_value = $(element).attr('data-value');
			$(element).val(data_value);
		}
		else
		{
			$(element).val('');
		}
	}
</script>
<style>
.col-sm-5{width: 99.667%;}
</style>
<div class="row">
	<div class="col-sm-5">
		<div class="panel panel-default">	
			<div class="panel-heading">	
				 <h4 class="panel-title">
          			<?php if(isset($formTitle)){echo $formTitle;} ?>
				</h4>
			</div>
			<div role="grid" class="dataTables_wrapper form-inline" id="dt_basic_wrapper">
				<div class="dt-top-row">
					<div id="dt_basic_length" class="dataTables_length">
						<label>&nbsp;</label>
					</div>
					<div class="dataTables_filter" id="dt_basic_filter">
						<label>
							&nbsp;
						</label>
					</div>
				</div>
			</div>
			
			<div class="panel-body">
				<?php echo form_open_multipart('',array('name' => 'privilege_form', 'id' => 'privilege_form'));?>
					<div class="form_sep">
            			<label for="action" class="req">Select Controller </span></label>
           				<select name="controller_id" id="controller_id" class="form-control" data-required="true">
                                <option>--Choose--</option>
                                                      <?php
                    									if(!empty($controllers)){
                    										foreach ($controllers as $controller){	?>
                                                      <option value="<?php echo $controller['controller_id'];?>" > <?php echo $controller['controller_alias'];?></option>
                                                      <?php } }?>
                       </select>
            			<span class="required-server">
							<?php echo form_error('controller_id'); ?> 
						</span>
					</div>
					
					
					
					<div class="form_sep">
            			<label for="action" class="req">Action Name </span></label>
           				<input type="text" id="action" name="action" value="<?php if(isset($action)){ echo $action; } ?>" class="form-control" data-required="true" />
            			<span class="required-server">
							<?php echo form_error('action'); ?> 
						</span>
					</div>
					
					<div class="form_sep">
            			<label for="alias" class="req">Alias Name </span></label>
           				<input type="text" id="alias" name="alias" value="<?php if(isset($alias)){ echo $alias; } ?>" class="form-control" data-required="true" />
            			<span class="required-server">
							<?php echo form_error('alias'); ?> 
						</span>
					</div>
					<div class="form_sep">
						 <button class="btn btn-default" type="submit" style="cursor:pointer;" title="<?php echo @$buttonText;?>">			 
								<?php if(isset($buttonText)){echo $buttonText;} else{ echo "Submit";} ?>
						</button>
						<button class="btn btn-default" type="button" onclick="redirect('<?php echo site_url('admin/privileges');?>');" style="cursor:pointer;" title="Cancel">
							Cancel
						</button>
          			</div>
					
					<?php echo form_close();?></div>
		</div>
	</div>
</div>
