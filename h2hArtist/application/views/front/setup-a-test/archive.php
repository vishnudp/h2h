<?php
 $setup_status_array = $this->config->item('setup_status');
 //$setup_is_completed = '';
?>
<div class="row">
  <div class="col-sm-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title"><?php echo $title; ?></h4>
      </div>
      <?php 
        #pr($result);
      ?>
      <table id="dt_basic" class="table table-striped">
        <thead>
          <tr>
            <th colspan="7"> <form method="get" id="search_frm" name="search_frm">
                <div style="float:left;"> <span>Test Added by ( Username &gt;&gt; Role )</span><br />				
                  <select name="user_id" id="user_id"  onchange="getSectionByCategory(this.options[this.selectedIndex].value)" class="form-control">
                    <option value="" <?php if($user_id ==''){ echo 'selected';}?>>--Choose--</option>
                    <?php if(!empty($users_array)){
					foreach($users_array as $key=>$value){?>
                    <option value="<?php echo $value['user_id'];?>" <?php if($user_id == $value['user_id']){ echo 'selected';}?>><?php echo ucfirst($value['login_username']);?>
					&nbsp;&gt;&gt;&nbsp;<?php echo $value['role_title'];?></option>
                    <?php }}?>
                  </select>
				  
                </div>
				<div style="float:left; margin-left:10px;"> <span>Status</span><br />				
                  <select name="setup_is_completed" id="setup_is_completed"  onchange="getSectionByCategory(this.options[this.selectedIndex].value)" class="form-control">
                    <option value="" <?php if($setup_is_completed ==''){ echo 'selected';}?>>--Choose--</option>
                    <?php if(!empty($setup_status_array)){
					foreach($setup_status_array as $key=>$value){?>
                    <option value="<?php echo $key;?>" <?php if($setup_is_completed == $key){ echo 'selected';}?>><?php echo ucfirst($value);?></option>
                    <?php }}?>
                  </select>
				  
                </div>
                <div style="float:left; margin-left:10px;">
                  <button type="submit" class="btn btn-default" style="cursor:pointer; margin-top:18px;" title="Filter">Filter</button>
                  <button type="button" class="btn btn-default" style="cursor:pointer; margin-top:18px;" title="Reset" onclick="redirect('<?php echo site_url('admin/setup');?>');">Reset</button>
				  <button type="button" class="btn btn-default" style="cursor:pointer; margin-top:18px;margin-left:225px;" title="Current" onclick="redirect('<?php echo site_url('admin/setup/');?>');">Current</button>
				  <button type="button" class="btn btn-default" style="cursor:pointer; margin-top:18px;" title="Archive" onclick="redirect('<?php echo site_url('admin/setup/archive');?>');">Archive</button>
				 
                </div>
              </form></th>
          </tr>
          <tr>
            <th style="width: 5%;">id</th>
            <th style="width: 15%;">Candidate Name</th>
            <th style="width: 10%;">Test Number</th>
            <th style="width: 10%;">Password</th>
            <th style="width: 20%;">Test Type</th>
            <th style="width: 10%;">Status</th>
            <th style="width: 10%;">Action</th>
          </tr>
        </thead>
        <tbody>
          <?php						
			$i = 0;
			foreach($result as $res){
			$i++;
		 ?>
          <tr>
            <td><?php echo $i;?></td>
            <td><?php echo ucfirst($res['setup_firstname'].' '.$res['setup_lastname']);?></td>
            <td><?php echo ucfirst($res['setup_test_number']);?></td>
            <td><?php echo ucfirst($res['setup_test_password']);?></td>
            <td><?php echo ucfirst($res['setup_test_type']);?></td>
            <td>
			<?php  echo $setup_status_array[$res['setup_is_completed']];?></td>
            <td><a href="<?php echo base_url();?>admin/setup/cancel/<?php echo $res['setup_id'];?>" onclick="return cancelConfirm();"><img src='<?php echo base_url(); ?>images/cancel-icone.png' title="Cancel" /></a> &nbsp;|&nbsp; <a href="<?php echo base_url();?>admin/setup/delete/<?php echo $res['setup_id'];?>" onclick="return deleteConfirm();"><img src='<?php echo base_url(); ?>images/delete.gif' title="Delete" /></a> 			
 &nbsp;|&nbsp; <a href="<?php echo base_url();?>admin/setup/view/<?php echo $res['setup_id'];?>"><img src='<?php echo base_url(); ?>images/view.png' title="View" /></a></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
