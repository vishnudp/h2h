jQuery(document).ready(function(){

    var csrf = $.cookie('self_training');
    var id = $("select[name=test_profile_id] option:selected").val();
    var ids = $("select[name=state_id] option:selected").val();
    $("#country_id").change();  
    $("#subscription_plan").change();
    
    if(id){
        jQuery.ajax({
            type: 'POST',
            url: base_url+'admin/ajax/fillselect',
            data: { id:id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                    jQuery('.subject').html(response);
                }
                else{
                    
                }
            }
        });
    }
    else{
        var select = '<select name="subject_id" id="subject_id" class="form-control" data-required="true"><option value="">--Choose--</option></select>';
        jQuery('.subject').html(select);
    }
	
	
 var id = $("select[name=subject_id] option:selected").val();
    if(id){
        jQuery.ajax({
            type: 'POST',
            url: base_url+'admin/ajax/fillsubSection',
            data: { id:id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                    jQuery('.concept').html(response);
                }
                else{
                    
                }
            }
        });
    }
    else{
        var select = '<select name="subject_parent_id" id="subject_parent_id" class="form-control" data-required="true"><option value="">--Choose--</option></select>';
        jQuery('.concept').html(select);
    }
    
});



function IsEmail() {
		email = document.getElementById('email').value;
		var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if (regex.test(email)) {
			return true;
		} else {
		document.getElementById('mailmsg').style.display="block";
			return false;
	   }
}
	



// check valid email address
function validateEmail(sEmail) { 
    var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if (filter.test(sEmail)) {
        return true;
    }
    else {
        return false;
    }
}


function redirect(page){
		window.location = page;
}

function deleteConfirm(){
	if(confirm('Are you sure? You want to delete.')){
		return true;
	}else{
		return false;
	}
}

function cancelConfirm(){
	if(confirm('Are you sure? You want to cancel.')){
		return true;
	}else{
		return false;
	}
}
// Update user status
function update_user_status(user_id,val){ //alert(user_id + '<>'+ val);
	jQuery('#td_'+user_id).html('<img src='+base_url+'assets/images/loading_small.gif>');	
	jQuery.ajax({
		url : base_url+'ajax/update_user_status/'+user_id+'/'+val,
		success : function(data){
			jQuery('#td_'+user_id).html(data);
		},
		error : function(){
			jQuery('#td_'+user_id).html('Error!');
		}			
	});	
}



    function changeStatus(id,table,fieldname,unique_key_field){
        var id  = id;
        var csrf = $.cookie('self_training');
        var table = table;
        var fieldname = fieldname;
        var status = status;
         $('.status-'+id).attr('src',base_url+'assets/images/loading_small.gif');
            $.ajax({
            type: 'POST',
            url: base_url+'admin/ajax/change_status',
            data: { id:id,table:table,fieldname:fieldname,status:status,self_training: csrf,unique_key_field : unique_key_field},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response.trim() == 1){
                    $('.status-'+id).attr('src',base_url+'assets/img/icon-active.gif');
                }else{
                    $('.status-'+id).attr('src',base_url+'assets/img/icon-deactivate.gif');
                }
            }
        }); 
    }
 function changePriority(id,table,fieldname,unique_key_field){
        var id  = id;
        var csrf = $.cookie('self_training');
        var table = table;
        var fieldname = fieldname;
        var status = status;
        $('.priority-'+id).attr('src',base_url+'assets/images/loading_small.gif');
            $.ajax({
            type: 'POST',
            url: base_url+'admin/ajax/change_priority',
            data: { id:id,table:table,fieldname:fieldname,status:status,self_training: csrf,unique_key_field : unique_key_field},
			datatype: 'json',
            cache: 'false',
            success: function(response) {
                
                if(response.trim() == 1){
                    $('.priority-'+id).attr('src',base_url+'assets/images/icons/up.gif');
                }else{
                    $('.priority-'+id).attr('src',base_url+'assets/images/icons/down.gif');
                }
            }
        }); 
    }
    
   
    
    function getSection(id){
       var id = id;
       var csrf = $.cookie('self_training');
        $.ajax({
            type: 'POST',
            url: base_url+'admin/ajax/fillselect',
            data: { id:id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                    $('.subject').html(response);
                }
                else{
                    
                }
            }
        });
    }

    function getState(id,selected_id,cityname){
       var id = id;      
       var selected_id=selected_id;
       var cityname = cityname;
       var csrf = $.cookie('self_training');
        $.ajax({
            type: 'POST',
            url: base_url+'signup/getState',
            data: { id:id,selected_id:selected_id,cityname:cityname,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                    $('.changeState').html(response);
                    if($('#state_id').html()==""){                        
                        $('#city').remove();
                        $(".city_label").remove();
                    }
                    else{
                        $("#state_id").change();  
                        $('#city').show();
                        $(".city_label").show();
                    }
                }
                else{
                    
                }
            }
        });
    }

     function getCity(id,cityname){
       var id = id;
       var cityname = cityname;      
       var csrf = $.cookie('self_training');
        $.ajax({
            type: 'POST',
            url: base_url+'signup/getCity',
            data: { id:id,cityname:cityname,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                    $('.changeCity').html(response);
                }
                else{
                    
                }
            }
        });
    }

	//19-05-2014
	function getsubSection(id){
       var id = id;
       var csrf = $.cookie('self_training');
      // alert(id);
        $.ajax({
            type: 'POST',
            url: base_url+'admin/ajax/fillsubSection',
            data: { id:id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                    $('.concept').html(response);
                }
                else{
                    
                }
            }
        });
    }
	
	 function getSectionByCategory(id){
	   //if(id == ''){ return false; }
       var csrf = $.cookie('self_training');
	   $('#subject_id').html('<img src='+base_url+'assets/images/loading_small.gif>');	
	   $.ajax({
            type: 'POST',
            url: base_url+'admin/ajax/fillselect',
            data: {id:id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                    $('#subject_id').html(response);
                }
                else{
                    
                }
            }
        });
    }	
	
    
    function readURL(input,id) {
       if (input.files && input.files[0]) {
         var reader = new FileReader();

         reader.onload = function (e) {
           $('#'+id)
           .attr('src', e.target.result)
           .width(50)
           .height(50);
         };

         reader.readAsDataURL(input.files[0]);
       }
     }
     
     
