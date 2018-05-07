<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Configuration extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('configurations','obj_configuration');
        $this->load->model('testprofiles','obj_profile');
        $this->load->model('subjects','obj_subjects');
        $this->admin_session_data = $this->session->userdata("admin_session_data");
		$this->load->model('privilege');		
    }


    /**
     * this is a generic function to get data from model subjects, testprofiles , configuration to set configuration for all test profiles
     * function having no parameter
     * function using index view at location admin/configuration/index.php
     * @access public
     * function show data for configuration
    */
    
    public function index(){
		$this->privilege->check_privileges();
        $test_profile_id = $this->input->get('test_profile_id');
        $test_type = $this->input->get('test_type');
        $middle['test_profile_id'] = $test_profile_id;
        $middle['test_type'] = $test_type;
        $this->template->set('adminlayout');
        // $whereProfile = array(
        //     'profile_is_active' => 1,
        //     'profile_is_deleted' => 0
        // );
        $middle['all_test_profile'] = $this->obj_configuration->getRecords($this->obj_configuration->table_test_profiles,'');
        $middle['db_table'] = $this->obj_configuration->table;
        $middle['title'] = 'All Test Configuration';
        $where = array(
            'test_profiles.profile_is_active' => 1,
            'test_profiles.profile_is_deleted' => 0
        ); 
        if(!empty($test_profile_id)){
            $where = array(
            'test_profiles.profile_is_active' => 1,
            'test_profiles.profile_is_deleted' => 0,
            'test_profiles.test_profile_id' => $test_profile_id
            ); 
        } 
        if(!empty($test_type)){
            $where = array(
            'test_profiles.profile_is_active' => 1,
            'test_profiles.profile_is_deleted' => 0,
            'test_profile_configs.test_type' => $test_type
            ); 
        } 
        if(!empty($test_type) && !empty($test_profile_id)){
            $where = array(
            'test_profiles.profile_is_active' => 1,
            'test_profiles.profile_is_deleted' => 0,
            'test_profile_configs.test_type' => $test_type,
            'test_profiles.test_profile_id' => $test_profile_id
            ); 
        }   
             
        $middle['result'] = $this->obj_configuration->getSetting($where);
		$middle['layout'] = 'admin/configuration/index';
        $this->template->set_data('middle',$middle);
        $this->template->load();
    }
    
    /**
     * this is a generic function to save data about test profiles configuration in db
     * function having no parameter
     * function using view to add configuration at location admin/configuration/add.php
     * @access public
     * function will fill all field values for configuration after successful field validation
    */
    
    public function add(){
	 	$this->privilege->check_privileges();
        $this->template->set('adminlayout');
	    $middle['formTitle'] = 'Test Configuration';
        $middle['legendText'] = 'Test Configuration Information';        
        $test_profile_id = $this->input->get('test_profile_id');
        $test_type = $this->input->get('test_type');

        $savedata = array();
        $config = array(              
               array(
                     'field'   => 'test_profile_id',
                     'label'   => 'Test Profile',
                     'rules'   => 'trim|required|xss_clean'
                  ),
               array(
                     'field'   => 'question_time_allowed',
                     'label'   => 'Total time allow for each question',
                     'rules'   => 'trim|required|xss_clean'
                  ),
               array(
                     'field'   => 'time_allowed',
                     'label'   => 'Total time allow',
                     'rules'   => 'trim|required|xss_clean'
                  ),
               array(
                     'field'   => 'max_total_marks',
                     'label'   => 'Max marks',
                     'rules'   => 'trim|xss_clean' //|callback_checkmarks
                  ),               
                  array(
                     'field'   => 'pass_marks',
                     'label'   => 'Pass Marks',
                     'rules'   => 'trim|required|xss_clean'
                  ),
                  array(
                     'field'   => 'test_type',
                     'label'   => 'Test Type',
                     'rules'   => 'trim|required|xss_clean'
                  )
            );        
        $question_time_allowed       = $this->input->post('question_time_allowed');
        $time_allowed       = $this->input->post('time_allowed');
        $max_total_marks    = $this->input->post('max_total_marks');
        $total_question     = $this->input->post('total_question');
        $pass_marks     = $this->input->post('pass_marks'); 
         
              
        if(!$_POST && $test_profile_id != '' && is_numeric($test_profile_id) && $test_type != '' && is_numeric($test_type)){
           $result = $this->obj_configuration->getRecords($this->obj_configuration->table,array('test_profile_id'=>$test_profile_id,'test_type' => $test_type)); 
           if(!empty($result) || isset($result[0])){
                $question_time_allowed = $result[0]['question_time_allowed'];
                $time_allowed =  $result[0]['time_allowed'];
                $max_total_marks =  $result[0]['max_total_marks'];                
                $pass_marks =  $result[0]['pass_marks'];
                
                $test_type =  $result[0]['test_type'];
                
                $config_description = json_decode($result[0]['config_description']);
                $middle['config_description'] = $config_description;
                if(!empty($config_description)){                
                    foreach($config_description as $value){
                    $middle['subject_id'][] = $value->subject_id;
                }
              }
           }           
        }
                 
        if($test_profile_id != '' || is_numeric($test_profile_id) || $test_type != '' || is_numeric($test_type)){
        $result = $this->obj_configuration->getRecords($this->obj_configuration->table,array('test_profile_id'=>$test_profile_id,'test_type' => $test_type));         
           if(!empty($result) || isset($result[0])){
                $question_time_allowed = $result[0]['question_time_allowed'];
                $time_allowed =  $result[0]['time_allowed'];
                $max_total_marks =  $result[0]['max_total_marks'];                
                $pass_marks =  $result[0]['pass_marks'];
                
                $test_type =  $result[0]['test_type'];
                
                $config_description = json_decode($result[0]['config_description']);
                $middle['config_description'] = $config_description;                
                if(!empty($config_description)){
                foreach($config_description as $value){
                    $middle['subject_id'][] = $value->subject_id;
                }
              }
           }        
        }        
        $middle['test_profile_id'] = $test_profile_id;
        $middle['question_time_allowed']=$question_time_allowed;
        $middle['time_allowed'] = $time_allowed;
        $middle['max_total_marks'] = $max_total_marks;
        
        $middle['pass_marks'] = $pass_marks;
        $middle['test_type'] = $test_type;
        
        $middle['test_type_array'] = $this->config->item('test_type');
        
        $middle['all_test_profile']= $this->obj_profile->getRecords($this->obj_profile->table,array('profile_is_deleted'=>0,'profile_is_active' =>1));
        $middle['test_profile_result']= $this->obj_profile->getRecords($this->obj_profile->table,array('test_profile_id'=>$test_profile_id));
        if(isset($middle['test_profile_result'][0]) || !empty($middle['test_profile_result'][0])){
             $middle['scoring_type'] = $middle['test_profile_result'][0]['scoring_type'];
        }        
        $middle['result'] = $this->obj_subjects->get_all_subject_concept_by_test_profile_id('',array('subject_title','ASC') );
        $this->form_validation->set_rules($config);
        if ($this->form_validation->run() == FALSE)
		{
			 $middle['layout'] = 'admin/configuration/add';
		}
		else{             
			$test_profile_id         = $this->input->post('test_profile_id');
            $test_type               = $this->input->post('test_type');
            $question_time_allowed   = $this->input->post('question_time_allowed');
            $time_allowed            = $this->input->post('time_allowed');
            $max_total_marks         = $this->input->post('max_total_marks');
            
            $pass_marks              = $this->input->post('pass_marks');			
			$subject_ids             = $this->input->post('subject_ids');
			$subject_no_of_question  = $this->input->post('subject_no_of_question');
			$subject_pass_marks      = $this->input->post('subject_pass_marks');
			$subject_title           = $this->input->post('subject_title');			
			$created_by              = $this->admin_session_data['user_id'];   
			if(!empty($subject_ids) || !empty($subject_no_of_question) || !empty($subject_pass_marks)){
				foreach($subject_ids as $key=>$value){
					$savedata[$key]['subject_id']=  $value;
					$savedata[$key]['subject_no_of_question']=  $subject_no_of_question[$key];
					$savedata[$key]['subject_pass_marks']=  $subject_pass_marks[$key];
					$savedata[$key]['subject_title']=  $subject_title[$key];				
				}
			}			                    
            $config_description = json_encode($savedata);                        
                $save_data      = array(
                					       'test_profile_id'    => $test_profile_id,
                					       
                                           'question_time_allowed'=>$question_time_allowed,
                					       'time_allowed'       => $time_allowed,
                					       'max_total_marks'    => $max_total_marks,
                                           'pass_marks'         => $pass_marks,
                                           'test_type'          => $test_type,
                					       'config_description' => $config_description,
                					       'created_by'         => $created_by,
                                           'created_time'       => $this->obj_configuration->currentDateTime
                					);                    
                $middle['data'] = $this->obj_configuration->getRecords($this->obj_configuration->table,array('test_profile_id'=>$test_profile_id,'test_type' => $test_type));                
                if(count($middle['data']) > 0){
                    $this->obj_configuration->save($this->obj_configuration->table,$save_data,array('test_profile_id' => $test_profile_id,'test_type' => $test_type));
                    $message = 'Configuration changed successfully.';
                }else{
                    $this->obj_configuration->save($this->obj_configuration->table,$save_data);
                    $message = 'New configuration saved successfully.';
                }                
                $this->session->set_flashdata('message',$message);
                redirect('admin/configuration');            
        }
        $this->template->set_data('middle',$middle);
        $this->template->load();
	}
    
     /**
     * this is a generic function to check pass marks for a subject by comparing marks to maximum marks for a subject
     * function having a single parameter representing marks value obtained     
     * @access public
     * @param  float
     * @return boolean     
    */ 
     
    public function checkmarks($marksvalue){	 	 
		 	$subject_ids = $this->input->post('subject_ids');
			$subject_pass_marks = $this->input->post('subject_pass_marks');
			$totalpassmarks = 0;
			
			if(!empty($subject_ids) || !empty($subject_pass_marks)){
				foreach($subject_ids as $key=>$value){
					$totalpassmarks +=  $subject_pass_marks[$key];					
				}
			}
			
            if((int)$totalpassmarks == (int)$marksvalue){
                return true;
            }else{
                $message = 'Please add carefully pass marks allowed in all subject bellow and compare this to max total marks for this test!';
                $this->form_validation->set_message('checkmarks',$message);
                return false;
            }  
     }


    /**
     * this is a generic function to check total question for a subject
     * function having a single parameter representing marks value obtained     
     * @access public
     * @param  integer
     * @return boolean     
    */ 
	 
	// public function checktotal_question($totalvalue){	 	 
	// 	 	$subject_ids = $this->input->post('subject_ids');
	// 		$subject_no_of_question = $this->input->post('subject_no_of_question');
	// 		 $totalquestion = 0;
	// 		if(!empty($subject_ids) || !empty($subject_no_of_question)){
	// 			foreach($subject_ids as $key=>$value){
	// 				$totalquestion +=  $subject_no_of_question[$key];					
	// 			}
	// 		}
 //            if((int)$totalquestion == (int)$totalvalue){
 //                return true;
 //            }else{
 //                $message = 'Please add carefully total question allowed in all subject bellow and compare this to total no of question for this test!';
 //                $this->form_validation->set_message('checktotal_question',$message);
 //                return false;
 //            }            
            
 //    }

    /**
     * this is a generic function to delete data about configuration from db
     * function having a single parameter having id of the configuration which have to delete 
     * @param  integer
     * function will delete a single configuration having id passed in function as parameter
    */
	 
     
    function delete($id){
        $this->privilege->check_privileges();        
		$this->obj_configuration->deleteRecord($this->obj_configuration->table,array('config_id' => $id ));
		$this->session->set_flashdata('message','Configuration deleted successfully.');
		redirect('admin/configuration');
	}
	
}

/* End of file configuration.php */
/* Location: ./application/controllers/admin/configuration.php */