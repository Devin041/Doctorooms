<?php

class Crownjob extends Guest_controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Users_model', 'user');

	}

	public function birthReminder()
	{
		$birthdates = $this->user->get_today_birthday();

		foreach ($birthdates as $date) {
			if ((date('d', strtotime($date->date_of_birth)) == date('d')) && (date('m', strtotime($date->date_of_birth)) == date('m'))) {
				$msg = 'Happy Birthday Dear ' . $date->name . ' Stay Healthy... %0aFrom Dr.'.$date->docname.' ( DOCTOROOMS ) %0a(https://doctorooms.com)';

				return $this->sendMobileMessage($date->mobile_no, $msg);

			} else {
				return 0;
			}
		}
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


}
