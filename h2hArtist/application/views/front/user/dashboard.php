<div id="dashboard-section">
<div class="row-fluid">
<div class="span4">
 <?php $this->load->view('front/menu/profile-menu') ?>
</div>
<div class="span8">
<div class="profile-zone">
<div class="row-fluid">
<div class="span2">
<div class="profile-pic">
<?php $pImage = 'user_avatar_lg.png'; if(!empty($profile_image)){$pImage = $profile_image; ?>
<img src="<?php echo base_url(); ?>uploads/profile/<?php echo $pImage; ?>" alt="<?php echo $pImage; ?>" /><?php } else {?>
<img src="<?php echo base_url(); ?>assets/img/<?php echo $pImage; ?>" alt="<?php echo $pImage; ?>" />
<?php } ?>
<a href="<?php echo site_url('profile');?>" title="Edit Profile">Edit Profile</a>
</div>

</div>
<div class="span10">
<h2><?php if(!empty($fullname)){echo ucfirst($fullname); } ?></h2>
<div class="profile-info">
<h4>Profile Info </h4>

<ul>
<li><label>Phone Number </label><p><?php if(!empty($phone_number)){echo $phone_number;} ?></p></li>
<li><label>Email</label><p><a href="#" title="<?php if(!empty($email)){echo $email;} ?>"><?php if(!empty($email)){echo $email;} ?></a></p></li>
<li><label>Subscription Plan </label><p><?php if(!empty($plan_title)){echo $plan_title;}else{echo "Free";} ?></p></li>
<li><label>Plan Validity </label><p><?php if(!empty($plan_validity)){echo $plan_validity." Days";}else{echo "No Plan Choosen";} ?></p></li>
<li><label>Start Date </label><p><?php if(!empty($created_time)){echo date('l , d F Y, h:i:s A', strtotime($created_time));}else{echo "Not Available";} ?></p></li>
<li><label>Remaining Days </label>
    <p>
        <?php  if(!empty($remaining_days) && $remaining_days > 0) {
                        echo $remaining_days." Days";
                } 
               
                if(isset($remaining_days) && $remaining_days<=0){
                        echo " Validation Expired " . "<a href='javascript:void(0)' rel_order_id='".$order_id."' rel_user_id='".$user_id."' class='renewplan'>Renew your plan</a>";;
                } 
        ?>
    </p>
</li> 
<?php if(!empty($plan_title) && $plan_title != 'Free' && $subscription_status){ ?>
<li><label>Payment Status </label><p><?php if($subscription_status){echo 'Completed';}else{echo "<a href='javascript:void(0)' rel_order_id='".$order_id."' rel_user_id='".$user_id."' class='renewplan'>Renew your plan</a>";} ?></p></li>
<?php }elseif(!empty($plan_title) && $plan_title == 'Free' && $subscription_status && $remaining_days > 0){?>
<li><label>Payment Status </label><p><?php if($subscription_status){echo 'Completed';}else{echo "<a href='javascript:void(0)' rel_order_id='".$order_id."' rel_user_id='".$user_id."' class='renewplan'>Renew your plan</a>";} ?></p></li>
<?php }elseif($remaining_days > 0 && $subscription_status==0 && $plan_title == 'Free'){ ?>
<li><label>Payment Status </label><p>Subcribed as a free user. <?php echo "<a href='javascript:void(0)' rel_order_id='".$order_id."' rel_user_id='".$user_id."' rel_user_plan='".$plan_title."' class='renewplan'>Subscribe for a plan</a>"; ?></p></li>
<?php }elseif($remaining_days > 0 && $subscription_status==0){ ?>
<li><label>Payment Status </label><p>Pending</p></li>
<?php } ?>
<li><label>Test Choosen </label><p><?php if(!empty($profile_title)){echo $profile_title;}else{echo "Free Sample Test";} ?></p></li>
</ul>
<div class="button">
<ul>
<?php if(!empty($remaining_days) && $remaining_days > 0 && !empty($plan_title) && !empty($plan_validity) && $plan_title != 'Free' && $subscription_status ) { ?>
    <li><a id="takesampletest" href="javascript:void(0);" title="Take Sample Test">Take Sample Test</a></li>
    <li><a id="takepracticetest" href="javascript:void(0);" title="Take Practice Test">Take Practice Test</a></li>
    <li><a id="takeEvolutiontest" href="javascript:void(0);" title="Take Evolution Test">Take Mock Test</a></li>               
<?php }else{ ?>
<li><a id="takesampletest" href="javascript:void(0);" title="Take Sample Test">Take Free Sample Test</a></li>
<?php } ?>
</ul>
</div>
</div>
</div>
</div>
</div>

<?php 
  $formAttr = array(
    'id' => 'setupatest',
    'name' => 'setupatest',
    'method' => 'POST'                    
  );
    echo form_open('setup-a-test/add',$formAttr); 
?>
<input type="hidden" name="test_profile_id" id="test_profile_id" value="<?php if(!empty($test_profile_id)){ echo $test_profile_id;} ?>" />
<input type="hidden" name="setup_test_number" id="setup_test_number" value="<?php echo $setup_test_number; ?>" />
<input type="hidden" name="setup_test_password" id="setup_test_password" value="<?php echo $setup_test_password; ?>" />
<input type="hidden" name="setup_test_type" id="setup_test_type" value="" />
<?php echo form_close(); ?>

</div>

</div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        $("#takesampletest").click(function(){
            $("#setup_test_type").val('1');
            $('#setupatest').submit();
        });
        
        $("#takepracticetest").click(function(){
            $("#setup_test_type").val('2');
            $('#setupatest').submit();
        });
        
        $("#takeEvolutiontest").click(function(){
            $("#setup_test_type").val('3');
            $('#setupatest').submit();
        });
       
        $(".renewplan").on('click', function(){
          var order_id = $(this).attr('rel_order_id');
          var user_id = $(this).attr('rel_user_id');
          var plan_title = $(this).attr('rel_user_plan');
          renewplan(order_id,user_id,plan_title);
        });

    });
</script>

