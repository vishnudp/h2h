<?php 
#pr($results);

$timeTilEnd = 0;
#if(0){
    $time_allowed = 0;
    
    if($this->session->userdata('time_allowed')){
        $time_allowed = $this->session->userdata('time_allowed');
    }
    $time_allowed = 12*60*60;
    #echo 'time_allaow :'.$time_allowed;echo "<br />";
    
    #echo 'before set endOfTimer'.$this->session->userdata('endOfTimer'),'<br />';
    
    if (!$this->session->userdata('endOfTimer')){
        $endOfTimer = time() + $time_allowed;
        #echo 'end of timer : '.$endOfTimer,'<br />';
        $this->session->set_userdata('endOfTimer',$endOfTimer);
    }
    #echo 'after set endOfTimer' .$this->session->userdata('endOfTimer'),'<br />'; 
    
    if(($this->session->userdata('endOfTimer') - time()) < 0) {
          $timeTilEnd = 0;
    }
    else {
          $timeTilEnd = $this->session->userdata('endOfTimer') - time();
    }
#} 
#echo 'timeTilEnd '.$timeTilEnd; die;
 
$page = 1;
$question_index_id = $this->input->get('q');
if(!empty($question_index_id) && isset($question_index_id) && $question_index_id != 0 ){
    $page = $question_index_id;
}
elseif($question_index_id <= 0){
    $page = 1;
}
if(!isset($question_index_id)){
    $question_index_id = 1;
}

?>
<div id="question-section">

<div class="choose-subject">
<div class="row-fluid">

<div class="span12">
<!--div class="top-timer">
<a href="javascript:void(0);"><span>TIME</span><span id="timer"><?php #echo secondsToWords($timeTilEnd); ?></span></a>
</div-->
<div class="tab-sep clearfix">

</div>
</div>
</div>
</div>
<div class="question-answer">
<div class="question">
 <?php 
if(isset($results)){
        if(!empty($results['question']['question_image']) && file_exists('./uploads/question/'.$results['question']['question_image'])){
	  	  $question_src_image = base_url().'uploads/question/'.$results['question']['question_image'];
	    }
        
        $correctAnswer = $results['question']['corect_answer'];
        /*
        $class_scroll = '';
        if(!empty($results['question']['question_title'])){
           $qwordcount = str_word_count($results['question']['question_title']);
           if($qwordcount >= 25){
            $class_scroll = 'scroll';
           } 
        }
        */
?>

<h3><span><?php echo $current_question; ?>.</span> <?php if(isset($results['question']['question_title'])){ echo $results['question']['question_title'];} ?></h3>
<?php 
if(isset($question_src_image)){ ?>
  <div class="big-img"><a class="group1" href="<?php echo $question_src_image ?>" title=""><img class="question-img" src="<?php echo $question_src_image; ?>" /> </a>  <h4>Click on the image to enlarge it.</h4></div> 
<?php } ?>
</div>
<div class="answer">

<div class="answer-key">
<?php 
if(isset($results['question']['option'])){

foreach($results['question']['option'] as $key =>$value){
    if(!empty($value['option_image']) && file_exists('./uploads/question/'.$value['option_image'])){
        $src_image = base_url().'uploads/question/'.$value['option_image'];
    }

    if($correctAnswer == $value['option_id']){
        $answerActive = 'checked="true"'; 
    }else{
        $answerActive = '';
    }

?>
<!-- answer-active -->
<?php if(empty($src_image)){ ?>
	
    <label id="<?php echo $value['option_id']; ?>"  onclick="getAnswer('<?php echo $value['option_id']; ?>','<?php echo $value['question_id']; ?>','<?php echo $page; ?>');">	
		<input type="radio" name="option" <?php echo $answerActive; ?> value="<?php echo $value['option_value']; ?>" /><?php echo $value['option_value']; ?>
    </label>
    
	
<?php }else{ ?>	

	<label id="<?php echo $value['option_id']; ?>" onclick="getAnswer('<?php echo $value['option_id']; ?>','<?php echo $value['question_id']; ?>','<?php echo $page; ?>');">
		<input type="radio" name="option" <?php echo $answerActive; ?> value="<?php echo $value['option_value']; ?>" /><a class="group1" href="<?php echo $src_image ?>" title=""><img class="option-img" style="margin-top:15px;"  src="<?php echo $src_image; ?>" /></a>
	</label>

    <?php } ?>
<?php } ?>
<?php } ?>

</div>

</div>

<?php } ?>

