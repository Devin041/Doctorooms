<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Config_model extends CI_Model
{

    public function update($id, $data)
    {
        $this->db->where('id', $id);
        $this->db->update('config', $data);
        if ($this->db->affected_rows()) {
            return true;
        } else {
            return false;
        }
    }

    public function get_one()
    {
        return $this->db->get('config')->row();
    }
}
