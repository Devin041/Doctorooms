<?php

class Dashboard extends Reception_contoller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Receptionist_model", "receptionist");
        $this->load->model('Booking_model', 'book');
        $this->load->model("posts_model", "post");
        $this->load->model("Doctor_rating_model", "doctor_rating");
        $this->load->model("Doctors_model", "doctor");
        $this->load->model('Hospital_model', 'hospital');
        $this->user_data->doctor_id = $this->receptionist->get_by_user_id($this->user_data->id)->doctor_id;
    }

    public function index()
    {
        $doctor = $this->doctor->get_active_user($this->user_data->doctor_id);
        $this->view_data['hospital'] = $this->hospital->get_one_by_user($doctor->hospital_id);
        $this->view_data['doctor'] = $this->doctor->get_active_user($this->user_data->doctor_id);
        $this->view_data['today_pending_appointment'] = count($this->book->get_today_doctor_appointment($this->user_data->doctor_id, PENDING));
        $this->view_data['my_blog'] = count($this->post->get_all_by_user($this->user_data->id));
        $this->view_data['today_visited_appointment'] = count($this->book->get_today_doctor_appointment($this->user_data->doctor_id, VISITED));
        $this->view_data['appointments'] = $this->book->get_doctor_appointments_latest($this->user_data->doctor_id);
        $this->view_data['today_appointments'] = $this->book->get_doctor_appointments_today($this->user_data->doctor_id);
        $this->view_data['_title'] = "Dashboard";
        $this->view_data['_view'] = "receptionist/dashboard";
        $this->load->view("layouts/master_page_receptionist", $this->view_data);
    }
}
