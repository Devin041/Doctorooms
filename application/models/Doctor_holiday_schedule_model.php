<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Doctor_holiday_schedule_model extends CI_Model {

    public function create($data)
    {
        if ($this->db->insert("doctor_holiday_schedule", $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }

    public function create_many($data)
    {
        return $this->db->insert_batch('doctor_holiday_schedule', $data);
    }

    public function update($id, $data)
    {
        $this->db->where(array("id" => $id))
            ->update("doctor_holiday_schedule", $data);

        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function destroy($id, $user_id)
    {
        $this->db->delete('doctor_holiday_schedule', array('id' => $id, 'user_id' => $user_id));
        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function get_one_by_user($id, $user_id)
    {
        return $this->db
            ->where("id", $id)
            ->where("user_id", $user_id)
            ->get("doctor_holiday_schedule")->row();
    }

    public function get_all_by_user($user_id)
    {
        $this->db->where("user_id",$user_id);
        $this->db->order_by('date', 'desc');
        return $this->db->get("doctor_holiday_schedule")->result();
    }

    public function get_next_holidays($user_id)
    {
        return $this->db->select('date')
            ->where('user_id', $user_id)
            ->where('date > ', date('Y-m-d'))
            ->order_by('date', 'asc')
            ->get('doctor_holiday_schedule')->result_array();

    }

}