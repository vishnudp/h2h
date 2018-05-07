<div class="row">
  <div class="col-sm-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title"><?php echo $title ?></h4>
      </div>
      <table id="dt_basic" class="table table-striped">
        <thead>
          <tr>
            <th>#</th>
			
			<th>Logo</th>
            <th>Title</th>
            <th>Url</th>
            <th>Last Updated On</th>
            <th>Available Action</th>
          </tr>
        </thead>
        <tbody>
          <?php //echo "<pre>";print_r($result);die;
			$i = 0;
			foreach($result as $sponser){
			$i++;
			?>
          <tr>
            <td><?php echo $i;?></td>
			
			<td> <?php if(file_exists('./uploads/sponser/'.$sponser['sponser_image']) && $sponser['sponser_image']!=''){?>
			<img width="67" height="50" id="sponser_image_preview" src="<?php echo base_url() .'/uploads/sponser/'.$sponser['sponser_image']; ?>" alt="" />
			<br />
			<?php }else{?>				
			<a href="<?php echo base_url() .'uploads/sponser/'.$sponser['sponser_image']; ?>" target="_blank">Logo not found</a>
			<?php echo $sponser['sponser_image']; ?>		
			<?php }?></td>
			
			 
		   <td><?php echo ucfirst($sponser['sponser_title']);?></td>
		   <td><?php echo ucfirst($sponser['sponser_url']);?></td>
            <td><?php echo show_datetime($sponser['sponser_updated_time']);?></td>
           
            <td>
            <a href="<?php echo base_url();?>admin/sponser/edit/<?php echo $sponser['sponser_id'];?>"> <img src='<?php echo base_url(); ?>assets/images/edit.png' title="Edit" /></a>&nbsp;|&nbsp; <a href="<?php echo base_url();?>admin/sponser/delete/<?php echo $sponser['sponser_id'];?>" onclick="return deleteConfirm();"><img src='<?php echo base_url(); ?>assets/images/delete.gif' title="Delete" /></a>&nbsp;|&nbsp;<a onclick="changeStatus('<?php echo $sponser['sponser_id']; ?>','<?php echo $db_table ?>','<?php echo $fieldname; ?>')" href="javascript:void(0);"><?php if($sponser['sponser_is_active'] == 1) {?><img class="status-<?php echo $sponser['sponser_id']; ?>" src='<?php echo base_url(); ?>assets/img/icon-active.gif' /></a><?php }else{ ?><a onclick="changeStatus('<?php echo $sponser['sponser_id']; ?>','<?php echo $db_table ?>','<?php echo $fieldname; ?>')" href="javascript:void(0);"><img class="status-<?php echo $sponser['sponser_id']; ?>" src='<?php echo base_url(); ?>assets/img/icon-deactivate.gif' /><?php } ?></a> </td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
