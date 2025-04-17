<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Doctor extends Admin_contoller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Doctors_model', 'doctor');
		$this->load->model('Users_model', 'user');
		$this->load->model('Receptionist_model', 'receptionist');
		$this->load->model('Doctor_type_model', 'doc_type');
		$this->load->model('Disease_model', 'disease');
		$this->load->model('City_model', 'city');
		$this->load->model('State_model', 'state');
		$this->load->model('Doctor_rating_model', 'rating');
		$this->view_data['a'] = $this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$id=$this->input->get('hospital');
		$this->view_data['hospital']=$this->user->get_hospital_user();
		$this->view_data['doctor'] = $this->user->get_doctor_user_by_hospital($id);
		$this->view_data['_view'] = 'admin/doctor_view';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}

	public function update_status()
	{
		if ($this->input->get('id')) {
			$status = $this->input->get('st');
			$id = $this->input->get('id');
			if ($status == ACTIVE) {

				$this->_alertSuccessResponce($this->user->update_status_active($id), "Status updated", "Status updated", "admin/doctor");
			} elseif ($status == BLOCK) {

				$this->_alertSuccessResponce($this->user->update_status_block($id), "Status updated", "Status  updated", "admin/doctor");
			}
		}
	}

	public function profile_view()
	{
		if ($this->input->get('id')) {

			$id = $this->input->get('id', TRUE);
			$data = $this->doctor->get_profile($id);
			$rec_data=$this->receptionist->get_receptionist_by_doctor($id);

			if ($rec_data!=NULL) {
				$rec_user = $this->user->get_by_id($rec_data->user_id);
			}

			if ($data) {
				$this->view_data['profile'] = $data;
				if ($rec_data!=NULL) {
					$this->view_data['rec'] = $rec_user;
				}
				else
				{
					$this->view_data['rec'] = NULL;
				}
				$this->view_data['rec_address'] = $rec_data;
				$this->view_data['rating'] = $this->rating->get_average_rating($id);

				$this->view_data['_view'] = 'admin/profile_view_doctor';
				$this->load->view('layouts/master_page_admin', $this->view_data);
			} else {
				redirect('admin/doctor', 'refresh');
			}

		} else {
			redirect('admin/doctor', 'refresh');
		}

	}


	public function distroy()
	{
		if ($this->input->get('id', TRUE)) {
			$id = $this->input->get('id');
			$this->doctor->distroy_profile($id);
			$this->_alertwarningResponce($this->doctor->distroy_user($id), "Doctor Deleted", "Doctor Not Deleted", "admin/doctor");
		} else {
			redirect('admin/doctor', 'refresh');
		}
	}

	public function edit($id)
	{

		$doc_user=$this->user->get_by_id($id);
		$rec_data=$this->receptionist->get_receptionist_by_doctor($id);
		$rec_user=$this->user->get_by_id($rec_data->user_id);

		if(is_null($doc_user)){
			redirect('admin/doctor');
		}

		$this->view_data['doc_user']=$doc_user;
		$this->view_data['rec'] = $rec_user;
		$this->view_data['rec_address'] = $rec_data;
		$this->view_data['_view'] = 'admin/doctor_edit';
		$this->load->view('layouts/master_page_admin', $this->view_data);


	}

	public function edit_validate($id)
	{

		$doc_user=$this->user->get_by_id($id);
		$rec_data=$this->receptionist->get_receptionist_by_doctor($id);
		$rec_user=$this->user->get_by_id($rec_data->user_id);

		if(is_null($doc_user)){
			redirect('admin/doctor');
		}

		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$input_data = $this->input->post();
			$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
			if ($this->form_validation->run('admin_doctor')) {
				$input_data['password'] = hash("sha256", $input_data['password']);
				$input_data['updated_at'] = date('Y-m-d H:i:s');
				$this->_alertSuccessResponce($this->user->update($id, $input_data), "Record updated", "Record Not updated", "admin/doctor");
			} else {
				$this->view_data['doc_user']=$doc_user;
				$this->view_data['rec'] = $rec_user;
				$this->view_data['_view'] = 'admin/doctor_edit';
				$this->load->view('layouts/master_page_admin', $this->view_data);
			}
		}



//		if ($this->input->get('id')) {
//			$id = $this->input->get('id');
//			$input_data = $this->input->post();
//			$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
//			if ($this->form_validation->run('admin_doctor')) {
//				$input_data['password'] = hash("sha256", $input_data['password']);
//				$input_data['updated_at'] = date('Y-m-d H:i:s');
//				$this->_alertSuccessResponce($this->user->update($id, $input_data), "Record updated", "Record Not updated", "admin/doctor");
//			} else {
//				redirect('admin/doctor', 'refresh');
//			}
//		}
	}

	public function edit_profile($id)
	{
	    error_reporting(0);
		$doctor_detail = $this->user->get_by_id($id);
		$this->view_data['state'] = $this->state->get_all();
		$rec_data=$this->receptionist->get_receptionist_by_doctor($id);
		$rec_user = $this->user->get_by_id($rec_data->user_id);
		if(is_null($doctor_detail)){
			redirect('admin/doctor');
		}

		$this->view_data['doctor_detail'] = $doctor_detail;
		$this->view_data['rec'] = $rec_user;
		$this->view_data['rec_address'] = $rec_data;
		$this->view_data['doctor'] = $this->doctor->get_one_by_user($id);
		$this->view_data['type'] = $this->doc_type->get_all();
		$this->view_data['dis_name'] = $this->disease->get_all();
		$this->view_data['_view'] = 'admin/profile_edit_doctor';
		$this->load->view('layouts/master_page_admin', $this->view_data);

	}

	public function edit_profile_validate($id)
	{
		    $input_data = array('doctor_type'=>$this->input->post('doctor_type'),
								'fees'=>$this->input->post('fees'),
								'address'=>$this->input->post('address'),
								'hospital_address'=>$this->input->post('hospital_address'),
								'phone_no'=>$this->input->post('phone_no'),
								'contact_no'=>$this->input->post('contact_no'),
								'lat'=>$this->input->post('lat'),
								'longi'=>$this->input->post('longi'),
								'description'=>$this->input->post('description'),
								'specialization'=>json_encode($this->input->post('specialization')),
								'eduction'=>$this->input->post('eduction'),
								'experience'=>$this->input->post('experience'),
								'award_and_recognition'=>$this->input->post('award_and_recognition'),
								'registration_detail'=>$this->input->post('registration_detail'),
				);

			$this->_alertSuccessResponce($this->doctor->update($id, $input_data), "Record updated", "Record Not updated", "admin/doctor");

	}

}
