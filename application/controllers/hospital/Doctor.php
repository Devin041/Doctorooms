<?php

class Doctor extends Hospital_contoller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Doctors_model", "doctor");
        $this->load->model('Users_model', 'user');
        $this->load->model('Hospital_model', 'hospital');
        $this->load->model('Receptionist_model', 'receptionist');
        $this->load->model('Disease_model', 'disease');
        $this->load->model('Schedule_pdf_model', 'schedule');
        $this->load->model('Doctor_type_model', 'doc_type');
		$this->load->model("Doctor_rating_model", "doctor_rating");
        $this->view_data['a'] = $this->user->get_by_id($this->user_data->id);
    }

    public function index()
    {
        $hosp = $this->hospital->get_one_by_user($this->user_data->id);
        $this->view_data['doctor'] = $this->doctor->get_by_hospital($this->user_data->id);
        $this->view_data['_view'] = 'hospital/doctor/view_doctor';
        $this->load->view('layouts/master_page_hospital', $this->view_data);
    }

    public function add()
    {
        $this->view_data['dis_name'] = $this->disease->get_all();
        $this->view_data['doctype'] = $this->doc_type->get_all();
        $this->view_data['_view'] = 'hospital/doctor/add_doctor';
        $this->load->view('layouts/master_page_hospital', $this->view_data);
    }

    public function create()
    {
        $this->view_data['dis_name'] = $this->disease->get_all();
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $post_data = $this->input->post();
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');

            if ($this->form_validation->run("profile")) {
                /**
                 * The $forDoc variable is use for collect only doctor table data
                 */

                $forDoc = $post_data;
                $forDoc['specialization'] = json_encode($this->input->post('specialization'));
                unset($forDoc['name']);
                unset($forDoc['mobile_no']);
                unset($forDoc['gender']);
                unset($forDoc['email']);
                unset($forDoc['password']);

                /**
                 * The $forUser variable is use for collect only user table data
                 */
                $forUser = $post_data;
                unset($forUser['doctor_type']);
                unset($forUser['fees']);
                unset($forUser['contact_no']);
                unset($forUser['lat']);
                unset($forUser['longi']);
                unset($forUser['address']);
                unset($forUser['description']);
                unset($forUser['specialization']);
                unset($forUser['award_and_recognition']);
                unset($forUser['eduction']);
                unset($forUser['experience']);
                unset($forUser['registration_detail']);
                unset($forUser['hospital_id']);
                unset($forUser['user_id']);
                $forUser['name'] = $post_data['name'];
                $forUser['email'] = $post_data['email'];
                $forUser['gender'] = $post_data['gender'];
                $forUser['mobile_no'] = $post_data['mobile_no'];
                $forUser['status'] = ACTIVE;
                $forUser['role'] = DOCTOR;
                $forUser['mobile_no'] = $post_data['mobile_no'];
                $forUser['password'] = hash("sha256", $post_data['password']);
                if ($user_id = $this->user->create($forUser)) ;
                {
                    $forDoc['user_id'] = $user_id;
                    $hospdetail = $this->hospital->get_one_by_user($this->user_data->id);
                    $forDoc['hospital_id'] = $this->view_data['user']->id;

                    $this->doctor->create($forDoc);

                    $this->_alertSuccessResponce(true, 'Doctor Created', 'Doctor Not Created', 'hospital/doctor');
                }

            } else {
                $this->view_data['profile'] = $this->doctor->get_one_by_user($this->user_data->id);
                $this->view_data['_view'] = "hospital/doctor/add_doctor";
                $this->load->view("layouts/master_page_hospital", $this->view_data);
            }
        }
        else
		{
			redirect('hospital/doctor/add');
		}
    }

    public function edit($id)
    {
        $doc_user = $this->doctor->get_one_by_user($id);
        $this->view_data['profile'] = $doc_user;
        $u_data = $this->user->get_by_id($doc_user->user_id);
        unset($u_data->password);
        $this->view_data['dis_name'] = $this->disease->get_all();
		$this->view_data['doctype'] = $this->doc_type->get_all();
        $this->view_data['profile'] = (object)array_merge((array)$u_data, (array)$this->view_data['profile']);
        $this->view_data['_view'] = "hospital/doctor/edit_doctor";
        $this->load->view("layouts/master_page_hospital", $this->view_data);
    }

    public function update($id)
    {
        $doc_data = $this->doctor->get_one_by_user($id);
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $post_data = $this->input->post();
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            if ($this->form_validation->run("profile")) {
                /**
                 * The $forDoc variable is use for collect only doctor table data
                 */
                $forDoc = $post_data;
                $forDoc['specialization'] = json_encode($this->input->post('specialization'));
                unset($forDoc['name']);
                unset($forDoc['gender']);

                /**
                 * The $forUser variable is use for collect only user table data
                 */
                $forUser['name'] = $post_data['name'];
                $forUser['gender'] = $post_data['gender'];
                $this->doctor->update($doc_data->id, $forDoc);
                $this->user->update($id, $forUser);

                $this->_alertSuccessResponce(true, 'Profile Updated', 'Profile Not Updated', 'hospital/doctor');
            } else {
                $this->view_data['profile'] = $this->doctor->get_one_by_user($this->user_data->id);
                $this->view_data['_view'] = "hospital/doctor/edit_doctor";
                $this->load->view("layouts/master_page_hospital", $this->view_data);
            }
        }
    }

    public function distroy()
    {
        $this->view_data['_view'] = 'hospital/doctor/view_doctor';
        $this->load->view('layouts/master_page_hospital', $this->view_data);
    }

    public function update_status()
    {
        if ($this->input->get('id')) {
            $status = $this->input->get('st');
            $id = $this->input->get('id');

            if ($status != ACTIVE && $status != BLOCK) {
                redirect('hospital/doctor');
            }

            if ($status == ACTIVE) {

                $this->_alertSuccessResponce($this->user->update_status_active($id), "Status updated", "Status updated", "hospital/doctor");
            } elseif ($status == BLOCK) {

                $this->_alertSuccessResponce($this->user->update_status_block($id), "Status updated", "Status  updated", "hospital/doctor");
            }
        }
    }

    public function profile_view()
    {

        if ($this->input->get('id')) {
            $id = $this->input->get('id', TRUE);
			$this->view_data['doctor_average_rating'] = $this->doctor_rating->get_average_rating($id);

            $data = $this->doctor->get_profile($id);
            $rec_data = $this->receptionist->get_receptionist_by_doctor($id);

            if ($rec_data != NULL) {
                $rec_user = $this->user->get_by_id($rec_data->user_id);
            }
            if ($data) {
                $this->view_data['profile'] = $data;

                if ($rec_data != NULL) {
                    $this->view_data['rec'] = $rec_user;
                } else {
                    $this->view_data['rec'] = NULL;
                }

                $this->view_data['rec_address'] = $rec_data;

				$this->view_data['_view'] = 'hospital/doctor/view_profile';
                $this->load->view('layouts/master_page_hospital', $this->view_data);
            } else {
                redirect('hospital/doctor', 'refresh');
            }

        } else {
            redirect('hospital/doctor', 'refresh');
        }

    }

    public function schedule()
    {
        $this->view_data['schedule_file'] = $this->schedule->get_by_hospital($this->user_data->id);
        $this->view_data['_view'] = 'hospital/upload_schedule';
        $this->load->view('layouts/master_page_hospital', $this->view_data);
    }

    public function schedule_upload()
    {
        if ($_FILES['schedule']['name']) {
            $scheduleData = $this->_upload_pdf("upload/schedule_docs/", date("Y-m-d") . "_" . $this->user_data->name, "schedule");
            if ($scheduleData['status'] == "true") {
                $data['hospital_id'] = $this->user_data->id;
                $data['file_name'] = $scheduleData['file_name'];
                return $this->_alertSuccessResponce($this->schedule->create($data), "Schedule Upload", "File not uploaded", "hospital/doctor/schedule");
            } else {
                return $this->_alertSuccessResponce(false, "Schedule Not Upload", $scheduleData['upload_error'], "hospital/doctor/schedule");
            }
        } else {
            return $this->_alertSuccessResponce(FALSE, "Schedule", "Please choose File", "hospital/doctor/schedule");
        }

    }

    public function remove_file($id)
    {
        if ($id) {
            $this->load->helper("file");
            $data = $this->schedule->get_by_id($id);
            $path = './upload/schedule_docs/' . $data[0]->file_name;
            unlink($path);
            return $this->_alertWarningResponce($this->schedule->remove_by_id($id), "Schedule Deleted", $scheduleData['upload_error'], "hospital/doctor/schedule");
        } else {
            return $this->_alertWarningResponce(false, "Schedule Not Deleted", $scheduleData['upload_error'], "hospital/doctor/schedule");
        }
    }
}

/* End of file Controllername.php */

