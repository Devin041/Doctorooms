<?php

class Api extends Guest_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Doctor_rating_model", "doctor_rating");
        header('Content-Type: application/json');
    }

    public function rate_us()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            if ($this->user_data && $this->user_data->role == PATIENT) {

                $patient_id = $this->input->post('patient');
                $doctor_id = $this->input->post('doctor');
                $star = $this->input->post('star');

                $rateUs = $this->doctor_rating->get_by_patient_doctor($doctor_id, $patient_id);
                if ($rateUs) {
                    $this->doctor_rating->update($rateUs->id, ["star" => $star]);
                    echo json_encode(["success" => "Rating updated"]);
                } else {

                    if ($this->doctor_rating->create(["star" => $star, "patient_id" => $patient_id, "doctor_id" => $doctor_id])) {
                        echo json_encode(["success" => "Rated this doctor! Thank you for providing your feedback"]);
                    } else {
                        echo json_encode(["error" => "Some error! Please try again later"]);
                    }

                }
            } else {
                echo json_encode(["error" => "user not valid"]);
            }
        } else {
            echo json_encode(["error" => "method not allowed"]);
        }
    }

}