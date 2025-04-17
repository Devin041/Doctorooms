<?php

class Dashboard extends Doctor_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Booking_model', 'book');
        $this->load->model("posts_model", "post");
        $this->load->model("Doctor_rating_model", "doctor_rating");
        $this->load->model("Doctors_model", "doctor");
        $this->load->model('Hospital_model', 'hospital');


        $doctor = $this->doctor->get_one_by_user($this->user_data->id);
        if (!$doctor) {
            $this->doctor->create(array("user_id" => $this->user_data->id, "booking_days" => BEFORE_BOOKING_DAYS,"is_emergency"=>0));
        }
    }

    public function index()
    {
        $doctor = $this->doctor->get_active_user($this->user_data->id);
        $this->view_data['is_emergency']=$doctor->is_emergency;
        $this->view_data['hospital'] = $this->hospital->get_one_by_user($doctor->hospital_id);
        $this->view_data['today_pending_appointment'] = count($this->book->get_today_doctor_appointment($this->user_data->id, PENDING));
        $this->view_data['my_blog'] = count($this->post->get_all_by_user($this->user_data->id));
        $this->view_data['myprofile_rating'] = $this->doctor_rating->get_average_rating($this->user_data->id);
        $this->view_data['today_visited_appointment'] = count($this->book->get_today_doctor_appointment($this->user_data->id, VISITED));
        $this->view_data['appointments'] = $this->book->get_doctor_appointments_ajax($this->user_data->id,10,0);
      	  $this->view_data['today_appointments'] = $this->book->get_today_doctor_appointment($this->user_data->id);

        $this->view_data['_title'] = "Dashboard";
        $this->view_data['_view'] = "doctor/dashboard";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

	public function change_emergency()
	{
		$is_emergency = $this->input->post('is_emergency');
		$doc_data = $this->doctor->get_one_by_user($this->user_data->id);
		 $data=array(
		 	'is_emergency'=>$is_emergency
		 );

		$today_appoinments=$this->book->get_doctor_appointments_today($this->user_data->id,APPROVE);

		foreach ($today_appoinments as $appoinment){
			$msg="";
			if($is_emergency){
				$msg = 'Your  doctor ' . $this->user_data->name . ' is in emergency... %0aDOCTOROOMS %0a(https://doctorooms.com)';

				 $this->sendMobileMessage($appoinment->mobile_no, $msg);
			}
			else{

			}


		}
		$update=$this->doctor->update($doc_data->id, $data);
	
		if ($update){
			$arr=array('success','Emergency Status Successfully updated');
		}
		else{
			$arr=array('error','Something want wrong');
		}
		header('Content-Type: application/json');
		echo json_encode( $arr );
    }

	protected function sendMobileMessage($mobile, $message)
	{
		$url = "http://sms.soft-techsolutions.com/submitsms.jsp?user=DRROOM&key=d44b9e34dbXX&mobile=+91" . $mobile . "&message=" . $message . "&senderid=NTFSMS&accusage=1";

		$url = str_replace(" ", '%20', $url);
		$ch = curl_init($url);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$x = curl_exec($ch);
		curl_close($ch);
		return $x;

		//return '{"ErrorCode":"000"}';
	}

	public function loadmore()
	{
		$limit = $this->input->get('limit');
		$offset = $this->input->get('offset');

		$results=	$this->book->get_doctor_appointments_ajax($this->user_data->id,$limit,$offset);

		$data['view'] = $this->load->view('doctor/get_appointment_ajax_table',compact('results','offset'),TRUE);
		$data['offset'] =$offset +10;
		$data['limit'] =$limit;
		echo json_encode($data);
	}
}
