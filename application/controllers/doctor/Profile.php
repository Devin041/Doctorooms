<?php

/**
 * @property Users_model user
 */
class Profile extends Doctor_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Doctors_model", "doctor");
        $this->load->model("Users_model", "user");
        $this->load->model('Disease_model', 'disease');
        $this->load->model("State_model", "state");
        $this->load->model("City_model", "city");
        $this->load->model("Doctor_type_model", "doctor_type");
    }

    public function index()
    {
        $this->view_data['profile'] = $this->doctor->get_one_by_user($this->user_data->id);
        $u_data = $this->user->get_by_id($this->user_data->id);
        unset($u_data->password);
        $this->view_data['profile'] = (object)array_merge((array)$u_data, (array)$this->view_data['profile']);
        $this->view_data['_title'] = "Profile";
        $this->view_data['_view'] = "doctor/profile/show";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function edit()
    {
        $this->view_data['profile'] = $this->doctor->get_one_by_user($this->user_data->id);
        $u_data = $this->user->get_by_id($this->user_data->id);
        unset($u_data->password);
        $this->view_data['dis_name'] = $this->disease->get_all();
        $this->view_data['state'] = $this->state->get_all();
        $this->view_data['doctor_type'] = $this->doctor_type->get_all();
        $this->view_data['profile'] = (object)array_merge((array)$u_data, (array)$this->view_data['profile']);

        $this->view_data['_title'] = "Profile";
        $this->view_data['_view'] = "doctor/profile/edit";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function update()
    {

        $doc_data = $this->doctor->get_one_by_user($this->user_data->id);
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $post_data = $this->input->post();
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            if ($this->form_validation->run("doctor_profile")) {
                /**
                 * The $forDoc variable is use for collect only doctor table data
                 */
                $forDoc = $post_data;
                $forDoc['specialization'] = ($forDoc['specialization']) ? json_encode($forDoc['specialization']) : NULL;

                unset($forDoc['name']);
                unset($forDoc['gender']);

                /**
                 * The $forUser variable is use for collect only user table data
                 */
                $forUser['name'] = $post_data['name'];
                $forUser['gender'] = $post_data['gender'];

                $this->doctor->update($doc_data->id, $forDoc);
                $this->user->update($this->user_data->id, $forUser);

                $this->_alertSuccessResponce(true, 'Profile Updated', 'Profile Not Updated', 'doctor/profile');
            } else {

                $this->view_data['profile'] = $this->doctor->get_one_by_user($this->user_data->id);
                $u_data = $this->user->get_by_id($this->user_data->id);
                unset($u_data->password);
                $this->view_data['dis_name'] = $this->disease->get_all();
                $this->view_data['state'] = $this->state->get_all();
                $this->view_data['doctor_type'] = $this->doctor_type->get_all();
                $this->view_data['profile'] = (object)array_merge((array)$u_data, (array)$this->view_data['profile']);
                $this->view_data['_title'] = "Profile";
                $this->view_data['_view'] = "doctor/profile/edit";
                $this->load->view("layouts/master_page_doctors", $this->view_data);
            }
        }
    }

    public function change_pass()
    {
        $securityData = $this->input->post();
        $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
        if ($this->form_validation->run("change_password")) {

            $this->load->model("Users_model", "user");
            $upData['password'] = hash("sha256", $securityData['new_pass']);
            return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $upData), "Your Password is changed", "Your Password is not changed", "doctor/profile");
        } else {
            $this->view_data['profile'] = $this->doctor->get_one_by_user($this->user_data->id);
            $u_data = $this->user->get_by_id($this->user_data->id);
            unset($u_data->password);
            $this->view_data['profile'] = (object)array_merge((array)$u_data, (array)$this->view_data['profile']);
            $this->view_data['_title'] = "Profile";
            $this->view_data['_view'] = "doctor/profile/show";
            $this->load->view("layouts/master_page_doctors", $this->view_data);
        }
    }

    /**
     * This function is used for change user profile photo
     */
    public function update_profile_photo()
    {
        if (!empty($_FILES['profile']['name'])) {
            $profData = $this->_upload_file("upload/profile/", date("Y-m-d") . "_" . $this->user_data->id, "profile");
            if ($profData['status'] == 'true') {
                $imgData['profile_img'] = $profData['file_name'];
                $getUser = $this->user->get_by_id($this->user_data->id);
                if ($getUser->profile_img != 'default.png') {
                    unlink("upload/profile/" . $getUser->profile_img);
                }
                return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $imgData), "Your Profile is updated", "Your profile is not updated", "doctor/profile");
            } else {
                return $this->_alertSuccessResponce(FALSE, "Imgs", $profData['upload_error'], "doctor/profile");
            }
        } else {
            return $this->_alertSuccessResponce(FALSE, "Imgs", "Please choose image", "doctor/profile");
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
