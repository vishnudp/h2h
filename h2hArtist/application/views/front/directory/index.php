<div class="pricing-tabel">
<div class="row-fluid">
<?php #pr($key_features_plan);?>
<table id="plan-table"  border="1" cellspacing="0" cellpadding="0" width="100%">
  <tr>
<td width="386" valign="top"><p><strong>Key Features</strong></p></td>
<?php if(!empty($all_plans)){
      foreach ($all_plans as $key => $value) { ?>
  <td width="472" valign="top"><p align="center"><strong><?php echo $value['plan_title'];?> </strong>Pack<strong></strong></p></td>
<?php } } ?>

  </tr>
  <?php if(!empty($all_key_features)){ foreach($all_key_features as $key=>$value){?>
  <tr>
    <td width="386" valign="top"><?php echo $value['features_description'];?></td>    
      <?php if(!empty($all_plans)){ 
          foreach($all_plans as $key=>$value1){
            $key_features_id = explode(",",$value1['key_features_id']);?>            
             <td width="472" valign="top">
                <?php  if(in_array($value['features_id'],$key_features_id)){ ?>
               <p align="center"><img src="<?php echo base_url(); ?>assets/front/images/arrow-icon.png" />
                
               </p> 
                <?php  } ?>
             </td>
          <?php } }?>       
    <!-- <td width="472" valign="top"><p align="center"><img src="<?php echo base_url(); ?>assets/front/images/arrow-icon.png" /></p><?php echo "features_id:".$value1['features_id']."<br/>"."plan_id".$value1['plan_id'];?></td> -->
   <!--  <td width="558" valign="top"><p align="center"><img src="<?php echo base_url(); ?>assets/front/images/arrow-icon.png" /></p></td>
   
    <td width="474" valign="top"><p align="center"><img src="<?php echo base_url(); ?>assets/front/images/arrow-icon.png" /></p></td> -->
  </tr>
  <?php }} ?>
  <tr>
    <td width="386" valign="top"><p>&nbsp;</p></td>
        <?php if(!empty($all_plans)){
              foreach ($all_plans as $key => $value) { ?>
          <td width="472" valign="top"><p align="center"><strong>&#8358; <?php echo $value['amount']." ";?></strong><strong><?php echo "(".$value['plan_validity']." Days)";?></strong></p></td>
        <?php } } ?>
      </tr>  
  <tr>
<td width="386" valign="top"><p>&nbsp;</p></td>
    <?php if(!empty($all_plans)){
              foreach ($all_plans as $key => $value) { ?>
          <td width="472" valign="top"><p align="center"><a href="<?php echo base_url('signup/index/'.$value['plan_id']);?>" class="package btn btn-primary" title="Order this Package">Order this Package</a></p></td>
    <?php } } ?>
  </tr>
  
</table>
<p</p>


 </div>
</div>