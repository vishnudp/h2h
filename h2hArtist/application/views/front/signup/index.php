
  
  
      
        <h4 class="panel-title">All Users</h4>
      
      <table id="dt_basic" class="table table-striped">
        <thead>
          <tr>
            <th>Sr No.</th>
            <th>First name</th>
            <th>Last Name</th>
            <th>Email</th>                    
            <th>Available Action</th>
          </tr>
        </thead>
        <tbody>
          <?php          
				$i = 0;
					foreach($result as $user_record){
					$i++;
				?>
          <tr>
            <td><?php echo $i;?></td>
            <td><?php echo $user_record['first_name'];?></td>
            <td><?php echo $user_record['last_name'];?></td>
            <td><?php echo $user_record['email'];?></td>
            <td> <a href="<?php echo base_url();?>signup/edit/<?php echo $user_record['user_id'];?>" title="Edit"><img src='<?php echo base_url(); ?>assets/images/edit.png' title="Edit" alt="Edit"/></a>&nbsp;| &nbsp;<a hrf="<?php echo base_url();?>signup/delete/<?php echo $user_record['user_id'];?>" onclick="return deleteConfirm();" title="Delete"><img src='<?php echo base_url(); ?>assets/images/delete.gif' title="Delete" alt="Delete"/></a>			
			     </td>
          </tr>
         <?php } ?>
        </tbody>
      </table>
    </div>
