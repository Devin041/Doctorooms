<?php
class P_Co_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	public function get_prescription_co($prescription_id)
	{
		return $this->db
			->where('p_id', $prescription_id)
			->get("p_cos")->result();
	}

	public function delete_prescription($prescription_id)
	{
		return $this->db->delete('p_cos',array('p_id'=>$prescription_id));
	}

	public function insert_prescription_co($cos)
	{
		$this->db->insert_batch('p_cos',$cos);
		return $this->db->insert_id();
	}

	public function get_prescription_co_group_by($prescription_id)
	{
		return $this->db
			->where('p_id', $prescription_id)
			->get("p_cos")->result();
	}
}
