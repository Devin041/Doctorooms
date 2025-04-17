<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Disease_master extends Admin_contoller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Disease_model','disease');
		$this->load->model('Users_model', "user");

		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$this->view_data['type']=$this->disease->get_all();
		$this->view_data['_view']='admin/disease_master_add';
		$this->load->view('layouts/master_page_admin', $this->view_data);

	}

	public function add_validate()
	{
		$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
		if ($this->form_validation->run('disease') == FALSE) {
			$this->session->set_flashdata('fail', 'Record Not Save');
			$this->view_data['type']=$this->disease->get_all();
			$this->view_data['_view']='admin/Disease_master';
			$this->load->view('layouts/master_page_admin', $this->view_data);

		} else {
			$data = $this->input->post();
			$this->disease->create($data);
			$this->view_data['type']=$this->disease->get_all();
			$this->session->set_flashdata('success', 'Record Save');
			$this->view_data['_view']='admin/disease_master_add';
			$this->load->view('layouts/master_page_admin', $this->view_data);
		}
	}


	public function destroy($id)
	{

		$input_data = $this->input->post();

		$this->_alertWarningResponce($this->disease->destroy($id, $input_data), "Record Deleted", "Record Not Deleted", "admin/disease_master");

	}


}

/* End of file Controllername.php */
