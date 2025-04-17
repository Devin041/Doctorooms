<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Config extends Admin_contoller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Config_model','configcharge');
		$this->load->model('Users_model', "user");
		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);

	}

	public function index()
	{
		$this->view_data['admincharge']=$this->configcharge->get_one();
		$this->view_data['_view']='admin/charges';
		$this->load->view('layouts/master_page_admin',$this->view_data);
	}

	public function update($id)
	{
		$data=$this->input->post();
		$this->_alertSuccessResponce($this->configcharge->update($id,$data), "Charge updated", "Charge Not updated", "admin/config");
	}

}

/* End of file Controllername.php */
