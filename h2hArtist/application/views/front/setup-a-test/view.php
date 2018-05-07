<style>
.padbottom{
    padding-bottom: 15px;
}
.questionList {
    margin-top: 30px;
}
.questionList h6{font-style:italic; font-size:13px;}
.questionList h5{font-weight:bold; line-height:20px;}
.setup_user_field{font-style:italic;}
.backcolor{
    background-color: #EA7E73;
}
</style>
<div id="sign-in">
  <div class="row-fluid">  
    <div class="span12">
      <!--div class="panel-heading">
        <h4 class="panel-title">
          <?php if(isset($formTitle)){echo $formTitle;} ?>
		  <?php
		  //prd($set_res[0]['setup_id']);
		  if($set_res[0]['is_completed'] == 3){		 
		  ?>
			  <span style="float:right;cursor:pointer;" onclick="redirect('<?php echo site_url('admin/setup/view/'.$set_res[0]['setup_id'].'/pdf');?>');">Download</span>	
			  <?php
		  }?>
        </h4>
        	
      </div-->
      
      <fieldset>
      <legend><span>
      <?php if(isset($legendText)){echo $legendText;} ?>
      </span></legend>
      </fieldset>
	  <?php 
	  /*
	  *Created on 12-05-2014
	  */
      $solved = 0;
      $total_attempt = 0;
	  if(!empty($stu_performance['over_all_performance'])){
        $solved = $stu_performance['over_all_performance']; 
      }
      if(!empty($stu_performance['total_attempt'])){
        $total_attempt = $stu_performance['total_attempt'];
      }
	   #pr($stu_performance);
	  if(!empty($stu_performance)){
	  foreach($stu_performance as $value){
	   $subjectArray[] = $value;	
	  }
      $subjectArray = $subjectArray[0];
      #pr($subjectArray);
      foreach($subjectArray as $key => $value1){ 
      ?>
	  		<script type="text/javascript">
	  		    
		  	</script>
	  	<?php }
	  }

	  foreach($set_res as $setup_user){
		$options = getOptionsArr($setup_user['test_number']);
		$user_data = getUserAnswerInfo($options);
	  ?>
	  <script type="text/javascript">
	  	var total_marks ="<?php echo $options['max_total_marks']; ?>";
        var total_question = "<?php echo $options['total_question']; ?>";
        var total_attend = "<?php echo  $total_attempt; ?>";
        var total_correct = "<?php echo $solved; ?>";
        var total_wrong = "<?php echo (int)$options['total_question']-(int)$solved; ?>";
	  </script>
	  <div class="row-fluid"> 
      <div class="span12">
        <?php echo "<p><b>Full Marks : </b>".$options['max_total_marks']."</p>";?>  
        <?php echo "<p><b>Total Question : </b>".$options['total_question']."</p>";?>
        <?php echo "<p><b>Obtained Marks : </b>".$solved."</p>";?>   
    	
   		<div id="chart_pie" class="chart_a graph-left"></div>  		
        
	   	</div>
	   		
	   		<!--div id="chart_div_subject" class="chartStyle"></div-->	   		
	   				
	   	</div>
        <div class="clearfix"></div>
        <div class="row-fluid"> 
      <div class="span12"> 
      <div class="graph-left" id="chart3" style="width:100%; height:auto;"></div>
	  </div>
      </div>
      <div class="clearfix"></div>
	  <?php
	  }	 
      $question_title = '';
	  foreach($result as $key=>$res): 
      if(isset($res['question']['question_title'])){
        $question_title = $res['question']['question_title'];
      }
	 $file_exist = $this->config->item('root_url')."uploads/question/".$res['question']['question_image'];  
      ?>
      <div class="row-fluid">  
        	<div class="span12">
      			<div class="ques-ans-space">
	  		<div class="questionList qsAnswer">	
				
				<h5><?php echo $question_title; ?></h5>
                <?php
                if(isset($res['question']['question_image']) && $res['question']['question_image'] !='' ){ 
					if(file_exists($file_exist)){	?>
						<img src="<?php echo base_url()."uploads/question/".$res['question']['question_image']; ?>" class="ques_image" style="width: 67px; height: 50px;"/> 
				<?php }else{?>
				<img src="<?php echo base_url()."assets/images/No_Img.png"?>" class="ques_image" style="width: 67px; height: 50px;"/> 
				<?php } } ?>
				
				<?php  foreach($res['question']['option'] as $res_correct): 
							$file_option_exist = $this->config->item('root_url')."uploads/question/".$res_correct['option_image'];?>
							
					<h6><strong>Correct Answer :</strong><?php 
						if($res_correct['option_value'] != ''){	
							echo $res_correct['option_value']; 
						}
					if($res_correct['option_image']!=''){
						if(file_exists($file_option_exist)){ ?>
						<br /><img src="<?php echo base_url()."uploads/question/".$res_correct['option_image']; ?>" class="option_image" style="width: 67px; height: 50px;"/> 
						<?php }else{ ?>
						<br /><img src="<?php echo base_url()."assets/images/No_Img.png"?>" class="ques_image" style="width: 67px; height: 50px;"/> 
					<?php } }?>
							</h6>
				<?php  endforeach; ?>
                
                <?php  
                if(isset($res['question']['option'][0]['option_id']) && isset($res['question']['answer'][0]['option_id'])){
                    if($res['question']['option'][0]['option_id'] == $res['question']['answer'][0]['option_id']){ $errorClass = '';  ?>
                        <div class="answerIcon"><img id="question_image_preview" src="<?php echo base_url().'assets/img/icon-active.gif'; ?>" alt="" /></div>
                        
                   <?php }else{ $errorClass = 'backcolor'; ?>
                        <div class="answerIcon"><img id="question_image_preview" height="20px" src='<?php echo base_url(); ?>assets/images/cancel-icone.png' title="Incorrect" ></div>
                        
                    <?php }
                }
            ?>
				<h6><strong>User Answered : </strong>
				<?php if(empty($res['question']['answer'][0]['option_value']) && empty($res['question']['answer'][0]['option_image'])){?>
							N/A </h6>
				<?php  }else {?>
				
				<?php  foreach($res['question']['answer'] as $user_answer): $file_answer_exist = $this->config->item('root_url')."uploads/question/".$user_answer['option_image'];?>
					
					<?php if($user_answer['option_value'] !='' ){	
							echo "<span class='".$errorClass."'>".$user_answer['option_value']."</span>"; 
						}
							if($user_answer['option_image']!=''){
								if(file_exists($file_answer_exist)){ ?>
								<br /><img src="<?php echo base_url()."uploads/question/".$user_answer['option_image']; ?>" class="option_image" style="width: 67px; height: 50px;"/> 
							<?php }else{?>
								<br /><img src="<?php echo base_url()."assets/images/No_Img.png"?>" class="ques_image" style="width: 67px; height: 50px;"/>
							<?php }} ?>
					</h6>
				<?php  endforeach; ?>
				<?php  } ?>
			</div>
            </div>
        	</div>
       </div>	
	  <?php 	  
	  endforeach; ?>
	  <div class="pagination"><ul><?php echo $pagination_helper->create_links() ;?></ul></div>
		  <!--<p>The View page layout !</p>-->
    
  </div>
