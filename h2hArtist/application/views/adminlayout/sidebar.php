<nav id="sidebar">
<div class="sepH_b"> <a href="javascript:void(0)" id="text_nav_v_collapse" class="btn btn-default btn-xs" title="Collapse All">Collapse All</a> <a href="javascript:void(0)" id="text_nav_v_expand" class="btn btn-default btn-xs" title="Expand All">Expand All</a> </div>
<ul id="text_nav_v" class="side_text_nav">

<?php 
$admin_data = $this->session->userdata('admin_session_data');
$role_id = $admin_data['role_id'];
$sidebar = getSidebar($role_id);
#pr($sidebar);
$mainMenu = array('ajax');
$activemenu = array('index','Index','add','Add','role','import','upload_image','imported_file','add_controller','add_action','passed_failed');
//'truncate','allsubsection','subsection',
foreach($sidebar as $key => $value){
    if(!in_array($value['controller_name'],$mainMenu)){ 
        $li_class = '';
        $span_class = '';
    #################### Logic ACTIVE MENU #################################
        if($value['controller_name'] == 'dashboard'){
            $span_class = 'icon-dashboard'; 
            $li_class  = 'parent_active'; 
        }
    #################### END #################################
    
    #################### Logic written for menu icon #################################
        if(($key%2)==0){
            $span_class = 'icon-th-list'; 
        }elseif(($key%3)==0){
            $span_class = 'icon-beaker';
        }
        else{
            $span_class = 'icon-tags'; 
        }
    #################### END #################################
    
?>
<?php if(!empty($value['controller_name'])){?>
    <li class="<?php echo $li_class; ?>"> <a href="<?php echo site_url('admin/'.$value['controller_name']); ?>" title="<?php echo ucfirst($value['controller_alias']); ?>"><span class="<?php echo $span_class; ?>"></span><?php echo ucfirst($value['controller_alias']); ?></a>    
            <ul>
        <?php if(isset($value['action'])){ ?>
            <?php foreach($value['action'] as $key => $val){ 
                if(!empty($val['action'])){?>
                <?php if(in_array($val['action'],$activemenu)){ ?>
                <?php if($value['controller_name'] == 'setting' && $val['action'] != 'index'){ ?>
                    <!--li><a href="<?php echo site_url('admin/'.$value['controller_name'].'/'.$val['action']); ?>" title="<?php echo ucfirst($val['alias']); ?>"><?php echo ucfirst($val['alias']); ?></a></li-->
                
                <?php }else{ ?>
                            <?php if($value['controller_name'] == 'customer' && $val['action'] == 'index'){ ?>
                            <li><a href="<?php echo site_url('admin/role/index'); ?>" title="Role">All Role</a></li>
                            <?php } ?>
                            <li><a href="<?php echo site_url('admin/'.$value['controller_name'].'/'.$val['action']); ?>" title="<?php echo ucfirst($val['alias']); ?>"><?php echo ucfirst($val['alias']); ?></a></li>
                    <?php } ?>
                <?php } ?>
            <?php  } }?>
            </ul>
        <?php } ?>
    <?php } ?>
        <?php if($value['controller_name'] == 'section'){ ?>
            <li class="<?php echo $li_class; ?>"> <a href="<?php echo site_url('admin/'.$value['controller_name']); ?>" title="Subsection"><span class="<?php echo $span_class; ?>"></span>Subsection</a>
                <ul>
                    <li><a href="<?php echo site_url('admin/'.$value['controller_name'].'/allsubsection'); ?>" title="All Subsection">All Subsection</a></li>
                    <li><a href="<?php echo site_url('admin/'.$value['controller_name'].'/subsection'); ?>" title="Add Subsection">Add Subsection</a></li>
                </ul>
            </li>
        <?php } ?>
    <?php } ?>
    </li>  
<?php } ?>
</ul>
</nav>