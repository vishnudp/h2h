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
						<?php
				  			foreach( $groups as $group)
							{
						?>
							<div style="width:100%;">
								<fieldset>
									<div style="margin-left:12px;margin-top:12px; border:1px dashed #E3E3E3; background-color: #F3F3F3;">
										<legend style=" margin-left:12px;border-top:none;">
											<label>
									<strong style="margin-top:5px;"><?php echo $group['role_title'];?></strong>
								</label>
										</legend>
									</div>
									<div style="margin-left:12px;margin-top:12px; border:1px dashed #E3E3E3">
										<div class="form_sep">
									<?php
										foreach( $controllers as $controller_id => $controller)
										{
									?>
											<div  style="margin-left:
											28px;clear:both;padding-top:4px;padding-bottom:4px;">
												<strong>
													<a href="javascript:void(0);" onclick="show_actions(this);" title="<?php echo $controller['controller_alias'] ;?>"  id="<?php echo strtolower( preg_replace('/\s/','-',$group['role_title']));?>-<?php echo strtolower($controller['controller_id']);?>">
														<?php echo $controller['controller_alias'] ;?>
													</a>
												</strong>
											</div>
											<ul class="controller_actions" style="margin-left:16px;clear:both;padding-top:4px;padding-bottom:4px;" id="ul-<?php echo strtolower( preg_replace('/\s/','-',$group['role_title']));?>-<?php echo strtolower($controller['controller_id']);?>"> 
													<?php
														if( count($controller['actions'])>0)
														{
															foreach($controller['actions'] as $actions)
															{
																if( isset($assigned_privileges[$group['role_id']]) && is_array($assigned_privileges[$group['role_id']]) && count($assigned_privileges[$group['role_id']]) ) 
																{
																	if( in_array($actions['id'],$assigned_privileges[$group['role_id']]) )
																	{
																		$checked = "checked='checked'";
																	}
																	else
																	{
																		$checked = "";
																	}
																}
																else
																{
																	$checked = "";
																}
													?>
																<li style="list-style:none;">
																	<input  type="checkbox" <?php echo $checked; ?> name="privileges[<?php echo $group['role_id'];?>][]" value="<?php echo $controller['controller_id'];?>_<?php echo $actions['id'];?>" data-value="<?php echo $controller['controller_id'];?>_<?php echo $actions['id'];?>" onchange="check_action(this);"  /> 
																	<label style="display:inline;">
																		<strong>
																			<?php echo $actions['alias'] ; ?>
																		</strong>
																	</label>
																</li>
													<?php
															}	
														}	
														else
														{
															?>
																<li style="list-style:none;">
																	<label style="display:inline; color:red;"><strong>No Action Found</strong></label>
																</li>
															<?php
														}	
													?>
											</ul>
											<?php
										}
									?>
								</div>
									</div>
								</fieldset>
								
								
							</div>
						<?php		
							}
						?>
					</div>
					<button title="Add" style="cursor:pointer;" type="submit" class="btn btn-default">			 
            			 	Assign Privilege        
					</button>
					<?php echo form_close();?></div>
		</div>
	</div>
</div>
