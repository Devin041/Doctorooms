<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Receptionist extends Admin_contoller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Receptionist_model','receptionist');
		$this->load->model('Users_model','user');
		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);

	}

	public function index()
	{
		$this->view_data['receptionist']=$this->user->get_receptionist_user();
		$this->view_data['_view']='admin/receptionist_view';
		$this->load->view('layouts/master_page_admin',$this->view_data);
	}

		public function update_status()
	{
		if ($this->input->get('id')) {
			$status=$this->input->get('st');
			$id=$this->input->get('id');
			if ($status == ACTIVE) {

				$this->_alertSuccessResponce($this->user->update_status_active($id), "Status updated", "Status updated", "admin/receptionist");
			}
			elseif ($status == BLOCK) {

				$this->_alertSuccessResponce($this->user->update_status_block($id),"Status updated", "Status  updated", "admin/receptionist");
			}
		}
	}


		public function edit()
	{
		if ($this->input->get('id')!='') {
			$id=$this->input->get('id');
			$this->view_data['rec_user']= $this->receptionist->get_by_id_user($id);
			if ($this->view_data['rec_user']) {
				$this->view_data['_view']='admin/receptionist_edit';
				$this->load->view('layouts/master_page_admin', $this->view_data);
			}
			else{
				redirect('admin/receptionist','refresh');
			}
		}
		else
		{
			redirect('admin/receptionist','refresh');
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
				$this->_alertSuccessResponce($this->user->update($id,$input_data), "Record updated", "Record Not updated", "admin/receptionist");	
			}
			else
			{
				redirect('admin/receptionist','refresh');
			}
		}
	}


}

