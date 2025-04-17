<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Doctor_type_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function create($data)
    {
        return $this->db->insert('doctor_type_mstr', $data);
    }

    public function get_all()
    {
        return $this->db->get('doctor_type_mstr')->result();
    }

    public function get_by_id($id)
    {

    }

    public function get_active()
    {

    }

    public function destroy($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete('doctor_type_mstr');
    }

}


/* End of file Doctor_schedule_model.php */
/* Location: ./application/models/Doctor_schedule_model.php */
