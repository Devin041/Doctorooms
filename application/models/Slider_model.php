<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Slider_model extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function create_slider($data)
	{
		return $this->db->insert('slider', $data);
	}

	public function update($id, $data)
	{
		$this->db->where(array("id" => $id))
		->update("slider", $data);
		return $this->db->affected_rows() ? TRUE : FALSE;
	}

	public function update_status_active($id)
	{
		$this->db->where('id', $id);
		$this->db->set('status',BLOCK);
		return  $this->db->update('slider');
	}
	public function update_status_block($id)
	{
		$this->db->where('id', $id);
		$this->db->set('status',ACTIVE);
		return  $this->db->update('slider');
	}

	public function destroy($id)
	{
		$this->db->where('id', $id);
		return $this->db->delete('slider');
	}

	public function get_slider()
	{
		$this->db->order_by('position', 'desc');
		return	$this->db->get('slider')->result();
		
	}
	public function get_slider_active()
	{
		$this->db->where('status',ACTIVE);
		$this->db->order_by('position', 'desc');
		return	$this->db->get('slider')->result();

	}

}

/* End of file Slider_model.php */
/* Location: ./application/models/Slider_model.php */
