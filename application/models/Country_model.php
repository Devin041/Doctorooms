<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Country_model extends CI_Model
{
	public function create_country($data)
	{
		$qry = $this->db->insert('country_mstr', $data);
		if ($qry) {
			return true;
		} else {
			return false;
		}
	}

	public function update($id, $update)
	{

	}

	public function destroy($id)
	{

	}

	public function get_all()
	{
		return $this->db->get('users')->result();
	}

	public function get_by_id($id)
	{

	}

	public function get_all_country()
	{
		return $this->db->get('country_mstr')->result();
	}

	public function destroy_country($id)
	{
		$this->db->where('id', $id);
		$q = $this->db->delete('country_mstr');

		if ($q) {
			return true;
		} else {
			return false;
		}
	}
}
