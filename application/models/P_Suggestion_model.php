<?php
class P_Suggestion_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}

	public function get_prescription_suggestion($prescription_id)
	{
		return $this->db
			->where('p_id', $prescription_id)
			->get("p_suggestions")->result();
	}

	public function delete_prescription_sug($prescription_id)
	{
		return $this->db->delete('p_suggestions',array('p_id'=>$prescription_id));
	}

	public function insert_prescription_sugg($suggestionsList)
	{
		$this->db->insert_batch('p_suggestions',$suggestionsList);
		return $this->db->insert_id();
	}

	public function get_prescription_suggestion_by_question($prescription_id)
	{
		return $this->db
			->where('p_id', $prescription_id)->group_by('question')
			->get("p_suggestions")->result_array();

	}

	public function get_question_suggestion($question,$prescription_id)
	{
		return $this->db->select('suggestions')
			->where('p_id', $prescription_id)->where('question',$question)
			->get("p_suggestions")->result_array();
	}

}
