    <div class="lobby-navigation">
    <ul>
    <li class="expanded">
    <div class="icon"><img src="<?php echo base_url(); ?>assets/front/images/rule-icon.png" alt="rule-icon" /></div>
    <div class="desc">
    <div class="details">
    <strong>My Courses</strong>
    <?php $profile_title = $this->session->userdata('profile_title'); if(!empty($profile_title)){ ?>
    <p><?php echo $profile_title; ?></p>
    <?php } ?>
    </div>
    <ul class="syllabus-courses-links"></ul>
    </div>
    </li>
    <li class="expanded">
    <div class="icon"><img src="<?php echo base_url(); ?>assets/front/images/event-icon.png" alt="event-icon" /></div>
    <div class="desc">
    <div class="details">
    <strong>Events</strong>
    <p>Access your live, online events and event resources.</p>
    </div>
    <ul class="reg-events-links">  
        <?php $plan_title = $this->session->userdata('plan_title'); 
        $subscription_status = $this->session->userdata('subscription_status'); 
        if(!empty($plan_title) && $plan_title != 'Free' && $subscription_status){ ?>
        <li><a title="Mock Test" href="<?php echo base_url('setupatest/evolutiontest'); ?>"><span class="expiration-text">Mock Test</span></a></li>    
        <li><a title="Practice Test" href="<?php echo base_url('setupatest/practicetest'); ?>"><span class="expiration-text">Practice Test</span></a></li>    
        <li><a title="Sample Test" href="<?php echo base_url('setupatest/sampletest'); ?>"><span class="expiration-text">Sample Test</span></a></li> 
        <?php } else {?>    
           <li><a title="Sample Test" href="<?php echo base_url('setupatest/sampletest'); ?>"><span class="expiration-text">Sample Test</span></a></li>
        <?php } ?>
    </ul>
    </div>
    </li>
    <li class="expanded">
    <div class="icon"><img src="<?php echo base_url(); ?>assets/front/images/rule-icon.png" alt="rule-icon" /></div>
    <div class="desc">
    <div class="details">
    <strong>Invite a Friend</strong>
    <p>Invite a friend to setup exam practice.</p>
    </div>
    <ul class="syllabus-courses-links">
        <li> <a title="Invite Friend" href="<?php echo base_url('invitefriend');?>">Invite Friend <br /><span class="expiration-text"></span></a></li> 
    </ul>
    </div>
    </li>
     
    </ul>
    </div>