<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Patient extends Admin_contoller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Patient_model','patient');
		$this->load->model('Users_model','user');
		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$this->view_data['patinet']=$this->user->get_patient_user();
		$this->view_data['_view']='admin/patient_view';
		$this->load->view('layouts/master_page_admin',$this->view_data);
	}

	public function update_status()
	{
		if ($this->input->get('id')) {
			$status=$this->input->get('st');
			$id=$this->input->get('id');
			if ($status == ACTIVE) {

				$this->_alertSuccessResponce($this->user->update_status_active($id), "Status updated", "Status updated", "admin/patient");
			}
			elseif ($status == BLOCK) {

				$this->_alertSuccessResponce($this->user->update_status_block($id),"Status updated", "Status  updated", "admin/patient");
			}
		}
	}


	public function edit()
	{
		if ($this->input->get('id')!='') {
			$id=$this->input->get('id');
			$this->view_data['patient_user']= $this->patient->get_by_id_user($id);
			if ($this->view_data['patient_user']) {
				$this->view_data['_view']='admin/patient_edit';
				$this->load->view('layouts/master_page_admin', $this->view_data);
			}
			else{
				redirect('admin/patient','refresh');
			}
		}
		else
		{
			redirect('admin/patient','refresh');
		}

	}
	public function edit_validate()
	{
		if ($this->input->get('id')) {
			$id=$this->input->get('id');
			$input_data=$this->input->post();
			$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
			if ($this->form_validation->run('admin_doctor')) {
				$input_data['password'] = hash("sha256", $input_data['password']);	
				$input_data['updated_at'] = date('Y-m-d H:i:s');
				unset($input_data['mobile_no']);
				$this->_alertSuccessResponce($this->user->update($id,$input_data), "Record updated", "Record Not updated", "admin/patient");	
			}
			else
			{
				redirect('admin/patient','refresh');
			}
		}
	}


	public function resetpass($id)
	{
		$input_data['password'] = hash("sha256",'123456');
		$input_data['updated_at'] = date('Y-m-d H:i:s');
		$this->_alertSuccessResponce($this->user->update($id,$input_data), "Password Reset | New Password Is 123456", "Password Not Reset", "admin/patient");
	}
}

