<?php

class Pharmacist extends Doctor_controller
{
	public function __construct()
	{
		parent::__construct();

		$this->load->model("Users_model", "user");
		$this->load->model("Doctor_pharmacist_model", "pharmacist");
	}

	public function index()
	{

		$user_details_first = $this->pharmacist->get_pharmacist_by_doctor($this->user_data->id);
		if ($user_details_first) {
			$user_details_second = $this->user->get_by_id($user_details_first->user_id);
			$this->view_data['pharmacist'] = (object)array_merge((array)$user_details_first, (array)$user_details_second);
		} else {
			$this->view_data['pharmacist'] = array();
		}
		$this->view_data['_title'] = "Pharmacist";
		$this->view_data['_view'] = "doctor/pharmacist/index";
		$this->load->view("layouts/master_page_doctors", $this->view_data);
	}

	public function create()
	{
		$this->view_data['_title'] = "Add Pharmacist";
		$this->view_data['_view'] = "doctor/pharmacist/add";
		$this->load->view("layouts/master_page_doctors", $this->view_data);
	}

	public function store()
	{
		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_error_delimiters("<div class='text-danger' style='font-size:10px;'>", "</div>");
			if ($this->form_validation->run("register_pharmacist")) {
				$input_data = $this->input->post();
				unset($input_data['c_pass']);
				$input_data['role'] = PHARMACIST;
				$input_data['status'] = ACTIVE;
				$input_data['password'] = hash("sha256", $input_data['password']);
				$temp_input = $input_data;
				unset($input_data['dlno']);
				unset($input_data['address']);
				unset($input_data['description']);
				if ($pharma_id = $this->user->create($input_data)) {
					/**
					 * The variable $input_data_assis is use for Assistant table
					 */
					$input_data_assis['address'] = $temp_input['address'];
					$input_data_assis['description'] = $temp_input['description'];
					$input_data_assis['user_id'] = $pharma_id;
					$input_data_assis['doctor_id'] = $this->user_data->id;
					$input_data_assis['dlno'] = $temp_input['dlno'];
					$input_data_assis['created_at'] = date('Y-m-d H:i:s');
					$this->pharmacist->create($input_data_assis);
					$this->_alertSuccessResponce(true, "Pharmacist created.", "Pharmacist not created.", "doctor/pharmacist/create");
				} else {
					$this->_alertSuccessResponce(false, "Pharmacist created.", "Pharmacist not created.", "doctor/pharmacist/create");
				}
			} else {
				$this->view_data['_title'] = "Add Pharmacist";
				$this->view_data['_view'] = "doctor/pharmacist/add";
				$this->load->view("layouts/master_page_doctors", $this->view_data);
			}
		}
	}

	public function edit($id)
	{
		$user_details_first = $this->pharmacist->get_pharmacist_by_doctor($this->user_data->id);
		$user_details_second = $this->user->get_by_id($user_details_first->user_id);
		$this->view_data['pharmacist'] = (object)array_merge((array)$user_details_first, (array)$user_details_second);
		$this->view_data['_title'] = "Edit Pharmacist";
		$this->view_data['_view'] = "doctor/pharmacist/edit";
		$this->load->view("layouts/master_page_doctors", $this->view_data);
	}

	public function update($id)
	{
		if ($this->input->server('REQUEST_METHOD') == 'POST') {

			$user_details = $this->pharmacist->get_pharmacist_by_doctor($this->user_data->id);
			$this->form_validation->set_error_delimiters("<div class='text-danger' style='font-size:10px;'>", "</div>");
			if ($this->form_validation->run("register_pharmacist_update")) {
				$input_data = $this->input->post();
				unset($input_data['c_pass']);
				$input_data['role'] = PHARMACIST;
				//$input_data['status'] = PENDING;
				if ($input_data['password']) {
					$input_data['password'] = hash("sha256", $input_data['password']);
				} else {
					unset($input_data['password']);
				}
				$temp_input = $input_data;
				unset($input_data['address']);
				unset($input_data['description']);
				unset($input_data['dlno']);

				$this->user->update($user_details->user_id, $input_data);
				/**
				 * The variable $input_data_assis is use for Assistant table
				 */
				$input_data_assis['address'] = $temp_input['address'];
				$input_data_assis['description'] = $temp_input['description'];
				$input_data_assis['dlno'] = $temp_input['dlno'];
				$input_data_assis['updated_at'] = $temp_input['dlno'];
				$input_data_assis['created_by'] = date('Y-m-d H:i:s');
				$this->pharmacist->update($user_details->user_id, $input_data_assis);
				$this->_alertSuccessResponce(true, "Pharmacist updated.", "Pharmacist not updated..", "doctor/pharmacist");

			} else {
				$user_details_first = $this->pharmacist->get_pharmacist_by_doctor($this->user_data->id);
				$user_details_second = $this->user->get_by_id($user_details_first->user_id);
				$this->view_data['pharmacist'] = (object)array_merge((array)$user_details_first, (array)$user_details_second);
				$this->view_data['_title'] = "Edit Pharmacist";
				$this->view_data['_view'] = "doctor/pharmacist/edit";
				$this->load->view("layouts/master_page_doctors", $this->view_data);
			}
		}
		else
		{
			$this->_alertWarningResponce(true, "Something Want Wrong..", "Something Want Wrong...", "doctor/pharmacist");
		}
	}

}
