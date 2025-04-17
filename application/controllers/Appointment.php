<?php

class Appointment extends Patient_contoller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Booking_model', 'book');
        $this->load->model("Notifications_model", "notification");
        $this->load->model("Receptionist_model", "receptionist");
        $this->load->model("Booking_chat_model", "chat");
        $this->load->model("Prescriptions_model", "prescription");
		$this->load->model('Ajaxprescription_model');
		$this->load->model('P_Co_model');
		$this->load->model('P_Label_model');
		$this->load->model('P_digno_model');
		$this->load->model('P_medicine_model');
		$this->load->model('P_Suggestion_model');
		$this->load->model('P_other_setting_model');
		$this->load->model('Doctors_model');
		$this->load->model('Users_model');
	}

    public function index()
    {
        $from = $this->input->get('from');
        $to = $this->input->get('to');
        $status = $this->input->get('status') ? $this->input->get('status') : PENDING;

        $all_appointment = $this->book->get_patient_appointment($this->user_data->id, $from, $to, $status);

        $this->view_data['appointments'] = $all_appointment;
        $this->view_data['_title'] = "Appointment";
        $this->view_data['_view'] = "front/patient/my-appointment";
        $this->load->view("layouts/master_page_front", $this->view_data);
    }

    public function show($id)
    {
        $appointment = $this->book->get_patient_appointment_one($id, $this->user_data->id);

        if (is_null($appointment)) {
            redirect("appointment");
        }

        $this->view_data['prescription'] = $this->prescription->get_by_booking_id($id, $appointment->doctor_id);
        $this->view_data['isCheckBoxEnable'] = ($this->receptionist->get_receptionist_by_doctor($appointment->doctor_id)) ? true : false;
        $this->view_data['appointment_position'] = $this->book->get_today_appointment_position($appointment->doctor_id);
        $this->view_data['appointment'] = $appointment;
        $this->view_data['_title'] = "Appointment show";
        $this->view_data['_view'] = "front/patient/my-appointment-show";
        $this->load->view("layouts/master_page_front", $this->view_data);
    }

    public function cancel($id)
    {
        $appointment = $this->book->get_patient_appointment_one($id, $this->user_data->id);
        if (is_null($appointment)) {
            redirect("appointment");
        }

        if ($appointment->status != PENDING) {
            redirect("appointment");
        }

        //{ start } send notification
        $noti['title'] = "Appointment updated";
        $noti['body'] = "Appointment <b>" . "<a href='" . base_url('doctor/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (".$appointment->petient_name.") has been canceled by patient";
        $noti['user_id'] = $appointment->doctor_id;
        $this->notification->create($noti);

        $receptionist = $this->receptionist->get_receptionist_by_doctor($appointment->doctor_id);
        if ($receptionist) {
            $noti['body'] = "Appointment <b>" . "<a href='" . base_url('receptionist/appointment/show/' . $appointment->id) . "' > " . $appointment->appointment_no . "</a > " . "</b > (".$appointment->petient_name.") has been canceled by patient";
            $noti['user_id'] = $receptionist->user_id;
            $this->notification->create($noti);
        }
        //{ End } send notification

        $this->_alertInfoResponce($this->book->update($id, ['status' => REJECTED]), "Appointment cancel", "Appointment not cancel", "appointment");
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
        $receptionist = $this->receptionist->get_receptionist_by_doctor($booking->doctor_id);
        if ($receptionist) {
            $data['to_id'] = $receptionist->user_id;
            $data['message'] = $this->input->post('msg');
            $data['status'] = UNREAD;
            if ($this->chat->create($data)) {
                echo json_encode(["status" => true, "msg" => "message send"]);
            } else {
                echo json_encode(["status" => false, "msg" => "message not send . Please try again later"]);
            }
        } else {
            echo json_encode(["status" => false, "msg" => "message not send . Please try again later"]);
        }

    }


	public function print_prescription($appointment_id)
	{
		$appointment = $this->book->get_patient_appointment_one($appointment_id, $this->user_data->id);
		//print_r($appointment);die();
		$booking_id = $appointment_id;
		$user_id = $this->user_data->id;
		$doctor_id = $appointment->doctor_id;

		$check_data = $this->Ajaxprescription_model->check_doctor_booking($doctor_id, $booking_id, $user_id);
		if (!empty($check_data)) {
			$check_prescription = $this->Ajaxprescription_model->check_user_prescription($doctor_id, $booking_id, $user_id);
			$prescription_id = $check_prescription->id;

			$check_table = $this->P_digno_model->check_dgno_table($prescription_id);
			$this->view_data['doctor']=$this->Doctors_model->get_profile($doctor_id);
			$this->view_data['patient']=$this->book->get_by_id($booking_id);
			$this->view_data['patient_user']=$this->Users_model->get_by_id($user_id);
			$this->view_data['p_table'] = $check_table;
			$this->view_data['prescription'] = $check_prescription;
			$this->view_data['p_cos'] = $this->P_Co_model->get_prescription_co_group_by($prescription_id);
			$this->view_data['p_labels'] = $this->P_Label_model->get_prescription_label($prescription_id);
			$this->view_data['p_medicines'] = $this->P_medicine_model->get_prescription_medicine($prescription_id);
			$this->view_data['p_questions'] = $this->P_Suggestion_model->get_prescription_suggestion_by_question($prescription_id);

			$this->view_data['check_table'] = $this->P_digno_model->check_dgno_table($prescription_id);
			foreach ($this->view_data['p_questions'] as $key => $row) {
				$this->view_data['p_questions'][$key]['suggestions'] = $this->P_Suggestion_model->get_question_suggestion($row['question'],$prescription_id);

			}
			$this->view_data['settings']=$this->P_other_setting_model->get_all_p_other_settings($this->user_data->id);

			$this->load->view('doctor/AjaxPrescription/print_prescription',$this->view_data);

		}
	}
}
