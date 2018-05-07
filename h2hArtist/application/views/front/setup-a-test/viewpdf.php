<?php 
$html = '';
if(!empty($stu_performance['over_all_performance'])){
        $solved = $stu_performance['over_all_performance']; 
      }
      if(!empty($stu_performance['total_attempt'])){
        $total_attempt = $stu_performance['total_attempt'];
      }
	   #pr($stu_performance);
	  if(!empty($stu_performance)){foreach($stu_performance as $value){
	   $subjectArray[] = $value;	
	  }
      $subjectArray = $subjectArray[0];
      #pr($subjectArray);
      foreach($subjectArray as $key => $value1){ 
      ?>
	  		<script type="text/javascript">
	  		    
		  	</script>
<?php }}
foreach($set_res as $setup_user){
$options = getOptionsArr($setup_user['test_number']);
$user_data = getUserAnswerInfo($options);
?>
<script type="text/javascript">
	  	var total_marks ="<?php echo $options['max_total_marks']; ?>";
        var total_question = "<?php echo $options['total_question']; ?>";
        var total_attend = "<?php echo  $total_attempt; ?>";
        var total_correct = "<?php echo $solved; ?>";
        var total_wrong = "<?php echo $total_attempt-$solved; ?>";
</script>
<?php
$html = '
<table width="100%" style="border-bottom: 1px solid #000000; vertical-align: bottom; font-family:
serif; font-size: 9pt; color: #000088;"><tr>
<td width="66%" align="center"><img src="'.base_url().'assets/images/logo.png" /></td>
<td width="33%" style="text-align: right;"><span style="font-weight: bold;">Report Date : '.date('d/m/Y h:i a').'</span></td>
</tr>
</table>
<div class="row-fluid">  
    	<div class="span6">    	    
	   		<div id="chart_div" class="chartStyle"></div>
	   		<p id="chart_div_text"></p>	   		
	   	</div>
	   	<div class="span6">	   		
	   		<div id="chart_div_subject" class="chartStyle"></div>
	   		<p id="chart_div_subject_text"></p>	   		
	   	</div>
	  </div>
';



// $html .= '<table style="width:100%;">';
// $html .= '<tr>';
// $html .= '<td style="font:bold 13px Arial, Helvetica, sans-serif; color:#281D5F">Candidate Name : <font color="#333333">'.$userName.'</font></td>';
// $html .= '<td style="font:bold 13px Arial, Helvetica, sans-serif; color:#281D5F">Test Type : <font color="#333333">'.$setup_user['test_type'].'</font></td>';
// $html .= '<td style="font:bold 13px Arial, Helvetica, sans-serif; color:#281D5F">Test Number : <font color="#333333">'.$setup_user['test_number'].'</font></td>';
// $html .= '</tr>';

// $html .= '<tr>';
// $html .= '<td style="font:bold 13px Arial, Helvetica, sans-serif; color:#281D5F">Secure Key : <font color="#333333">'.$setup_user['test_password'].'</font></td>';
// $html .= '<td style="font:bold 13px Arial, Helvetica, sans-serif; color:#281D5F">Max Marks : <font color="#333333">'.$options['max_total_marks'].'</font></td>';
// $html .= '<td style="font:bold 13px Arial, Helvetica, sans-serif; color:#281D5F">Passing Marks : <font color="#333333">'.$options['pass_marks'].'</font></td>';
// $html .= '</tr>';



// $html .= '<tr>';
// $html .= '<td style="font:bold 13px Arial, Helvetica, sans-serif; color:#281D5F">Total Attend : <font color="#333333">'.$user_data['attend'].'</font></td>';
// $html .= '<td style="font:bold 13px Arial, Helvetica, sans-serif; color:#281D5F">Total Correct : <font color="#333333">'.$user_data['correct'].'</font></td>';
// $html .= '<td style="font:bold 13px Arial, Helvetica, sans-serif; color:#281D5F">Result : <font color="#333333">'.$user_data['pass_fail'].'</font></td>';
// $html .= '</tr>';
// $Scoring = $options['scoring_type'] ==1? "Flat":"Section Wise";
// $html .= '<tr>';
// $html .= '<td style="font:bold 13px Arial, Helvetica, sans-serif; color:#281D5F" colspan="3">Scoring Type: <font color="#333333">'.$Scoring.'</font></td>';
// $html .= '</tr>';

// $html .= '</table>';

}
$question_title = '';
foreach($stu_result as $key=>$res): 
if(isset($res['question']['question_title'])){
    $question_title = $res['question']['question_title'];
}
$file_exist = $this->config->item('root_url')."uploads/question/".$res['question']['question_image'];  

$html .= '<div class="questionList">';	

$html .= '<h5>'.($key+1).". ".$question_title; 
if(isset($res['question']['question_image']) && $res['question']['question_image'] !='' ){ 
if(file_exists($file_exist)){
$html .= '<br /><img src="'.base_url().'uploads/question/'.$res['question']['question_image'].'" class="ques_image" style="width: 67px; height: 50px;"/>'; 
}else{
$html .= '<br /><img src="'.base_url().'assets/images/No_Img.png" class="ques_image" style="width: 67px; height: 50px;"/>'; 
} }
$html .= '</h5>';

