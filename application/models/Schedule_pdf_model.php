<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Schedule_pdf_model extends CI_Model
{

    public function create($data)
    {
        $data['created_at'] = date("Y-m-d H:i:s");
		if ($this->db->insert("schedule_pdf", $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
	}

    public function get_by_hospital($id)
    {
        $this->db->where('hospital_id', $id);
        return $this->db->get('schedule_pdf')->result();
    }

    public function get_by_id($id)
    {
        $this->db->where('id', $id);
        return $this->db->get('schedule_pdf')->result();
    }

    public function remove_by_id($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete('schedule_pdf');
    }

    public function get_last_by_hospital($id)
    {
        $this->db->where('hospital_id', $id);
        $this->db->order_by('id', 'desc');
        $this->db->limit(1);
        return $this->db->get('schedule_pdf')->result();
    }


}
