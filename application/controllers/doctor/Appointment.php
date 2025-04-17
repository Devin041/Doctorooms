<?php

class Appointment extends Doctor_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Booking_model', 'book');
        $this->load->model("Notifications_model", "notification");
        $this->load->model("Prescriptions_model", "prescription");
        $this->load->model("Receptionist_model", "receptionist");
        $this->load->model('Doctor_medicine_list_model', 'medicine');
		$this->load->model('P_medicine_model', 'p_medicine');
    }

    public function index()
    {
        $status = ($this->input->get('status')) ? $this->input->get('status') : PENDING;
        $this->view_data['appointments'] = $this->book->get_doctor_appointment($this->user_data->id, $status, 'asc');
        $this->view_data['_title'] = "Appointments";
        $this->view_data['_view'] = "doctor/appointment/index";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

	public function get_appointment_table()
	{
		$status = ($this->input->get('status')) ? $this->input->get('status') : APPROVE;
		$this->view_data['appointments'] = $this->book->get_doctor_appointment($this->user_data->id, $status, 'DESC');
		$this->load->view("doctor/appointment/get_appointment_table", $this->view_data);

	}

    public function show($id)
    {
        $appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->id);

        if (is_null($appointment)) {
            redirect("doctor/appointment");
        }

        $this->view_data['appointment'] = $appointment;
        $this->view_data['prescription'] = $this->prescription->get_by_booking_id($id, $this->user_data->id);
        $this->view_data['_title'] = "Show appointment";
        $this->view_data['_view'] = "doctor/appointment/show";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function get_branch()
    {
        $q = $this->input->get('q');
        $medicine_list = $this->medicine->get_by_doctor_id($this->user_data->id, $q);

        return $this->output
            ->set_content_type('application/json')
            ->set_status_header(200)
            ->set_output(json_encode($medicine_list));
    }

	public function get_medi_list()
	{
		$medicine_list = $this->medicine->get_all_list_by_doctor_id($this->user_data->id);

		return $this->output
			->set_content_type('application/json')
			->set_status_header(200)
			->set_output(json_encode($medicine_list));
    }

    public function extend($id)
    {
        $appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->id);
        if (is_null($appointment)) {
            redirect("doctor/appointment");
        }

        if ($appointment->status == APPROVE || $appointment->status == VISITED || $appointment->status == REJECTED) {
            redirect("doctor/appointment");
        }

        //{ start } send notification
        $noti['title'] = "Appointment updated";
        $noti['body'] = "Appointment <b>" . "<a href='" . base_url('appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a> " . "</b> (" . $appointment->petient_name . ") has been extended.";
        $noti['user_id'] = $appointment->user_id;
        $this->notification->create($noti);

        $receptionist = $this->receptionist->get_receptionist_by_doctor($id);
        if ($receptionist) {
            $noti['body'] = "Appointment <b>" . "<a href='" . base_url('receptionist/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a> " . "</b> (" . $appointment->petient_name . ") has been extended.";
            $noti['user_id'] = $receptionist->user_id;
            $this->notification->create($noti);
        }
        //{ End } send notification

        $this->_alertInfoResponce($this->book->update($id, ['status' => EXTEND]), "Appointment extended", "Appointment not extended", "doctor/appointment?status=" . EXTEND);
    }

    public function approve($id)
    {
        $appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->id);
        if (is_null($appointment)) {
            redirect("doctor/appointment");
        }

        if ($appointment->status == VISITED || $appointment->status == REJECTED) {
            redirect("doctor/appointment");
        }

        //{ start } send notification
        $noti['title'] = "Appointment updated";
        $noti['body'] = "Appointment <b>" . $appointment->appointment_no . "</b> has been approved.";
        $noti['body'] = "Appointment <b>" . "<a href='" . base_url('appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been approved.";
        $noti['user_id'] = $appointment->user_id;
        $this->notification->create($noti);

        $receptionist = $this->receptionist->get_receptionist_by_doctor($this->user_data->id);
        if ($receptionist) {
            $noti['body'] = "Appointment <b>" . "<a href='" . base_url('receptionist/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been approved.";
            $noti['user_id'] = $receptionist->user_id;
            $this->notification->create($noti);
        }
        //{ End } send notification

        $this->_alertInfoResponce($this->book->update($id, ['status' => APPROVE]), "Appointment approved", "Appointment not approved", "doctor/appointment?status=" . APPROVE);
    }

    public function visited($id)
    {
        $appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->id);
        if (is_null($appointment)) {
            redirect("doctor/appointment");
        }

        if ($appointment->status == REJECTED || $appointment->status == PENDING || $appointment->status == EXTEND) {
            redirect("doctor/appointment");
        }

        //{ start } send notification
        $noti['title'] = "Appointment updated";
        $noti['body'] = "Appointment <b>" . "<a href='" . base_url('appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been visited.";
        $noti['user_id'] = $appointment->user_id;
        $this->notification->create($noti);

        $receptionist = $this->receptionist->get_receptionist_by_doctor($this->user_data->id);
        if ($receptionist) {
            $noti['body'] = "Appointment <b>" . "<a href='" . base_url('receptionist/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been visited.";
            $noti['user_id'] = $receptionist->user_id;
            $this->notification->create($noti);
        }
        //{ End } send notification

        $this->_alertInfoResponce($this->book->update($id, ['status' => VISITED]), "Appointment visited", "Appointment not visited", "doctor/appointment?status=" . VISITED);
    }

    public function cancel($id)
    {
        $appointment = $this->book->get_doctor_appointment_one($id, $this->user_data->id);
        if (is_null($appointment)) {
            redirect("doctor/appointment");
        }

        if ($appointment->status == VISITED) {
            redirect("doctor/appointment");
        }

        //{ start } send notification
        $noti['title'] = "Appointment updated";
        $noti['body'] = "Appointment <b>" . "<a href='" . base_url('appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been canceled.";
        $noti['user_id'] = $appointment->user_id;
        $this->notification->create($noti);

        $receptionist = $this->receptionist->get_receptionist_by_doctor($this->user_data->id);
        if ($receptionist) {
            $noti['body'] = "Appointment <b>" . "<a href='" . base_url('receptionist/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (" . $appointment->petient_name . ") has been canceled.";
            $noti['user_id'] = $receptionist->user_id;
            $this->notification->create($noti);
        }
        //{ End } send notification

        $this->_alertInfoResponce($this->book->update($id, ['status' => REJECTED]), "Appointment reject", "Appointment not rejected", "doctor/appointment?status=" . REJECTED);
    }

    public function create_prescription($booking_id)
    {
        $appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->id);
        $prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->id);

        if (!is_null($prescription)) {
            redirect("doctor/appointment");
        }

        $this->view_data['appointment'] = $appointment;
        $this->view_data['_title'] = "Create Prescription";
        $this->view_data['_view'] = "doctor/appointment/create_prescription";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function store_prescription($booking_id)
    {
        $appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->id);
        $prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->id);

        if (!is_null($prescription)) {
            redirect("doctor/appointment");
        }

        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            $this->form_validation->set_rules('disease_description', 'Disease Description', 'required');
            if ($this->form_validation->run()) {
                $data = $this->input->post();
                $data['user_id'] = $this->user_data->id;
                $data['booking_id'] = $booking_id;
                $data['created_by'] = $this->user_data->id;
                unset($data['_wysihtml5_mode']);
                $this->_alertSuccessResponce($this->prescription->create($data), "Prescription Created", "Prescription not created", "doctor/appointment/show/" . $appointment->id);
            } else {
                $this->view_data['appointment'] = $appointment;
                $this->view_data['_title'] = "Create Prescription";
                $this->view_data['_view'] = "doctor/appointment/create_prescription";
                $this->load->view("layouts/master_page_doctors", $this->view_data);
            }
        }
    }

    public function edit_prescription($booking_id)
    {
        $appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->id);
        $prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->id);

        if (is_null($prescription)) {
            redirect("doctor/appointment");
        }

        $this->view_data['appointment'] = $appointment;
        $this->view_data['prescription'] = $prescription;
        $this->view_data['_title'] = "Create Prescription";
        $this->view_data['_view'] = "doctor/appointment/edit_prescription";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function update_prescription($booking_id)
    {
        $appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->id);
        $prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->id);

        if (is_null($prescription)) {
            redirect("doctor/appointment");
        }

        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            $this->form_validation->set_rules('disease_description', 'Disease Description', 'required');
            if ($this->form_validation->run()) {
                $data = $this->input->post();
                $data['user_id'] = $this->user_data->id;
                $data['booking_id'] = $booking_id;
                $data['created_by'] = $this->user_data->id;
                unset($data['_wysihtml5_mode']);
                $this->_alertSuccessResponce($this->prescription->update($prescription->id, $data), "Prescription updated", "Prescription not updated", "doctor/appointment/show/" . $appointment->id);
                $this->_alertSuccessResponce($this->prescription->update($prescription->id, $data), "Prescription updated", "Prescription not updated", "doctor/appointment/show/" . $appointment->id);
            } else {
                $this->view_data['appointment'] = $appointment;
                $this->view_data['_title'] = "Create Prescription";
                $this->view_data['_view'] = "doctor/appointment/create_prescription";
                $this->load->view("layouts/master_page_doctors", $this->view_data);
            }
        }
    }

    public function create_medicine($booking_id)
    {
        $appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->id);
        $prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->id);

        if (is_null($prescription)) {
            redirect("doctor/appointment");
        }

        $this->view_data['appointment'] = $appointment;
        $this->view_data['prescription'] = $prescription;
        $this->view_data['_title'] = "Create Medicine";
        $this->view_data['_view'] = "doctor/appointment/create_medicine";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function store_medicine($booking_id)
    {
        $appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->id);
        $prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->id);

        if (is_null($prescription)) {
            redirect("doctor/appointment");
        }

        $data['medicine_details'] = json_encode($this->input->post('details'));
        $data['remark'] = $this->input->post('remark');

        $this->_alertSuccessResponce($this->prescription->update($prescription->id, $data), "Medicine Added", "Medicine Not Added", "doctor/appointment/show/" . $appointment->id);
    }

    public function edit_medicine($booking_id)
    {
        $appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->id);
        $prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->id);

        if (is_null($prescription)) {
            redirect("doctor/appointment");
        }

        if (is_null($prescription->medicine_details)) {
            redirect("doctor/appointment");
        }

        $this->view_data['appointment'] = $appointment;
        $this->view_data['medicine_details'] = json_decode($prescription->medicine_details);
        $this->view_data['prescription'] = $prescription;
        $this->view_data['_title'] = "Edit Medicine";
        $this->view_data['_view'] = "doctor/appointment/edit_medicine";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function update_medicine($booking_id)
    {
        $appointment = $this->book->get_doctor_appointment_one($booking_id, $this->user_data->id);
        $prescription = $this->prescription->get_by_booking_id($booking_id, $this->user_data->id);

        if (is_null($prescription)) {
            redirect("doctor/appointment");
        }

        if (is_null($prescription->medicine_details)) {
            redirect("doctor/appointment");
        }

        $data['medicine_details'] = ($this->input->post('details')) ? json_encode($this->input->post('details')) : [];
        $data['remark'] = $this->input->post('remark');

        $this->_alertSuccessResponce($this->prescription->update($prescription->id, $data), "Medicine updated", "Medicine Not updated", "doctor/appointment/show/" . $appointment->id);
    }

    /* public function sendMsg()
     {
         $data = $this->input->post();
         if ($data) {

         } else {

         }
     }

     public function recieveMsg()
     {

     }*/

    public function history($offset = 0)
    {
//        $this->load->library('pagination');
//
//        $config['base_url'] = base_url('doctor/appointment/history');
//        $config['total_rows'] = $this->book->count_visited_by_doctor($this->user_data->id);
//        $config['per_page'] = 1;
//        $config['num_links']=1;
//        $config['enable_query_strings']=TRUE;
//        //$config['page_query_string']=TRUE;
//        $config[‘reuse_query_string’] = FALSE;
//        $config['attributes'] = array('class' => 'page-link');
//
//        $config['first_tag_open'] = "<li>";
//        $config['first_tag_close'] = "</li>";
//
//        $config['last_tag_open'] = "<li>";
//        $config['last_tag_close'] = "</li>";
//
//        $config['num_tag_open'] = "<li class='page-item'>";
//        $config['num_tag_close'] = "</li>";
//
//        $config['cur_tag_open'] = "<li class='page-item active'><a class='page-link'>";
//        $config['cur_tag_close'] = "</a></li>";
//
//        $config['next_tag_open'] = "<li>";
//        $config['next_tag_close'] = "</li>";
//        $config['next_link'] = "Next";
//
//        $config['prev_tag_open'] = "<li>";
//        $config['prev_tag_close'] = "<li>";
//        $config['prev_link'] = "Prev";
//
//        $this->pagination->initialize($config);
//
//        $this->view_data['links']= $this->pagination->create_links();
        if ($this->input->get('aptid')) {
            $aptid = $this->input->get('aptid');
        }
        $mobile = $this->input->get('mobile');
        $this->view_data['appointments'] = $this->book->get_doctor_appointment_all_by_doctor_visited($this->user_data->id, $mobile, $aptid);
      	$this->view_data['book']=$this->book;
		$this->view_data['p_medicine']=$this->p_medicine;
        $this->view_data['_title'] = "Show appointment history";
        $this->view_data['_view'] = "doctor/appointment/history";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }
}
