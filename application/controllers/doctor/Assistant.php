<?php

class Assistant extends Doctor_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Users_model", "user");
        $this->load->model("Doctor_assistants_model", "assistants");
    }

    public function index()
    {

        $user_details_first = $this->assistants->get_assistant_by_doctor($this->user_data->id);
        if ($user_details_first) {
            $user_details_second = $this->user->get_by_id($user_details_first->user_id);
            $this->view_data['assistant'] = (object)array_merge((array)$user_details_first, (array)$user_details_second);
        } else {
            $this->view_data['assistant'] = array();
        }
        $this->view_data['_title'] = "Assistant";
        $this->view_data['_view'] = "doctor/assistant/index";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function create()
    {
        $this->view_data['_title'] = "Add Assistant";
        $this->view_data['_view'] = "doctor/assistant/add";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function store()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters("<div class='text-danger' style='font-size:10px;'>", "</div>");
            if ($this->form_validation->run("register_assistant")) {
                $input_data = $this->input->post();
                unset($input_data['c_pass']);

                $input_data['role'] = DOCTOR_ASSISTANT;
                $input_data['status'] = ACTIVE;
                $input_data['password'] = hash("sha256", $input_data['password']);
                $temp_input = $input_data;
                unset($input_data['address']);
                unset($input_data['description']);
                if ($assis_id = $this->user->create($input_data)) {
                    /**
                     * The variable $input_data_assis is use for Assistant table
                     */
                    $input_data_assis['address'] = $temp_input['address'];
                    $input_data_assis['description'] = $temp_input['description'];
                    $input_data_assis['user_id'] = $assis_id;
                    $input_data_assis['doctor_id'] = $this->user_data->id;
                    $this->assistants->create($input_data_assis);
                    $this->_alertSuccessResponce(true, "Assistant created.", "Assistant not created.", "doctor/assistant");
                } else {
                    $this->_alertSuccessResponce(false, "Assistants created.", "Assistant not created.", "doctor/assistant");
                }
            } else {
                $this->view_data['_title'] = "Add Assistant";
                $this->view_data['_view'] = "doctor/assistant/add";
                $this->load->view("layouts/master_page_doctors", $this->view_data);
            }
        }
    }

    public function edit($id)
    {
        $user_details_first = $this->assistants->get_assistant_by_doctor($this->user_data->id);
        $user_details_second = $this->user->get_by_id($user_details_first->user_id);
        $this->view_data['assistant'] = (object)array_merge((array)$user_details_first, (array)$user_details_second);
        $this->view_data['_title'] = "Edit Assistant";
        $this->view_data['_view'] = "doctor/assistant/edit";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function update($id)
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {

            $user_details = $this->assistants->get_assistant_by_doctor($this->user_data->id);

            $this->form_validation->set_error_delimiters("<div class='text-danger' style='font-size:10px;'>", "</div>");
            if ($this->form_validation->run("register_assistant_update")) {
                $input_data = $this->input->post();
                unset($input_data['c_pass']);

                $input_data['role'] = DOCTOR_ASSISTANT;
                //$input_data['status'] = PENDING;
                if ($input_data['password']) {
                    $input_data['password'] = hash("sha256", $input_data['password']);
                } else {
                    unset($input_data['password']);
                }
                $temp_input = $input_data;
                unset($input_data['address']);
                unset($input_data['description']);

                $this->user->update($user_details->user_id, $input_data);
                /**
                 * The variable $input_data_assis is use for Assistant table
                 */
                $input_data_assis['address'] = $temp_input['address'];
                $input_data_assis['description'] = $temp_input['description'];
                $this->assistants->update($user_details->user_id, $input_data_assis);
                $this->_alertSuccessResponce(true, "Assistant updated.", "Assistant not updated..", "doctor/assistant");

            } else {
                $user_details_first = $this->assistants->get_assistant_by_doctor($this->user_data->id);
                $user_details_second = $this->user->get_by_id($user_details_first->user_id);
                $this->view_data['assistant'] = (object)array_merge((array)$user_details_first, (array)$user_details_second);
                $this->view_data['_title'] = "Edit Assistant";
                $this->view_data['_view'] = "doctor/assistant/edit";
                $this->load->view("layouts/master_page_doctors", $this->view_data);
            }
        }
    }
}