<div class="click-tab clearfix">
<ul>
<?php if($previous != 0){ ?>
<li><a  href="<?php echo base_url().'take-a-test/index?q='.$previous; ?>" class="pre" >PREVIOUS</a></li>
<?php } ?>
<?php if($next != $total_rows + 1){ ?>
<li><a  href="<?php echo base_url().'take-a-test/index?q='.$next; ?>" >NEXT</a></li>
<?php } ?>

</ul>
</div>
</div>
<div class="pagination">
 <ul>
    <?php foreach($page_link as $key => $value){ ?>
        <li><?php echo $value; ?></li>
    <?php } ?>
</ul>

</div>
</div>


<?php 

if($question_index_id == '' || !isset($question_index_id) || $question_index_id > $total_rows){
    $question_index_id = 1;
}

?>


<script type="text/javascript">

// Function for save user selected answer
function getAnswer(option_id,question_id,page){
    var csrf = $.cookie('self_training');
       
    $("#"+option_id).addClass('active'); 
    $("#"+page).addClass('active');
    var total_answered = getTotalanswered();      
    $.ajax({
            type: 'POST',
            url: '<?php echo base_url(); ?>take-a-test/userAnswer',
            data: { option_id:option_id,question_id:question_id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response == 1){
                    '<?php $question_index_id = $question_index_id+1; ?>'
                    if(Number('<?php echo $total_rows; ?>') == Number(total_answered) ){
                        window.location = '<?php echo base_url().'take-a-test/testfinish_confirm/'.$question_index_id; ?>';
                    }else{
                        window.location="<?php echo base_url().'take-a-test/index?q='.$question_index_id; ?>";
                        '<?php $question_index_id = $question_index_id-1; ?>'
                    }
                    
                }
            }
    }); 
}

function getTotalanswered(){
    var csrf = $.cookie('self_training');
    var counter = 0; 
    $(".pagination ul li a.active").each(function(){
        counter = Number(counter) + 1;
    });
    return counter;
}

// End function for save user selected answer
</script>

<script type="text/javascript">
	$(document).ready(function(){
		//Examples of how to assign the Colorbox event to elements
		$(".group1").colorbox({rel:'group1'});
	});
</script>

<script type="text/javascript">
var csrf = $.cookie('self_training');
var TimeLeft = '<?php echo $timeTilEnd; ?>';
TimeLeft = Number(TimeLeft);
var question_no = '<?php echo $question_index_id; ?>';
var total_question = '<?php echo $total_rows; ?>';
var question_id = '<?php echo $question_id; ?>';

function countdown()
{
      if(Number(TimeLeft) > 0) {
            TimeLeft -= 1;
            //document.getElementById('timer').innerHTML = seconds2time(TimeLeft);
            
            $.ajax({
            type: 'POST',
            url: '<?php echo base_url(); ?>take-a-test/saveRemainingtime/'+question_id,
            data: { setup_remaining_time:TimeLeft,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                
            }
        });
        
      }else{
        if(Number(TimeLeft) == 0){
            
            //window.location.href = '<?php #echo base_url().'take-a-test/finish'; ?>';
            clearInterval(CountFunc);  
           return false;
        }
      }
}

var CountFunc = setInterval(countdown,1000);

function seconds2time (seconds) {
    var hours   = Math.floor(seconds / 3600);
    var minutes = Math.floor((seconds - (hours * 3600)) / 60);
    var seconds = seconds - (hours * 3600) - (minutes * 60);
    var time = "";

    if (hours != 0) {
      time = hours+":";
    }
    if (minutes != 0 || time !== "") {
      minutes = (minutes < 10 && time !== "") ? "0"+minutes : String(minutes);
      time += minutes+":";
    }
    if (time === "") {
      time = seconds+"s";
    }
    else {
      time += (seconds < 10) ? "0"+seconds : String(seconds);
    }
    return time;
}


function getTotalanswered(){
    var counter = 0; 
    $(".pagination ul li a.active").each(function(){
        counter = Number(counter) + 1;
    });
    return counter;
}

var total_answered = getTotalanswered();

if(total_answered == total_question){
    var delay = 20000; //Your delay in milliseconds
    setTimeout(function(){
        window.location = '<?php echo base_url().'taketest/testfinish_confirm/'.$question_index_id; ?>'; }, delay);
}

</script>

