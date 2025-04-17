<?php

class Profile extends Hospital_contoller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Posts_model', 'blog');
		$this->load->model('Users_model', 'user');
		$this->load->model('Hospital_model', 'hospital');
		$this->load->model('State_model', 'state');
		$this->load->model('City_model', 'city');
		$this->view_data['a'] = $this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$this->view_data['_view'] = 'hospital/common/profile_update';
		$this->load->view('layouts/master_page_hospital', $this->view_data);
	}

	public function update_profile()
	{
		$this->view_data['userdetail'] = $this->user->get_by_id($this->user_data->id);
		$this->view_data['state'] = $this->state->get_all();
		$this->view_data['hospitaldetil'] = $this->hospital->get_one_by_user($this->user_data->id);
		$this->view_data['_view'] = 'hospital/common/profile_update';
		$this->load->view('layouts/master_page_hospital', $this->view_data);
	}

	public function update_validate()
	{
		$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
		if ($this->form_validation->run('hospital_profile')) {
			$input_data = array(
				"name"=>$this->input->post('name'),
				"gender"=>$this->input->post('gender'),
				"updated_at"=>date('Y-m-d H:i:s'),
			);
			unset($input_data['email']);

			$this->user->update($this->user_data->id,$input_data);
			$hid=$this->input->post('hospital_id');
			$profile_data=array(
				"hospital_name"=>$this->input->post('hospital_name'),
				"address"=>$this->input->post('address'),
				"state"=>$this->input->post('state'),
				"city"=>$this->input->post('city'),
				"contact_no"=>$this->input->post('contact_no'),
				"lat"=>$this->input->post('lat'),
				"longi"=>$this->input->post('longi'),
				"user_id"=>$this->user_data->id,

			);
			$this->_alertSuccessResponce( $this->hospital->update_profile($hid,$profile_data),"Record updated", "Record Not updated", "hospital/profile/update_profile");
		}
		else
		{
			$this->view_data['userdetail'] = $this->user->get_by_id($this->user_data->id);
            $this->view_data['hospitaldetil'] = $this->hospital->get_one_by_user($this->user_data->id);
			$this->view_data['_view'] = 'hospital/common/profile_update';
			$this->load->view('layouts/master_page_hospital', $this->view_data);
		}
	}

	public function upload_profile_img()
	{
		if (!empty($_FILES['profile']['name'])) {
			$profData = $this->_upload_file("upload/profile/", date("Y-m-d") . "_" . $this->user_data->id, "profile");
			if ($profData['status'] == 'true') {
				$imgData['profile_img'] = $profData['file_name'];
				$getUser = $this->user->get_by_id($this->user_data->id);
				if ($getUser->profile_img != 'default.png') {
					unlink("upload/profile/" . $getUser->profile_img);
				}
				return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $imgData), "Your Profile is updated", "Your profile is not updated", "hospital/profile/update_profile");
			} else {
				return $this->_alertSuccessResponce(FALSE, "Imgs", $profData['upload_error'], "hospital/profile/update_profile");
			}
		} else {
			return $this->_alertSuccessResponce(FALSE, "Imgs", "Please choose image", "hospital/profile/update_profile");
		}
	}


	public function change_password()
	{
		$securityData = $this->input->post();
		$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
		if ($this->form_validation->run("change_password")) {

			$upData['password'] = hash("sha256", $securityData['new_pass']);
			return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $upData), "Your Password is changed", "Your Password is not changed", "hospital/profile/update_profile");
		} else {

            $this->view_data['userdetail'] = $this->user->get_by_id($this->user_data->id);
            $this->view_data['hospitaldetil'] = $this->hospital->get_one_by_user($this->user_data->id);
			$this->view_data['userdetail'] = $this->user->get_by_id($this->user_data->id);
			$this->view_data['_view'] = "hospital/common/profile_update";
			$this->load->view("layouts/master_page_hospital", $this->view_data);
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

    public function city_by_state()
    {
        header('Content-Type: application/json');
        $state = $this->input->post("state_name");
        $citys = $this->city->get_city_by_state_name($state);
        echo json_encode($citys);
    }
}
