<?php

/**
 * @property Users_model user
 */
class Profile extends Assistant_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Users_model", "user");
        $this->load->model("Doctor_assistants_model", "assistants");
    }

    public function index()
    {
        $this->view_data['profile'] = $this->user->get_by_id($this->user_data->id);
        $u_data = $this->assistants->get_by_user_id($this->user_data->id);
        unset($u_data->password);
        $this->view_data['profile'] = (object)array_merge((array)$u_data, (array)$this->view_data['profile']);
        $this->view_data['_title'] = "Profile";
        $this->view_data['_view'] = "assistant/profile";
        $this->load->view("layouts/master_page_assistant", $this->view_data);
    }

    public function update()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $post_data = $this->input->post();
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            if ($this->form_validation->run("assistant_profile")) {
                /**
                 * The $forDoc variable is use for collect only doctor table data
                 */
                $forRec['address'] = $post_data['address'];

                /**
                 * The $forUser variable is use for collect only user table data
                 */
                $forUser['name'] = $post_data['name'];
                $forUser['gender'] = $post_data['gender'];


                $this->assistants->update($this->user_data->id, $forRec);
                $this->user->update($this->user_data->id, $forUser);

                $this->_alertSuccessResponce(true, 'Profile Updated', 'Profile Not Updated', 'assistant/profile');
            } else {
                $this->view_data['profile'] = $this->user->get_by_id($this->user_data->id);
                $u_data = $this->assistants->get_by_user_id($this->user_data->id);
                unset($u_data->password);
                $this->view_data['profile'] = (object)array_merge((array)$u_data, (array)$this->view_data['profile']);
                $this->view_data['_title'] = "Profile";
                $this->view_data['_view'] = "assistant/profile";
                $this->load->view("layouts/master_page_assistant", $this->view_data);
            }
        }
    }

    public function change_pass()
    {
        $securityData = $this->input->post();
        $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
        if ($this->form_validation->run("change_password")) {

            $upData['password'] = hash("sha256", $securityData['new_pass']);
            return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $upData), "Your Password is changed", "Your Password is not changed", "assistant/profile");
        } else {
            $this->view_data['profile'] = $this->user->get_by_id($this->user_data->id);
            $u_data = $this->assistants->get_by_user_id($this->user_data->id);
            unset($u_data->password);
            $this->view_data['profile'] = (object)array_merge((array)$u_data, (array)$this->view_data['profile']);
            $this->view_data['_title'] = "Profile";
            $this->view_data['_view'] = "assistant/profile";
            $this->load->view("layouts/master_page_assistant", $this->view_data);
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
                return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $imgData), "Your Profile is updated", "Your profile is not updated", "assistant/profile");
            } else {
                return $this->_alertSuccessResponce(FALSE, "Imgs", $profData['upload_error'], "assistant/profile");
            }
        } else {
            return $this->_alertSuccessResponce(FALSE, "Imgs", "Please choose image", "assistant/profile");
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