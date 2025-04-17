<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends Guest_controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model("Users_model", "user");
		$this->load->model("Reset_password_model", "reset_password");
	}

	public function register()
	{
		//check if already Login
		if ($this->session->userdata('user_login')) {
			$role = $this->session->userdata('user_login');

			switch ($role['role']) {
				case DOCTOR:
					return redirect('doctor/dashboard');
					break;
				case PATIENT:
					return redirect('home');
					break;
				case RECEPTIONIST:
					return redirect('receptionist/dashboard');
					break;
				case HOSPITAL:
					return redirect('hospital/dashboard');
					break;
				case PHARMACIST:
					return redirect('pharmacist/dashboard');
					break;
				case ADMIN:
					return redirect('admin/dashboard');
					break;
				default:
					show_404();
			}
		}

		if ($this->input->get("type") == "dr" || $this->input->get("type") == "patient") {
			$this->view_data['_title'] = "Register";
			$this->load->view("front/register", $this->view_data);
		} else {
			redirect("auth/login");
		}
	}

	public function signup()
	{

		//check registration type
		if ($this->input->get("type") == "dr" || $this->input->get("type") == "patient") {
		} else {
			redirect("auth/login");
		}

		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_error_delimiters("<div class='text-danger' style='font-size:10px;'>", "</div>");
			if ($this->form_validation->run("register")) {
				$input_data = $this->input->post();
				unset($input_data['c_pass']);
				unset($input_data['terms']);
				$input_data['role'] = ($this->input->get("type") == "dr") ? DOCTOR : PATIENT;
				$input_data['status'] = PENDING;
				$password = $input_data['password'];
				$input_data['password'] = hash("sha256", $input_data['password']);
				$created_user = $this->user->create($input_data);
				if ($created_user) {
					/*$verification_data = [
						"id" => $created_user,
						"email" => $input_data['email'],
						"date_time" => date("Y-m-d H:i:s")
					];
					$link_data = $this->encrypted_text(json_encode($verification_data));
					$verification_template = $this->get_verify_email_template($link_data);

					$this->send_mail($input_data['email'], SITE_TITLE . " - Email Verification", $verification_template);*/

					//Send Welcome message
					$mobile = $input_data['mobile_no'];
					$message = "Welcome, " . $input_data['name'] . ". You are successfully registered to " . SITE_TITLE . ". Your account id is your mobile number and your password is:" . $password;
					$this->sendMobileMessage($mobile, $message);
					// end

					$this->session->set_flashdata("alert_msg", "Signup successful. Login your account and verify your mobile.");
					$this->session->set_flashdata("alert_class", "alert-info");
				}
				redirect("auth/login", "refresh");
			} else {
				$this->view_data['_title'] = "Register";
				$this->load->view("front/register", $this->view_data);
			}
		}
	}

	public function verify_mobile()
	{
		$user = $this->session->userdata('verify_data');
		if (!$user) {
			redirect('auth/login');
		}

		$this->load->view('front/register_mobile_verify');
	}

	public function sendotp_mobile_verify()
	{
		$user = $this->session->userdata('verify_data');
		if (!$user) {
			redirect('auth/login');
		}

		$otp = rand(100000, 999999);
		$mobile = $user['mobile_no'];
		$message = "Dear User, $otp is your " . SITE_TITLE . " OTP code for verification.";
		$this->sendMobileMessage($mobile, $message);

		$data = [
			"mobile_no" => $mobile,
			"opt" => $otp,
			"date" => date('Y-m-d H:i:s'),
		];

		$this->session->set_userdata('mobile_verification_data', $data);
		$this->session->set_flashdata('alert_msg', "Otp has been send to $mobile");
		$this->session->set_flashdata('alert_class', "info");
		redirect('auth/verify_mobile');
	}

	public function verify_mobile_submit()
	{
		$user = $this->session->userdata('verify_data');
		if (!$user) {
			redirect('auth/login');
		}

		$mobile_verification_data = $this->session->userdata('mobile_verification_data');
		if (!$mobile_verification_data) {
			redirect('auth/login');
		}

		$date1 = $mobile_verification_data['date'];
		$date2 = date('Y-m-d H:i:s');

		$seconds = strtotime($date2) - strtotime($date1);

		if ($seconds >= 180) {
			$this->session->unset_userdata('verify_data');
			$this->session->unset_userdata('mobile_verification_data');

			$this->session->set_flashdata('alert_msg', "Otp expired. Please login and try again later.");
			$this->session->set_flashdata('alert_class', "danger");
			redirect('auth/login');
		}

		$otp = $this->input->post('otp');
		if ($otp == $mobile_verification_data['opt']) {

			$user_data = $this->user->check_auth_after_login($mobile_verification_data);

			$update_data['status'] = ACTIVE;
			$update_data['mobile_verified_at'] = date('Y-m-d H:i:s');
			$this->user->update($user_data->id, $update_data);

			$latest_user_data = $this->user->check_auth_after_login($mobile_verification_data);
			$uDataSession = array(
				"id" => $latest_user_data->id,
				"name" => $latest_user_data->name,
				"email" => $latest_user_data->email,
				"role" => $latest_user_data->role,
				"status" => $latest_user_data->status,
				"mobile_no" => $latest_user_data->mobile_no,
				"profile_img" => $latest_user_data->profile_img
			);

			$this->session->unset_userdata('verify_data');
			$this->session->unset_userdata('mobile_verification_data');

			$this->session->set_userdata('user_login', $uDataSession);
			redirect('auth/login');
		} else {
			$this->session->set_flashdata('alert_msg', "OTP does not match.");
			$this->session->set_flashdata('alert_class', "danger");
			redirect('auth/verify_mobile');
		}
	}

	public function verify_email()
	{
		$token = $this->input->get('token');
		if ($token) {
			$plain_data = $this->decrypted_text($token);
			$plain_array = json_decode($plain_data, true);
			if (isset($plain_array['id']) && isset($plain_array['email']) && isset($plain_array['date_time'])) {

				$is_pending = $this->user->check_status_is_pending($plain_array['id']);
				if ($is_pending) {
					$up = $this->user->update($plain_array['id'], ['status' => ACTIVE]);
					if ($up) {
						$this->session->set_flashdata("alert_msg", "Email Verification Successful login now.");
						$this->session->set_flashdata("alert_class", "alert-success");
						redirect('auth/login');
					} else {
						redirect('/');
					}
				} else {
					redirect('/');
				}
			} else {
				redirect('/');
			}
		} else {
			redirect('/');
		}
	}

	public function login()
	{
		//check if already Login
		if ($this->session->userdata('user_login')) {
			$role = $this->session->userdata('user_login');

			switch ($role['role']) {
				case DOCTOR:
					return redirect('doctor/dashboard');
					break;
				case PATIENT:
					return redirect('appointment');
					break;
				case RECEPTIONIST:
					return redirect('receptionist/dashboard');
					break;
				case HOSPITAL:
					return redirect('hospital/dashboard');
					break;
				case ADMIN:
					return redirect('admin/dashboard');
					break;
				case DOCTOR_ASSISTANT:
					return redirect('assistant/dashboard');
					break;
				default:
					show_404();
			}
		}
		$this->view_data['_title'] = "Login";
		$this->load->view("front/login", $this->view_data);
	}

	/**
	 *
	 */
	public function auth_login()
	{
		$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
		if ($this->form_validation->run("login")) {
			$logData = $this->input->post();
			$logData['password'] = hash("sha256", $logData['password']);
			//for  Remember login userdata in cookies
			$remember = $logData['remember'];
			if ($remember) {
				$this->session->set_userdata('remember', 1);
				$this->load->helper('cookie');
				$cookie = $this->input->cookie('ci_sess'); // we get the cookie
				$this->input->set_cookie('ci_sess', $cookie, '604800'); // and add one week to it's expiration
			}
			// End Remember login
			if ($ud = $this->user->check_auth($logData)) {

				if ($ud['status'] == ACTIVE) {
					$this->session->set_userdata("user_login", $ud);
					if ($ud['role'] == DOCTOR) {
						redirect("doctor/dashboard", "refresh");
					} elseif ($ud['role'] == PATIENT) {
						redirect("home", "refresh");
					} elseif ($ud['role'] == RECEPTIONIST) {
						redirect("receptionist/dashboard", "refresh");
					} elseif ($ud['role'] == HOSPITAL) {
						redirect("hospital/dashboard", "refresh");
					} elseif ($ud['role'] == ADMIN) {
						redirect("admin/dashboard", "refresh");
					} elseif ($ud['role'] == DOCTOR_ASSISTANT) {
						redirect("assistant/dashboard", "refresh");
					} elseif ($ud['role'] == PHARMACIST) {
						redirect("pharmacist/pharmacist/listPrescriptions", "refresh");
					}
				}

				if ($ud['status'] == PENDING) {
					$this->session->set_userdata('verify_data', $ud);
					redirect('auth/verify_mobile');
				}

				if ($ud['status'] == BLOCK) {
					$this->session->set_flashdata('log_error', "You are Blocked.");
					redirect('auth/login');
				}


			} else {
				$this->session->set_flashdata('log_error', "Email or Password is invalid");
				redirect($_SERVER['HTTP_REFERER']);
			}
		} else {
			$this->view_data['_title'] = "Login";
			$this->load->view("front/login", $this->view_data);
		}
	}


	public function forgot_password()
	{
		$this->view_data['_title'] = "Forgot password";
		$this->load->view('front/forgot_password/forgot_password', $this->view_data);
	}

	public function forgot_submit()
	{
		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_rules('mobile', 'Mobile', 'trim|required|callback_valid_mobile_exits');
			$this->form_validation->set_error_delimiters("<div class='text-danger' style='font-size:10px;'>", "</div>");
			if ($this->form_validation->run()) {
				$mobile = $this->input->post('mobile');
				$forgot_data = [
					"mobile" => $mobile,
					"created_at" => date('Y-m-d H:i:s')
				];
				$this->session->set_userdata('forgot_data', $forgot_data);
				redirect('auth/forgot_password_mobile_verification');
			} else {
				$this->view_data['_title'] = "Forgot password";
				$this->load->view('front/forgot_password/forgot_password', $this->view_data);
			}
		} else {
			redirect('auth/login');
		}
	}

	public function forgot_password_mobile_verification()
	{
		$forgot_data = $this->session->userdata('forgot_data');
		if (!$forgot_data) {
			redirect('auth/login');
		}

		$this->load->view('front/forgot_password/otp_verify_form');
	}

	public function forgot_password_mobile_verification_submit()
	{
		$forgot_password_verification_data = $this->session->userdata('forgot_password_verification_data');
		if (!$forgot_password_verification_data) {
			redirect('auth/login');
		}

		$date1 = $forgot_password_verification_data['date'];
		$date2 = date('Y-m-d H:i:s');

		$seconds = strtotime($date2) - strtotime($date1);

		if ($seconds >= 180) {
			$this->session->unset_userdata('forgot_data');
			$this->session->unset_userdata('forgot_password_verification_data');

			$this->session->set_flashdata('alert_msg', "Otp expired. Please login and try again later.");
			$this->session->set_flashdata('alert_class', "danger");
			redirect('auth/login');
		}

		$otp = $this->input->post('otp');
		if ($otp == $forgot_password_verification_data['opt']) {
			$data = [
				"mobile" => $forgot_password_verification_data['mobile_no'],
				"date" => date('Y-m-d H:i:s'),
			];

			$this->session->set_userdata('generate_password_data', $data);
			$this->session->unset_userdata('forgot_data');
			$this->session->unset_userdata('forgot_password_verification_data');

			redirect('auth/generate_new_password');
		} else {
			$this->session->set_flashdata('alert_msg', "OTP does not match.");
			$this->session->set_flashdata('alert_class', "danger");
			redirect('auth/forgot_password_mobile_verification');
		}
	}

	public function forgot_password_send_otp()
	{
		$forgot_data = $this->session->userdata('forgot_data');
		if (!$forgot_data) {
			redirect('auth/login');
		}

		$otp = rand(100000, 999999);
		$mobile = $forgot_data['mobile'];
		$message = "Dear User, $otp is your " . SITE_TITLE . " OTP code for forgot password.";
		$this->sendMobileMessage($mobile, $message);

		$data = [
			"mobile_no" => $mobile,
			"opt" => $otp,
			"date" => date('Y-m-d H:i:s'),
		];

		$this->session->set_userdata('forgot_password_verification_data', $data);
		$this->session->set_flashdata('alert_msg', "Otp has been send to your mobile");
		$this->session->set_flashdata('alert_class', "info");
		redirect('auth/forgot_password_mobile_verification');
	}

	public function generate_new_password()
	{
		$generate_password_data = $this->session->userdata('generate_password_data');
		if (!$generate_password_data) {
			redirect('auth/login');
		}

		$date1 = $generate_password_data['date'];
		$date2 = date('Y-m-d H:i:s');

		$seconds = strtotime($date2) - strtotime($date1);

		if ($seconds >= 300) {
			$this->session->unset_userdata('forgot_data');
			$this->session->unset_userdata('forgot_password_verification_data');

			$this->session->set_flashdata('alert_msg', "Otp expired. Please login and try again later.");
			$this->session->set_flashdata('alert_class', "danger");
			redirect('auth/login');
		}

		$this->view_data['_title'] = "Generate new password";
		$this->load->view('front/forgot_password/generate_password', $this->view_data);
	}

	public function generate_new_password_submit()
	{
		$generate_password_data = $this->session->userdata('generate_password_data');
		if (!$generate_password_data) {
			redirect('auth/login');
		}

		$date1 = $generate_password_data['date'];
		$date2 = date('Y-m-d H:i:s');

		$seconds = strtotime($date2) - strtotime($date1);

		if ($seconds >= 300) {
			$this->session->unset_userdata('forgot_data');
			$this->session->unset_userdata('forgot_password_verification_data');

			$this->session->set_flashdata('alert_msg', "Otp expired. Please login and try again later.");
			$this->session->set_flashdata('alert_class', "danger");
			redirect('auth/login');
		}

		$user_data = $this->user->get_by_mobile_for_forgot_password($generate_password_data['mobile']);

		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_rules('new_password', 'new password', 'required|min_length[6]');
			$this->form_validation->set_rules('conform_password', 'conform password', 'required|matches[new_password]');
			$this->form_validation->set_error_delimiters("<div class='text-danger' style='font-size:10px;'>", "</div>");
			if ($this->form_validation->run()) {
				$new_password = $this->input->post('new_password');
				$new_password = hash("sha256", $new_password);
				$this->user->update($user_data->id, ["password" => $new_password]);

				$this->session->unset_userdata('generate_password_data');
				$this->session->set_flashdata("alert_msg", "Your password is successfully reset.");
				$this->session->set_flashdata("alert_class", "success");
				redirect("auth/login", "refresh");
			} else {
				$this->view_data['_title'] = "Generate new password";
				$this->load->view('front/forgot_password/generate_password', $this->view_data);
			}
		}
	}

	/**
	 * This function is use for custom validation of check email exits or not
	 * @param $str
	 * @return bool
	 */
	public function valid_email_exits($str)
	{
		if (empty($str)) {
			return TRUE;
		} else {
			if ($this->user->forgot_email_exits($str)) {
				return TRUE;

			} else {
				$this->form_validation->set_message('valid_email_exits', 'The {field} can not be exits');
				return FALSE;
			}
		}
	}

	/**
	 * This function is use for custom validation of check email exits or not
	 * @param $str
	 * @return bool
	 */
	public function valid_mobile_exits($str)
	{
		if (empty($str)) {
			return TRUE;
		} else {
			if ($this->user->forgot_mobile_exits($str)) {
				return TRUE;
			} else {
				$this->form_validation->set_message('valid_mobile_exits', 'The {field} can not be exits');
				return FALSE;
			}
		}
	}

	public function register_for()
	{
		$this->view_data['_title'] = "Register";
		$this->view_data['_view'] = "front/reg_for";
		$this->load->view('layouts/master_page_front', $this->view_data);
	}

	protected function get_verify_email_template($link)
	{
		$str = "
<!DOCTYPE html><head>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
    <title>" . SITE_TITLE . " </title >
</head ><body leftmargin = '0' marginwidth = '0' topmargin = '0' marginheight = '0' offset = '0'
      style = 'margin: 0pt auto; padding: 10px; background:#F4F7FA;' >
      <h1 align = 'center' > " . SITE_TITLE . "</h1 >
<table id = 'main' width = '100%' height = '100%' cellpadding = '0' cellspacing = '0' border = '0'
       bgcolor = '#F4F7FA' >
    <tbody >
    <tr >
        <td valign = 'top' >
            <table class='innermain' cellpadding = '0' width = '580' cellspacing = '0' border = '0'
                   bgcolor = '#F4F7FA' align = 'center' style = 'margin:0 auto; table-layout: fixed;' >
                <tbody >
                <!--START of MAIL Content-->
                <tr >
                    <td colspan = '4' >
                        <table width = '100%' cellpadding = '0' cellspacing = '0' border = '0' bgcolor = '#ffffff'
                               style = 'border-radius: 4px; box-shadow: 0 2px 8px rgba(0,0,0,0.05);' >
                            <tbody >
                            <tr >
                                <td height = '40' ></td >
                            </tr >
                            <tr style = 'font-family: -apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,&#39;Roboto&#39;,&#39;Oxygen&#39;,&#39;Ubuntu&#39;,&#39;Cantarell&#39;,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neue&#39;,sans-serif; color:#4E5C6E; font-size:14px; line-height:20px; margin-top:20px;' >
                                <td class='content' colspan = '2' valign = 'top' align = 'center'
                                    style = 'padding-left:90px; padding-right:90px;' >
                                    <table width = '100%' cellpadding = '0' cellspacing = '0' border = '0' bgcolor = '#ffffff' >
                                        <tbody >

                                        <tr >
                                            <td height = '30' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td align = 'center' > <span
                                                        style = 'color:#48545d;font-size:22px;line-height: 24px;' >
                                                           Verify Your Email
    </span >

                                            </td >
                                        </tr >
                                        <tr >
                                            <td height = '24' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td height = '1' bgcolor = '#DAE1E9' ></td >
                                        </tr >
                                        <tr >
                                            <td height = '24' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td align = 'center' > <span
                                                        style = 'color:#48545d;font-size:14px;line-height:24px;' >
                                                            In order to start using your " . SITE_TITLE . " account, verify your email .
        </span >

                                            </td >
                                        </tr >
                                        <tr >
                                            <td height = '20' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td valign = 'top' width = '48%' align = 'center' > <span >
          <a href = '" . base_url('auth/verify_email?token=') . "$link'
        style = 'display:block; padding:15px 25px; background-color:#0087D1; color:#ffffff; border-radius:3px; text-decoration:none;' > Click to verify email </a >
        </span >

                                            </td >
                                        </tr >
                                        <tr >
                                            <td height = '20' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td height = '1' bgcolor = '#DAE1E9' ></td >
                                        </tr >
                                        <tr >
                                            <td height = '20' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td align = 'center' >
                                                <p style = 'color:#a2a2a2; font-size:12px; line-height:17px; font-style:italic;' >
                                                    If you did not sign up for this account you can ignore this email
    and the account
                                                    will be deleted .</p >
                                            </td >
                                        </tr >
                                        </tbody >
                                    </table >
                                </td >
                            </tr >
                            <tr >
                                <td height = '60' ></td >
                            </tr >
                            </tbody >
                        </table >

                        <table id = 'promo' width = '100%' cellpadding = '0' cellspacing = '0' border = '0'
                               style = 'margin-top:20px;' >
                            <tbody >
                            <tr >
                                <td colspan = '2' height = '20' ></td >
                            </tr >

                            <tr >
                                <td colspan = '2' height = '20' ></td >
                            </tr >

                            </tbody >
                        </table >

                        <table width = '100%' cellpadding = '0' cellspacing = '0' border = '0' >
                            <tbody >
                            <tr >
                                <td height = '10' >&nbsp;</td >
                            </tr >
                            <tr >
                                <td align = 'center' > <span
                                            style = 'font-family: -apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,&#39;Roboto&#39;,&#39;Oxygen&#39;,&#39;Ubuntu&#39;,&#39;Cantarell&#39;,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neue&#39;,sans-serif; color:#9EB0C9; font-size:10px;' >&copy;
                            <a href = '' target = '_blank'
                               style = 'color:#9EB0C9 !important; text-decoration:none;' > " . SITE_TITLE . "</a > " . date('Y') . "
                          </span >

                                </td >
                            </tr >
                            <tr >
                                <td height = '50' >&nbsp;</td >
                            </tr >
                            </tbody >
                        </table >

                    </td >
                </tr >
                </tbody >
            </table >
        </td >
    </tr >
    </tbody >
</table >
</body ></html > ";

		return $str;
	}

	protected function get_forgot_password_email_template($link)
	{
		$str = "
<!DOCTYPE html><head>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
    <title>" . SITE_TITLE . " </title >
</head ><body leftmargin = '0' marginwidth = '0' topmargin = '0' marginheight = '0' offset = '0'
      style = 'margin: 0pt auto; padding: 10px; background:#F4F7FA;' >
      <h1 align = 'center' > " . SITE_TITLE . "</h1 >
<table id = 'main' width = '100%' height = '100%' cellpadding = '0' cellspacing = '0' border = '0'
       bgcolor = '#F4F7FA' >
    <tbody >
    <tr >
        <td valign = 'top' >
            <table class='innermain' cellpadding = '0' width = '580' cellspacing = '0' border = '0'
                   bgcolor = '#F4F7FA' align = 'center' style = 'margin:0 auto; table-layout: fixed;' >
                <tbody >
                <!--START of MAIL Content-->
                <tr >
                    <td colspan = '4' >
                        <table width = '100%' cellpadding = '0' cellspacing = '0' border = '0' bgcolor = '#ffffff'
                               style = 'border-radius: 4px; box-shadow: 0 2px 8px rgba(0,0,0,0.05);' >
                            <tbody >
                            <tr >
                                <td height = '40' ></td >
                            </tr >
                            <tr style = 'font-family: -apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,&#39;Roboto&#39;,&#39;Oxygen&#39;,&#39;Ubuntu&#39;,&#39;Cantarell&#39;,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neue&#39;,sans-serif; color:#4E5C6E; font-size:14px; line-height:20px; margin-top:20px;' >
                                <td class='content' colspan = '2' valign = 'top' align = 'center'
                                    style = 'padding-left:90px; padding-right:90px;' >
                                    <table width = '100%' cellpadding = '0' cellspacing = '0' border = '0' bgcolor = '#ffffff' >
                                        <tbody >

                                        <tr >
                                            <td height = '30' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td align = 'center' > <span
                                                        style = 'color:#48545d;font-size:22px;line-height: 24px;' >
                                                            Reset your Password
    </span >

                                            </td >
                                        </tr >
                                        <tr >
                                            <td height = '24' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td height = '1' bgcolor = '#DAE1E9' ></td >
                                        </tr >
                                        <tr >
                                            <td height = '24' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td align = 'center' > <span
                                                        style = 'color:#48545d;font-size:14px;line-height:24px;' >
                                                            In order to start using your " . SITE_TITLE . " account, you reset your password .
        </span >

                                            </td >
                                        </tr >
                                        <tr >
                                            <td height = '20' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td valign = 'top' width = '48%' align = 'center' > <span >
          <a href = '" . base_url('auth/generate_new_password?token=') . "$link'
        style = 'display:block; padding:15px 25px; background-color:#0087D1; color:#ffffff; border-radius:3px; text-decoration:none;' > Click to reset password </a >
        </span >

                                            </td >
                                        </tr >
                                        <tr >
                                            <td height = '20' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td height = '1' bgcolor = '#DAE1E9' ></td >
                                        </tr >
                                        <tr >
                                            <td height = '20' & nbsp;='' ></td >
                                        </tr >
                                        <tr >
                                            <td align = 'center' >
                                                <p style = 'color:#a2a2a2; font-size:12px; line-height:17px; font-style:italic;' >
                                                    If you did not sign up for this account you can ignore this email
    and the account
                                                    will be deleted .</p >
                                            </td >
                                        </tr >
                                        </tbody >
                                    </table >
                                </td >
                            </tr >
                            <tr >
                                <td height = '60' ></td >
                            </tr >
                            </tbody >
                        </table >

                        <table id = 'promo' width = '100%' cellpadding = '0' cellspacing = '0' border = '0'
                               style = 'margin-top:20px;' >
                            <tbody >
                            <tr >
                                <td colspan = '2' height = '20' ></td >
                            </tr >

                            <tr >
                                <td colspan = '2' height = '20' ></td >
                            </tr >

                            </tbody >
                        </table >

                        <table width = '100%' cellpadding = '0' cellspacing = '0' border = '0' >
                            <tbody >
                            <tr >
                                <td height = '10' >&nbsp;</td >
                            </tr >
                            <tr >
                                <td align = 'center' > <span
                                            style = 'font-family: -apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,&#39;Roboto&#39;,&#39;Oxygen&#39;,&#39;Ubuntu&#39;,&#39;Cantarell&#39;,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neue&#39;,sans-serif; color:#9EB0C9; font-size:10px;' >&copy;
                            <a href = '' target = '_blank'
                               style = 'color:#9EB0C9 !important; text-decoration:none;' > " . SITE_TITLE . "</a > " . date('Y') . "
                          </span >

                                </td >
                            </tr >
                            <tr >
                                <td height = '50' >&nbsp;</td >
                            </tr >
                            </tbody >
                        </table >

                    </td >
                </tr >
                </tbody >
            </table >
        </td >
    </tr >
    </tbody >
</table >
</body ></html > ";

		return $str;
	}
}
