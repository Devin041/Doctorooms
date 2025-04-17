<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Receptionist_model extends CI_Model
{

    public function create($data)
    {
        if ($this->db->insert("receptionist", $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }

    public function update($user_id, $data)
    {
        //unset($data['_wysihtml5_mode']);
        //$data['updated_at'] = date("Y-m-d H:i:s");
        $this->db->where(array("user_id" => $user_id))
            ->update("receptionist", $data);

        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function get_by_user_id($user_id)
    {
        return $this->db->where("user_id",$user_id)->get("receptionist")->row();
    }

    public function get_receptionist_by_doctor($doctor_id)
    {
        return $this->db->where("doctor_id",$doctor_id)->get("receptionist")->row();
    }
}