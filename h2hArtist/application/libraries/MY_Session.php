<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once BASEPATH . '/libraries/Session.php';

class MY_Session extends CI_Session
{

    function __construct()
    {
        parent::__construct();
        #die('Ok');
        $this->CI->session = $this;
    }

}

/* End of file MY_Session.php */
/* Location: ./application/libraries/MY_Session.php */