<?php

class Appointment extends Reception_contoller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Booking_model', 'book');
		$this->load->model("Notifications_model", "notification");
		$this->load->model("Receptionist_model", "receptionist");
		$this->load->model("Doctor_assistants_model", "assistants");
		$this->load->model("Doctors_model", "doctor");
		$this->load->model("Doctor_holiday_schedule_model", "holiday_schedule");
		$this->load->model("Users_model", "user");
		$this->load->model('Config_model', 'config_model');
		$this->load->model("Booking_chat_model", "chat");
		$this->user_data->doctor_id = $this->receptionist->get_by_user_id($this->user_data->id)->doctor_id;
	}

	public function index()
	{
		$status = ($this->input->get('status')) ? $this->input->get('status') : PENDING;
		$this->view_data['appointments'] = $this->book->get_doctor_appointment($this->user_data->doctor_id, $status);
		$this->view_data['_title'] = "Appointment";

		$this->view_data['_view'] = "receptionist/appointment/index";
		$this->load->view("layouts/master_page_receptionist", $this->view_data);
	}


	public function create()
	{

		$doctor = $this->doctor->get_one_by_user($this->user_data->doctor_id);
		$getHolidays = $this->holiday_schedule->get_next_holidays($doctor->user_id);
		$finalHoliday = array();
		foreach ($getHolidays as $getHoliday) {
			array_push($finalHoliday, $getHoliday['date']);
		}
		$this->view_data['getHolidays'] = json_encode($finalHoliday);

		$this->view_data['doctor'] = $doctor;
		// $this->view_data['available_booking'] = $availableBooking;
		$this->view_data['_title'] = "New Appointment";
		$this->view_data['_view'] = "receptionist/appointment/book";
		$this->load->view('layouts/master_page_receptionist', $this->view_data);

	}

	public function book()
	{


		$doctor = $this->doctor->get_one_by_user($this->user_data->doctor_id);
		$doctor_user = $this->doctor->get_active_user($this->user_data->doctor_id);


		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
			if ($this->form_validation->run("booking_by_receptionist")) {
				$data = $this->input->post();

				$limit=$this->doctor_data->daily_limit;
				$date_limit = $this->book->get_booking_count_by_date_by_doctor($this->user_data->doctor_id, $data['booking_date']);
//				if ($limit != NULL) {
//					if ($date_limit >= $limit) {
//						$this->_alertWarningResponce(1, "Appointment limit of date " .date("d-m-Y", strtotime($data['booking_date'])). " is Over", "Appointment not created", "receptionist/appointment");
//
//					}
//				}

				if ($data['mobile']) {
					$user = $this->user->get_by_mobile($data['mobile']);
				} else {
					$user = null;
				}


				/**
				 * check booking already booked
				 */
//                $data = $this->book->check_already_book($this->user_data->doctor_id, $data['booking_date'], $user->id);
//                if ($data > 0) {
//                    $this->_alertInfoResponce(false, "Appointment processed", "Appointment already booked", "receptionist/appointment");
//                }

				$data['doctor_id'] = $doctor->user_id;
				$data['user_id'] = ($user) ? $user->id : null;
				$data['status'] = APPROVE;
				$data['appointment_charge'] = $this->config_model->get_one()->admin_charge;
				$data['booking_type'] = BY_RECEPTIONIST;
				$data['appointment_no'] = $this->generateBookingNumber();
				$mobile = $data['mobile'];
				unset($data['mobile']);
				$book = $this->book->create($data);

				//{ start } send notification
				$noti['title'] = "New appointment";
				$noti['body'] = "A new appointment <b>" . "<a href='" . base_url('docotor/appointment/show/' . $book) . "' > " . $data['appointment_no'] . "</a > " . "</b > (" . $data['petient_name'] . ") has been booked";
				$noti['user_id'] = $this->user_data->doctor_id;
				$this->notification->create($noti);
				if ($data['user_id']) {
					$noti['body'] = "A new appointment <b>" . "<a href='" . base_url('appointment/show/' . $book) . "' > " . $data['appointment_no'] . "</a > " . "</b > (" . $data['petient_name'] . ") has been booked";
					$noti['user_id'] = $user->id;
					$this->notification->create($noti);
				}
				//{ End } send notification

				//Send booking message
				$message = "Dear " . $data['petient_name'] . " your appointment has been booked on " . SITE_TITLE . ". your appointment with " . $doctor_user->name . " and appointment id is: " . $data['appointment_no'] . ". - www.doctorooms.com";
				$this->sendMobileMessage($mobile, $message);
				// end

				$this->_alertInfoResponce($book, "Appointment processed", "Appointment not created", "receptionist/appointment");


			} else {
				$getHolidays = $this->holiday_schedule->get_next_holidays($doctor->user_id);
				$finalHoliday = array();
				foreach ($getHolidays as $getHoliday) {
					array_push($finalHoliday, $getHoliday['date']);
				}
				$this->view_data['getHolidays'] = json_encode($finalHoliday);

				$this->view_data['doctor'] = $doctor;
				// $this->view_data['available_booking'] = $availableBooking;
				$this->view_data['_title'] = "New Appointment";
				$this->view_data['_view'] = "receptionist/appointment/book";
				$this->load->view('layouts/master_page_receptionist', $this->view_data);
			}
		}

	}

	public function get_appointment_table()
	{
		$status = ($this->input->get('status')) ? $this->input->get('status') : PENDING;
		$this->view_data['appointments'] = $this->book->get_doctor_appointment($this->user_data->doctor_id, $status,DESC);
		$this->view_data['_title'] = "Appointment";

		$this->load->view("receptionist/appointment/get_appointment_table", $this->view_data);

	}

	public function check_emergency()
	{


		$this->load->view("receptionist/appointment/check_emergency", $this->view_data);
	}

	public function show($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->doctor_id);

		if (is_null($appointment)) {
			redirect("doctor/appointment");
		}

		$this->view_data['appointment'] = $appointment;
		$this->view_data['_title'] = "Show Appointment";
		$this->view_data['_view'] = "receptionist/appointment/show";
		$this->load->view("layouts/master_page_receptionist", $this->view_data);
	}

	public function extend($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->doctor_id);
		if (is_null($appointment)) {
			redirect("receptionist/appointment");
		}

		if ($appointment->status == APPROVE || $appointment->status == VISITED || $appointment->status == REJECTED) {
			redirect("receptionist/appointment");
		}

		//{ start } send notification
		$noti['title'] = "Appointment updated";
		$noti['body'] = "Appointment <b>" . "<a href='" . base_url('doctor/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been extended.";
		$noti['user_id'] = $appointment->doctor_id;
		$this->notification->create($noti);
		$noti['body'] = "Appointment <b>" . "<a href='" . base_url('appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been extended.";
		$noti['user_id'] = $appointment->user_id;
		$this->notification->create($noti);
		//{ End } send notification

		$this->_alertInfoResponce($this->book->update($id, ['status' => EXTEND]), "Appointment extended", "Appointment not extended", "receptionist/appointment?status=" . EXTEND);
	}

	public function approve($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->doctor_id);
		$doctor = $this->user->get_by_id($this->user_data->doctor_id);
		$patient = $this->user->get_by_id($appointment->user_id);

		if (is_null($appointment)) {
			redirect("receptionist/appointment");
		}

		if ($appointment->status == VISITED || $appointment->status == REJECTED) {
			redirect("receptionist/appointment");
		}

		//{ start } send notification
		$noti['title'] = "Appointment updated";
		$noti['body'] = "Appointment <b>" . "<a href='" . base_url('doctor/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been approved.";
		$noti['user_id'] = $appointment->doctor_id;
		$this->notification->create($noti);

		$noti['body'] = "Appointment <b>" . "<a href='" . base_url('appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been approved.";
		$noti['user_id'] = $appointment->user_id;
		$this->notification->create($noti);

		$assistant = $this->assistants->get_assistant_by_doctor($this->user_data->doctor_id);
		if ($assistant) {
			$noti['body'] = "Appointment <b>" . "<a href='" . base_url('assistant/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been approved.";
			$noti['user_id'] = $assistant->user_id;
			$this->notification->create($noti);
		}
		//{ End } send notification
		$message = "Dear " . $appointment->petient_name . " your appointment has been " . APPROVE . " on " . SITE_TITLE . ". your appointment with Dr. " . $doctor->name . " and appointment id is: " . $appointment->appointment_no . ". - www.doctorooms.com";
		$this->sendMobileMessage($patient->mobile_no, $message);
		$this->_alertInfoResponce($this->book->update($id, ['status' => APPROVE]), "Appointment approved", "Appointment not approved", "receptionist/appointment?status=" . APPROVE);
	}

	public function visited($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->doctor_id);
		$doctor = $this->user->get_by_id($this->user_data->doctor_id);
		$patient = $this->user->get_by_id($appointment->user_id);


		if (is_null($appointment)) {
			redirect("receptionist/appointment");
		}

		if ($appointment->status == REJECTED || $appointment->status == PENDING || $appointment->status == EXTEND) {
			redirect("receptionist/appointment");
		}

		//{ start } send notification
		$noti['title'] = "Appointment updated";
		$noti['body'] = "Appointment <b>" . "<a href='" . base_url('doctor/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been visited.";
		$noti['user_id'] = $appointment->doctor_id;
		$this->notification->create($noti);

		$noti['body'] = "Appointment <b>" . "<a href='" . base_url('appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been visited.";
		$noti['user_id'] = $appointment->user_id;
		$this->notification->create($noti);
		//{ End } send notification
		$message = "Dear " . $appointment->petient_name . " your appointment has been " . VISITED . " on " . SITE_TITLE . ". your appointment with Dr. " . $doctor->name . " and appointment id is: " . $appointment->appointment_no . ". - www.doctorooms.com";
		$this->sendMobileMessage($patient->mobile_no, $message);
		$this->_alertInfoResponce($this->book->update($id, ['status' => VISITED]), "Appointment visited", "Appointment not visited", "receptionist/appointment?status=" . VISITED);
	}

	public function reject($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->doctor_id);
		if (is_null($appointment)) {
			redirect("receptionist/appointment");
		}

		if ($appointment->status == VISITED) {
			redirect("receptionist/appointment");
		}

		//{ start } send notification
		$noti['title'] = "Appointment updated";
		$noti['body'] = "Appointment <b>" . "<a href='" . base_url('doctor/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been canceled.";
		$noti['user_id'] = $appointment->doctor_id;
		$this->notification->create($noti);

		$noti['body'] = "Appointment <b>" . "<a href='" . base_url('appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been canceled.";
		$noti['user_id'] = $appointment->user_id;
		$this->notification->create($noti);
		//{ End } send notification

		$this->_alertInfoResponce($this->book->update($id, ['status' => REJECTED]), "Appointment reject", "Appointment not rejected", "receptionist/appointment?status=" . REJECTED);
	}

	public function email_exist_check($email)
	{
		if ($this->user->email_exits($email) == false) {
			$this->form_validation->set_message('email_exist_check', 'The {field} can not be registered.');
			return FALSE;
		} else {
			return TRUE;
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

	public function date_booked()
	{
		header('Content-Type: application/json');
		$doctor_id = $this->input->post("doctor");
		$date = $this->input->post("date");
		$bookingCount = $this->book->get_booking_count_by_date_by_doctor($doctor_id, $date);
		echo json_encode(["booked" => $bookingCount]);
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
