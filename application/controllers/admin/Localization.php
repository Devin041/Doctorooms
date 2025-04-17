<?php

class Localization extends Admin_contoller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Users_model', "user");
		$this->load->model('City_model', "city");
		$this->load->model('State_model', "state");
		$this->load->model('Country_model', "country");

		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);

	}

	public function index()
	{
		$this->view_data['count_doc']=$this->user->count_doctors();
		$this->view_data['count_pat']=$this->user->count_patient();
		$this->view_data['count_rec']=$this->user->count_receptionist();
		$this->view_data['count_hos']=$this->user->count_hospital();
		$this->view_data['_view'] = 'admin/dashboard';
		$this->load->view("layouts/master_page_admin", $this->view_data);
	}

	public function user_view()
	{
		$this->view_data['user'] = $this->user->get_all();
		$this->view_data['_view'] = 'admin/user_view';
		$this->load->view("layouts/master_page_admin", $this->view_data);
	}

	public function country()
	{
		$this->view_data['_view'] = 'admin/country_add';
		$this->load->view("layouts/master_page_admin", $this->view_data);
	}

	public function country_add()
	{
		$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
		if ($this->form_validation->run('contry') == FALSE) {
			$this->session->set_flashdata('fail', 'Record Not Save');
			$this->view_data['_view'] = 'admin/country_add';
			$this->load->view("layouts/master_page_admin", $this->view_data);
		} else {
			$data = $this->input->post();
			$this->country->create_country($data);
			$this->session->set_flashdata('success', 'Record Successfully Save');
			redirect($_SERVER['HTTP_REFERER']);
		}
	}

	public function country_view()
	{
		$this->view_data['country'] = $this->country->get_all_country();
		$this->view_data['_view'] = 'admin/country_add';
		$this->load->view("layouts/master_page_admin", $this->view_data);
	}

	public function delete_country($id)
	{

		if ($id && $id != '') {
			$x = $this->country->destroy_country($id);
			$this->_alertSuccessResponce($x, "Record Deleted", "Record not deleted", "admin/localization/country_view");
		}
	}

	public function state_view()
	{
		$this->view_data['country'] = $this->country->get_all_country();
		$this->view_data['state'] = $this->state->get_all_state();
		$this->view_data['_view'] = 'admin/state_add';
		$this->load->view("layouts/master_page_admin", $this->view_data);
	}

	public function state_add()
	{
		$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
		if ($this->form_validation->run('state') == FALSE) {
			$this->session->set_flashdata('fail', 'Record Not Save');
			$this->view_data['_view'] = 'admin/state_view';
			$this->load->view("layouts/master_page_admin", $this->view_data);
		} else {
			$data = $this->input->post();
			$this->state->create_state($data);
			$this->session->set_flashdata('success', 'Record Successfully Save');
			redirect('admin/localization/state_view');
		}
	}

	public function delete_state($id)
	{

		if ($id && $id != '') {
			$x = $this->state->destroy_state($id);
			$this->_alertSuccessResponce($x, "Record Deleted", "Record not deleted", "admin/localization/state_view");
		}
	}


	public function city_view()
	{
		$this->view_data['state'] = $this->state->get_all_state();
		$this->view_data['city'] = $this->city->get_all_city();
		$this->view_data['_view'] = 'admin/city_add';
		$this->load->view("layouts/master_page_admin", $this->view_data);
	}

	public function city_add()
	{
		$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
		if ($this->form_validation->run('city') == FALSE) {
			$this->session->set_flashdata('fail', 'Record Not Save');
			$this->view_data['_view'] = 'admin/city_view';
			$this->load->view("layouts/master_page_admin", $this->view_data);
		} else {
			$data = $this->input->post();
			$this->city->create_city($data);
			$this->session->set_flashdata('success', 'Record Successfully Save');
			redirect('admin/dashboard/city_view');
		}
	}

	public function delete_city($id)
	{

		if ($id && $id != '') {
			$x = $this->city->destroy_city($id);
			$this->_alertSuccessResponce($x, "Record Deleted", "Record not deleted", "admin/localization/city_view");
		}
	}

	public function update_status()
	{
		if ($this->input->get('id')) {
			$status = $this->input->get('st');
			$id = $this->input->get('id');

			if ($status != ACTIVE && $status!=BLOCK){
				redirect('admin/dashboard/user_view');
			}

			if ($status == ACTIVE) {

				$this->_alertSuccessResponce($this->user->update_status_active($id), "Status updated", "Status updated", "admin/dashboard/user_view");
			} elseif ($status == BLOCK) {

				$this->_alertSuccessResponce($this->user->update_status_block($id), "Status updated", "Status  updated", "admin/dashboard/user_view");
			}
		}
	}


	public function update_admin_profile()
	{

		$this->view_data['userdetail'] = $this->user->get_by_id($this->user_data->id);
		$this->view_data['_view'] = 'admin/admin_profile_setting';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}

	public function update_validate()
	{
		$input_data = $this->input->post();
		$input_data['updated_at'] = date('Y-m-d H:i:s');
		$this->_alertSuccessResponce($this->user->update($this->user_data->id, $input_data), "Record updated", "Record Not updated", "admin/dashboard/update_admin_profile");
	}

	public function upload_profile_img()
	{

		if ($profData = $this->_upload_file("upload/profile/", date("Y-m-d") . "_" . $this->user_data->id, "profile")) {
			$imgData['profile_img'] = $profData['file_name'];
			$getUser=$this->user->get_by_id($this->user_data->id);
			unlink("upload/profile/".$getUser->profile_img);
			return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $imgData), "Your Profile is updated", "Your profile is not updated", "admin/dashboard/update_admin_profile");
		} else {
			return $this->_alertSuccessResponce(FALSE, "Imgs", "Image upload error, Please try again later.", "admin/dashboard/update_admin_profile");
		}
	}


	public function change_password()
	{
		$securityData = $this->input->post();
		$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
		if ($this->form_validation->run("change_password")) {

			$upData['password'] = hash("sha256", $securityData['new_pass']);
			return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $upData), "Your Password is changed", "Your Password is not changed", "admin/dashboard/update_admin_profile");
		} else {
			$this->view_data['userdetail']=$this->user->get_by_id($this->user_data->id);
			$this->view_data['_view'] = "admin/admin_profile_setting";
			$this->load->view("layouts/master_page_admin", $this->view_data);
		}
	}

	/**
	 * This function is use for custom validation of check current password
	 * @param $str
	 * @return bool
	 */
	public function valid_current_password($str)
	{
		if (empty($str)) {
			return TRUE;
		} else {
			if ($this->user->checkCurrentPassword($this->user_data->id, $str)) {
				return TRUE;
			} else {
				$this->form_validation->set_message('valid_current_password', 'The {field} can not be match');
				return FALSE;
			}
		}
	}

}

