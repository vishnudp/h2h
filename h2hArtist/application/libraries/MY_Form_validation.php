<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class MY_Form_validation extends CI_Form_validation {
 
	protected $CI;
 
	function __construct()
	{
		parent::__construct();
 
		$this->CI =& get_instance();
	}
    
    
    /**
     * Fraction
     *  
     * $this->form_validation->set_rules('screen_size', 'Screen Size', 'fraction');
     * 
     * @access  public
     * @param   string  $str
     * @return  bool
     */
    public function fraction($str)
    {
    	$this->CI->form_validation->set_message('fraction', 'The %s field must be a valid fraction.');
     
    	return ( ! preg_match("/^(\d++(?! */))? *-? *(?:(\d+) */ *(\d+))?.*$/", $str)) ? FALSE : TRUE;
    }
    
    
    
    /**
     * PCI compliance password
     * 
     * $this->form_validation->set_rules('password', 'Password', 'pci_password');
     * 
     *1) Must be between 6 and 99 characters in length
        2) Must not contain two consecutively repeating characters
        3) Must contain at least one upper-case letter
        4) Must contain at least one lower-case letter
        5) Must contain at least one number
        6) Must contain at least one special character
     * @access  public
     * @param   $str
     * @return  bool
     */
    public function pci_password($str)
    {
    	$special = '!@#$%*-_=+.';
     
    	$this->CI->form_validation->set_message('pci_password', 'For PCI compliance, %s must be between 6 and 99 characters in length, must not contain two consecutively repeating characters, contain at least one upper-case letter, at least one lower-case letter, at least one number, and at least one special character ('.$special.')');
     
    	return (preg_match('/^(?=^.{6,99}$)(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*['.$special.'])(?!.*?(.)\1{1,})^.*$/', $str)) ? TRUE : FALSE;
    }
    
    
    /**
     * Required if another field has a value (related fields) or if a field has a certain value
     *
     * 
     * $this->form_validation->set_rules('bar', 'Bar', 'required_if[foo]'); // required if field 'foo' has a value
       $this->form_validation->set_rules('foobar', 'Foo Bar', 'required_if[foo,bar]'); // required if field 'foo' has a value of 'bar'

     * @access  public
     * @param   string  $str
     * @param   string  $field
     * @return  bool
     */
    public function required_if($str, $field)
    {
    	list($fld, $val) = explode(',', $field, 2);
     
    	$this->CI->form_validation->set_message('required_if', 'The %s field is required.');
     
    	// $fld is filled out
    	if (isset($_POST[$fld]))
    	{
    		// Must have specific value
    		if ($val)
    		{
    			// Not the specific value we are looking for
    			if ($_POST[$fld] == $val AND ! $str)
    			{
    				return FALSE;
    			}
    		}
     
    		return TRUE;
    	}
     
    	return FALSE;
    }
    
    /**
     * Unique
     *
     * $this->form_validation->set_rules('email', 'Email', 'unique[DBTABLE,DBFIELD]');	// DBTABLE is the database table and DBFIELD is the database field to validation against
     * 
     * @access	public
     * @param	string
     * @param	field
     * @return	bool
     */
    public function unique($str, $field)
    {
    	list($table, $column) = explode(',', $field, 2);
     
    	$this->CI->form_validation->set_message('unique', 'The %s that you requested is already in use.');
     
    	$query = $this->CI->db->query("SELECT COUNT(*) AS dupe FROM {$this->CI->db->dbprefix($table)} WHERE {$column} = '{$str}'");
    	$row = $query->row();
     
    	return ($row->dupe > 0) ? FALSE : TRUE;
    }
    
    
    /**
     * Unique except. Check if a specific value is in use except when the value is attached to a specific row ID
     *
     * $this->form_validation->set_rules('email', 'Email', 'unique[DBTABLE,DBFIELD,IDFIELD,ID]');
     * 
     * @param	string
     * @param	field
     * @return	bool
     */
    public function unique_exclude($str, $field)
    {
    	list($table, $column, $fld, $id) = explode(',', $field, 4);
     
    	$this->CI->form_validation->set_message('unique_exclude', 'The %s that you requested is already in use.');
     
    	$query = $this->CI->db->query("SELECT COUNT(*) AS dupe FROM {$this->CI->db->dbprefix($table)} WHERE {$column} = '$str' AND {$fld} <> {$id}");
    	$row = $query->row();
     
    	return ($row->dupe > 0) ? FALSE : TRUE;
    }
    
  
 }