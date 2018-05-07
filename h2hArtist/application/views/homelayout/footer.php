
<footer id="footer">
<div class="row-fluid">
<div class="span12">
<div class="tests clearfix">

<?php $data = getFooter(); if(!empty($data)){
    
      foreach ($data as $key => $value) { ?>
        <?php if($key == 4 || $key == 8 || $key == 12){ ?>       
            <div class="clearfix"></div>
            <div class="bottom-ruler"></div>
            <div class="row-fluid">
                <div class="span12">
        <?php } ?>
        
        <div class="span3">
           <ul class="gradu">
          <li><h4><?php echo $value['profile_type_title'];?></h4></li>
          <?php if(!empty($value[$value['profile_type_title']])){ 
                foreach($value[$value['profile_type_title']] as $value1){
                  ?>         
              <li><a href="<?php if(!empty($value1['page_link']) && isset($value1['page_link'])){echo $value1['page_link'];}else{echo '#';}?>" title="<?php echo $value1['profile_title'];?>"><?php echo $value1['profile_title'];?></a></li>
                  <?php  }}?>
         </ul>
           </div>
       <?php if($key == 7 || $key == 11 || $key == 15){ ?>       
            </div>
            </div>
            
        <?php } ?>
              
      <?php  }?>
        
<?php }  ?>


</div>
</div></div>


<div class="client-logo">
        <?php 
        $adverts = getSponsors();
        #pr($adverts);
        if(isset($adverts) && !empty($adverts) ){ ?>
            <ul class="clearfix slider1">
                <?php foreach($adverts as $key => $value){ ?>
                    <li class="sponsor-single"><a href="<?php echo $value['sponser_url']; ?>" title="<?php echo $value['sponser_title']; ?>" target="_blank"><img src="<?php echo base_url().'uploads/sponser/'.$value['sponser_image']; ?>" alt="<?php echo $value['sponser_title']; ?>" /></a></li>
                <?php } ?>
           </ul> 
        <?php }else{ ?>
        <ul class="clearfix">
        <li><a href="http://jamb.org.ng/" title="JAMB"><img src="<?php echo base_url(); ?>assets/front/images/jamb-logo.jpg" alt="" /><span>jamb</span></a></li>
        <li><a href="http://www.neconigeria.org/" title="NECO NIGERIA"><img src="<?php echo base_url(); ?>assets/front/images/neco-l.jpg" alt="" /><span>Neco nigeria</span></a></li>
    
        <li><a href="http://www.waecnigeria.org/Home.aspx" title="NIGERIA"><img src="<?php echo base_url(); ?>assets/front/images/icsanLogo.jpg" alt="" /><span>Nigeria</span></a></li>
        <li><a href="http://ghana.waecdirect.org/" title="GHANA"><img src="<?php echo base_url(); ?>assets/front/images/icsanLogo.jpg" alt="" /><span>Ghana</span></a></li>
        <li><a href="http://registration.waecsierra-leone.org/" title="SIERRA LEONE"><img src="<?php echo base_url(); ?>assets/front/images/icsanLogo.jpg" alt="" /><span>Sierra Leone</span></a></li>
        <li><a href="http://waecgambia.org/" title="GAMBIA"><img src="<?php echo base_url(); ?>assets/front/images/icsanLogo.jpg" alt="" /><span>Gambia</span></a></li>
        <li><a href="http://www.liberiawaec.org/" title="LIBERIA"><img src="<?php echo base_url(); ?>assets/front/images/icsanLogo.jpg" alt="" /><span>Liberia</span></a></li>
        </ul>
       
        <?php } ?>
</div>

<div class="copyright">
<ul>
<?php $data = getFooterNavigation(); 
if(!empty($data['all_pages'])){
    
      foreach ($data['all_pages'] as $key => $value) { ?>
   <li><a title="<?php echo $value['page_title'];?>" href="<?php echo base_url('page/index').'/'.$value['page_slug'];?>" class="<?php if(!empty($arr[4]) && $arr[4]==$value['page_slug']){ echo 'active';}?>"><?php echo $value['page_title'];?></a></li>    

<?php } } ?>

</ul>
<p>Copyright &copy; 2018 by H2H Entertainment Company Educational Testing Service. All rights reserved. <span>All trademarks are the property of their respective owners. None of the trademark holders are affiliated with H2H Entertainment Company or this website.
</span>
</p>
</div>
</div></div>

</footer>


