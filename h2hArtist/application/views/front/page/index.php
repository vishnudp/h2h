<div id="sign-in">
        <div class="row-fluid latetnewse">
          <div class="span12 ">
            <?php if(!empty($page_detail)){
                  foreach($page_detail as $key=>$value){?>
            <div class="form-group ">          
                <h2><?php echo $value['page_title'];?></h2>                    
                <p><?php  echo $value['page_description'];?></p>                 
            </div>
            <?php } } ?>
    </div>
  </div>
</div>