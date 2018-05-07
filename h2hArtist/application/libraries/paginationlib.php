<?php
    /**
     *Initialize the pagination rules for cities page 
     * @return Pagination
     */
class Paginationlib {
    //put your code here
    function __construct() {
         $this->ci =& get_instance();
    }
 
    public function initPagination($base_url = '',$total_rows = '',$uri_segment = 3){
        $config['per_page']          = $this->ci->config->item('per_page');
        $config['uri_segment']       = $uri_segment;
        $config['base_url']          = $base_url;
        $config['total_rows']        = $total_rows;
        $config['use_page_numbers']  = TRUE;
        
        $config['first_tag_open'] = $config['last_tag_open']= $config['next_tag_open']= $config['prev_tag_open'] = $config['num_tag_open'] = '<li>';
        $config['first_tag_close'] = $config['last_tag_close']= $config['next_tag_close']= $config['prev_tag_close'] = $config['num_tag_close'] = '</li>';
        
        $config['cur_tag_open'] = "<li><a class='active' href='#'>";
        $config['cur_tag_close'] = "</a></li>";
        
        $this->ci->pagination->initialize($config);
        return $config;    
    }
    
}
?>