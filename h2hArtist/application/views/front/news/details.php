<div id="sign-in">
        <div class="row-fluid latetnewse">
          <div class="span12 ">
            <?php if(!empty($news_details)){
                  foreach($news_details as $key=>$value){?>
            <div class="form-group ">          
                <h2><?php echo $value['news_title'];?></h2>                    
                <p><?php  echo $value['full_description'];?></p>
                 <div class="newse_date"><?php  echo "Created On: ".date('l , m F Y ', strtotime($value['created_time']));?></div>  
            </div>
            <?php } } ?>
          <div class="button-news">  <a href="<?php echo base_url('news');?>" title="Back">Back</a></div>

    </div>
  </div>
</div>