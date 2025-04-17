<?php
class Ajaxprescription_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}

	public function check_doctor_booking($doctor_id,$booking_id,$user_id)
	{
		return $this->db
			->where('user_id', $user_id)
			->where('id', $booking_id)
			->where('doctor_id', $doctor_id)
			->get("booking")->result();
	}

	public function check_user_prescription($doctor_id,$booking_id,$user_id)
	{
		return $this->db
			->where('patient_id', $user_id)
			->where('booking_id', $booking_id)
			->where('doc_id', $doctor_id)
			->get("prescription")->row();
	}

	public function create_prescription($data)
	{
		$this->db->insert('prescription',$data);
		$id = $this->db->insert_id();
		$q = $this->db->get_where('prescription', array('id' => $id));
		return $q->row();
	}

	public function update_prescription($prescription_id,$update_prescription)
	{
		$this->db->where('id',$prescription_id);
		return $this->db->update('prescription',$update_prescription);
	}

	public function get_prescription_by_id($id)
	{
		return $this->db
			->where('id', $id)
			->get("prescription")->row();
	}



}
