<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Patient_model extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function update($id, $data)
	{
		$this->db->where(array("id" => $id))
		->update("doctors", $data);

		return $this->db->affected_rows() ? TRUE : FALSE;
	}

	public function get_by_id_user($id)
	{
		return $this->db
		->where("id", $id)
		->get("users")->row();
	}
}

/* End of file Patient_model.php */
/* Location: ./application/models/Patient_model.php */