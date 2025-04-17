<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Appoinment extends Hospital_contoller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Users_model', "user");
		$this->load->model('Booking_model', 'book');
		$this->load->model('Doctors_model', 'doctor');
		$this->load->model('Config_model', 'config_model');
		$this->load->model('Notifications_model', 'notification');
		$this->load->model("Booking_chat_model", "chat");
		$this->view_data['chartdata'] = '';
		$this->view_data['a'] = $this->user->get_by_id($this->user_data->id);

	}

	public function index()
	{
		$a = array();
		$status = ($this->input->get('status')) ? $this->input->get('status') : PENDING;
		$doc = $this->doctor->get_hospital_doctors($this->view_data['user']->id);
		for ($i = 0; $i < count($doc); $i++) {
			$doc_prof_id = $this->doctor->get_profile($doc[$i]->id);
			$data = $this->book->get_appintment_by_doctor($doc_prof_id->id, $status);
			$a= array_merge($a, $data);
		}
		$this->view_data['appointments'] = $a;
		$this->view_data['_view'] = 'hospital/appointment';
		$this->load->view('layouts/master_page_hospital', $this->view_data);

	}



	public function show($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id);

		if (is_null($appointment)) {
			redirect("hospital/appoinment");
		}

		$this->view_data['appointment'] = $appointment;
		$this->view_data['_title'] = "Show appointment";

		$this->view_data['_view'] = "hospital/appointment_show";
		$this->load->view("layouts/master_page_hospital", $this->view_data);
	}


	public function add()
	{

		$this->view_data['doctors'] = $this->doctor->get_by_hospital($this->view_data['user']->id);

		$this->view_data['_view'] = 'hospital/appointment_add';
		$this->load->view('layouts/master_page_hospital', $this->view_data);
	}

	public function add_validate()
	{
		$this->view_data['doctors'] = $this->doctor->get_by_hospital($this->view_data['user']->id);

		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');

			if ($this->form_validation->run("booking_by_hospital")) {
				$data = $this->input->post();
				$user = $this->user->get_by_mobile($data['mobile_no']);
				/**
				 * check booking already booked
				 */
//                $data = $this->book->check_already_book($this->user_data->doctor_id, $data['booking_date'], $user->id);
//                if ($data > 0) {
//                    $this->_alertInfoResponce(false, "Appointment processed", "Appointment already booked", "receptionist/appointment");
//                }

				$data['doctor_id'] = $data['doctor_id'];

				if ($user->id) {
					$data['user_id'] = $user->id;
				}
				$data['status'] = APPROVE;
				$data['appointment_charge'] = $this->config_model->get_one()->admin_charge;
				$data['booking_type'] = BY_HOSPITAL;
				$data['appointment_no'] = $this->generateBookingNumber();
				//{ start } send notification
				$noti['title'] = "New appointment";
				$noti['body'] = "A new appointment <b>" . "<a href='" . base_url('appointment/show/' . $book) . "' > " . $data['appointment_no'] . "</a > " . "</b > (" . $data['petient_name'] . ") has been booked";
				$noti['user_id'] = $data['doctor_id'];
				$this->notification->create($noti);
				$noti['user_id'] = $user->id;
				//{ End } send notification

                //Send booking message
                $message = "Dear " . $data['petient_name'] . " your appointment has been booked on " . SITE_TITLE . ". your appointment with " . 	$this->view_data['doctors'][0]->name . " and appointment id is: " . $data['appointment_no'].". - www.doctorooms.com";
                $this->sendMobileMessage($data['mobile_no'], $message);
                // end
                unset($data['mobile_no']);
                $this->_alertInfoResponce($this->book->create($data), "Appointment processed", "Appointment not created", "hospital/appoinment");
			} else {
				$this->view_data['_view'] = "hospital/appointment_add";
				$this->load->view("layouts/master_page_hospital", $this->view_data);
			}
		}
	}


	public function generateBookingNumber()
	{
		$prefix = "APMT-";
		$finalAppointment = "";
		$lastRecord = $this->book->get_latest_record();

		if ($lastRecord) {
			$exp = explode("-", $lastRecord->appointment_no);
			$incrimnt = $exp[1] + 1;
			$finalAppointment = $prefix . $incrimnt;
		} else {
			$finalAppointment = $prefix . "1";
		}

		return $finalAppointment;
	}


	public function extend($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id);
		if (is_null($appointment)) {
			redirect("hospital/appoinment");
		}

		if ($appointment->status == APPROVE || $appointment->status == VISITED || $appointment->status == REJECTED) {
			redirect("hospital/appoinment");
		}

		$this->_alertInfoResponce($this->book->update($id, ['status' => EXTEND]), "Appointment extended", "Appointment not extended", "hospital/appoinment");
	}

	public function approve($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id);
		if (is_null($appointment)) {
			redirect("hospital/appoinment");
		}

		if ($appointment->status == VISITED || $appointment->status == REJECTED) {
			redirect("hospital/appoinment");
		}

		$this->_alertInfoResponce($this->book->update($id, ['status' => APPROVE]), "Appoinment approved", "Appointment not approved", "hospital/appoinment");
	}

	public function visited($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id);
		if (is_null($appointment)) {
			redirect("hospital/appoinment");
		}

		if ($appointment->status == REJECTED || $appointment->status == PENDING || $appointment->status == EXTEND) {
			redirect("hospital/appoinment");
		}

		$this->_alertSuccessResponce($this->book->update($id, ['status' => VISITED]), "Appointment visited", "Appointment not visited", "hospital/appoinment");
	}

	public function cancel($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id);
		if (is_null($appointment)) {
			redirect("hospital/appoinment");
		}

		if ($appointment->status == VISITED) {
			redirect("hospital/appoinment");
		}

		$this->_alertInfoResponce($this->book->update($id, ['status' => REJECTED]), "Appointment reject", "Appointment not rejected", "hospital/appoinment");
	}


	public function reject($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->doctor_id);
		if (is_null($appointment)) {
			redirect("hospital/appoinment");
		}

		if ($appointment->status == VISITED) {
			redirect("hospital/appoinment");
		}

		//{ start } send notification
