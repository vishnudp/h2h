
<div id="question-section">


<div class="row-fluid">
<div class="choose-subject">
<div class="span12">
    <img class="blocksite" src="<?php echo base_url(); ?>assets/front/images/logo.png" alt="logo" />
</div>
</div>
</div>


<div class="question-answer">
<h2>Examination Summary/Performance</h2>
<div class="question">
    <div class="row-fluid">
    <?php #pr($performance);
    $total_attempt = 0;
    $overallscore = 0;
    $total_question = 0;
    $solved = 0;
    $subject_wise_performance = array();
    if($performance['over_all_performance']){
       $solved = $performance['over_all_performance']; 
    }
    
    if(!empty($performance['total_attempt'])){
        $total_attempt = $performance['total_attempt'];
    }
    if(!empty($performance['subject_wise_performance'])){
        $subject_wise_performance = $performance['subject_wise_performance']; 
    }
    if($performance['total_question']){
       $total_question = $performance['total_question']; 
    }
    
    $overallscore = (float)(($solved/$total_question)*100);
    $overallscore = number_format($overallscore,2);
    #pr($subject_wise_performance);
    ?>
        <div class="span6">
          <div class="examination-summary">
            <h2>Subject Selected</h2>
            <ul>
            <?php foreach($subject_wise_performance as $value){  ?>
                <li><a href="#"><?php echo $value['subjects']; ?></a></li>
            <?php } ?>
            </ul>
        </div>
        </div>
        <div class="span6">
        <div class="examination-summary">
        <h2>Time Analysis</h2>
        <ul>
        <?php foreach($subject_wise_performance as $value){  ?>
            <li><a href="#"><?php echo secondsToWordsResult($value['westage_time']); ?></a></li>
        <?php } ?>
        </ul>
        </div>
        </div>
    
    </div>
    
    <div class="row-fluid">
        <div class="span6">
          <div class="examination-summary">
            <h2>Performance</h2>
            <ul>
            <li><a href="#">Total Number of Questions:<?php echo $total_question; ?> </a></li>
            <li><a href="#">Attempted Questions: <?php echo $total_attempt; ?></a></li>
            <li><a href="#">Skipped Questions: <?php echo ((int)$total_question-(int)$total_attempt); ?></a></li>
            <li><a href="#">Solved Questions: <?php echo $solved; ?></a></li>
            <li><a href="#">Failed Questions: <?php echo ((int)$total_attempt-(int)$solved); ?></a></li>
            <li><a href="#"><strong>Overall Scores:(<?php echo $overallscore; ?>%)</strong></a></li>
            </ul>
        </div>
        </div>
        <div class="span6">
        <div class="examination-summary">
        <h2>Over all percentage score </h2>
        <h4>Score</h4>
        <h5><?php echo $overallscore; ?>%</h5>
        </div>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
         <h2 class="strip">For more details of your examination summary/perfomance click bellow link.</h2>
         <div class="row-fluid">
            <div class="span6"><a class="btn-more" href="<?php echo base_url('setup-a-test/view/'.$setup_id); ?>">More</a></div>
            <div class="span6"><a class="btn-more right-btn" href="javascript:void(0);" onclick="window.print()">Print</a></div>
            </div>
        </div>
    </div>
    <!--div class="row-fluid">
        <div class="span6">
          <div class="examination-summary">
            <p><span><strong>Lorem Ipsum is simply dummy</strong></span></p>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
        </div>
        </div>
        <div class="span6">
        <div class="examination-summary">
           <h3>JAMB Score:</h3>
           <h6>8</h6>
        </div>
        </div>
    </div-->
</div>
</div>

</div>

<?php 
 function secondsToWordsResult($seconds){
            /*** return value ***/
            $ret = "";
        
            /*** get the hours ***/
            $hours = intval(intval($seconds) / 3600);
            if($hours > 0)
            {
                $ret .= "$hours".' Hours ';
            }
            /*** get the minutes ***/
            $minutes = bcmod((intval($seconds) / 60),60);
            if($hours > 0 || $minutes > 0)
            {
                $ret .= "$minutes".' Minute ';
            }
          
            /*** get the seconds ***/
            $seconds = bcmod(intval($seconds),60);
                if($seconds < 10){
                    $ret .= "0"."$seconds".' Second';
                }else{
                    $ret .= "$seconds".' Second';
                }
            
        
            return $ret;
        }
?>
