<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Doctors extends Guest_controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Doctors_model', 'doctor');
        $this->load->model('Hospital_model', 'hospital');
        $this->load->model("Doctor_rating_model", "doctor_rating");
    }

    public function index($page = 0)
    {
        $all_doctors = $this->doctor->get_active_users();

        $this->load->library("pagination");
        $config['base_url'] = base_url() . "doctors/index/";
        $config['total_rows'] = count($all_doctors);
        $config['per_page'] = 12;
        $config['attributes'] = array('class' => 'page-link');

        $config['first_tag_open'] = "<li>";
        $config['first_tag_close'] = "</li>";

        $config['last_tag_open'] = "<li>";
        $config['last_tag_close'] = "</li>";

        $config['num_tag_open'] = "<li class='page-item'>";
        $config['num_tag_close'] = "</li>";

        $config['cur_tag_open'] = "<li class='page-item active'><a class='page-link'>";
        $config['cur_tag_close'] = "</a></li>";

        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['next_link'] = "Next";

        $config['prev_tag_open'] = "<li>";
        $config['prev_tag_close'] = "<li>";
        $config['prev_link'] = "Prev";

        $this->pagination->initialize($config);

        $all_post = $this->doctor->get_active_users($config['per_page'], $page);

        $this->view_data['doctors'] = $all_post;
        $this->view_data['links'] = $this->pagination->create_links();
        $this->view_data['_title'] = "Doctors";
        $this->view_data['_view'] = "front/doctor/index";
        $this->load->view('layouts/master_page_front', $this->view_data);
    }

    public function view($id)
    {
        $doctor = $this->doctor->get_active_user($id);
        if (!$doctor) {
            return redirect("doctors");
        }
        $this->view_data['doctor'] = $doctor;
        $this->view_data['doctor_total_rate_user'] = $this->doctor_rating->get_by_doctor_total_count($id);
        $this->view_data['doctor_average_rating'] = $this->doctor_rating->get_average_rating($id);

        if ($this->user_data) {
            $this->view_data['my_rating'] = $this->doctor_rating->get_by_patient_doctor($id, $this->user_data->id);
        } else {
            $this->view_data['my_rating'] = null;
        }

        $this->view_data['hospital']=$this->hospital->get_one_by_user($doctor->hospital_id);
        $this->view_data['_title'] = "Doctor Profile";
        $this->view_data['_view'] = "front/doctor/profile";
        $this->load->view('layouts/master_page_front', $this->view_data);
    }

}