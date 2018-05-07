<div class="row">
  <div class="col-sm-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">All Pages</h4>
      </div>
      <table id="dt_basic" class="table table-striped">
        <thead>
          <tr>
            <th>#</th>
            <th>Page Title</th>
            <th>Page Description</th>
            <!-- <th>where on page</th> -->
            <!-- <th>Status</th> -->
             <th>Available Action</th>
          </tr>
        </thead>
        <tbody>
          <?php 	
		  if(!empty($result)){
		  foreach($result as $key=>$value){ //  echo '<pre>';print_r($value);  ?>
          <tr>
            <td><?php echo ($key+1);?></td>
			
            <td><?php echo ucfirst($value['page_title']);?></td>
            <td><?php echo substr(strip_tags($value['page_description']),0,35);?>....</td>
            <!-- <td><?php if($value['is_top']==1){echo "Top";}else{echo "Bottom";} ?></td> -->
            <td>
            <a href="<?php echo base_url();?>admin/page/edit/<?php echo $value['page_id'];?>" title="Edit"> <img src='<?php echo base_url(); ?>assets/images/edit.png' title="Edit" alt="Edit" /></a>  &nbsp; | &nbsp; <a href="<?php echo base_url();?>admin/page/delete/<?php echo $value['page_id'];?>" onclick="return deleteConfirm();" title="Delete"><img src='<?php echo base_url(); ?>assets/images/delete.gif' title="Delete" alt="Delete" /></a> 
            &nbsp; | &nbsp;
            <a onclick="changeStatus('<?php echo $value['page_id']; ?>','<?php echo $db_table ?>','<?php echo $fieldname; ?>','<?php echo $unique_key_field; ?>')" href="javascript:void(0);" title="Active">
              <?php if($value['is_active'] == 1) {?>
              <img class="status-<?php echo $value['page_id']; ?>" src='<?php echo base_url(); ?>assets/img/icon-active.gif' title="Active" alt="Active" /></a>
              <?php }else{ ?>
              <a onclick="changeStatus('<?php echo $value['page_id']; ?>','<?php echo $db_table ?>','<?php echo $fieldname; ?>','<?php echo $unique_key_field; ?>')" href="javascript:void(0);" title="Deactivate"><img class="status-<?php echo $value['page_id']; ?>" src='<?php echo base_url(); ?>assets/img/icon-deactivate.gif' title="Deactivate" alt="Deactivate" />
              <?php } ?>
              </a> 
            </td>            
            
          </tr>
          <?php }} ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
