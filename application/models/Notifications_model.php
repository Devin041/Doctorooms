<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Notifications_model extends CI_Model
{


    public function __construct()
    {
        parent::__construct();
    }

    public function create($data)
    {
        $data['created_at'] = date("Y-m-d H:i:s");
        $data['updated_at'] = date("Y-m-d H:i:s");
        if ($this->db->insert("notifications", $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }

    public function update($user_id, $data)
    {
        $data['updated_at'] = date("Y-m-d H:i:s");
        $this->db->where(array("user_id" => $user_id))
            ->update("notifications", $data);
        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function get_all_by_user($user_id, $limit = null)
    {
        $this->db->where("user_id", $user_id);
        $this->db->order_by('created_at', 'desc');
        if (!is_null($limit)) {
            $this->db->limit($limit);
        }
        return $this->db->get("notifications")->result();
    }

    public function get_all_by_user_by_status($user_id, $limit = null)
    {
        $this->db->where("user_id", $user_id);
        $this->db->where("status", UNREAD);
        $this->db->order_by('created_at', 'desc');
        if (!is_null($limit)) {
            $this->db->limit($limit);
        }
        return $this->db->get("notifications")->result();
    }

    public function get_count_by_user($user_id)
    {
        $this->db->where("user_id", $user_id);
        $this->db->where("status", UNREAD);
        $this->db->order_by('created_at', 'desc');
        return $this->db->get("notifications")->num_rows();
    }

}