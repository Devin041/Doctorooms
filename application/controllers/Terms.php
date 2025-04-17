<?php

class Terms extends Guest_controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->view_data['_title'] = "Terms & Condition";
        $this->view_data['_view'] = "front/terms-condition";
        $this->load->view('layouts/master_page_front', $this->view_data);
    }
}