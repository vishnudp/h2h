
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
              <li><a href="<?php echo $value1['page_link'];?>" title="<?php echo $value1['profile_title'];?>"><?php echo $value1['profile_title'];?></a></li>
                  <?php  }}?>
         </ul>
           </div>
       <?php if($key == 7 && $key == 11 && $key == 15){ ?>       
            </div>
            </div>
        <?php } ?>
              
      <?php  }?>
        
<?php }  ?>

<!-- <ul class="college">
<li><h4>College Admissions</h4></li>
<li><a href="#" title="">PSAT/NMSQT&reg;</a></li>
<li><a href="#" title="">SAT&reg;</a></li>
<li><a href="#" title=""> ACT&reg;</a></li>
<li><a href="#" title="">SAT Subject Tests&trade;</a></li>
<li><a href="#" title="">AP&reg; Exams</a></li>
<li><a href="#" title=""> ASVAB</a></li>
</ul>
<ul class="gradu">
<li><h4>Graduate Admissions</h4></li>
<li><a href="#" title="">LSAT - Law School</a></li>
<li><a href="#" title="">MCAT - Medical School</a></li>
<li><a href="#" title="">GMAT - Business School</a></li>
<li><a href="#" title="">GRE&reg; - Graduate School</a></li>
<li><a href="#" title="">MAT - Graduate School</a></li>
<li><a href="#" title="">DAT - Dental School</a></li>
<li><a href="#" title="">PCAT - Pharmacy School</a></li>
<li><a href="#" title="">OAT - Optometry School</a></li>
</ul>
<ul class="college">
<li><h4>College Admissions</h4></li>
<li><a href="#" title="">PSAT/NMSQT&reg;</a></li>
<li><a href="#" title="">SAT&reg;</a></li>
<li><a href="#" title=""> ACT&reg;</a></li>
<li><a href="#" title="">SAT Subject Tests&trade;</a></li>
<li><a href="#" title="">AP&reg; Exams</a></li>
<li><a href="#" title=""> ASVAB</a></li>
</ul>

<ul class="other">
<li><h4>Other Tests</h4></li>
<li><a href="#" title="">Real Estate Licensing</a></li>
<li><a href="#" title="">IT Certification</a></li>
<li><a href="#" title="">Architecture Licensing</a></li>
<li><a href="#" title="">Engineering Licensing</a></li>
</ul>  -->
</div>
</div></div>


<div class="client-logo">
<ul class="clearfix">
    <li><a href="http://jamb.org.ng/" title="JAMB"><img src="<?php echo base_url(); ?>assets/front/images/jamb-logo.jpg" alt="" /><span>jamb</span></a></li>
    <li><a href="http://www.neconigeria.org/" title="NECO NIGERIA"><img src="<?php echo base_url(); ?>assets/front/images/neco-l.jpg" alt="" /><span>Neco nigeria</span></a></li>
    
    <li><a href="http://www.waecnigeria.org/Home.aspx" title="NIGERIA"><img src="<?php echo base_url(); ?>assets/front/images/icsanLogo.jpg" alt="" /><span>Nigeria</span></a></li>
    <li><a href="http://ghana.waecdirect.org/" title="GHANA"><img src="<?php echo base_url(); ?>assets/front/images/icsanLogo.jpg" alt="" /><span>Ghana</span></a></li>
    <li><a href="http://registration.waecsierra-leone.org/" title="SIERRA LEONE"><img src="<?php echo base_url(); ?>assets/front/images/icsanLogo.jpg" alt="" /><span>Sierra Leone</span></a></li>
    <li><a href="http://waecgambia.org/" title="GAMBIA"><img src="<?php echo base_url(); ?>assets/front/images/icsanLogo.jpg" alt="" /><span>Gambia</span></a></li>
    <li><a href="http://www.liberiawaec.org/" title="LIBERIA"><img src="<?php echo base_url(); ?>assets/front/images/icsanLogo.jpg" alt="" /><span>Liberia</span></a></li>
</ul>
</div>



<div class="copyright">
<p>Copyright &copy; 2014. All Rights Reserved.</p>
</div>
</div></div>

</footer>


