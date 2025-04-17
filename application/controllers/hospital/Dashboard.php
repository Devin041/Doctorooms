<?php

class Dashboard extends Hospital_contoller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Users_model','user');
		$this->load->model('Doctors_model','doctor');
		$this->load->model('Posts_model','post');
		$this->load->model('Booking_model','booking');
		$this->load->model('Hospital_model','hospital');
		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$this->view_data['countpost']=$this->post->count_by_hospital($this->view_data['user']->id);
		$this->view_data['countdoc']=$this->user->count_doctor_by_hospital($this->view_data['user']->id);
		$this->view_data['booking']=$this->booking->get_hospital_appointment_count_pending($this->view_data['user']->id);
		$this->view_data['bookingtoday']=$this->booking->get_hospital_appointment_count_today($this->view_data['user']->id);
		$this->view_data['doctors']=$this->doctor->get_by_hospital($this->view_data['user']->id);

		$u=array();
		foreach ($this->view_data['doctors'] as $uid) {
			$u[]=$uid->user_id;
		}
        if ($u!=null){
		$this->view_data['chartdata']=$this->hospital->get_chart_data_month_wise($u);
        }
		$this->view_data['_view']="hospital/common/dashboard";
		$this->load->view("layouts/master_page_hospital",$this->view_data);
	}


}
