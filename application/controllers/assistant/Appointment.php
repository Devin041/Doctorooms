<?php

class Appointment extends Assistant_controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Booking_model', 'book');
		$this->load->model("Doctor_assistants_model", "assistants");
		$this->load->model("Prescriptions_model", "prescription");
		$this->load->model("Notifications_model", "notification");
		$this->load->model('Doctor_medicine_list_model', 'medicine');
		$this->user_data->doctor_id = $this->assistants->get_by_user_id($this->user_data->id)->doctor_id;
	}

	public function index()
	{
		$status = ($this->input->get('status')) ? $this->input->get('status') : APPROVE;
		$this->view_data['appointments'] = $this->book->get_doctor_appointment($this->user_data->doctor_id, $status, 'DESC');
		$this->view_data['_title'] = "Appointment";
		$this->view_data['_view'] = "assistant/appointment/index";
		$this->load->view("layouts/master_page_assistant", $this->view_data);
	}


	public function show($id)
	{
		$appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->doctor_id);

		if (is_null($appointment)) {
			redirect("assistant/appointment");
		}

		$this->view_data['appointment'] = $appointment;
		$this->view_data['prescription'] = $this->prescription->get_by_booking_id($id, $this->user_data->doctor_id);
		$this->view_data['_title'] = "Show Appointment";
		$this->view_data['_view'] = "assistant/appointment/show";
		$this->load->view("layouts/master_page_assistant", $this->view_data);
	}

	public function create_prescription($booking_id)
	{
		$appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->doctor_id);
		$prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->doctor_id);

		if (!is_null($prescription)) {
			redirect("assistant/appointment");
		}

		$this->view_data['appointment'] = $appointment;
		$this->view_data['_title'] = "Create Prescription";
		$this->view_data['_view'] = "assistant/appointment/create_prescription";
		$this->load->view("layouts/master_page_assistant", $this->view_data);
	}

	public function store_prescription($booking_id)
	{
		$appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->doctor_id);
		$prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->doctor_id);

		if (!is_null($prescription)) {
			redirect("assistant/appointment");
		}

		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
			$this->form_validation->set_rules('disease_description', 'Disease Description', 'required');
			if ($this->form_validation->run()) {
				$data = $this->input->post();
				$data['user_id'] = $this->user_data->doctor_id;
				$data['booking_id'] = $booking_id;
				$data['created_by'] = $this->user_data->id;
				unset($data['_wysihtml5_mode']);

				//{ start } send notification
				$noti['title'] = "Prescription Created ";
				$noti['body'] = "A appointment <b>" . "<a href='" . base_url('doctor/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") prescription has been created.";
				$noti['user_id'] = $this->user_data->doctor_id;
				$this->notification->create($noti);
				//{ End } send notification


				$this->_alertSuccessResponce($this->prescription->create($data), "Prescription Created", "Prescription not created", "assistant/appointment/show/" . $appointment->id);
			} else {
				$this->view_data['appointment'] = $appointment;
				$this->view_data['_title'] = "Create Prescription";
				$this->view_data['_view'] = "assistant/appointment/create_prescription";
				$this->load->view("layouts/master_page_assistant", $this->view_data);
			}
		}
	}

	public function get_branch()
	{
		$q = $this->input->get('q');
		$medicine_list = $this->medicine->get_by_doctor_id($this->user_data->doctor_id, $q);

		return $this->output
			->set_content_type('application/json')
			->set_status_header(200)
			->set_output(json_encode($medicine_list));
	}

	public function edit_prescription($booking_id)
	{
		$appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->doctor_id);
		$prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->doctor_id);

		if (is_null($prescription)) {
			redirect("assistant/appointment");
		}

		$this->view_data['appointment'] = $appointment;
		$this->view_data['prescription'] = $prescription;
		$this->view_data['_title'] = "Create Prescription";
		$this->view_data['_view'] = "assistant/appointment/edit_prescription";
		$this->load->view("layouts/master_page_assistant", $this->view_data);
	}

	public function update_prescription($booking_id)
	{
		$appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->doctor_id);
		$prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->doctor_id);

		if (is_null($prescription)) {
			redirect("assistant/appointment");
		}

		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
			$this->form_validation->set_rules('disease_description', 'Disease Description', 'required');
			if ($this->form_validation->run()) {
				$data = $this->input->post();
				$data['user_id'] = $this->user_data->doctor_id;
				$data['booking_id'] = $booking_id;
				$data['created_by'] = $this->user_data->id;
				unset($data['_wysihtml5_mode']);
				$this->_alertSuccessResponce($this->prescription->update($prescription->id, $data), "Prescription updated", "Prescription not updated", "assistant/appointment/show/" . $appointment->id);
			} else {
				$this->view_data['appointment'] = $appointment;
				$this->view_data['_title'] = "Create Prescription";
				$this->view_data['_view'] = "assistant/appointment/create_prescription";
				$this->load->view("layouts/master_page_assistant", $this->view_data);
			}
		}
	}

	public function create_medicine($booking_id)
	{
		$appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->doctor_id);
		$prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->doctor_id);

		if (is_null($prescription)) {
			redirect("assistant/appointment");
		}

		$this->view_data['appointment'] = $appointment;
		$this->view_data['prescription'] = $prescription;
		$this->view_data['_title'] = "Create Medicine";
		$this->view_data['_view'] = "assistant/appointment/create_medicine";
		$this->load->view("layouts/master_page_assistant", $this->view_data);
	}

	public function store_medicine($booking_id)
	{
		$appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->doctor_id);
		$prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->doctor_id);

		if (is_null($prescription)) {
			redirect("assistant/appointment");
		}

		$data['medicine_details'] = json_encode($this->input->post('details'));
		$data['remark'] = $this->input->post('remark');

		$this->_alertSuccessResponce($this->prescription->update($prescription->id, $data), "Medicine Added", "Medicine Not Added", "assistant/appointment/show/" . $appointment->id);
	}

	public function edit_medicine($booking_id)
	{
		$appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->doctor_id);
		$prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->doctor_id);

		if (is_null($prescription)) {
			redirect("assistant/appointment");
		}

		if (is_null($prescription->medicine_details)) {
			redirect("assistant/appointment");
		}

		$this->view_data['appointment'] = $appointment;
		$this->view_data['medicine_details'] = json_decode($prescription->medicine_details);
		$this->view_data['prescription'] = $prescription;
		$this->view_data['_title'] = "Edit Medicine";
		$this->view_data['_view'] = "assistant/appointment/edit_medicine";
		$this->load->view("layouts/master_page_assistant", $this->view_data);
	}

	public function update_medicine($booking_id)
	{
		$appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->doctor_id);
		$prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->doctor_id);

		if (is_null($prescription)) {
			redirect("assistant/appointment");
		}

		if (is_null($prescription->medicine_details)) {
			redirect("assistant/appointment");
		}

		$data['medicine_details'] = ($this->input->post('details')) ? json_encode($this->input->post('details')) : [];
		$data['remark'] = $this->input->post('remark');

		$this->_alertSuccessResponce($this->prescription->update($prescription->id, $data), "Medicine updated", "Medicine Not updated", "assistant/appointment/show/" . $appointment->id);
	}


	public function get_appointment_table()
	{
		$status = ($this->input->get('status')) ? $this->input->get('status') : APPROVE;
		$this->view_data['appointments'] = $this->book->get_doctor_appointment($this->user_data->doctor_id, $status,'DESC');
		$this->view_data['_title'] = "Appointment";

		$this->load->view("assistant/appointment/get_appointment_table", $this->view_data);

	}

}
