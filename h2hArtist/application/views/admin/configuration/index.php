<?php $test_type_array = $this->config->item('test_type'); ?>
<div class="row">
  <div class="col-sm-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title"><?php echo $title; ?></h4>
      </div>
      <?php 
        #echo "<pre>";
        #print_r($result);
      ?>
      <table id="dt_basic" class="table table-striped">
        <thead>
            <tr class="panel_controls">
              <th colspan="7">
                <form method="get" id="search_frm" name="search_frm" action="<?php echo site_url('admin/configuration/index');?>">
                  <div style="float:left;">
                   <span>Test Category</span><br />
                        <select name="test_profile_id" id="test_profile_id" class="form-control" style="width:250px;">
                        <option value="" <?php if($test_profile_id ==''){ echo 'selected';}?>>--Choose--</option>
                        <?php if(!empty($all_test_profile)){
                          foreach($all_test_profile as $key=>$value){?>      
                        <option value="<?php echo $value['test_profile_id'];?>" <?php if($test_profile_id == $value['test_profile_id']){ echo 'selected';}?>><?php echo $value['profile_title'];?></option>
                        <?php }}?>
                        </select>
                 </div>     
                 <div style="float:left; margin-left:10px;">
                  <span>Test Type</span><br />
                    <select name="test_type" id="test_type" style="width:250px;" class="form-control">
                    <option value="" <?php if($test_type ==''){ echo 'selected';}?>>--Choose--</option>
                    <?php if(!empty($test_type_array)){
                      foreach($test_type_array as $key => $value){?>      
                    <option value="<?php echo $key;?>" <?php if($key == $test_type){ echo 'selected';}?>><?php echo $value;?></option>
                    <?php }}?>
                    </select> 
                 </div>
                 <div style="float:left; margin-left:10px;">
                  <button type="submit" class="btn btn-default" style="cursor:pointer; margin-top:18px;" title="Filter">Filter</button>
                  <button type="button" class="btn btn-default" style="cursor:pointer; margin-top:18px;" title="Reset" onclick="redirect('<?php echo site_url('admin/configuration');?>');">Reset</button>
                  </div>
               </form>
             </th>
          </tr>
          <tr>
            <th>#</th>
            <th>Sub Category</th>
            <th>Test Type</th>            
            <th>Total Time</th>
            <th>Full Marks</th>
             <th>Pass Marks</th>
            <!--th style="width: 20%;">Uploaded Time</th-->
            <!--th>Updated Time</th-->
            <th>Action</th>
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
            <td><?php echo ucfirst($res['profile_title']);?></td>
            <td><?php echo ucfirst($test_type_array[$res['test_type']]);?></td>            
            <td><?php echo ucfirst($res['time_allowed']);?></td>
            <td><?php echo ucfirst($res['max_total_marks']);?></td> 
            <td><?php echo ucfirst($res['pass_marks']);?></td>           
            <!--td><?php #echo $res['created_time'];?></td-->
            <!--td><?php #echo $res['updated_time'];?></td-->
            
            <td><a href="<?php echo base_url();?>admin/configuration/add?test_profile_id=<?php echo $res['test_profile_id'];?>&test_type=<?php echo $res['test_type'] ?>"><img src='<?php echo base_url(); ?>assets/images/edit.png' title="Edit" /></a> <?php if(0){ ?>&nbsp;|&nbsp; <a href="<?php echo base_url();?>admin/configuration/delete/<?php echo $res['config_id'];?>" onclick="return deleteConfirm();"><img src='<?php echo base_url(); ?>assets/images/delete.gif' title="Delete" /></a><?php } ?> </td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
