<div id="fdw-pricing-table">
<h1>Active Subscription Plan</h1>
<?php if(!empty($all_subscriber)){ foreach ($all_subscriber as $key => $value) { ?>
  
    <div class="plan plan1">
        <div class="header"><?php echo $value['plan_title'];?></div>
        <div class="price"><?php  echo "$".$value['amount'];?></div>  
        <div class="description"><?php echo "Description".$value['plan_description'];?></div>      
        <ul>
            <li><b>Plan Validity </b><?php echo $value['plan_validity']." Days";?></li>              
        </ul>
        <a href="<?php echo base_url('signup/index')."/".$value['plan_id'];?>" class="signup">Sign up</a>         
    </div>    
  <?php } }?>
</div>