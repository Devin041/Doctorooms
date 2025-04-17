<?php

class Inquiry extends Guest_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Hospital_inquiry_model','inquiry');
    }

    public function index()
    {
        $this->view_data['_title'] = "Hospital Inquiry";
        $this->view_data['_view'] = "front/inquiry";
        $this->load->view('layouts/master_page_front', $this->view_data);
    }

    public function send()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            if ($this->form_validation->run("hospital_inquiry")) {
                $data = $this->input->post();
                $this->_alertInfoResponce($this->inquiry->create($data), "Inquiry is submitted. Thank You!", "Inquiry is not submitted. Try again later.", "inquiry");
            } else {
                $this->view_data['_title'] = "Hospital Inquiry";
                $this->view_data['_view'] = "front/inquiry";
                $this->load->view('layouts/master_page_front', $this->view_data);
            }
        }
    }
}