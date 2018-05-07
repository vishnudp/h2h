<?php
 $status_array = $this->config->item('setup_status');
?>
<div id="dashboard-section">
  <div class="row-fluid"> 
      <div class="span4">
        <?php $this->load->view('front/menu/profile-menu') ?>
     </div>
  
   
    <div class="span8">
	<div class="profile-zone">
		<div id="alltestsetup">
        <h2><?php echo $title; ?></h2>

      <?php 
        #pr($result);
      ?> 
	
      <table id="dt_basic" class="table table-striped">
        <thead>
         <tr>
		 <td colspan="7">   <form method="get" id="search_frm" name="search_frm">
                <div class="row-fluid"> 
                <div class="span4"> 
				<div class="form-group">
                    <span>Registration Number</span><input class="form-control" placeholder="Enter registration number." type="text" name="registration_number" id="registration_number" value="<?php if(!empty($registration_number)){ echo $registration_number;}?>" />
				<!-- <label>Test Profile</label>				
                  <?php if(empty($test_profile_id)) { $test_profile_id = '';}?>
                    <select name="test_profile_id" id="test_profile_id" class="form-control">
                      <option value="" <?php if($test_profile_id == ''){ echo 'selected';}?>>--Choose--</option>
                      <?php
        			  	if(!empty($all_test_profile)){
        					foreach ($all_test_profile as $row){	?>
                      <option value="<?php echo $row['test_profile_id'];?>" <?php if($test_profile_id == $row['test_profile_id']){ echo 'selected';}?>>
        			  <?php echo $row['profile_title'];?></option>
                      <?php } }?>
                    </select> -->
				  </div>
                </div>   
				<!-- <div class="span4">
				<div class="form-group">
				 <label>Status</label>				
                  <select name="is_completed" id="is_completed"  onchange="getSectionByCategory(this.options[this.selectedIndex].value)" class="form-control">
                    <option value="" <?php if($is_completed ==''){ echo 'selected';}?>>--Choose--</option>
                    <?php if(!empty($status_array)){
					foreach($status_array as $key=>$value){?>
                    <!--option value="<?php echo $key;?>" <?php if($is_completed == $key){ echo 'selected';}?>><?php echo ucfirst($value);?></option>
                    <?php }}?>
                  </select>
				  </div>
                </div> -->
                <div class="span6">
				<div class="form-group">
                  <button type="submit" class="btn btn-default green-btn" title="Filter">Filter</button>
                  <button type="button" class="btn btn-default green-btn" title="Reset" onclick="redirect('<?php echo site_url('dashboard');?>');">Reset</button>
				  <!--button type="button" class="btn btn-default" style="cursor:pointer; margin-top:18px;margin-left:225px;" title="Current" onclick="redirect('<?php echo site_url('admin/setup/');?>');">Current</button>
				  <button type="button" class="btn btn-default" style="cursor:pointer; margin-top:18px;" title="Archive" onclick="redirect('<?php echo site_url('admin/setup/archive');?>');">Archive</button-->
				 </div>
                </div>
				</div>
              </form></td>
		 </tr>
          <tr id="heading-hidden">
            <th><strong>#</strong></th>
             <th><strong>Reg. Number</strong></th>
             <th><strong>Password</strong></th>
             <th><strong>Test Profile</strong></th>
             <th><strong>Status</strong></th>
             <th><strong>Result</strong></th>
             <th><strong>Action</strong></th>
          </tr>
        </thead>
        <tbody>
          <?php						
			$i = 0;
			foreach($result as $res){
			$i++;
            $options = getOptionsArr($res['test_number']);
            $user_data = getUserAnswerInfo($options);
		 ?>
          <tr>
            <td><?php echo $i;?></td>
            
            <td><?php echo ucfirst($res['test_number']);?></td>
            <td><?php echo ucfirst($res['test_password']);?></td>
            <td><?php echo ucfirst($res['test_profile_title']);?></td>
            <td>
			<?php  echo $status_array[$res['is_completed']];?>
			
			</td>
            
            <td>
			<?php if($res['is_completed'] == '1' || $res['is_completed'] == '2'){ echo 'Pending';}else{ echo $user_data['pass_fail'];} ?></td>
            <td>
			
		       <a href="<?php echo base_url();?>setup-a-test/view/<?php echo $res['setup_id'];?>" target="_blank"><img src='<?php echo base_url(); ?>assets/images/view.png' title="View" /></a>
           | <a href="<?php echo base_url();?>setup-a-test/downloadpdf/<?php echo $res['setup_id'];?>" target="_blank"><img src='<?php echo base_url(); ?>assets/images/download.jpg' title="Download PDF" /></a>
 	          	
            </td>
          </tr>
          <?php } ?>
          <tr>
            <td colspan="7" class="text-center" style="text-align: center !important;"><div class="pagination"><ul><?php echo $pagination_helper->create_links() ;?></ul></div></td>
          </tr>
        </tbody>
      </table>
	  </div>
	  </div>
    </div>
  </div>
</div>
