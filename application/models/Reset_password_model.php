<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Reset_password_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function create($data)
    {
        if ($this->db->insert("reset_password", $data)) {
            return true;
        } else {
            return false;
        }
    }

    public function destroy($email)
    {
        $this->db->delete('reset_password', ["email" => $email]);
        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function get_by_email($email)
    {
        $this->db->where("email", $email)->order_by("created_at", "desc");
        return $this->db->get('reset_password')->row_array();
    }

    public function get_by_email_token($email, $token)
    {
        $this->db->where("email", $email)->where("token",$token);
        return $this->db->get('reset_password')->row_array();
    }

}