<?php

/**
 * This class used for register new patient.
 * Class Registraion
 */
class Registration extends Hospital_contoller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->view_data['_title'] = "New Registration";
        $this->view_data['_view'] = "hospital/registration/index";
        $this->load->view("layouts/master_page_hospital", $this->view_data);
    }

    public function submit()
    {
        //$this->dump($this->input->post());
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters("<div class='text-danger' style='font-size:10px;'>", "</div>");
            if ($this->form_validation->run("receptionist_patient_registration")) {
                $input_data = $this->input->post();
                unset($input_data['c_pass']);
                $input_data['role'] = PATIENT;
                $input_data['status'] = ACTIVE;
                $password = $input_data['password'];
                $input_data['password'] = hash("sha256", $input_data['password']);
                $created_user = $this->user->create($input_data);
                if ($created_user) {
                    /*$verification_data = [
                        "id" => $created_user,
                        "email" => $input_data['email'],
                        "date_time" => date("Y-m-d H:i:s")
                    ];
                    $link_data = $this->encrypted_text(json_encode($verification_data));
                    $verification_template = $this->get_verify_email_template($link_data);

                    $this->send_mail($input_data['email'], SITE_TITLE . " - Email Verification", $verification_template);*/

                    //Send Welcome message
                    $mobile = $input_data['mobile_no'];
                    $message = "Welcome, " . $input_data['name'] . ". You are successfully registered to " . SITE_TITLE . ". Your account id is your mobile number and your password is:" . $password;
                    $this->sendMobileMessage($mobile, $message);
                    // end
                    $this->session->set_flashdata("mobileno",$mobile);
                    $this->session->set_flashdata("alert_msg", "Registration successful.");
                    $this->session->set_flashdata("alert_class", "alert-success");
                    
                }
                redirect("hospital/appoinment/add", "refresh");
            } else {
                $this->view_data['_title'] = "New Registration";
                $this->view_data['_view'] = "hospital/appointment_add";
                $this->load->view("layouts/master_page_hospital", $this->view_data);
            }
        }
    }
}
