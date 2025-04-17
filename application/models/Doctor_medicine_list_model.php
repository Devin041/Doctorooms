<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Doctor_medicine_list_model extends CI_Model
{

    public function create($data)
    {
        if ($this->db->insert("doctor_medicine_list", $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }

    public function update($id, $data)
    {
        $this->db->where(array("id" => $id))
            ->update("doctor_medicine_list", $data);

        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function get_all()
    {
        return $this->db->order_by('id', 'desc')->get('doctor_medicine_list')->result();
    }

    public function get_all_by_doctor($id)
    {
        return $this->db->where('user_id', $id)->order_by('id', 'desc')->get('doctor_medicine_list')->result();
    }

    public function get_by_id($id)
    {
        $this->db->where('id', $id);
        return $this->db->get('doctor_medicine_list')->row();
    }

    public function get_by_doctor_id($doctor_id, $keyword)
    {
        $this->db->select('id as value,name as text,morning,afternoon,evening,tab,doz,description');
        $this->db->where('user_id', $doctor_id);
        if ($keyword) {
            $this->db->where("name LIKE '%$keyword%'");
        }
        $this->db->from('doctor_medicine_list');
        return $this->db->get()->result();
    }

	public function get_all_list_by_doctor_id($doctor_id,$status='')
	{
		$this->db->select('name');
		$this->db->where('user_id', $doctor_id);
		$this->db->where('status', ACTIVE);
		$this->db->from('doctor_medicine_list');
		$array = $this->db->get()->result_array();
		$arr = array_column($array,"name");
		return $arr;
    }

	public function get_by_doctor_id_detail($doctor_id, $keyword)
	{
		$this->db->select('id as value,name as text,morning,afternoon,evening,tab,doz,description');
		$this->db->where('user_id', $doctor_id);
		if ($keyword) {
			$this->db->where(["name"=>$keyword]);
		}
		$this->db->where('status', ACTIVE);
		$this->db->from('doctor_medicine_list');
		return $this->db->get()->result();
	}

}
