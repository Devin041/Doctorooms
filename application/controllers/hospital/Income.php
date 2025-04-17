<?php

class Income extends Hospital_contoller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model("Doctors_model", "doctor");
		$this->load->model('Users_model', 'user');
		$this->load->model('Hospital_model', 'hospital');
		$this->load->model('Receptionist_model', 'receptionist');
		$this->load->model('Disease_model', 'disease');
		$this->load->model('Booking_model', 'booking');
		$this->view_data['a'] = $this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$did=$this->input->get('doctor');
		$fromdate=$this->input->get('fromdate');
		$todate=$this->input->get('todate');
		$a=array();
		$this->view_data['doctorcharge']=$this->hospital->get_doctor_by_hospital($this->view_data['user']->id);
		foreach ($this->view_data['doctorcharge'] as $doc) {
		$income=$this->booking->get_income_by_doc_and_hspital($doc->user_id,$fromdate,$todate);
		if ($doc->total=$income) {
			$doc->total = $income[0]->total;
		}
		}

		$this->view_data['_view'] = 'hospital/income_summary';
		$this->load->view('layouts/master_page_hospital', $this->view_data);
	}


}

/* End of file Controllername.php */
