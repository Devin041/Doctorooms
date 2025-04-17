<?php

/**
 * Class Home
 */
class Home extends Guest_controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Posts_model','post');
		$this->load->model('Slider_model','slider');
		$this->load->model('Doctors_model','doctor');
		$this->load->model('Hospital_model','hospital');

	}

	public function index()
	{
		$this->view_data['posts']=$this->post->get_latest_post(4);
		$this->view_data['slide']=$this->slider->get_slider_active();
		$this->view_data['doc']=$this->doctor->get_active_users(8);
		$this->view_data['hospitals']=$this->hospital->get_active_hospitals(8);
        $this->view_data['_view']="front/home";
		$this->load->view('layouts/master_page_front',$this->view_data);
	}
}
