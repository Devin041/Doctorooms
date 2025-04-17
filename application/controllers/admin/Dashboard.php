<?php

class Dashboard extends Admin_contoller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Posts_model", "post");
        $this->load->model('Users_model', "user");
        $this->load->model('Booking_model', "book");
        $this->view_data['a'] = $this->user->get_by_id($this->user_data->id);

    }

    public function index()
    {
        $this->view_data['count_doc'] = $this->user->count_doctors();
        $this->view_data['count_pat'] = $this->user->count_patient();
        $this->view_data['count_rec'] = $this->user->count_receptionist();
        $this->view_data['count_hos'] = $this->user->count_hospital();
        $this->view_data['posts'] = $this->post->get_all(5);
        $this->view_data['users'] = $this->user->get_user_five();
        $status = ($this->input->get('status')) ? $this->input->get('status') : PENDING;
        $this->view_data['appointments'] = $this->book->get_doctor_appointment_all($status);
        $this->view_data['post'] = $this->book->get_doctor_appointment_all($status);
        $this->view_data['_view'] = 'admin/dashboard';
        $this->load->view("layouts/master_page_admin", $this->view_data);
    }

    public function user_view()
    {
        $this->view_data['user'] = $this->user->get_all();
        $this->view_data['_view'] = 'admin/user_view';
        $this->load->view("layouts/master_page_admin", $this->view_data);
    }


    public function update_status()
    {
        if ($this->input->get('id')) {
            $status = $this->input->get('st');
            $id = $this->input->get('id');

            if ($status != ACTIVE && $status != BLOCK) {
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
        unset($input_data['email']);
        unset($input_data['mobile_no']);
        $this->_alertSuccessResponce($this->user->update($this->user_data->id, $input_data), "Record updated", "Record Not updated", "admin/dashboard/update_admin_profile");
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
                return $this->_alertSuccessResponce($this->user->update($this->user_data->id, $imgData), "Your Profile is updated", "Your profile is not updated", "admin/dashboard/update_admin_profile");
            } else {
                return $this->_alertSuccessResponce(FALSE, "Imgs", $profData['upload_error'], "admin/dashboard/update_admin_profile");
            }
        } else {
            return $this->_alertSuccessResponce(FALSE, "Imgs", "Please choose image", "admin/dashboard/update_admin_profile");
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
            $this->view_data['userdetail'] = $this->user->get_by_id($this->user_data->id);
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

