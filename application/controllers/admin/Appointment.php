<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Appointment extends Admin_contoller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Users_model', "user");
		$this->load->model('Booking_model', 'book');
		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);

	}

	public function index()
	{
		$status = ($this->input->get('status')) ? $this->input->get('status') : PENDING;
		$this->view_data['appointments'] = $this->book->get_doctor_appointment_all($status);
		$this->view_data['_view']='admin/appointment_view';
		$this->load->view('layouts/master_page_admin',$this->view_data);

	}
	public function show($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->id);

		if (is_null($appointment)) {
			redirect("admin/appointment");
		}

		$this->view_data['appointment'] = $appointment;
		$this->view_data['_view'] = "admin/appointment_view";
		$this->load->view("layouts/master_page_admin", $this->view_data);
	}

	public function extend($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->id);
		if (is_null($appointment)) {
			redirect("admin/appointment");
		}

		if ($appointment->status == APPROVE || $appointment->status == VISITED || $appointment->status == REJECTED) {
			redirect("admin/appointment");
		}

		$this->_alertInfoResponce($this->book->update($id, ['status' => EXTEND]), "Appointment extended", "Appointment not extended", "doctor/appointment");
	}

	public function approve($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->id);
		if (is_null($appointment)) {
			redirect("admin/appointment");
		}

		if ($appointment->status == VISITED || $appointment->status == REJECTED) {
			redirect("admin/appointment");
		}

		$this->_alertInfoResponce($this->book->update($id, ['status' => APPROVE]), "Appointment approved", "Appointment not approved", "doctor/appointment");
	}

	public function visited($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->id);
		if (is_null($appointment)) {
			redirect("admin/appointment");
		}

		if ($appointment->status == REJECTED || $appointment->status == PENDING || $appointment->status == EXTEND) {
			redirect("admin/appointment");
		}

		$this->_alertInfoResponce($this->book->update($id, ['status' => VISITED]), "Appointment visited", "Appointment not visited", "doctor/appointment");
	}

	public function cancel($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->id);
		if (is_null($appointment)) {
			redirect("admin/appointment");
		}

		if ($appointment->status == VISITED) {
			redirect("admin/appointment");
		}

		$this->_alertInfoResponce($this->book->update($id, ['status' => REJECTED]), "Appointment reject", "Appointment not rejected", "admin/appointment");
	}

	public function charges_income()
	{
		$fromdate=$this->input->get('fromdate');
		$todate=$this->input->get('todate');
		$doctor=$this->input->get('doctor');
		$this->view_data['doctorcharge']=$this->book->get_doctor_wise_charges($doctor,$fromdate,$todate);
		$this->view_data['_view']='admin/view_charges_income';
		$this->load->view('layouts/master_page_admin',$this->view_data);
	}

}

/* End of file Appointment.php */
/* Location: ./application/controllers/Appointment.php */
