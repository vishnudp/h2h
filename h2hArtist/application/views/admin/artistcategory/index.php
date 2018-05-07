<div class="row">
  <div class="col-sm-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title"><?php echo $title; ?></h4>		
      </div>
      <table id="dt_basic" class="table table-striped">
        <thead>
          <tr>
            <th>#</th>
            <th>Category Pic</th>
			<!--<th>System Id</th>-->
            <th>Category Name</th>
            
            <th>Description</th>           
            <th>Last Updated</th>
            <!--th>Status</th-->
            <th>Available Action</th>
          </tr>
        </thead>
        <tbody>
          <?php
            if(!empty($result[0])){
			$i = 0;
			foreach($result as $artist_category_record){
			$i++;
			?>
          <tr>
            <td><?php echo $i;?></td>
			      <td><strong><?php if($artist_category_record['artist_category_image']==''){echo '<img src="'.base_url('/uploads/artistcategorys/no_artist_category.png').'" height="50" width="50">';}else{echo '<img src="'.base_url()."/uploads/artistcategorys/".$artist_category_record['artist_category_image'].'" height="50" width="50">';}?></strong></td>
            <td><?php echo ucfirst($artist_category_record['artist_category_name']);?></td>
            
            <td><?php echo substr(strip_tags($artist_category_record['artist_category_description']),0,25);?>....</td>
            <td><?php echo show_datetime($artist_category_record['updated_time']);?></td>
             <!--td> </td-->
            <?php if($artist_category_record['artist_category_id']!=-1){?>
            <td><a href="<?php echo base_url();?>admin/artistcategory/edit/<?php echo $artist_category_record['artist_category_id'];?>" title="Edit"> <img src='<?php echo base_url(); ?>assets/images/edit.png' title="Edit" alt="Edit" /></a> &nbsp; | &nbsp; <a href="<?php echo base_url();?>admin/artistcategory/delete/<?php echo $artist_category_record['artist_category_id'];?>" onclick="return deleteConfirm();" title="Delete"><img src='<?php echo base_url(); ?>assets/images/delete.gif' title="Delete" alt="Delete"/></a> 
            <?php }else{?>
             <td> N/A &nbsp; | &nbsp; N/A </a> 
            <?php } ?>
            &nbsp; | &nbsp;
            <a onclick="changeStatus('<?php echo $artist_category_record['artist_category_id']; ?>','<?php echo $db_table ?>','<?php echo $fieldname; ?>','<?php echo $unique_key_field; ?>')" href="javascript:void(0);" title="Active">
              <?php if($artist_category_record['artist_category_is_active'] == 1) {?>
              <img class="status-<?php echo $artist_category_record['artist_category_id']; ?>" src='<?php echo base_url(); ?>assets/img/icon-active.gif' alt='Active' title='Active' /></a>
              <?php }else{ ?>
              <a onclick="changeStatus('<?php echo $artist_category_record['artist_category_id']; ?>','<?php echo $db_table ?>','<?php echo $fieldname; ?>','<?php echo $unique_key_field; ?>')" href="javascript:void(0);" title="Deactivate">
              <img class="status-<?php echo $artist_category_record['artist_category_id']; ?>" src='<?php echo base_url(); ?>assets/img/icon-deactivate.gif' alt="Deactivate" title="Deactivate" />
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
