<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class State_model extends CI_Model
{
	public function create_state($data)
	{
		$qry = $this->db->insert('state_mstr', $data);
		if ($qry) {
			return true;
		} else {
			return false;
		}
	}

    public function get_all()
    {
        return $this->db->get("state_mstr")->result();
    }

	public function get_all_state()
	{
		$result = $this->db->query("select sm.*,cm.country_name from state_mstr as sm,country_mstr as cm where cm.id=sm.county_id order by sm.id desc");
		return $result->result();

	}

	public function destroy_state($id)
	{
		$this->db->where('id', $id);
		$q = $this->db->delete('state_mstr');

		if ($q) {
			return true;
		} else {
			return false;
		}
	}

}
