<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Disease_model extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();

	}


	public function create($data)
	{
		return $this->db->insert('disease_master',$data);
	}

	public function get_all()
	{
				$this->db->order_by('id','desc');
		return $this->db->get('disease_master')->result();
	}

	public function get_by_id($id)
	{

	}

	public function get_active()
	{

	}

	public function destroy($id)
	{
		$this->db->where('id',$id);
		return $this->db->delete('disease_master');
	}

}


/* End of file Doctor_schedule_model.php */
/* Location: ./application/models/Doctor_schedule_model.php */
