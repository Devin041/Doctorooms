<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Report extends Admin_contoller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Users_model', "user");
		$this->load->model('Booking_model', "booking");
		$this->load->model('Hospital_model', "hospital");
		$this->load->model('Doctors_model', "doctor");
		$this->view_data['a'] = $this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$this->view_data['_view'] = 'admin/report_list';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}

	public function view_user()
	{
		$fromdate = $this->input->get('fromdate');
		$todate = $this->input->get('todate');
		$type = $this->input->get('usertype');

		$this->load->library('pagination');
		$config['base_url'] = base_url() . "admin/report/view_user";
		$config['total_rows'] = $this->user->count_users();
		$config['per_page'] = 20;
		$config['uri_segment'] = 4;
		$config['full_tag_open'] = "<ul class='pagination'>";
		$config['full_tag_close'] = '</ul>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a href="#">';
		$config['cur_tag_close'] = '</a></li>';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';
		$config['prev_link'] = '<i class="fa fa-arrow-left"></i>      Previous';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = 'Next     <i class="fa fa-arrow-right"></i>';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';

		$this->pagination->initialize($config);
		$page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
		$this->view_data['pageno'] = $this->pagination->create_links();
		$this->view_data['users'] = $this->user->get_all_user_report($config['per_page'], $page, $fromdate, $todate, $type);
		$this->view_data['_view'] = 'admin/report_user';
		$this->load->view('layouts/master_page_admin', $this->view_data);

	}

	public function view_appointment()
	{

		$status = $this->input->get('status');
		$fromdate = $this->input->get('fromdate');
		$todate = $this->input->get('todate');
		$mobile = $this->input->get('patientmobile');
		$this->view_data['appointments'] = $this->booking->get_doctor_appointment_all_report($status, $fromdate, $todate,$mobile);
		$this->view_data['_view'] = 'admin/report_appoinment';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}

	public function view_doctor()
	{
		$fromdate = $this->input->get('fromdate');
		$todate = $this->input->get('todate');
		$this->view_data['doctor'] = $this->user->get_doctor_user_report($fromdate, $todate);
		$this->view_data['_view'] = 'admin/report_doctor';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}

	public function view_hospital()
	{
		$fromdate = $this->input->get('fromdate');
		$todate = $this->input->get('todate');
		$this->view_data['hospital'] = $this->user->get_hospital_user_report($fromdate, $todate);
		$this->view_data['_view'] = 'admin/report_hospital';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}

	public function view_patient()
	{
		$fromdate = $this->input->get('fromdate');
		$todate = $this->input->get('todate');
		$this->view_data['patinet'] = $this->user->get_patient_user_report($fromdate, $todate);
		$this->view_data['_view'] = 'admin/report_patient';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}


	public function view_income()
	{
		$fromdate = $this->input->get('fromdate');
		$todate = $this->input->get('todate');
		$doctor = $this->input->get('doctor');

		$this->view_data['doctors'] = $this->user->get_doctor_user();
		$this->view_data['hospital'] = $this->user->get_hospital_user();
		$this->view_data['doctorcharge'] = $this->booking->charges_count_for_admin_report($fromdate, $todate,$doctor);
		$this->view_data['_view'] = 'admin/report_income';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}

	public function site_statistics()
	{
		$this->view_data['count_doc'] = $this->user->count_doctors();
		$this->view_data['count_pat'] = $this->user->count_patient();
		$this->view_data['count_rec'] = $this->user->count_receptionist();
		$this->view_data['count_hos'] = $this->user->count_hospital();
		$this->view_data['_view'] = 'admin/site_statestics';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}

	public function view_income_hospital()
	{
		$this->view_data['hospital'] = $this->user->get_hospital_user();

		$hid = $this->input->get('hospital');
		$fromdate = $this->input->get('fromdate');
		$todate = $this->input->get('todate');
		$a = array();
		$this->view_data['doctorcharge'] = $this->hospital->get_doctor_by_hospital($hid);
		foreach ($this->view_data['doctorcharge'] as $doc) {
			$income = $this->booking->get_income_by_doc_and_hspital($doc->user_id, $fromdate, $todate);
			if ($doc->total = $income) {
				$doc->total = $income[0]->total;
			}
		}


		$this->view_data['_view'] = 'admin/report_income_hospital';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}


	public function income_chart_hospital()
	{
		$hid = $this->input->get('hospital');

		$this->view_data['doctors'] = $this->doctor->get_by_hospital($hid);
		$u = array();
		foreach ($this->view_data['doctors'] as $uid) {
			$u[] = $uid->user_id;
		}
		$this->view_data['hospitals'] = $this->user->get_hospital_user();
		if ($u) {
			$this->view_data['chartdata'] = $this->hospital->get_chart_data_month_wise($u);
		}

		$this->view_data['docs'] = $this->user->get_doctor_user();
		$this->view_data['_view'] = 'admin/charts';
		$this->load->view('layouts/master_page_admin', $this->view_data);


	}

	public function income_chart_doctor()
	{

		$did = $this->input->get('doctor');
		$this->view_data['hospitals'] = $this->user->get_hospital_user();

		$this->view_data['docs'] = $this->user->get_doctor_user();
		$this->view_data['chartdatadoctor'] = $this->doctor->get_chart_data_month_wise($did);
		$this->view_data['_view'] = 'admin/charts';
		$this->load->view('layouts/master_page_admin', $this->view_data);


	}

}

/* End of file Slider.php */
/* Location: ./application/controllers/Slider.php */
