<?php 
#pr($results);

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
<a href="#"><span>TIME</span><span id="timer" ><?php #echo secondsToWords($timeTilEnd); ?></span></a>
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
        
?>

<h3><span><?php echo $current_question; ?>.</span> <?php if(isset($results['question']['question_title'])){ echo $results['question']['question_title'];} ?></h3>
<?php 
if(isset($question_src_image)){ ?>
  <div class="big-img"><a class="group1" href="<?php echo $question_src_image ?>" title=""><img  height="80" width="105" src="<?php echo $question_src_image; ?>" /> </a>  <h4>Click on the image to enlarge it.</h4></div> 
<?php } ?>
</div>
<div class="answer">

        <div class="answer-key">
            <p>You have answered all the question.</p>
            <p>Are you sure you wish to end the test now?</p>
            
            <!--span id="remain" class="btn-time"><?php #echo secondsToWords($timeTilEnd); ?></span-->
            
            <div class="counting clearfix"><a onclick="hideLinkbuttonReal();" class="yes" href="javascript:void(0);">Yes end the test now</a>&nbsp;&nbsp;&nbsp;<a class="no" id="review_confirm" href="<?php echo base_url().'taketest/index?q='.$question_index_id ?>">No return to test</a></div>
           
        </div>

</div>

<?php } ?>

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
    $(".answer-active").each(function(){
        $(this).removeClass('answer-active');
    });
   
    $("#"+option_id).addClass('answer-active'); 
    $("#"+page).addClass('active');
    var total_answered = getTotalanswered();      
    $.ajax({
            type: 'POST',
            url: '<?php echo base_url(); ?>taketest/userAnswer',
            data: { option_id:option_id,question_id:question_id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response == 1){
                    '<?php $question_index_id = $question_index_id+1; ?>'
                    if(Number('<?php echo $total_rows; ?>') == Number(total_answered) ){
                        window.location = '<?php echo base_url().'taketest/testfinish_confirm/'.$question_index_id; ?>';
                    }else{
                        window.location="<?php echo base_url().'taketest/index?q='.$question_index_id; ?>";
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
var TimeLeft = '<?php #echo $timeTilEnd; ?>';
TimeLeft = Number(TimeLeft);
var question_no = '<?php echo $question_index_id; ?>';
var total_question = '<?php echo $total_rows; ?>';
var question_id = '<?php echo $question_id; ?>';

function countdown()
{
      if(Number(TimeLeft) > 0) {
            TimeLeft -= 1;
            //document.getElementById('timer').innerHTML = seconds2time(TimeLeft);
            //document.getElementById('remain').innerHTML = seconds2time(TimeLeft);
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
            
            //window.location.href = '<?php echo base_url().'take-a-test/finish'; ?>';
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
        window.location = '<?php echo base_url().'take-a-test/testfinish_confirm/'.$question_index_id; ?>'; }, delay);
}

function hideLinkbutton(){
    $(".counting").html('');
    $(".counting").html('<a class="yes" href="javascript:void(0);">Please wait while redirecting...</a><a class="no" href="javascript:void(0);">Take Practice Test Again</a>');
    window.location.href = '<?php echo base_url().'take-a-test/finishtest'; ?>';
}

function hideLinkbuttonReal(){
    $(".counting").html('');
    $(".counting").html('<a class="yes" href="javascript:void(0);">Please wait while redirecting...</a><a class="no" id="review_confirm" href="javascript:void(0);">No return to test</a>');
    window.location.href = '<?php echo base_url().'take-a-test/finish'; ?>';
}

function hideLinkbuttonTestagain(){
    $(".counting").html('');
    $(".counting").html('<a class="yes" href="javascript:void(0);">Yes end the practice test now</a><a class="no" href="javascript:void(0);">Please wait while redirecting...</a>');
    window.location.href = '<?php echo base_url().'take-a-test/takedemoagain'; ?>';
}

</script>

