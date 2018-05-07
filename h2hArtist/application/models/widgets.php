<?php

class Widgets extends MY_Model {

    var $table = "widget";
    var $table_gcm = "gcm_users";
    var $datestring = "%Y-%m-%d";
    var $dateStringWithTime = "%Y-%m-%d %H:%i:%s";
    var $currentDate = '';
    var $currentDateTime = '';

    function __construct() {
        parent::__construct();
        $this->load->database();
        $this->currentDate = mdate($this->datestring, time());
        $this->currentDateTime = mdate($this->dateStringWithTime, time());
        $this->currentTime = time();
    }

    function show_all_gcm_widget() {
        $data = array();
        $this->db->select('gcm_regid');
        $this->db->from($this->table_gcm);
        $query = $this->db->get();
        $data = $query->result_array();
        return $data;
        $this->db->close();
    }

    public function show_all_widget() {
        $data = array();
        $query = $this->db->order_by('widget_id', 'DESC')->get_where($this->table, array('widget_is_deleted' => 0));
        $data = $query->result_array();
        return $data;
        $this->db->close();
    }

    public function show_active_widget() {
        $data = array();
        $query = $this->db->get_where($this->table, array('widget_is_deleted' => 0, 'widget_is_active' => 1));
        $data = $query->result_array();
        return $data;
        $this->db->close();
    }

    public function update_widget($widget_id = '', $data = '') {
        $this->db->where('widget_id', $widget_id);
        $this->db->update($this->table, $data);
        $this->db->close();
    }

    public function get_widget($widget_id) {
        $result = $this->db->get_where($this->table, array('widget_id' => $widget_id));
        return $result->result_array();
        $this->db->close();
    }

    public function delete_widget($widget_id) {
        //$this->db->where('test_profile_id', $profile_Id);
        //$this->db->delete($this->table); 
    }

    public function getwidgetName($id) {
        $this->db->select('widget_name');
        $this->db->from($this->table);
        $this->db->where(array('widget_id' => $id));
        $query = $this->db->get();
        $result = $query->result_array();
        if (count($result) > 0) {
            return $result[0]['widget_name'];
        } else {
            return '';
        }
        $this->db->close();
    }

}
