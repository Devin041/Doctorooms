<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Book extends Patient_contoller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Booking_model', 'book');
		$this->load->model('Doctors_model', 'doctor');
		$this->load->model("Doctor_holiday_schedule_model", "holiday_schedule");
		$this->load->model('Hospital_model', 'hospital');
		$this->load->model("State_model", "state");
		$this->load->model("City_model", "city");
		$this->load->model('Config_model', 'config_model');
		$this->load->model("Doctor_rating_model", "doctor_rating");
		$this->load->model("Notifications_model", "notification");
		$this->load->model("Receptionist_model", "receptionist");

		//$this->output->enable_profiler(true);
	}

	public function doctor($id)
	{
		$doctor = $this->doctor->get_active_user($id);

		if (!$doctor) {
			return redirect("doctors");
		}
		//$availableBooking = $this->next_available_booking_days($doctor->booking_days, $getHolidays);

		$this->view_data['doctor_total_rate_user'] = $this->doctor_rating->get_by_doctor_total_count($id);
		$this->view_data['doctor_average_rating'] = $this->doctor_rating->get_average_rating($id);

		$this->view_data['state'] = $this->state->get_all();
		$this->view_data['hospital'] = $this->hospital->get_one_by_user($doctor->hospital_id);
		$this->view_data['doctor'] = $doctor;

		$getHolidays = $this->holiday_schedule->get_next_holidays($doctor->user_id);
		$finalHoliday = array();
		foreach ($getHolidays as $getHoliday) {
			array_push($finalHoliday, $getHoliday['date']);
		}
		$this->view_data['getHolidays'] = json_encode($finalHoliday);
		$this->view_data['_title'] = "Book Doctor";
		$this->view_data['_view'] = "front/doctor/book";
		$this->load->view('layouts/master_page_front', $this->view_data);
	}

	public function doctor_book($id)
	{
		$doctor = $this->doctor->get_active_user($id);
		if (!$doctor) {
			return redirect("doctors");
		}

		/*   $data = $this->book->check_already_book($id, $this->input->post('booking_date'), $this->user_data->id);
		   if ($data > 0) {
			   $this->_alertInfoResponce(false, "Appointment processed", "Appointment already booked", "appointment");
		   }*/

		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
			if ($this->form_validation->run("booking_by_patient")) {

				$data = $this->input->post();

				$limit=$doctor->daily_limit;

				$date_limit = $this->book->get_booking_count_by_date_by_doctor($id, $data['booking_date']);
				if ($limit != NULL){


				if ($date_limit >= $limit){

					$this->_alertSuccessResponce(1, "Appointment limit of date ".date("d-m-Y", strtotime($data['booking_date']))." is Over !", "Appointment not created", "book/doctor/".$id."");

				}

				}

				$data['doctor_id'] = $id;
				$data['user_id'] = $this->user_data->id;
				$data['status'] = PENDING;
				$data['appointment_charge'] = $this->config_model->get_one()->admin_charge;
				$data['booking_type'] = BY_SELF;
				$data['appointment_no'] = $this->generateBookingNumber();
				$book = $this->book->create($data);
				//{ start } send notification
				$noti['title'] = "New appointment";
				$noti['body'] = "A new appointment <b>" . "<a href='" . base_url('doctor/appointment/show/' . $book) . "' > " . $data['appointment_no'] . "</a > " . "</b > (".$data['petient_name'].") has been booked";
				$noti['user_id'] = $id;
				$this->notification->create($noti);
				$receptionist = $this->receptionist->get_receptionist_by_doctor($id);
				if ($receptionist) {
					$noti['body'] = "A new appointment <b>" . "<a href='" . base_url('receptionist/appointment/show/' . $book) . "' > " . $data['appointment_no'] . "</a > " . "</b > (".$data['petient_name'].") has been booked";
					$noti['user_id'] = $receptionist->user_id;
					$this->notification->create($noti);
				}
				//{ End } send notification

				//Send booking message
				$message = "Dear " . $data['petient_name'] . " your appointment has been booked on " . SITE_TITLE . ". your appointment with " . $doctor->name . " and appointment id is: " . $data['appointment_no'] . ". - www.doctorooms.com";
				$this->sendMobileMessage($this->user_data->mobile_no, $message);
				// end

				$this->_alertInfoResponce($book, "Appointment processed", "Appointment not created", "appointment");
			} else {

				$this->view_data['doctor_total_rate_user'] = $this->doctor_rating->get_by_doctor_total_count($id);
				$this->view_data['doctor_average_rating'] = $this->doctor_rating->get_average_rating($id);

				$this->view_data['state'] = $this->state->get_all();
				$this->view_data['hospital'] = $this->hospital->get_one_by_user($doctor->hospital_id);
				$this->view_data['doctor'] = $doctor;

				$getHolidays = $this->holiday_schedule->get_next_holidays($doctor->user_id);
				$finalHoliday = array();
				foreach ($getHolidays as $getHoliday) {
					array_push($finalHoliday, $getHoliday['date']);
				}
				$this->view_data['getHolidays'] = json_encode($finalHoliday);
				$this->view_data['_title'] = "Book Doctor";
				$this->view_data['_view'] = "front/doctor/book";
				$this->load->view('layouts/master_page_front', $this->view_data);
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

	public function city_by_state()
	{
		header('Content-Type: application/json');
		$state = $this->input->post("state_name");
		$citys = $this->city->get_city_by_state_name($state);
		echo json_encode($citys);
	}

	public function date_booked()
	{
		header('Content-Type: application/json');
		$doctor_id = $this->input->post("doctor");
		$date = $this->input->post("date");
		$bookingCount = $this->book->get_booking_count_by_date_by_doctor($doctor_id, $date);
		echo json_encode(["booked" => $bookingCount]);
	}
}
