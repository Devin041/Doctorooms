<?php

class Receptionist extends Doctor_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Users_model", "user");
        $this->load->model("Receptionist_model", "receptionist");
    }

    public function index()
    {

        $user_details_first = $this->receptionist->get_receptionist_by_doctor($this->user_data->id);
        if ($user_details_first) {
            $user_details_second = $this->user->get_by_id($user_details_first->user_id);
            $this->view_data['receptionist'] = (object)array_merge((array)$user_details_first, (array)$user_details_second);
        } else {
            $this->view_data['receptionist'] = array();
        }
        $this->view_data['_title'] = "Receptionist";
        $this->view_data['_view'] = "doctor/receptionist/index";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function create()
    {
        $this->view_data['_title'] = "Add Receptionist";
        $this->view_data['_view'] = "doctor/receptionist/add";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function store()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters("<div class='text-danger' style='font-size:10px;'>", "</div>");
            if ($this->form_validation->run("register_receptionist")) {
                $input_data = $this->input->post();
                unset($input_data['c_pass']);

                $input_data['role'] = RECEPTIONIST;
                $input_data['status'] = ACTIVE;
                $input_data['password'] = hash("sha256", $input_data['password']);
                $temp_input = $input_data;
                unset($input_data['address']);
                if ($res_id = $this->user->create($input_data)) {
                    /**
                     * The variable $input_data_rece is use for Receptionist table
                     */
                    $input_data_rece['address'] = $temp_input['address'];
                    $input_data_rece['user_id'] = $res_id;
                    $input_data_rece['doctor_id'] = $this->user_data->id;
                    $this->receptionist->create($input_data_rece);
                    $this->_alertSuccessResponce(true, "Receptionist created.", "Receptionist not created.", "doctor/receptionist");
                } else {
                    $this->_alertSuccessResponce(false, "Receptionist created.", "Receptionist not created.", "doctor/receptionist");
                }
            } else {
                $this->view_data['_title'] = "Add Receptionist";
                $this->view_data['_view'] = "doctor/receptionist/add";
                $this->load->view("layouts/master_page_doctors", $this->view_data);
            }
        }
    }

    public function edit($id)
    {
        $user_details_first = $this->receptionist->get_receptionist_by_doctor($this->user_data->id);
        $user_details_second = $this->user->get_by_id($user_details_first->user_id);
        $this->view_data['receptionist'] = (object)array_merge((array)$user_details_first, (array)$user_details_second);
        $this->view_data['_title'] = "Edit Receptionist";
        $this->view_data['_view'] = "doctor/receptionist/edit";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function update($id)
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {

            $user_details = $this->receptionist->get_receptionist_by_doctor($this->user_data->id);

            $this->form_validation->set_error_delimiters("<div class='text-danger' style='font-size:10px;'>", "</div>");
            if ($this->form_validation->run("register_receptionist_update")) {
                $input_data = $this->input->post();
                unset($input_data['c_pass']);

                $input_data['role'] = RECEPTIONIST;
                //$input_data['status'] = PENDING;
                if ($input_data['password']) {
                    $input_data['password'] = hash("sha256", $input_data['password']);
                } else {
                    unset($input_data['password']);
                }

                $temp_input = $input_data;
                unset($input_data['address']);

                $this->user->update($user_details->user_id, $input_data);
                /**
                 * The variable $input_data_rece is use for Receptionist table
                 */
                $input_data_rece['address'] = $temp_input['address'];
                $this->receptionist->update($user_details->user_id, $input_data_rece);
                $this->_alertSuccessResponce(true, "Receptionist updated.", "Receptionist not updated..", "doctor/receptionist");

            } else {
                $user_details_first = $this->receptionist->get_receptionist_by_doctor($this->user_data->id);
                $user_details_second = $this->user->get_by_id($user_details_first->user_id);
                $this->view_data['receptionist'] = (object)array_merge((array)$user_details_first, (array)$user_details_second);
                $this->view_data['_title'] = "Edit Receptionist";
                $this->view_data['_view'] = "doctor/receptionist/edit";
                $this->load->view("layouts/master_page_doctors", $this->view_data);
            }
        }
    }
}
