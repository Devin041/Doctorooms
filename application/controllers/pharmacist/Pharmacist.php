<?php

class Pharmacist extends Pharmacist_contoller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Users_model', 'user');
		$this->load->model('Doctor_pharmacist_model', 'pharmacist');
		$this->load->model('Booking_model', 'book');
		$this->load->model("Doctor_rating_model", "doctor_rating");
		$this->load->model("Doctors_model", "doctor");
		$this->load->model('Hospital_model', 'hospital');
		$this->load->model('Prescriptions_model', 'prescription');
		$this->load->model('Ajaxprescription_model');
		$this->load->model('Co_model');
		$this->load->model('P_Co_model');
		$this->load->model('Booking_model');
		$this->load->model('Questions_model');
		$this->load->model('Label_model');
		$this->load->model('P_Label_model');
		$this->load->model('Table_master_model');
		$this->load->model('P_digno_model');
		$this->load->model('P_medicine_model');
		$this->load->model('P_Suggestion_model');
		$this->load->model('Doctor_medicine_list_model', 'medicine');
		$this->load->model('P_other_setting_model');
		$this->user_data->doctor_id = $this->pharmacist->get_by_user_id($this->user_data->id)->doctor_id;
		$this->view_data['a'] = $this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$this->view_data['_view'] = 'pharmacist/dashboard';
		$this->load->view('layouts/master_page_pharmacist', $this->view_data);
	}

	public function dashboard()
	{
		$doctor = $this->doctor->get_active_user($this->user_data->doctor_id);
		$this->view_data['hospital'] = $this->hospital->get_one_by_user($doctor->hospital_id);
		$this->view_data['doctor'] = $this->doctor->get_active_user($this->user_data->doctor_id);
		$this->view_data['today_approved_appointment'] = count($this->book->get_today_doctor_appointment($this->user_data->doctor_id, APPROVE));
		$this->view_data['today_visited_appointment'] = count($this->book->get_today_doctor_appointment($this->user_data->doctor_id, VISITED));
		$this->view_data['appointments'] = $this->book->get_doctor_appointments_latest($this->user_data->doctor_id, APPROVE);
		$this->view_data['today_appointments'] = $this->book->get_doctor_appointments_today($this->user_data->id);
		$this->view_data['_title'] = "Dashboard";
		$this->view_data['_view'] = "pharmacist/dashboard";
		$this->load->view("layouts/master_page_pharmacist", $this->view_data);
	}

	public function listPrescriptions()
	{
		$this->user->doctor_id;
		$mydoctor=$this->prescription->get_doctor($this->user_data->doctor_id);
		$this->view_data['prescriptions'] = $this->prescription->get_prescription_for_pharmacist($mydoctor[0]->user_id);
		$this->view_data['_title'] = "Prescriptions";
		$this->view_data['_view'] = "pharmacist/prescription";
		$this->load->view("layouts/master_page_pharmacist", $this->view_data);
	}

	public function print_prescription()
	{
		$booking_id = $this->input->get('booking_id');
		$doctor_id = $this->input->get('doctor_id');
		$user_id = $this->input->get('user_id');
		$check_data = $this->Ajaxprescription_model->check_doctor_booking($doctor_id, $booking_id, $user_id);


		if (!empty($check_data)) {
			$check_prescription = $this->Ajaxprescription_model->check_user_prescription($doctor_id, $booking_id, $user_id);
			$prescription_id = $check_prescription->id;
			$check_table = $this->P_digno_model->check_dgno_table($prescription_id);
			$this->view_data['doctor'] = $this->doctor->get_profile($doctor_id);
			$this->view_data['patient'] = $this->Booking_model->get_by_id($booking_id);
			$this->view_data['p_table'] = $check_table;
			$this->view_data['prescription'] = $check_prescription;
			$this->view_data['p_cos'] = $this->P_Co_model->get_prescription_co_group_by($prescription_id);
			$this->view_data['p_labels'] = $this->P_Label_model->get_prescription_label($prescription_id);
			$this->view_data['p_medicines'] = $this->P_medicine_model->get_prescription_medicine($prescription_id);
			$this->view_data['p_questions'] = $this->P_Suggestion_model->get_prescription_suggestion_by_question($prescription_id);

			$this->view_data['check_table'] = $this->P_digno_model->check_dgno_table($prescription_id);
			foreach ($this->view_data['p_questions'] as $key => $row) {
				$this->view_data['p_questions'][$key]['suggestions'] = $this->P_Suggestion_model->get_question_suggestion($row['question'], $prescription_id);

			}
			$this->view_data['settings']=$this->P_other_setting_model->get_all_p_other_settings($doctor_id);

//			print_r($this->view_data['p_questions']);
//			die();
			$this->load->view('doctor/AjaxPrescription/print_prescription', $this->view_data);

		}

	}

}