</div>
</div>
<!-- <script type="text/javascript" src="https://www.google.com/jsapi"></script> -->
    <script class="code" type="text/javascript">

      // Load the Visualization API and the piechart package.
     //  google.load('visualization', '1.0', {'packages':['corechart']});

     //  // Set a callback to run when the Google Visualization API is loaded.
     //  google.setOnLoadCallback(drawChart);

     //  // Callback that creates and populates a data table,
     //  // instantiates the pie chart, passes in the data and
     //  // draws it.
     //  function drawChart() {

     //    //Create the data table for Exam Performance according to Marks.
	    //     var data = new google.visualization.DataTable();
	        
	    //     //alert(Number(total_marks));
	    //     data.addColumn('string', 'Topping');
	    //     data.addColumn('number', 'Slices');
	    //     data.addRows([	  
	    //       ['Total Correct', Number(total_correct)],
	    //       ['Total Wrong',Number(total_wrong)]
	    //     ]);

	    //     // Set chart options
	    //     var options = {'title':'Exam Performance according to marks',
	    //                    is3D: true,                                              
	    //                    'height':300};
	    //     document.getElementById('chart_div_text').innerHTML='<b>Total Questions</b> : '+total_question+"<br />"+'<b>Obtained Marks</b> : '+total_correct;
	    //     // Instantiate and draw our chart, passing in some options.
	    //     var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
            
	    //     chart.draw(data, options);
     //        //google.visualization.events.addListener(chart, 'ready', function(){console.log("In ready functon")});

	    // // End //
     //  }
     
      if($('#chart_pie').length) {
        
        function labelFormatter(label, series) {
          return "<div style='font-size:11px;line-height:16px;text-align:center;padding:2px 4px;color:#fff;min-width:40px'>" + label + "<br/>" + Math.round(series.percent) + "%</div>";
        }
        
        var data = [
                    {
                        label: "Total Correct",
                        data: Number(total_correct)
                    },
                    {
                        label: "Total Wrong",
                        data: Number(total_wrong)
                    },                    
                ];
        
        $.plot('#chart_pie', data, {
          series: {
            pie: {
              show: true,
              radius: 3/4,
              label: {
                show: true,
                radius: 0.5,
                formatter: labelFormatter,
                background: {
                  opacity: 0.5,
                  color: '#000'
                }
              }
            }
          },
          legend: {
            show: false
          },
          colors: ["#7baf42","#ff0000"]
        });
      }
      $(document).ready(function(){
            var s1 = [<?php foreach($subjectArray as $key => $values){ echo $values['marks'].",";}?>];
            var s2 = [<?php foreach($subjectArray as $key => $values){ echo $values['total_question'].",";}?>];
            // Can specify a custom tick Array.
            // Ticks should match up one for each y value (category) in the series.
            var ticks = [<?php foreach($subjectArray as $key => $values){ echo '"'.$values['subjects'].'"'.",";}?>];
            
            var plot1 = $.jqplot('chart3', [s1,s2], {
                // The "seriesDefaults" option is an options object that will
                // be applied to all series in the chart.
                seriesDefaults:{
                    renderer:$.jqplot.BarRenderer,
                    rendererOptions: {fillToZero: true},
                    pointLabels: { show: true, location: 'e', edgeTolerance: -15 },
                },
                // Custom labels for the series are specified with the "label"
                // option on the series option.  Here a series option object
                // is specified for each series.
                series:[
                     {label:'Marks By Subjects'},
            		 {label:'Total Questions attempted by Subjects'},         
                ],
                // Show the legend and put it outside the grid, but inside the
                // plot container, shrinking the grid to accomodate the legend.
                // A value of "outside" would not shrink the grid and allow
                // the legend to overflow the container.
                legend: {
                    show: true,
                    placement: 'outsideGrid'
                },
                axes: {
                    // Use a category axis on the x axis and use our custom ticks.
                    xaxis: {
                        renderer: $.jqplot.CategoryAxisRenderer,
                        ticks: ticks
                    },
                    // Pad the y axis just a little so bars can get close to, but
                    // not touch, the grid boundaries.  1.2 is the default padding.
                    yaxis: {
                        pad: 1.05,
                        tickOptions: {formatString: '%d'}
                    }
                }
            });
        });
      
    </script>