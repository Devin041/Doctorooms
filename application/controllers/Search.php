<?php

class Search extends Guest_controller
{
    /**
     * @var doctor Doctor_model
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Doctors_model", "doctor");
        $this->load->model('Hospital_model', 'hospital');
        $this->load->model('City_model', 'city');
        $this->load->model('Doctor_type_model', 'type');
    }

    public function index()
    {
        //$this->output->enable_profiler(TRUE);
        $q = $this->input->get("q");
        $city = $this->input->get("city");
        $type = $this->input->get("type");
        if (!$q) {
            redirect("home");
        }

        $doctors = $this->doctor->get_search_users($q, $city, $type);
        $hospitals = $this->hospital->get_search_hospital($q, $city);

        $city = $this->city->get_all_city();
        $type = $this->type->get_all();

        $this->view_data['doctors'] = $doctors;
        $this->view_data['hospitals'] = $hospitals;
        $this->view_data['city'] = $city;
        $this->view_data['type'] = $type;
        $this->view_data['_title'] = $q . " - Search ";
        $this->view_data['_view'] = "front/doctor/search";
        $this->load->view('layouts/master_page_front', $this->view_data);

    }
}