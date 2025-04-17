<?php
class P_medicine_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	public function get_prescription_medicine($prescription_id)
	{
		return $this->db
			->where('p_id', $prescription_id)
			->get("p_medicine")->result();
	}

	public function delete_prescription_medicine($prescription_id)
	{
		return $this->db->delete('p_medicine',array('p_id'=>$prescription_id));
	}

	public function insert_prescription_medicine($lists)
	{
		$this->db->insert_batch('p_medicine',$lists);
		return $this->db->insert_id();
	}
}
