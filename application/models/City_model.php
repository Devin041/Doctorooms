<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class City_model extends CI_Model
{

	public function create_city($data)
	{
		$qry = $this->db->insert('city_mstr', $data);
		if ($qry) {
			return true;
		} else {
			return false;
		}
	}

	public function get_all_city()
	{
		$result = $this->db->query("select c.*,s.state_name from city_mstr as c,state_mstr as s where s.id=c.state_id order by c.id desc");
		return $result->result();

	}

	public function destroy_city($id)
	{
		$this->db->where('id', $id);
		$q = $this->db->delete('city_mstr');

		if ($q) {
			return true;
		} else {
			return false;
		}
	}

    public function get_city_by_state_name($state_name)
    {

        $state = $this->db->where("state_name", $state_name)->get("state_mstr")->row();
        return $this->db->where("state_id",$state->id)->get("city_mstr")->result();
    }

}
