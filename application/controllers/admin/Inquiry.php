<?php

class Inquiry extends Admin_contoller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model("Hospital_inquiry_model", "inquiry");
		$this->view_data['a'] = $this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$this->view_data['inquiry'] = $this->inquiry->getall();
		$this->view_data['_view'] = 'admin/hospital_inquiry';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}
	public function destroy()
	{
		if ($this->input->get('id'))
		{
			$this->_alertWarningResponce($this->inquiry->destroy($this->input->get('id'), ''), "Record Deleted", "Record Not Deleted", "admin/inquiry");
		}
	}


}

/* End of file Controllername.php */
