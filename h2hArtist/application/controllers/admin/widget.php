<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Widget extends MY_Controller {

    var $user_session_data = array();
    var $middle = array();

    function __construct() {
        parent::__construct();
        $this->load->model('widgets', 'obj_widget');
        $this->admin_session_data = $this->session->userdata("admin_session_data");
        //print_r($this->admin_session_data);
        $this->load->model('privilege');
        $this->load->library('GCMLib');
        $current_controller = $this->router->class;
        $this->db->query("SET SESSION time_zone = '+05:30'");
        date_default_timezone_set('Asia/Calcutta');
    }

    /**
     * this is a generic function to show all test profile type
     * function having no parameter   
     * function using testprofiletypes module to show all testprofiles type list
     * @access public
     */
    public function index() {
        $this->privilege->check_privileges();
        $this->template->set('adminlayout');
        $middle['title'] = 'widgets list';
        $middle['db_table'] = $this->obj_widget->table;
        $middle['fieldname'] = 'widget_is_active';
        $middle['unique_key_field'] = 'widget_id';
        $middle['role_id'] = $this->admin_session_data['role_id'];
        $middle['result'] = $this->obj_widget->show_all_widget();
        $middle['layout'] = 'admin/widget/index';
        $this->template->set_data('middle', $middle);
        $this->template->load();
    }

    /**
     * this is a generic function to save data about testprofiles type in db
     * function having no parameter
     * function using view to add testprofile type at location admin/test-profile-type/add.php
     * @access public
     * function will fill all field values for testprofile type after successful field validation
     */
    public function add() {
        $this->privilege->check_privileges();
        $this->template->set('adminlayout');

        $middle['formTitle'] = 'Add Widget';
        $middle['buttonText'] = 'Add';
        $middle['widget_name'] = $this->input->post('widget_name');
        $middle['widget_description'] = $this->input->post('widget_description');
        $middle['role_id'] = $this->admin_session_data['role_id'];
        $middle['widget_is_active'] = $this->input->post('widget_is_active');
        
        $config = array(
            array(
                'field' => 'widget_name',
                'label' => 'Widget Name',
                'rules' => 'trim|required|xss_clean'
            ),
            array(
                'field' => 'widget_description',
                'label' => 'Description',
                'rules' => 'trim|xss_clean'
            ),
        );

        $this->form_validation->set_rules($config);
        if ($this->form_validation->run() == FALSE) {
            $middle['layout'] = 'admin/widget/add';
        } else {
            $widget_name = $this->input->post('widget_name');
            $widget_description = $this->input->post('widget_description');
            $widget_is_active = $this->input->post('widget_is_active');
            $save_data = array(
                'widget_name' => $widget_name,
                'widget_description' => $widget_description,
                'widget_is_active' => $widget_is_active,
                'widget_is_deleted' => '0',
                'widget_created_at' => $this->obj_widget->currentDateTime,
                'widget_updated_at' => $this->admin_session_data['user_id']
            );

            $this->obj_widget->save($this->obj_widget->table, $save_data);
            $this->session->set_flashdata('message', 'Widget Added Successfully.');
            redirect('admin/widget');
        }
        $this->template->set_data('middle', $middle);
        $this->template->load();
    }

    /**
     * this is a generic function to check unique title for testprofile type to add 
     * function having single parameter title of testprofile type to check for existance 
     * @access public
     * @param string
     * @return boolean
     */
    function checkexistance($title) {
        $where = array(
            'widget_name' => $title,
            'widget_is_deleted' => 0
        );
        $switch = $this->obj_grade->checkRecord($this->obj_grade->table, $where);
        if ($switch) {
            $this->form_validation->set_message('checkexistance', 'The %s field must contain a unique value.');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    /**
     * this is a generic function to update data about testprofile type in db
     * function having a single parameter having id of the testprofile type which have to update
     * function using view to update subject at location admin/test-profile-type/add.php
     * @access public
     * @param  integer
     * function will fill all field values for testprofile type,after successful field validation
     */
    public function edit($id) {
        $this->privilege->check_privileges();
        if (empty($id)) {
            $this->session->set_flashdata('error_message', 'Record not found.');
            redirect('admin/widget', 'refresh');
        }
        $this->template->set('adminlayout');

        $data = array();
        $middle['formTitle'] = 'Edit Widget';
        $middle['buttonText'] = 'Update';
        $middle['role_id'] = $this->admin_session_data['role_id'];
        if (isset($id)) {
            $data = $this->obj_widget->get_widget($id);
            $middle['widget_name'] = $data[0]['widget_name'];
            $middle['widget_description'] = htmlspecialchars_decode($data[0]['widget_description']);
            $middle['widget_is_active'] = $data[0]['widget_is_active'];
            $config = array(
                array(
                    'field' => 'widget_name',
                    'label' => 'Widget Name',
                    'rules' => 'trim|required|xss_clean'
                ),
                array(
                    'field' => 'widget_description',
                    'label' => 'Description'
                ),
            );

            $this->form_validation->set_rules($config);
            if ($this->form_validation->run() == FALSE) {
                $middle['layout'] = 'admin/widget/add';
                $this->template->set_data('middle', $middle);
                $this->template->load();
            } else {
                $grade_name = $this->input->post('widget_name');
                $grade_description = htmlentities($this->input->post('widget_description'));
                $grade_is_active = $this->input->post('widget_is_active');
                $save_data = array(
                    'widget_name' => $grade_name,
                    'widget_description' => $grade_description,
                    'widget_is_active' => $grade_is_active,
                    'widget_is_deleted' => '0'
                );
                $this->obj_widget->update_widget($id, $save_data);
                $this->session->set_flashdata('message', 'Record Updated Successfully.');
                redirect('admin/widget');
            }
        } else {
            $middle['layout'] = 'admin/widget/add';
            $this->template->set_data('middle', $middle);
            $this->template->load();
        }
    }

    /**
     * this is a generic function to delete data about testprofile type from db
     * function having a single parameter having id of the testprofile type which have to delete  
     * @access public
     * @param  integer
     * function will delete a single testprofile type having id passed in function as parameter
     */
    public function delete($id) {
        $this->privilege->check_privileges();
        $result = $this->obj_widget->getRecords($this->obj_widget->table, array('widget_id' => $id));
        $this->obj_widget->save($this->obj_widget->table, array('widget_is_deleted' => 1), array('widget_id' => $id));
        $this->session->set_flashdata('message', 'Widget deleted successfully.');
        redirect('admin/widget', 'refresh');
    }

}