<div class="row">
  <div class="col-sm-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">All Users</h4>
      </div>
      <table class="table toggle-square" data-filter="#table_search" data-page-size="40">
          <thead>
           <tr class="panel_controls">        
            <th colspan="6">
			       <form method="get" id="search_frm" name="search_frm">
		            
            <div style="float:left;">
        			<span>User Role</span><br />
        				<select name="role_title" id="role_title" class="form-control">
        				<option value="" <?php if(empty($role_title)){ echo 'selected';}?>>--Choose--</option>        
        				<?php if(!empty($role_title_array)){
        					foreach($role_title_array as $key=>$value){?>			
        				<option value="<?php echo $value['role_title'];?>" <?php if($role_title == $value['role_title']){ echo 'selected';}?>><?php echo ucfirst($value['role_title']);?></option>
        				<?php }}?>
        				</select>
        		</div>   
            <div style="float:left; margin-left:10px;">
			         <button type="submit" class="btn btn-default" style="cursor:pointer; margin-top:18px;" title="Filter">Filter</button>
			         <button type="button" class="btn btn-default" style="cursor:pointer; margin-top:18px;" title="Reset" onclick="redirect('<?php echo site_url('admin/user/index');?>');">Reset</button>
			     </div>			
			 </form>
			</th>
          </tr>
          
          <tr>
            <th>#</th>
            <th>First name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>User Role</th>           
            <th>Available Action</th>
          </tr>
        </thead>
        <tbody>
          <?php 
             if(!empty($result)){ 
              foreach($result as $key=>$user_record){
            //pr($school);
          ?>
          <tr>
            <td><?php echo ($key+1);?></td>
            <td><?php echo $user_record['first_name'];?></td>
            <td><?php echo $user_record['last_name'];?></td>
            <td><?php echo $user_record['email'];?></td>
            <td><?php echo $user_record['role_title'];?></td>            
            <td>
			         <?php if( $user_record['user_id'] !=1){?><a href="<?php echo base_url();?>admin/user/edit/<?php echo $user_record['user_id'];?>" title="Edit"><img src='<?php echo base_url(); ?>assets/images/edit.png' title="Edit" alt="Edit"/></a><?php }else{ echo 'N/A';}?>	
			         &nbsp;| &nbsp;<?php if( $user_record['role_id'] !=1){?><a href="<?php echo base_url();?>admin/user/delete/<?php echo $user_record['user_id'];?>" onclick="return deleteConfirm();" title="Delete"><img src='<?php echo base_url(); ?>assets/images/delete.gif' title="Delete" alt="Delete"/></a>
			         <?php }else{ echo 'N/A';}?>	&nbsp; | &nbsp; <a onclick="changeStatus('<?php echo $user_record['user_id']; ?>','<?php echo $db_table ?>','<?php echo $fieldname; ?>','<?php echo $unique_key_field; ?>')" href="javascript:void(0);" title="Active">
              <?php if($user_record['is_active'] == 1) {?>
              <img class="status-<?php echo $user_record['user_id']; ?>" src='<?php echo base_url(); ?>assets/img/icon-active.gif' title="Active" alt="Active" /></a>
              <?php }else{ ?>
              <a onclick="changeStatus('<?php echo $user_record['user_id']; ?>','<?php echo $db_table ?>','<?php echo $fieldname; ?>','<?php echo $unique_key_field; ?>')" href="javascript:void(0);" title="Deactivate"><img class="status-<?php echo $user_record['user_id']; ?>" src='<?php echo base_url(); ?>assets/img/icon-deactivate.gif' title="Deactivate" alt="Deactivate"/>
              <?php } ?>
              </a> 
			     </td>
          </tr>
          <?php }}  else {
            echo '<tr align="center"><td colspan="6">No Records Found</td></tr>';  
          }?>
        </tbody>
        <tfoot class="hide-if-no-paging">
          <tr>
              <td colspan="6" class="text-center">
                  <!-- <ul class="pagination pagination-sm"></ul> -->
                   <div class="pagination"><ul><?php echo $paginglinks ;?></ul></div>
              </td>
          </tr>
      </tfoot>
      </table>
    </div>
  </div>
</div>
