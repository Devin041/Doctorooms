<?php
class P_digno_model extends CI_Model
{
	function create_dgno_table($data){
		$this->db->insert('p_digno_table',$data);
		$id = $this->db->insert_id();
		$q = $this->db->get_where('p_digno_table', array('id' => $id));
		return $q->row();
	}

	function check_dgno_table($prescription_id){

			return $this->db
				->where('p_id', $prescription_id)
				->get("p_digno_table")->result();
		}


}
