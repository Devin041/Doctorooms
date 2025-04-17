<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Prescriptions_model extends CI_Model
{

	public function create($data)
	{
		if ($this->db->insert("prescriptions", $data)) {
			return $this->db->insert_id();
		} else {
			return false;
		}
	}

	public function update($id, $data)
	{
		$this->db->where(array("id" => $id))
			->update("prescriptions", $data);

		return $this->db->affected_rows() ? TRUE : FALSE;
	}

	public function get_by_booking_id($booking_id, $doctor_id)
	{
		return $this->db->where('booking_id', $booking_id)
			->where('user_id', $doctor_id)
			->get('prescriptions')
			->row();
	}

	public function get_doctor($doctorid)
	{
		$this->db->select('doctors.user_id');
		$this->db->from('doctors,doctor_pharmacist');
		$this->db->where('doctors.user_id',$doctorid);
		$query= $this->db->get();
		return $query->result();
}

	public function get_prescription_for_pharmacist($docotor_id = 4)
	{
		$this->db->select('prescription.*,users.name as patient,booking.appointment_no');
		$this->db->from('prescription,users,booking');
		$this->db->where('prescription.status', VISITED);
		$this->db->where('prescription.patient_id=users.id');
		$this->db->where('prescription.doc_id', $docotor_id);
		$this->db->where('prescription.booking_id=booking.id');
		$this->db->order_by('prescription.id', 'desc');
		$this->db->group_by('prescription.patient_id');
		$query = $this->db->get();
		return $query->result();
	}
}
