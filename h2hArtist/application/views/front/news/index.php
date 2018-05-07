<div id="sign-in">
  <div class="row-fluid">  
    <div class="span12">
        <h2>
          Latest News
        </h2>
        <div class="row-fluid">
          <div class="span12">
            <?php  if(!empty($all_news)){
                  foreach($all_news as $key=>$value){?>
            <div class="form-group latetnewse">              
                <h4><a href="<?php echo base_url('news/details')."/".$value->news_slug;?>"><?php echo $value->news_title;?></a></h4>
                <p><?php  echo $value->short_description."..";?>
				<div  class="button-news" ><a href="<?php echo base_url('news/details')."/".$value->news_slug;?>" title="More">More</a></div></p>
                <div class="newse_date"><?php  echo "Created On: ".date('l , m F Y ', strtotime($value->created_time));?></div>              
            </div>
            <?php } ?>
               <div class="pagination"><ul><?php echo $pagination_helper->create_links() ;?></ul></div>
            <?php } else{?>
              <p> <?php echo "No Record Found";?>
            <?php }?>
           
          </div>
         </div>          
    </div>
  </div>
</div>