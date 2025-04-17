<?php

class Privacy extends Guest_controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->view_data['_title'] = "Privacy";
        $this->view_data['_view'] = "front/privacy";
        $this->load->view('layouts/master_page_front', $this->view_data);
    }
}