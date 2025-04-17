<?php
class P_Label_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	public function get_prescription_label($prescription_id)
	{
		return $this->db
			->where('p_id', $prescription_id)
			->get("p_labels")->result();
	}

	public function delete_prescription_label($prescription_id)
	{
		return $this->db->delete('p_labels',array('p_id'=>$prescription_id));
	}

	public function insert_prescription_label($cos)
	{
		$this->db->insert_batch('p_labels',$cos);
		return $this->db->insert_id();
	}
}