//		$noti['title'] = "Appointment updated";
//		$noti['body'] = "Appointment <b>" . $appointment->appointment_no . "</b> has been canceled.";
//		$noti['user_id'] = $appointment->doctor_id;
//		$this->notification->create($noti);
//		$noti['user_id'] = $appointment->user_id;
//		$this->notification->create($noti);
		//{ End } send notification

		$this->_alertInfoResponce($this->book->update($id, ['status' => REJECTED]), "Appointment reject", "Appointment not rejected", "hospital/appoinment");
	}

	public function charges_income()
	{
		$fromdate = $this->input->get('fromdate');
		$todate = $this->input->get('todate');
		$doctor = $this->input->get('doctor');
		$this->view_data['doctorcharge'] = $this->book->get_doctor_wise_charges($doctor, $fromdate, $todate);
		$this->view_data['_view'] = 'hospital/income_summary';
		$this->load->view('layouts/master_page_hospital', $this->view_data);
	}

	public function appointment_show_detail($id)
	{

		$appointment = $this->book->get_doctor_appointment_one($id, 0);

		if (is_null($appointment)) {
			redirect("doctor/appointment");
		}

		$this->view_data['appointment'] = $appointment;
		$this->view_data['_title'] = "Show Appointment";
		$this->view_data['_view'] = 'hospital/appointment_show';
		$this->load->view('layouts/master_page_hospital', $this->view_data);
	}


	public function get_all_chat_message()
	{
		header('Content-Type: application/json');
		$appointmentId = $this->input->post('appointid');
		$all_msg = $this->chat->getByAppointment($appointmentId);
		echo json_encode($all_msg);
	}

	public function send_chat_msg()
	{
		header('Content-Type: application/json');
		$data['booking_id'] = $this->input->post('appointId');
		$data['from_id'] = $this->user_data->id;

		$booking = $this->book->get_by_id($data['booking_id']);
		$data['to_id'] = $booking->user_id;

		$data['message'] = $this->input->post('msg');
		$data['status'] = UNREAD;
		if ($this->chat->create($data)) {
			echo json_encode(["status" => true, "msg" => "message send"]);
		} else {
			echo json_encode(["status" => false, "msg" => "message not send. Please try again later"]);
		}
	}

}

/* End of file Appointment.php */
/* Location: ./application/controllers/Appointment.php */
