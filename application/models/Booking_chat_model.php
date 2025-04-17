<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Booking_chat_model extends CI_Model
{


    public function __construct()
    {
        parent::__construct();
    }

    public function create($data)
    {
        $data['created_at'] = date("Y-m-d H:i:s");
        if ($this->db->insert("booking_chat", $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }

    public function update($id, $data)
    {
        $this->db->where(array("id" => $id))
            ->update("booking_chat", $data);

        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function getByAppointment($booking_id)
    {
        $this->db->select('booking_chat.*,fuser.name as from_name,tuser.name as to_name');
        $this->db->from('booking_chat,users as fuser,users as tuser');
        $this->db->where('booking_chat.from_id=fuser.id');
        $this->db->where('booking_chat.to_id=tuser.id');
        $this->db->where('booking_chat.booking_id', $booking_id);
        return $this->db->get()->result();
    }

}
