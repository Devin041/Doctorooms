<?php

class Profile extends Patient_contoller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("User_model", "user");
    }

    public function index()
    {
        $this->view_data['profile'] = $this->user->get_by_id($this->user_data->id);
        $this->view_data['_title'] = "Profile";
        $this->view_data['_view'] = "front/profile/show";
        $this->load->view("layouts/master_page_front", $this->view_data);
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
                return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $imgData), "Your Profile is updated", "Your profile is not updated", "profile");
            } else {
                return $this->_alertSuccessResponce(FALSE, "Imgs", $profData['upload_error'], "profile");
            }
        } else {
            return $this->_alertSuccessResponce(FALSE, "Imgs", "Please choose image", "profile");
        }
    }

    public function update_profile_basic()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $post_data = $this->input->post();
            $this->form_validation->set_error_delimiters('<div class="invalid-feedback">', '</div>');
            if ($this->form_validation->run("patient_profile")) {

                $data['name'] = $post_data['name'];
                $data['gender'] = $post_data['gender'];

                $this->user->update($this->user_data->id, $data);

                $this->_alertSuccessResponce(true, 'Profile Updated', 'Profile Not Updated', 'profile');
            } else {
                $this->view_data['profile'] = $this->user->get_by_id($this->user_data->id);
                $this->view_data['_title'] = "Profile";
                $this->view_data['_view'] = "front/profile/show";
                $this->load->view("layouts/master_page_front", $this->view_data);
            }
        }
    }

    public function chnage_password()
    {
        $securityData = $this->input->post();
        $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
        if ($this->form_validation->run("change_password")) {

            $upData['password'] = hash("sha256", $securityData['new_pass']);
            return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $upData), "Your Password is changed", "Your Password is not changed", "profile");
        } else {
            $this->view_data['profile'] = $this->user->get_by_id($this->user_data->id);
            $this->view_data['_title'] = "Profile";
            $this->view_data['_view'] = "front/profile/show";
            $this->load->view("layouts/master_page_front", $this->view_data);
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