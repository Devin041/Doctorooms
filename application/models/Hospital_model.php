<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Hospital_model extends CI_Model
{

	public $variable;

	public function __construct()
	{
		parent::__construct();

	}

	public function create($data)
	{
		$data['created_at'] = date("Y-m-d H:i:s");
		$data['updated_at'] = date("Y-m-d H:i:s");
		$this->db->insert("users", $data);
		$id['user_id'] = $this->db->insert_id();
		$this->db->insert("hospital", $id);
		return $this->db->insert_id();
	}

	public function create_detail($data)
	{

		$this->db->insert("hospital", $data);
		return $this->db->insert_id();
	}

	/**
	 * @param $id
	 * @param $data
	 * @return for update hspital profile with id
	 */
	public function update_profile($id, $data)
	{
		$this->db->where('id', $id);
		return $this->db->update('hospital', $data);
	}

	public function get_all()
	{
		$this->db->where('role', HOSPITAL);
		return $this->db->get('users')->result();
	}

	public function get_profile($id)
	{
		$this->db->select('hospital.id as hid,hospital.*,users.*');
		$this->db->from('hospital,users');
		$this->db->where('hospital.user_id = users.id');
		$this->db->where('hospital.user_id', $id);
		$query = $this->db->get();
		return $query->row();
	}

	public function get_active_hospitals($limit = null, $start = null)
	{
		$this->db->select('hospital.hospital_name,hospital.address,hospital.state,hospital.city,hospital.contact_no,hospital.gallary,hospital.lat,hospital.longi,users.*');
		$this->db->from('hospital,users');
		$this->db->where('hospital.user_id = users.id');
		$this->db->where('users.status', ACTIVE);
		$this->db->where('users.role', HOSPITAL);
		if (!is_null($limit)) {
			$this->db->limit($limit, $start);
		}
		$query = $this->db->get();
		return $query->result();
	}

	public function get_active_hospital($id)
	{
		$this->db->select('hospital.hospital_name,hospital.address,hospital.state,hospital.city,hospital.contact_no,hospital.gallary,hospital.lat,hospital.longi,users.*');
		$this->db->from('hospital,users');
		$this->db->where('hospital.user_id = users.id');
		$this->db->where('users.status', ACTIVE);
		$this->db->where('users.role', HOSPITAL);
		$this->db->where('users.id', $id);
		$query = $this->db->get();
		return $query->row();
	}

	public function get_by_id_user($id)
	{
		$this->db->where('id', $id);
		return $this->db->get('users')->row();
	}

	public function get_one_by_user($user_id)
	{
		return $this->db
			->where("user_id", $user_id)
			->get("hospital")->row();
	}

	public function distroy_user($id)
	{
		$this->db->where('id', $id);
		return $this->db->delete('users');
	}

	public function distroy_profile($id)
	{
		$this->db->where('user_id', $id);
		return $this->db->delete('hospital');
	}

	public function get_doctor_by_hospital($id)
	{
		$this->db->select('doctors.*,users.name,users.email,users.mobile_no,users.status,users.profile_img,users.id as did');
		$this->db->from('doctors,users');
		$this->db->where('doctors.user_id=users.id');
		$this->db->where('doctors.hospital_id', $id);
		return $this->db->get()->result();
	}

	public function get_search_hospital($keyword, $city = null, $limit = null, $start = null)
	{
		$this->db->select('hospital.hospital_name,hospital.city,users.*');
		$this->db->from('hospital,users');
		$this->db->where('hospital.user_id = users.id');
		$this->db->where('users.status', ACTIVE);
		$this->db->where('users.role', HOSPITAL);
		if ($city) {
			$this->db->where("hospital.city = '$city'");
		}

		$this->db->where("( hospital.hospital_name LIKE '%$keyword%'");
		$this->db->or_where("hospital.state LIKE '%$keyword%' )");
		if (!is_null($limit)) {
			$this->db->limit($limit, $start);
		}
		$query = $this->db->get();
		return $query->result();
	}

	public function get_chart_data_month_wise($id=null)
	{

		$a=array('income');
		for ($i = 1; $i <= 12; $i++) {
			$this->db->select('SUM(appointment_charge) as totalcollection');
			$this->db->from('booking');
			if ($id!= null){
			$this->db->where_in('doctor_id',$id);
            }
			$this->db->where('month(booking_date)',$i);
			$this->db->where('status',VISITED);
			$query=$this->db->get();
			$a[]=$query->result_array();
		}

		return  $a;
	}

}

/* End of file Hospital_model.php */
/* Location: ./application/models/Hospital_model.php */
