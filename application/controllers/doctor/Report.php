<?php

class Report extends Doctor_controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Booking_model', "booking");
	}

	public function index()
	{
		$this->view_data['_title'] = "Report";
		$this->view_data['_view'] = "doctor/report/index";
		$this->load->view("layouts/master_page_doctors", $this->view_data);
	}

	public function appointment_charges()
	{
		$fromdate = $this->input->get('fromdate');
		$todate = $this->input->get('todate');
		$doctor = $this->user_data->id;
		$this->view_data['appointment_charge'] = $this->booking->get_doctor_wise_charges($doctor, $fromdate, $todate);
		$this->view_data['_title'] = "Report";
		$this->view_data['_view'] = "doctor/report/appointment_charges";
		$this->load->view("layouts/master_page_doctors", $this->view_data);
	}

	public function appointment_list()
	{

		$status = $this->input->get('status');
		$fromdate = $this->input->get('fromdate');
		$todate = $this->input->get('todate');
		$mobile = $this->input->get('patientmobile');
		$this->view_data['appointments'] = $this->booking->get_doctor_appointment_all_report($status, $fromdate, $todate, $mobile, $this->view_data['user']->id);
		$this->view_data['_view'] = 'doctor/report/appointment_list';
		$this->load->view('layouts/master_page_doctors', $this->view_data);
	}
}
