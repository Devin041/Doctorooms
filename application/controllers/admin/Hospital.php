<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Hospital extends Admin_contoller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Hospital_model', 'hospital');
        $this->load->model('Users_model', 'user');
        $this->load->model('State_model', 'state');
        $this->load->model('City_model', 'city');
        $this->view_data['a'] = $this->user->get_by_id($this->user_data->id);
    }

    public function index()
    {
        $this->view_data['hospital'] = $this->user->get_hospital_user();
        $this->view_data['_view'] = 'admin/hospital_view';
        $this->load->view('layouts/master_page_admin', $this->view_data);
    }

    public function update_status()
    {
        if ($this->input->get('id')) {
            $status = $this->input->get('st');
            $id = $this->input->get('id');
            if ($status == ACTIVE) {

                $this->_alertSuccessResponce($this->user->update_status_active($id), "Status updated", "Status updated", "admin/hospital");
            } elseif ($status == BLOCK) {

                $this->_alertSuccessResponce($this->user->update_status_block($id), "Status updated", "Status  updated", "admin/hospital");
            }
        }
    }

    public function add()
    {
        $this->view_data['state'] = $this->state->get_all();
        $this->view_data['_view'] = 'admin/hospital_add';
        $this->load->view('layouts/master_page_admin', $this->view_data);
    }

    public function add_validate()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->view_data['state'] = $this->state->get_all();
            if ($this->input->post()) {
                $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
                if ($this->form_validation->run('register')) {
                    $data = $this->input->post();

                    $data['password'] = hash("sha256", $this->input->post("password"));
                    $data['gender'] = 'male';
                    $data['role'] = HOSPITAL;
                    $data['status'] = ACTIVE;
                    unset($data['c_pass']);
                    unset($data['terms']);
                    unset($data['state']);
                    unset($data['city']);
                    $this->_alertSuccessResponce($this->hospital->create($data), "Hospital Created", "Hospital Not Created", "admin/hospital");
                } else {
                    $this->view_data['_view'] = 'admin/hospital_add';
                    $this->load->view('layouts/master_page_admin', $this->view_data);
                }
            }
        } else {
            redirect('admin/hospital/add');
        }
    }

    public function add_profile()
    {
        $this->view_data['hospital'] = $this->hospital->get_all();
        $this->view_data['_view'] = 'admin/hospital_detail_add';
        $this->load->view('layouts/master_page_admin', $this->view_data);
    }

    public function add_profile_validate()
    {
        if ($this->input->post()) {
            $data = $this->input->post();
            $this->_alertSuccessResponce($this->hospital->create_detail($data), "Hospital Detail Created", "Hospital Detail Not Created", "admin/hospital/add_profile");
        }

    }

    public function profile_view()
    {
        if ($this->input->get('id')) {

            $id = $this->input->get('id', TRUE);
            $data = $this->hospital->get_profile($id);
            $doctors = $this->hospital->get_doctor_by_hospital($id);

            if ($data) {
                $this->view_data['profile'] = $data;
                $this->view_data['doc'] = $doctors;
                $this->view_data['_view'] = 'admin/profile_view_hospital';
                $this->load->view('layouts/master_page_admin', $this->view_data);
            } else {
                redirect('admin/Hospital', 'refresh');
            }
        } else {
            redirect('admin/hospital', 'refresh');
        }

    }


    public function edit()
    {
        if ($this->input->get('id') != '') {
            $id = $this->input->get('id');
            $this->view_data['rec_user'] = $this->hospital->get_by_id_user($id);
            if ($this->view_data['rec_user']) {
                $this->view_data['_view'] = 'admin/hospital_edit';
                $this->load->view('layouts/master_page_admin', $this->view_data);
            } else {
                redirect('admin/hospital', 'refresh');
            }
        } else {
            redirect('admin/hospital', 'refresh');
        }

    }

    public function edit_validate()
    {
        if ($this->input->get('id')) {
            $id = $this->input->get('id');
            $input_data = $this->input->post();
                //$input_data['password'] = hash("sha256", $input_data['password']);
                $input_data['updated_at'] = date('Y-m-d H:i:s');
                unset($input_data['mobile_no']);
                $this->_alertSuccessResponce($this->user->update($id, $input_data), "Record updated", "Record Not updated", "admin/hospital");

        }
    }

    public function edit_profile()
    {
        $id = $this->input->get('id', TRUE);
        $this->view_data['hospital'] = $this->hospital->get_all();
        $this->view_data['hosp'] = $this->hospital->get_profile($id);
        $this->view_data['_view'] = 'admin/hospital_detail_edit';
        $this->load->view('layouts/master_page_admin', $this->view_data);
    }

    public function edit_profile_validate()
    {
        $id = $this->input->get('id', TRUE);
        $input_data = $this->input->post();

        $this->_alertSuccessResponce($this->hospital->update_profile($id, $input_data), "Record updated", "Record Not updated", "admin/hospital");

    }

    public function distroy()
    {
        if ($this->input->get('id', TRUE)) {
            $id = $this->input->get('id');
            $this->hospital->distroy_profile($id);
            $this->_alertwarningResponce($this->hospital->distroy_user($id), "Hospital Deleted", "Hospital Not Deleted", "admin/hospital");
        } else {
            redirect('admin/hospital', 'refresh');
        }
    }

    public function resetpass($id)
    {
        $input_data['password'] = hash("sha256", '123456');
        $input_data['updated_at'] = date('Y-m-d H:i:s');
        $this->_alertSuccessResponce($this->user->update($id, $input_data), "Password Reset | New Password Is 123456", "Password Not Reset", "admin/hospital");
    }

    public function city_by_state()
    {
        header('Content-Type: application/json');
        $state = $this->input->post("state_name");
        $citys = $this->city->get_city_by_state_name($state);
        echo json_encode($citys);
    }

}

