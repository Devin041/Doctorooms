<?php

/**
 * Class MY_Controller
 * @property Posts_model post
 * @property Slider_model slider
 * @property Users_model user
 * @property Doctors_model doctor
 * @property Hospital_model hospital
 * @property Patient_model patient
 * @property Reset_password_model reset_password
 * @property Receptionist_model receptionist
 * @property Booking_model book
 * @property Booking_model booking
 * @property Doctor_assistants_model assistants
 * @property Prescriptions_model prescription
 */
class MY_Controller extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function dump($var)
	{
		echo "<pre>";
		var_dump($var);
		echo "</pre>";
	}

	protected function _alertSuccessResponce($success, $success_msg, $fail_msg, $re_url)
	{
		if ($success) {
			$this->session->set_flashdata('feedback', $success_msg);
			$this->session->set_flashdata('feedback_class', 'success');
		} else {
			$this->session->set_flashdata('feedback', $fail_msg);
			$this->session->set_flashdata('feedback_class', 'error');
		}
		return redirect($re_url);
	}

	protected function _alertInfoResponce($success, $success_msg, $fail_msg, $re_url)
	{
		if ($success) {
			$this->session->set_flashdata('feedback', $success_msg);
			$this->session->set_flashdata('feedback_class', 'info');
		} else {
			$this->session->set_flashdata('feedback', $fail_msg);
			$this->session->set_flashdata('feedback_class', 'error');
		}
		return redirect($re_url);
	}

	protected function _alertWarningResponce($success, $success_msg, $fail_msg, $re_url)
	{
		if ($success) {
			$this->session->set_flashdata('feedback', $success_msg);
			$this->session->set_flashdata('feedback_class', 'alert');
		} else {
			$this->session->set_flashdata('feedback', $fail_msg);
			$this->session->set_flashdata('feedback_class', 'error');
		}
		return redirect($re_url);
	}

	/**
	 * This function generate encryption of your plain text
	 * @param $plain_text
	 * @return string
	 */
	protected function encrypted_text($plain_text)
	{

		$this->load->library("encryption");
		$e_key = ENCPT_KEY;
		$this->encryption->initialize(
			array(
				'cipher' => 'AES-128',
				'mode' => 'CBC',
				'key' => $e_key
			)
		);
		$en = $this->encryption->encrypt($plain_text);
		$en = strtr($en, array('+' => '.', '=' => '-', '/' => '~'));
		return $en;
	}

	protected function decrypted_text($encrypted_text)
	{
		$this->load->library("encryption");
		$e_key = ENCPT_KEY;
		$this->encryption->initialize(
			array(
				'cipher' => 'AES-128',
				'mode' => 'CBC',
				'key' => $e_key
			)
		);
		$encrypted_text = strtr($encrypted_text, array('.' => '+', '-' => '=', '~' => '/'));
		$de = $this->encryption->decrypt($encrypted_text);

		return $de;
	}

	protected function send_mail($to, $subject, $msg)
	{
		/*$config = Array(
			'protocol' => 'smtp',
			'smtp_host' => 'ssl://smtp.googlemail.com',
			'smtp_port' => 465,
			'smtp_user' => '', // change it to yours
			'smtp_pass' => '', // change it to yours
			'charset' => 'iso-8859-1',
			'wordwrap' => TRUE
		);
		$this->load->library('email',$config);*/

		$this->load->library('email');
		$this->email->set_newline("\r\n")
			->from(EMAIL_FROM, EMAIL_NAME)
			->to($to)
			->subject($subject)
			->message($msg)
			->set_mailtype('html');
		if ($this->email->send()) {
			return true;
		} else {
			log_message('error', $this->email->print_debugger());
			return false;
		}

	}

	protected function _upload_files($path, $title, $img_control_name)
	{
		$files = $_FILES[$img_control_name];
		$config = array(
			'upload_path' => $path,
			'allowed_types' => 'jpg|jpeg|gif|png|JPEG|JPG|PNG|GIF',
			'overwrite' => true,
		);

		$this->load->library('upload', $config);

		$images = array();
		$img_ctrl_nm = $img_control_name . '[]';
		foreach ($files['name'] as $key => $image) {
			$_FILES[$img_ctrl_nm]['name'] = $files['name'][$key];
			$_FILES[$img_ctrl_nm]['type'] = $files['type'][$key];
			$_FILES[$img_ctrl_nm]['tmp_name'] = $files['tmp_name'][$key];
			$_FILES[$img_ctrl_nm]['error'] = $files['error'][$key];
			$_FILES[$img_ctrl_nm]['size'] = $files['size'][$key];

			$imgExt = explode('.', $image);
			$fileName = $title . '_' . time() . uniqid(rand()) . "." . end($imgExt);

			$images[] = $fileName;

			$config['file_name'] = $fileName;

			$this->upload->initialize($config);

			if ($this->upload->do_upload($img_ctrl_nm)) {
				$this->upload->data();
			} else {
				return false;
			}
		}

		return json_encode($images);
	}

	public function _upload_file($path, $title, $img_control_name)
	{

		if ($_FILES[$img_control_name]['name']) {
			$config = array(
				'upload_path' => $path,
				'allowed_types' => 'jpg|jpeg|gif|png|JPEG|JPG|PNG|GIF',
				'overwrite' => true,
				'max_size' => 2000,
			);
			$this->load->library('upload', $config);
			$config['file_name'] = $title . '_' . time() . uniqid(rand());
			$this->upload->initialize($config);

			if ($this->upload->do_upload($img_control_name)) {
				return array(
					"status" => "true",
					"file_name" => $this->upload->data('file_name')
				);
			} else {
				return array(
					"status" => "false",
					"upload_error" => $this->upload->display_errors()
				);
			}
		} else {
			return array(
				"status" => "false",
				"upload_error" => $this->upload->display_errors()
			);
		}
	}

	public function _upload_pdf($path, $title, $file_control_name)
	{

		if ($_FILES[$file_control_name]['name']) {
			$config = array(
				'upload_path' => $path,
				'allowed_types' => 'pdf|PDF|xlsx|XLSX|xls|XLS',
				'overwrite' => true,
				'max_size' => 2000,
			);
			$this->load->library('upload', $config);
			$config['file_name'] = $title . '_' . time() . uniqid(rand());
			$this->upload->initialize($config);

			if ($this->upload->do_upload($file_control_name)) {
				return array(
					"status" => "true",
					"file_name" => $this->upload->data('file_name')
				);
			} else {
				return array(
					"status" => "false",
					"upload_error" => $this->upload->display_errors()
				);
			}
		} else {
			return array(
				"status" => "false",
				"upload_error" => $this->upload->display_errors()
			);
		}
	}

	/**
	 * This function will generate the thumb of given image of size 150
	 * @param string $source_path The source image path
	 * @param type $target_path where to save thumb image
	 * @param type $source_file source image name without path
	 * @return type false or return thumb image name
	 */
	protected function _generate_thumb($source_path, $target_path, $source_file)
	{
		$source_path = $source_path . $source_file;
		$config_manip = array(
			'image_library' => 'gd2',
			'source_image' => $source_path,
			'new_image' => $target_path,
			'maintain_ratio' => TRUE,
			'create_thumb' => TRUE,
			'thumb_marker' => '_thumb',
			'width' => 300,
			'height' => 300
		);

		$this->load->library('image_lib', $config_manip);
		$this->image_lib->initialize($config_manip);
		if (!$this->image_lib->resize()) {
//            echo $this->image_lib->display_errors();
//            var_dump($config_manip);
//            exit();
			return false;
		}

		// clear //
		$this->image_lib->clear();
		$only_name = explode('.', $source_file)[0];
		$only_name = $only_name . '_thumb';
		$extension = explode('.', $source_file)[1];

		return $only_name . '.' . $extension;
	}

	/**
	 * This function will generate multiple image thumb
	 * @param string $source_path The source image path
	 * @param type $target_path where to save thumb image
	 * @param type $source_file_array source image array
	 * @return type return array of thumb image name
	 */
	protected function _generate_multiple_thumb($source_path, $target_path, $source_file_array)
	{
		$new_array = array();
		for ($i = 0; $i < count($source_file_array); $i++) {
			$new_array[$i] = $this->_generate_thumb($source_path, $target_path, $source_file_array[$i]);
		}
		return $new_array;
	}

	protected function _generateSeoURL($string, $wordLimit = 0)
	{
		$separator = '-';

		if ($wordLimit != 0) {
			$wordArr = explode(' ', $string);
			$string = implode(' ', array_slice($wordArr, 0, $wordLimit));
		}

		$quoteSeparator = preg_quote($separator, '#');

		$trans = array(
			'&.+?;' => '',
			'[^\w\d _-]' => '',
			'\s+' => $separator,
			'(' . $quoteSeparator . ')+' => $separator
		);

		$string = strip_tags($string);
		foreach ($trans as $key => $val) {
			$string = preg_replace('#' . $key . '#i' . (UTF8_ENABLED ? 'u' : ''), $val, $string);
		}

		$string = strtolower($string);

		return trim(trim($string, $separator));
	}

	public function logout()
	{
		$this->session->unset_userdata('user_login');
		return redirect('auth/login');
	}

	public function next_available_booking_days($days, $holidays)
	{
		$date = date('Y-m-d'); //today date
		$nextDays = array();
		for ($i = 1; $i <= $days; $i++) {
			$date = date('Y-m-d', strtotime('+1 day', strtotime($date)));
			$nextDays[] = date('Y-m-d', strtotime($date));
		}

		$newHolydays = array();
		foreach ($holidays as $holiday) {
			array_push($newHolydays, $holiday['date']);
		}

		$final_array = (array)array_diff($nextDays, $newHolydays);

		return $final_array;
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

class Doctor_controller extends MY_Controller
{
	protected $view_data;
	protected $user_data;

	public function __construct()
	{
		parent::__construct();

		//$this->output->enable_profiler(TRUE);

		//echo "hi";
		// check Session Section
		$session_data = $this->session->userdata('user_login');
		if (!$session_data)
			return redirect('auth/login');

		if ($session_data['role'] != DOCTOR)
			return redirect('auth/login');

		//check user not block
		$this->load->model("Users_model", "user");
		$this->load->model("Notifications_model", "notification");
		$log_data = $this->user->check_auth_after_login($session_data);
		if ($log_data == false) {
			$this->session->set_flashdata("alert_class", "alert-info");
			$this->session->set_flashdata("alert_msg", "You are blocked");
			$this->logout();
		}
		$this->view_data['user'] = $log_data;
		$this->user_data = $log_data;
		$this->view_data['notifications'] = $this->notification->get_all_by_user_by_status($this->user_data->id, 7);
		$this->view_data['notificationsCount'] = $this->notification->get_count_by_user($this->user_data->id, 7);

	}


	public function _change_status($table = NULL, $id = NULL, $status = NULL)
	{

		if (is_null($table) || is_null($id) || is_null($status)) redirect(base_url('doctor/dashboard'));

		if ($status == BLOCK) {
			$data = array('status' => ACTIVE);
			$t = $this->db->where('id', $id);
			$this->db->where('doctor_id', $this->user_data->id);
			$this->db->update($table, $data);
			if ($t) {
				redirect($_SERVER['HTTP_REFERER']);

			}
		}
		if ($status == ACTIVE) {
			$data = array('status' => BLOCK);
			$t = $this->db->where('id', $id);
			$this->db->where('doctor_id', $this->user_data->id);
			$this->db->update($table, $data);
			if ($t) {
				redirect($_SERVER['HTTP_REFERER']);
			}

		}
	}

}

class Guest_controller extends MY_Controller
{
	protected $view_data;
	protected $user_data;

	public function __construct()
	{
		parent::__construct();

		// check Session Section
		$session_data = $this->session->userdata('user_login');
		$this->load->model("Notifications_model", "notification");

		//check user not block
		if ($session_data) {
			$this->load->model("Users_model", "user");
			$log_data = $this->user->check_auth_after_login($session_data);
			if ($log_data == false) {
				$this->session->set_flashdata("alert_class", "alert-info");
				$this->session->set_flashdata("alert_msg", "You are blocked");
				$this->logout();
			}

			$this->user_data = $log_data;
			$this->view_data['user'] = $this->user_data;
			$this->view_data['notifications'] = $this->notification->get_all_by_user_by_status($this->user_data->id, 7);
			$this->view_data['notificationsCount'] = $this->notification->get_count_by_user($this->user_data->id);
		} else {
			$this->view_data['user'] = array();
		}
	}
}

class Patient_contoller extends MY_Controller
{
	protected $view_data;
	protected $user_data;

	public function __construct()
	{
		parent::__construct();

		// check Session Section
		$session_data = $this->session->userdata('user_login');
		if (!$session_data)
			return redirect('auth/login');

		if ($session_data['role'] != PATIENT)
			return redirect('auth/login');

		//check user not block
		$this->load->model("Users_model", "user");
		$this->load->model("Notifications_model", "notification");
		$log_data = $this->user->check_auth_after_login($session_data);
		if ($log_data == false) {
			$this->session->set_flashdata("alert_class", "alert-info");
			$this->session->set_flashdata("alert_msg", "You are blocked");
			$this->logout();
		}

		$this->user_data = $log_data;
		$this->view_data['user'] = $this->user_data;
		$this->view_data['notifications'] = $this->notification->get_all_by_user_by_status($this->user_data->id, 7);
		$this->view_data['notificationsCount'] = $this->notification->get_count_by_user($this->user_data->id);
	}
}

class Reception_contoller extends MY_Controller
{
	protected $view_data;
	protected $user_data;

	public function __construct()
	{
		parent::__construct();

		// check Session Section
		$session_data = $this->session->userdata('user_login');
		if (!$session_data)
			return redirect('auth/login');

		if ($session_data['role'] != RECEPTIONIST)
			return redirect('auth/login');

		//check user not block
		$this->load->model("Users_model", "user");
		$this->load->model("Notifications_model", "notification");
		$this->load->model("Receptionist_model", "receptionist");
		$this->load->model("Doctors_model", "doctor");

		$log_data = $this->user->check_auth_after_login($session_data);
		if ($log_data == false) {
			$this->session->set_flashdata("alert_class", "alert-info");
			$this->session->set_flashdata("alert_msg", "You are blocked");
			$this->logout();
		}
		$this->user_data = $log_data;
		$this->view_data['user'] = $this->user_data;
		$this->view_data['notifications'] = $this->notification->get_all_by_user_by_status($this->user_data->id, 7);
		$this->view_data['notificationsCount'] = $this->notification->get_count_by_user($this->user_data->id);
		$this->user_data->doctor_id = $this->receptionist->get_by_user_id($this->user_data->id)->doctor_id;

		$this->doctor_data=$this->doctor->get_one_by_user($this->user_data->doctor_id);
		$this->view_data['doctor_data']=$this->doctor_data;
	}
}

class Assistant_controller extends MY_Controller
{
	protected $view_data;
	protected $user_data;

	public function __construct()
	{
		parent::__construct();

		// check Session Section
		$session_data = $this->session->userdata('user_login');
		if (!$session_data)
			return redirect('auth/login');

		if ($session_data['role'] != DOCTOR_ASSISTANT)
			return redirect('auth/login');

		//check user not block
		$this->load->model("Users_model", "user");
		$this->load->model("Notifications_model", "notification");
		$log_data = $this->user->check_auth_after_login($session_data);
		if ($log_data == false) {
			$this->session->set_flashdata("alert_class", "alert-info");
			$this->session->set_flashdata("alert_msg", "You are blocked");
			$this->logout();
		}
		$this->user_data = $log_data;
		$this->view_data['user'] = $this->user_data;
		$this->view_data['notifications'] = $this->notification->get_all_by_user_by_status($this->user_data->id, 7);
		$this->view_data['notificationsCount'] = $this->notification->get_count_by_user($this->user_data->id);
	}
}

class Hospital_contoller extends MY_Controller
{
	protected $view_data;
	protected $user_data;

	public function __construct()
	{
		parent::__construct();

		// check Session Section
		$session_data = $this->session->userdata('user_login');
		if (!$session_data)
			return redirect('auth/login');

		if ($session_data['role'] != HOSPITAL)
			return redirect('auth/login');

		//check user not block
		$this->load->model("Users_model", "user");
		$log_data = $this->user->check_auth_after_login($session_data);
		if ($log_data == false) {
			$this->session->set_flashdata("alert_class", "alert-info");
			$this->session->set_flashdata("alert_msg", "You are blocked");
			$this->logout();
		}
		$this->user_data = $log_data;
		$this->user_data = (object)$session_data;
		$this->view_data['user'] = $this->user_data;
	}
}

class Admin_contoller extends MY_Controller
{
	protected $view_data;
	protected $user_data;

	public function __construct()
	{
		parent::__construct();

		// check Session Section
		$session_data = $this->session->userdata('user_login');
		//var_dump($session_data['role'] != ADMIN);
		if (!$session_data)
			return redirect('auth/login');

		if ($session_data['role'] != ADMIN)
			return redirect('auth/login');

		//check user not block
		$this->load->model("Users_model", "user");
		$log_data = $this->user->check_auth_after_login($session_data);

		$this->user_data = $log_data;

		$this->user_data = (object)$session_data;
		$this->view_data['user'] = $this->user_data;
	}
}

class Pharmacist_contoller extends MY_Controller
{
	protected $view_data;
	protected $user_data;

	public function __construct()
	{
		parent::__construct();

		// check Session Section
		$session_data = $this->session->userdata('user_login');
		//var_dump($session_data['role'] != ADMIN);
		if (!$session_data)
			return redirect('auth/login');

		if ($session_data['role'] != PHARMACIST)
			return redirect('auth/login');

		//check user not block
		$this->load->model("Users_model", "user");
		$log_data = $this->user->check_auth_after_login($session_data);

		$this->user_data = $log_data;

		$this->user_data = (object)$session_data;
		$this->view_data['user'] = $this->user_data;
	}

}