foreach($res['question']['option'] as $res_correct): 

$file_option_exist = $this->config->item('root_url')."uploads/question/".$res_correct['option_image'];

$html .= '<h6>';
if($res_correct['option_value'] != ''){	
$html .= '<strong>Correct Answer :</strong> '.$res_correct['option_value']; 
}
if($res_correct['option_image']!=''){
if(file_exists($file_option_exist)){
$html .= '<strong>Correct Answer :</strong><br /><img src="'.base_url().'uploads/question/'.$res_correct['option_image'].'" class="option_image" style="width: 67px; height: 50px;"/>'; 
}else{
$html .= '<strong>Correct Answer :</strong><br /><img src="'.base_url().'assets/images/No_Img.png" class="ques_image" style="width: 67px; height: 50px;"/>'; 
 } }
$html .= '</h6>';
endforeach;

 if(isset($res['question']['option'][0]['option_id']) && isset($res['question']['answer'][0]['option_id'])){
    if($res['question']['option'][0]['option_id'] == $res['question']['answer'][0]['option_id']){ 
        $errorClass = ''; 
    }else{ 
        $errorClass = 'style="background-color: #EA7E73;"'; 
    }
 }

if(empty($res['question']['answer'][0]['option_value']) && empty($res['question']['answer'][0]['option_image'])){
$html .= '<h6><strong>User Answered : </strong>N/A </h6>';
 }

foreach($res['question']['answer'] as $user_answer): $file_answer_exist = $this->config->item('root_url')."uploads/question/".$user_answer['option_image'];
$html .= '<h6>';
if($user_answer['option_value'] !='' ){	
$html .= '<strong>User Answered :</strong> <span '.$errorClass.'>'.$user_answer['option_value'].'</span>'; 
}
if($user_answer['option_image']!=''){
if(file_exists($file_answer_exist)){
$html .= '<strong>User Answered : </strong><br /><img src="'.base_url().'uploads/question/'.$user_answer['option_image'].'" class="option_image" style="width: 67px; height: 50px;"/>'; 
}else{
$html .= '<strong>User Answered : </strong><br /><img src="'.base_url().'assets/images/No_Img.png" class="ques_image" style="width: 67px; height: 50px;"/>';
}}
$html .= '</h6>';
endforeach;

$html .= '</div>';	
	  
endforeach; #echo $html;?>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        //Create the data table for Exam Performance according to Marks.
	        var data = new google.visualization.DataTable();
	        
	        //alert(Number(total_marks));
	        data.addColumn('string', 'Topping');
	        data.addColumn('number', 'Slices');
	        data.addRows([	  
	          ['Total Correct', Number(total_correct)],
	          ['Total Wrong',Number(total_wrong)]
	        ]);

	        // Set chart options
	        var options = {'title':'Exam Performance according to marks',
	                       is3D: true,                                              
	                       'height':300};
	        document.getElementById('chart_div_text').innerHTML='<b>Total Questions</b> : '+total_question+"<br />"+'<b>Full Marks</b> : '+total_marks+"<br />"+'<b>Obtained Marks</b> : '+total_correct;
	        // Instantiate and draw our chart, passing in some options.
	        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
            
	        chart.draw(data, options);
            //google.visualization.events.addListener(chart, 'ready', function(){console.log("In ready functon")});

	    // End //
	     
	    
        // Create the data table for Exam Performance according to Subjects.
        var data_subject = new google.visualization.DataTable();
        
        //alert(Number(total_marks));
        data_subject.addColumn('string', 'Topping');
        data_subject.addColumn('number', 'Slices');
        data_subject.addRows([
        <?php foreach($subjectArray as $key => $values){ ?>
          ['<?php echo $values['subjects']; ?>',<?php echo $values['marks']; ?> ],
         <?php } ?>
        ]);

        // Set chart options
        var subjects = '<?php foreach($subjectArray as $key => $values){ echo '<b>'.$values['subjects'].'</b>'." : ".$values['marks']; echo '<br />'; }?>';
         
        var options_subject = {'title':'Exam Performance according to subject',
         
                       is3D: true,
                       
                       'height':300};
       //document.getElementById('chart_div_subject_text').innerHTML='<b>Marks by Subjects</b> :'+'<br/>'+subjects;
        // Instantiate and draw our chart, passing in some options.
        var chart_subject = new google.visualization.PieChart(document.getElementById('chart_div_subject'));
        chart_subject.draw(data_subject, options_subject);
      }

      // End //
      
    </script>
<?php 
#echo $html; die;
$time = time();	
$this->load->add_package_path(APPPATH.'libraries/mpdf');
$this->load->library('mpdf');
ini_set('memory_limit', '-1');
$mpdf=new mPDF('c');		
$mpdf->SetDisplayMode('fullpage');

$mpdf->SetWatermarkText('H2H Entertainment Company TEST');
$mpdf->watermark_font = 'DejaVuSansCondensed';
$mpdf->showWatermarkText = true;
$mpdf->WriteHTML($html);		

$mpdf->WriteHTML($htmlFotter);
$mpdf->Output($setup_user['test_number']."-reports-".time().".pdf", 'I');	
exit; 
?> 