<div id="sign-in">
        <div class="row-fluid">
          <div class="span12">
        <h2><?php echo "Question Pack"; ?>&nbsp;&nbsp;<!-- <a href="<?php echo base_url('questionpack/downloadall'); ?>">Download All question Pack</a> --></h2>
   <table id="dt_basic" class="table table-striped">  
      <tr>
        <td>S.No.</td>    
        <td>Profile Type</td>
        <td>Price(Question Pack)</td>
        <td>Download Question Pack</td>
    </tr>
    <tbody>
    <?php #pr($result);  die;     
        foreach($result as $key=>$value){        
          ?>
         <tr>
          <td><?php echo ($key+1);?></td>
          <td><?php echo $value['profile_type_title'];?></td>
          <td><?php echo '&#8358; '. $value['qpack_price'];?></td>  
          <td><a class="down-pack" href="<?php echo base_url('questionpack/getpack').'/'.$value['profile_type_id'];?>">Download Question Pack</a></td>
         </tr>
      <?php } ?>
      
    </tbody>
    </table>
    
    
    <div id="question-pack">  
    <div class="pack-content">
    <?php #pr($result);  die;     
        foreach($result as $key=>$value){        
          ?>
          <?php /*?><strong><?php echo ($key+1);?></strong><?php */?>
           <div class="pack-wrapper">
           <div class="right-pack-content">
          <strong>Study without Internet</strong>
          <p>Download JAMB PACKS: past questions & answers (Any 4 Subjects) on your Blackberry, iPhone, Android, Tablets, laptop or PC. <strong> ₦ 1,500</strong></p>
          </div>
          <a class="down-pack" href="<?php echo base_url('questionpack/getpack').'/'.$value['profile_type_id'];?>">Download Question Pack</a>
          </div>
      <?php } ?>
      
    </tbody>
    </div>
    
    
  </div>
</div>
</div>