function getSectionByCategory_new(id,selected_id){
       var csrf = $.cookie('self_training');
	   $('#subject_id').html('<img src='+base_url+'assets/images/loading_small.gif>');	
	   $.ajax({
            type: 'POST',
            url: base_url+'admin/ajax/fillselect_new',
            data: {id:id,selected_id:selected_id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                    $('#subject_id').html(response);
                }
                else{
                    
                }
            }
        });
    }
	
function getsubSection_new(id,selected_id){
	
        var csrf = $.cookie('self_training');
		$.ajax({
            type: 'POST',
            url: base_url+'admin/ajax/fillsubSection',
            data: { id:id,selected_id:selected_id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
				   $('#subject_parent_id').replaceWith(response);
                }
                else{
                    
                }
            }
        });
    }	
               
// function write for redirect plan page to signup page

function goTo(id){
    window.location.href = base_url+'signup/index/'+id;
}

function confirmpayment(order_id,user_id){ 
    var order_id = order_id;
    var user_id  = user_id;
    var success_url = base_url+'admin/order/success';
    var csrf = $.cookie('self_training');
        $.ajax({
            type: 'POST',
            url: base_url+'admin/order/confirmpayment',
            data: { order_id:order_id,user_id:user_id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                  window.location.href=success_url+'/'+user_id;
                }               
            }
        });
}

function addeventquestions(event_id,question_id){ 
    var event_id = event_id;
    var question_id  = question_id;    
    var success_url = base_url+'admin/event/success';
    var csrf = $.cookie('self_training');
        $.ajax({
            type: 'POST',
            url: base_url+'admin/event/add_event_question',
            data: { event_id:event_id,question_id:question_id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
             success: function(response) {
                if(response){
                  window.location.href=success_url;
                  console.log("hi");
                }               
            }            
        });
}

function confirmsalepayment(order_id,user_id){ 
    var order_id = order_id;
    var user_id  = user_id;
    var success_url = base_url+'admin/saleorder/success';
    var csrf = $.cookie('self_training');
        $.ajax({
            type: 'POST',
            url: base_url+'admin/saleorder/confirmsalepayment',
            data: { order_id:order_id,user_id:user_id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                  window.location.href=success_url+'/'+order_id+'/'+user_id;
                }               
            }
        });
}


function notifysalepayment(order_id,user_id){ 
    var order_id = order_id;
    var sale_id  = user_id;
    var success_url = base_url+'admin/saleorder/notifysalepayment';
    var csrf = $.cookie('self_training');
        $.ajax({
            type: 'POST',
            url: base_url+'admin/saleorder/notifysalepayment'+'/'+order_id+'/'+sale_id,
            data: { order_id:order_id,sale_id:sale_id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                  window.location.href=success_url+'/'+order_id+'/'+sale_id;
                }               
            }
        });
}

function notifyorderpayment(order_id,user_id){ 
    var order_id = order_id;
    var user_id  = user_id;
    var success_url = base_url+'admin/order/notifyorderpayment';
    var csrf = $.cookie('self_training');
        $.ajax({
            type: 'POST',
            url: base_url+'admin/order/notifyorderpayment',
            data: { order_id:order_id,user_id:user_id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                  window.location.href=success_url+'/'+order_id+'/'+user_id;
                }               
            }
        });
}

function renewplan(order_id,user_id,plan_title){ 
    var order_id = order_id;
    var user_id  = user_id;    
    var plan_title = plan_title;
    var success_url = base_url+'renewplan/index';
    var csrf = $.cookie('self_training');
        $.ajax({
            type: 'POST',
            url: base_url+'renewplan/index',
            data: { order_id:order_id,user_id:user_id,plan_title:plan_title,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                  window.location.href=success_url+'/'+order_id+'/'+user_id+'/'+plan_title;
                }              
            }
        });
}

  function getPlanamount(id){
       var id = id;            
       var csrf = $.cookie('self_training');
        $.ajax({
            type: 'POST',
            url: base_url+'renewplan/getPlanamount',
            data: { id:id,self_training:csrf},
            datatype: 'json',
            cache: 'false',
            success: function(response) {
                if(response){
                    $('.plan_amount').html(response);
                }
                else{
                    
                }
            }
        });
    }


// end

    
