<nav id="top_navigation">
  <div class="container">
    <ul id="icon_nav_h" class="top_ico_nav clearfix">
    <?php 
    $admin_data = $this->session->userdata('admin_session_data');
    $role_id = $admin_data['role_id'];
    $sidebar = getSidebar($role_id);
    $mainMenu = array('ajax','configuration','sendsms','sponser','userconfig','saleorder');
    
    foreach($sidebar as $key => $value){ 

        if(!in_array($value['controller_name'],$mainMenu)){ 
            $i_class = ''; 
            if($value['controller_name'] == 'dashboard'){
                $i_class  = 'icon-home icon-2x'; 
            }
            elseif($value['controller_name'] == 'user'){
                $i_class  = 'icon-group icon-2x'; 
            }
            elseif($value['controller_name'] == 'question'){
                $i_class  = 'icon-tasks icon-2x'; 
            }
            elseif($value['controller_name'] == 'setting'){
                $i_class  = 'icon-wrench icon-2x'; 
            }else{
                $i_class  = 'icon-edit icon-2x'; 
            } 
    ?>
    <?php if(!empty($value['controller_name']) && $value['controller_name'] !== '') {
     ?>
    <li><a href="<?php echo site_url('admin/'.$value['controller_name']); ?>" title="<?php echo ucfirst($value['controller_alias']); ?>"> <i class="<?php echo $i_class; ?>"></i> <span class="menu_label"><?php echo ucfirst($value['controller_alias']); ?></span> </a> </li>
        <?php } ?> 
    <?php } ?>
    <?php } ?> 
    
    </ul>
    
  </div>
</nav>
<!-- mobile navigation -->
<nav id="mobile_navigation"></nav>
