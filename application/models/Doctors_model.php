<?php

/**
 * Class Doctors_model
 */
class Doctors_model extends CI_Model
{

    public function create($data)
    {
        if ($this->db->insert("doctors", $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }


    public function update($id, $data)
    {
        $this->db->where(array("id" => $id))
            ->update("doctors", $data);

        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function distroy_user($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete('users');
    }

    public function distroy_profile($id)
    {
        $this->db->where('user_id', $id);
        return $this->db->delete('doctors');
    }

    public function get_all()
    {
        return $this->db
            ->get("doctors")->result();
    }


    public function get_by_hospital($hid)
    {
        $sql = "SELECT d.*,u.* FROM doctors as d,users as u WHERE d.user_id=u.id and hospital_id=$hid";
        return $this->db->query($sql)->result();
    }

    public function get_one_by_user($user_id)
    {
        return $this->db
            ->where("user_id", $user_id)
            ->get("doctors")->row();
    }

    public function get_by_id($id)
    {
        return $this->db
            ->where("id", $id)
            ->get("doctors")->result();
    }

    public function get_profile($id)
    {
        $this->db->select('doctors.*,users.*');
        $this->db->from('doctors,users');
        $this->db->where('doctors.user_id = users.id');
        $this->db->where('doctors.user_id', $id);
        $query = $this->db->get();
        return $query->row();
    }

    public function get_active_users($limit = null, $start = null)
    {
        $this->db->select('doctors.doctor_type,doctors.city,doctors.state,users.*');
        $this->db->from('doctors,users');
        $this->db->where('doctors.user_id = users.id');
        $this->db->where('doctors.hospital_id is NULL');
        $this->db->where('users.status', ACTIVE);
        $this->db->where('users.role', DOCTOR);
        if (!is_null($limit)) {
            $this->db->limit($limit, $start);
        }
        $query = $this->db->get();
        return $query->result();
    }

    public function get_active_user($doctor_id)
    {
        $this->db->select('doctors.*,users.*');
        $this->db->from('doctors,users');
        $this->db->where('doctors.user_id = users.id');
        $this->db->where('users.status', ACTIVE);
        $this->db->where('users.role', DOCTOR);
        $this->db->where('users.id', $doctor_id);
        $query = $this->db->get();
        return $query->row();
    }

    public function get_hospital_doctors($hospital_id)
    {
        $this->db->select('doctors.doctor_type,users.*');
        $this->db->from('doctors,users');
        $this->db->where('doctors.user_id = users.id');
        $this->db->where('users.status', ACTIVE);
        $this->db->where('users.role', DOCTOR);
        $this->db->where('doctors.hospital_id', $hospital_id);
        $query = $this->db->get();
        return $query->result();
    }

    public function get_search_users($keyword, $city = null, $doctor_type = null, $limit = null, $start = null)
    {
        $this->db->select('doctors.doctor_type,users.*');
        $this->db->from('doctors,users');
        $this->db->where('doctors.user_id = users.id');
        $this->db->where('users.status', ACTIVE);
        $this->db->where('users.role', DOCTOR);
        $this->db->where('doctors.hospital_id is NULL');
        if ($city) {
            $this->db->where("doctors.city = '$city'");
        }
        if ($doctor_type) {
            $this->db->where("doctors.doctor_type = '$doctor_type'");
        }
        $this->db->where("( users.name LIKE '%$keyword%'");

        $this->db->or_where("doctors.state LIKE '%$keyword%'");

        $this->db->or_where("doctors.specialization LIKE '%$keyword%'");
        $this->db->or_where("doctors.eduction LIKE '%$keyword%'");
        $this->db->or_where("doctors.experience LIKE '%$keyword%' ) ");

        if (!is_null($limit)) {
            $this->db->limit($limit, $start);
        }
        $query = $this->db->get();
        return $query->result();
    }

	public function get_chart_data_month_wise($id)
	{

		$a=array('income');
		for ($i = 1; $i <= 12; $i++) {
			$this->db->select('SUM(appointment_charge) as totalcollection');
			$this->db->from('booking');
			$this->db->where_in('doctor_id',$id);
			$this->db->where('month(booking_date)',$i);
			$this->db->where('status',VISITED);
			$query=$this->db->get();
			$a[]=$query->result_array();
		}
		return  $a;
	}


}
