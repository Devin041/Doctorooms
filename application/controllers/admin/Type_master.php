<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Type_master extends Admin_contoller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Doctor_type_model','type');
		$this->load->model('Users_model', "user");

		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$this->view_data['type']=$this->type->get_all();
		$this->view_data['_view']='admin/type_master_add';
		$this->load->view('layouts/master_page_admin', $this->view_data);

	}

	public function add_validate()
	{
		$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
		if ($this->form_validation->run('type') == FALSE) {
			$this->session->set_flashdata('fail', 'Record Not Save');
			$this->view_data['type']=$this->type->get_all();
			$this->view_data['_view']='admin/type_master_add';
			$this->load->view('layouts/master_page_admin', $this->view_data);

		} else {
			$data = $this->input->post();
			$this->type->create($data);
			$this->view_data['type']=$this->type->get_all();
			$this->session->set_flashdata('success', 'Record Save');
			$this->view_data['_view']='admin/type_master_add';
			$this->load->view('layouts/master_page_admin', $this->view_data);
		}
	}


	public function destroy($id)
	{

		$input_data = $this->input->post();

		$this->_alertWarningResponce($this->type->destroy($id, $input_data), "Record Deleted", "Record Not Deleted", "admin/type_master");

	}


}

/* End of file Controllername.php */
