<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Hospitals extends Guest_controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Doctors_model', 'doctor');
        $this->load->model('Hospital_model', 'hospital');
		$this->load->model('Schedule_pdf_model', 'schedule');
    }

    public function index($page = 0)
    {
        $all_hospital = $this->hospital->get_active_hospitals();

        $this->load->library("pagination");
        $config['base_url'] = base_url() . "doctors/index/";
        $config['total_rows'] = count($all_hospital);
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

        $all_hospital = $this->hospital->get_active_hospitals($config['per_page'], $page);

        $this->view_data['hospitals'] = $all_hospital;
        $this->view_data['links'] = $this->pagination->create_links();
        $this->view_data['_title'] = "Hospitals";
        $this->view_data['_view'] = "front/hospital/index";
        $this->load->view('layouts/master_page_front', $this->view_data);
    }

    public function view($id)
    {
        $hospital = $this->hospital->get_active_hospital($id);
        if (!$hospital) {
            return redirect("doctors");
        }
        $this->view_data['doctors'] = $this->doctor->get_hospital_doctors($id);
		$this->view_data['schedule']=$this->schedule->get_last_by_hospital($id);
        $this->view_data['hospital'] = $hospital;
        $this->view_data['_title'] = "Hospital Profile";
        $this->view_data['_view'] = "front/hospital/profile";
        $this->load->view('layouts/master_page_front', $this->view_data);
    }

}
