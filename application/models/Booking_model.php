<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Booking_model extends CI_Model
{


	public function __construct()
	{
		parent::__construct();
	}

	public function create($data)
	{
		$data['created_at'] = date("Y-m-d H:i:s");
		$data['updated_at'] = date("Y-m-d H:i:s");
		if ($this->db->insert("booking", $data)) {
			return $this->db->insert_id();
		} else {
			return false;
		}
	}

	public function update($id, $data)
	{
		$data['updated_at'] = date("Y-m-d H:i:s");
		$this->db->where(array("id" => $id))
			->update("booking", $data);

		return $this->db->affected_rows() ? TRUE : FALSE;
	}

	public function get_all()
	{
		return $this->db
			->get("booking")->result();
	}

	public function get_all_by_patient($patient_id)
	{
		return $this->db
			->where('user_id', $patient_id)
			->get("booking")->result();
	}

	public function get_all_by_doctor($doctor_id)
	{
		return $this->db
			->where('user_id', $doctor_id)
			->get("booking")->result();
	}

	/**
	 * This function return all patient appointment
	 * @param $user_id
	 * @return mixed
	 */
	public function get_one_by_user($user_id)
	{
		return $this->db
			->where("user_id", $user_id)
			->get("booking")->row();
	}

	/**
	 * This function return all doctor appointment
	 * @param $user_id
	 * @return mixed
	 */
	public function get_one_by_doctor($doctor_id)
	{
		return $this->db
			->where("doctor_id", $doctor_id)
			->get("booking")->row();
	}

	public function get_by_id($id)
	{
		return $this->db
			->where("id", $id)
			->get("booking")->row();
	}

	public function get_patient_appointment($user_id, $from = null, $to = null, $status = null)
	{
		$this->db->select('booking.*,users.name,users.email,users.profile_img,users.mobile_no');
		$this->db->from('booking,users');
		$this->db->where('booking.doctor_id = users.id');
		$this->db->where('booking.user_id = ' . $user_id);
		if ($status!= 'all') {
			$this->db->where("booking.status ='$status'");
		}
		if ($from && $to) {
			$from = date("Y-m-d H:i:s", strtotime($from));
			$to = date("d-m-Y H:i:s", strtotime($to));
			$this->db->where('booking.booking_date <=', $from);
			$this->db->where('booking.booking_date >=', $to);
		}

		$this->db->order_by('created_at', 'DESC');
		$query = $this->db->get();
		return $query->result();
		//test query
		//SELECT @rownum := @rownum + 1 AS position, booking.* FROM `booking`, (SELECT @rownum := 0) r WHERE `doctor_id`=4 and `status`='Pending' and `booking_date`='2019-03-26' order by `created_at`
	}


	public function get_patient_appointment_one($id, $user_id)
	{
		$this->db->select('booking.*,users.name,users.email,users.profile_img,mobile_no');
		$this->db->from('booking,users');
		$this->db->where('booking.doctor_id = users.id');
		$this->db->where('booking.user_id = ' . $user_id);
		$this->db->where('booking.id = ' . $id);
		$query = $this->db->get();
		return $query->row();
	}


	public function get_doctor_appointment($doctor_id, $status = null, $order = null)
	{
		/*$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		$this->db->from('booking,users u1,users u2');
		$this->db->where('booking.doctor_id = u1.id');
		$this->db->where('booking.user_id = u2.id');
		$this->db->where('booking.doctor_id = ' . $doctor_id);
		if ($status && $status != 'All') {
			$this->db->where('booking.status', $status);
		}
		$this->db->order_by('created_at', 'desc');
		$query = $this->db->get();
		return $query->result();*/

		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		$this->db->from('booking');
		$this->db->join('users u2', 'booking.user_id = u2.id', 'left outer');
		$this->db->join('users u1', 'booking.doctor_id = u1.id', 'left outer');
		$this->db->where('booking.doctor_id', $doctor_id);
		if ($status && $status != 'All') {
			$this->db->where('booking.status', $status);
		}
		if ($order) {
			$this->db->order_by('booking.created_at', $order);
		} else {
			$this->db->order_by('booking.created_at', 'asc');
		}
		$query = $this->db->get();
		return $query->result();
	}

	public function get_doctor_appointments_latest($doctor_id, $status = NULL)
	{
		/* $this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		 $this->db->from('booking,users u1,users u2');
		 $this->db->where('booking.doctor_id = u1.id');
		 $this->db->where('booking.user_id = u2.id');
		 $this->db->where('booking.doctor_id = ' . $doctor_id);
		 $this->db->where('booking.status = ', PENDING);
		 $this->db->order_by('booking.created_at', 'desc');
		 $this->db->limit(5);
		 $query = $this->db->get();
		 return $query->result();*/

		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		$this->db->from('booking');
		$this->db->join('users u2', 'booking.user_id = u2.id', 'left outer');
		$this->db->join('users u1', 'booking.doctor_id = u1.id', 'left outer');
		$this->db->where('booking.doctor_id', $doctor_id);
		$this->db->where('booking.booking_date',date('Y-m-d'));
		if ($status) {
			$this->db->where('booking.status', APPROVE);
		} else {
			$this->db->where('booking.status', PENDING);
		}

		$this->db->order_by('booking.created_at', 'asc');
		$this->db->limit(10);
		$query = $this->db->get();
		return $query->result();
	}

	public function get_doctor_appointments_today($doctor_id)
	{
		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		$this->db->from('booking,users u1,users u2');
		$this->db->where('booking.doctor_id = u1.id');
		$this->db->where('booking.user_id = u2.id');
		$this->db->where('booking.doctor_id = ' . $doctor_id);
//		$this->db->where('booking.status', PENDING);
		//$this->db->where('booking.status', EXTEND);
		$this->db->where('booking.status', APPROVE);
               $this->db->where('booking.booking_date', date('Y-m-d 00:00:00'));
		$this->db->order_by('booking.created_at', 'asc');
		$query = $this->db->get();
		return $query->result();
	}

	public function get_doctor_appointments_ajax($doctor_id,$limit,$offset)
	{
		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		$this->db->from('booking');
		$this->db->join('users u2', 'booking.user_id = u2.id', 'left outer');
		$this->db->join('users u1', 'booking.doctor_id = u1.id', 'left outer');
		$this->db->where('booking.doctor_id', $doctor_id);



		$this->db->order_by('booking.status asc,booking.created_at asc');
		//$this->db->order_by('booking.id', 'asc');
		$this->db->limit($limit,$offset);
		$query = $this->db->get();
		return $query->result();
}


	public function get_doctor_appointment_all($status = null)
	{
		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no,u1.name as dname');
		$this->db->from('booking,users u1,users u2');
		$this->db->where('booking.doctor_id = u1.id');
		$this->db->where('booking.user_id = u2.id');
		if ($status && $status != 'All') {
			$this->db->where('booking.status', $status);
		}
		$this->db->order_by('created_at', 'asc');
		$query = $this->db->get();
		return $query->result();
	}


	public function get_hospital_appointment_all($status = null, $hid = null)
	{
		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no,u1.name as dname');
		$this->db->from('booking,users u1,users u2,doctors as d');
		$this->db->where('booking.doctor_id = u1.id');
		if ($hid) {
			$this->db->where('d.hospital_id', $hid);
		}
		$this->db->where('booking.user_id = u2.id');
		if ($status && $status != 'All') {
			$this->db->where('booking.status', $status);
		}
		$this->db->order_by('created_at', 'asc');
		$query = $this->db->get();
		var_dump($this->db->last_query());
		exit();
		return $query->result();
	}

	public function get_doctor_appointment_all_report($status = null, $fromdate = null, $todate = null, $mobile = null, $doctor_id = null)
	{
		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no,u1.name as dname');
		$this->db->from('booking,users u1,users u2');
		$this->db->where('booking.doctor_id = u1.id');
		$this->db->where('booking.user_id = u2.id');
		if ($fromdate && $todate) {
			$this->db->where('booking_date >=', $fromdate . ' 00:00:00');
			$this->db->where('booking_date <=', $todate . ' 23:59:59');
		}
		if ($status && $status != 'all') {
			$this->db->where('booking.status', $status);
		}
		if ($mobile) {
			$this->db->where('u2.mobile_no', $mobile);
		}
		if ($doctor_id) {
			$this->db->where('booking.doctor_id', $doctor_id);
		}
		$this->db->order_by('created_at', 'asc');
		$query = $this->db->get();
		return $query->result();
	}

	public function get_doctor_appointment_one($id, $doctor_id = null)
	{
		/*$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		$this->db->from('booking,users u1,users u2');
		$this->db->where('booking.doctor_id = u1.id');
		$this->db->where('booking.user_id = u2.id');
		if ($doctor_id) {
			$this->db->where('booking.doctor_id = ' . $doctor_id);
		}
		$this->db->where('booking.id = ' . $id);
		$query = $this->db->get();
		return $query->row();*/

		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		$this->db->from('booking');
		$this->db->join('users u2', 'booking.user_id = u2.id', 'left outer');
		$this->db->join('users u1', 'booking.doctor_id = u1.id', 'left outer');
		if ($doctor_id != null) {
			$this->db->where('booking.doctor_id', $doctor_id);
		}
		$this->db->where('booking.id = ' . $id);
		$query = $this->db->get();
		return $query->row();
	}

	public function get_latest_record()
	{
		return $this->db->order_by("created_at", "desc")->get("booking")->row();
	}

	public function get_doctor_wise_charges($did, $fromdate, $todate)
	{
//		$this->db->select('booking.*,SUM(appointment_charge) as total,u1.name,u1.email,u1.profile_img,u1.mobile_no,u1.name as dname,u2.id as did');
//		$this->db->from('booking,users u1,users u2');
//		$this->db->where('booking.doctor_id = u1.id');
//		$this->db->where('booking.user_id = u2.id');
//		$this->db->where('booking.status', VISITED);
//		if ($fromdate && $todate) {
//			$this->db->where('booking.booking_date >=', $fromdate . ' 00:00:00');
//			$this->db->where('booking.booking_date <=', $todate . ' 23:59:59');
//		}
//		$this->db->where('booking.user_id = u2.id');
//		if ($did) {
//			$this->db->where('booking.doctor_id', $did);
//		}
//		$this->db->group_by('booking.doctor_id');
//		$this->db->order_by('created_at', 'asc');
//		$query = $this->db->get();
//		return $query->result();

		$this->db->select('SUM(appointment_charge) as total');
		$this->db->from('booking');
		$this->db->where('booking.status', VISITED);
		if ($fromdate && $todate) {
			$this->db->where('booking.booking_date >=', $fromdate . ' 00:00:00');
			$this->db->where('booking.booking_date <=', $todate . ' 23:59:59');
		}
		if ($did) {
			$this->db->where('booking.doctor_id', $did);
		}
		$this->db->group_by('booking.doctor_id');
		$this->db->order_by('created_at', 'asc');
		$query = $this->db->get();
		return $query->result();

	}

	public function get_today_doctor_appointment($doctor_id, $status = null)
	{
		/*$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		$this->db->from('booking,users u1,users u2');
		$this->db->where('booking.doctor_id = u1.id');
		$this->db->where('booking.user_id = u2.id');
		$this->db->where('booking.doctor_id = ' . $doctor_id);
		$this->db->where('booking.booking_date', date("Y-m-d"));
		if ($status && $status != 'All') {
			$this->db->where('booking.status', $status);
		}
		$this->db->order_by('created_at', 'desc');
		$query = $this->db->get();
		return $query->result();*/

		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		$this->db->from('booking');
		$this->db->join('users u2', 'booking.user_id = u2.id', 'left outer');
		$this->db->join('users u1', 'booking.doctor_id = u1.id', 'left outer');
		$this->db->where('booking.booking_date', date("Y-m-d"));
		$this->db->where('booking.doctor_id', $doctor_id);
		if ($status && $status != 'All') {
			$this->db->where('booking.status', $status);
		}
		$query = $this->db->get();
		return $query->result();
	}

	public function check_already_book($doctor_id, $booking_date, $patient_id)
	{
		$data = $this->db->where("doctor_id", $doctor_id)->where("user_id", $patient_id)->where("booking_date", $booking_date)->get('booking');
		return $data->num_rows();
	}

	public function get_booking_count_by_date_by_doctor($doctor_id, $date)
	{
		$data = $this->db->where("doctor_id", $doctor_id)->where("booking_date", $date)->get('booking');
		return $data->num_rows();
	}

	public function get_hospital_appointment_count_pending($hid)
	{
		$this->db->select('count(*) as penappoi');
		$this->db->from('booking,users u1,users u2,doctors as d');
		$this->db->where('booking.doctor_id = u1.id');

		$this->db->where('d.user_id = u1.id');
		$this->db->where('d.hospital_id', $hid);

		$this->db->where('booking.user_id = u2.id');

		$this->db->where('booking.status', PENDING);
		return $this->db->count_all_results();

	}

	public function get_hospital_appointment_count_today($hid)
	{
		$date = date('Y-m-d');
		$this->db->select('count(*) as penappoi');
		$this->db->from('booking,users u1,users u2,doctors as d');
		$this->db->where('booking.doctor_id = u1.id');

		$this->db->where('d.user_id = u1.id');
		$this->db->where('d.hospital_id', $hid);

		$this->db->where('booking.user_id = u2.id');
		$this->db->where('DATE(booking.created_at)', $date);

		return $this->db->count_all_results();

	}

	public function get_income_by_doc_and_hspital($did, $fromdate, $todate)
	{
		$this->db->select('booking.*,SUM(appointment_charge) as total');
		$this->db->from('booking');
		$this->db->where('booking.doctor_id', $did);
		$this->db->where('booking.status', VISITED);
		if ($fromdate && $todate) {
			$this->db->where('booking.booking_date >=', $fromdate . ' 00:00:00');
			$this->db->where('booking.booking_date <=', $todate . ' 23:59:59');
		}
		$this->db->group_by('booking.doctor_id');
		$this->db->order_by('created_at', 'asc');
		$query = $this->db->get();
		return $query->result();
	}

	public function get_today_appointment_position($doctor_id)
	{
		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no');
		$this->db->from('booking,users u1,users u2');
		$this->db->where('booking.doctor_id = u1.id');
		$this->db->where('booking.user_id = u2.id');
		$this->db->where('booking.doctor_id = ' . $doctor_id);
		$this->db->where('booking.booking_date', date("Y-m-d"));
  	       

		$this->db->where('booking.status', Approve);
                $this->db->order_by('booking.created_at', 'asc');
		$query = $this->db->get();

                //echo $query ;
                //return;

		return $query->result();
	}

	public function get_appintment_by_doctor($doctor_id, $status = null)
	{
		$this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no,u1.name as dname');
		$this->db->from('booking');
		$this->db->join('users u2', 'booking.user_id = u2.id', 'left outer');
		$this->db->join('users u1', 'booking.doctor_id = u1.id', 'left outer');
		$this->db->where('booking.doctor_id', $doctor_id);
		if ($status != 'All') {
			$this->db->where('booking.status', $status);
		}
		$this->db->order_by('booking.created_at', 'asc');
		$query = $this->db->get();
		return $query->result();
	}

	  public function get_doctor_appointment_all_by_doctor_visited($did,$mobile=null,$aptid=null)
    {
        $this->db->select('booking.*,u2.name,u2.email,u2.profile_img,u2.mobile_no,u1.name as dname,prescription.id as p_id');
        $this->db->from('booking,users u1,users u2,prescription');
        $this->db->where('booking.doctor_id = u1.id');
        $this->db->where('booking.user_id = u2.id');
        $this->db->where('booking.id = prescription.booking_id');
		$this->db->where('prescription.doc_id',$did);
        $this->db->where('booking.doctor_id', $did);
        $this->db->where('booking.status', VISITED);
        if ($mobile!=null)
        {
            $this->db->where('u2.mobile_no', $mobile);
        }
        if ($aptid != null)
        {
            $this->db->where('booking.appointment_no', $aptid);
        }
        $this->db->order_by('booking.created_at', 'DESC');
        //$this->db->limit(1, $offset);
        $query = $this->db->get();
        //print_r($this->db->last_query());die();
		return $query->result();
    }

    public function count_visited_by_doctor($did)
    {
        $this->db->select('count(*) as countvisited');
        $this->db->from('booking');
        $this->db->where('booking.doctor_id', $did);
        $this->db->where('booking.status', VISITED);
        $query = $this->db->get();
        $c= $query->row();
        return $c->countvisited;
    }

    public function charges_count_for_admin_report($fromdate,$todate,$did)
    {
        $this->db->select('SUM(appointment_charge) as total,doctor_id,users.name,users.mobile_no,users.email,users.profile_img');
        $this->db->from('booking,users');
        $this->db->where('booking.status', VISITED);
        $this->db->where('booking.doctor_id=users.id');
        if ($fromdate && $todate) {
            $this->db->where('booking.booking_date >=', $fromdate . ' 00:00:00');
            $this->db->where('booking.booking_date <=', $todate . ' 23:59:59');
        }
        if ($did) {
            $this->db->where('booking.doctor_id', $did);
        }
        $this->db->group_by('booking.doctor_id');
        $this->db->order_by('booking.created_at', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

	public function get_prescription_data_by_booking_id($bookingid)
	{
		return $this->db->where('booking_id',$bookingid)->get('prescription')->result();
    }



}
