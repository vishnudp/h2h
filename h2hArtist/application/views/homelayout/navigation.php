<div class="nav-zone clearfix">
<?php  $data = getNavigation(); #pr($data);
$arr =  explode("/", $_SERVER['REQUEST_URI']);
#pr($arr);
?>
<nav>
     <div class="navbar">
      <div class="menu-inner"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
       <div class="nav-collapse collapse">
        <ul class="nav">
        
        <?php foreach($data['all_pages'] as $key=>$value){?>
          <li><a title="<?php echo $value['page_title'];?>" href="<?php echo base_url('page/index').'/'.$value['page_slug'];?>" class="<?php if(!empty($arr[4]) && $arr[4]==$value['page_slug']){ echo 'active';}?>"><?php echo $value['page_title'];?></a></li>
         <?php } ?>
         <li><a title="Question Pack" href="<?php echo base_url('questionpack');?>" class="<?php if(!empty($arr[2]) && $arr[2]=='questionpack'){ echo 'active';}?>">Question Pack</a></li>
         <li><a title="News" href="<?php echo base_url('news');?>" class="<?php if(!empty($arr[2]) && $arr[2]=='news'){ echo 'active';}?>">News</a></li>
         <li><a title="Contact Us" href="<?php echo base_url('notificationadmin');?>" class="<?php if(!empty($arr[2]) && $arr[2]=='notificationadmin'){ echo 'active';}?>">Contact Us</a></li>
         
        </ul>
       </div>
      </div>
     </div>
</nav>
</div>