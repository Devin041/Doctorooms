<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Doctor_assistants_model extends CI_Model
{

    public function create($data)
    {
        if ($this->db->insert("doctor_assistants", $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }

    public function update($id, $data)
    {
        $this->db->where(array("user_id" => $id))
            ->update("doctor_assistants", $data);

        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function get_all_assistants()
    {
        
    }
    
    public function get_by_user_id($user_id)
    {
        return $this->db->where("user_id",$user_id)->get("doctor_assistants")->row();
    }

    public function get_assistant_by_doctor($doctor_id)
    {
        return $this->db->where("doctor_id",$doctor_id)->get("doctor_assistants")->row();
    }

    public function get_assistant_details($id)
    {
        $this->db->select('u1.id as ass_id,u1.name as ass_name,u1.gender as ass_gender,u1.status as ass_status,u1.email as ass_email,u1.profile_img as ass_profile_img,u1.mobile_no as ass_mobile_no,doctors.user_id,doctor_assistants.*,u2.*');
        $this->db->from('doctor_assistants,doctors,users as u1,users as u2');
        $this->db->where('doctor_assistants.user_id',$id);
        $this->db->where('doctor_assistants.user_id=u1.id');
        $this->db->where('doctor_assistants.doctor_id=u2.id');
        $this->db->group_by('doctor_assistants.id');
        return $this->db->get()->row();

    }
}
