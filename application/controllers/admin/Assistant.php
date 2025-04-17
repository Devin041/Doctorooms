<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Assistant extends Admin_contoller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model('Doctor_assistants_model', 'assistant');
        $this->load->model('Users_model', 'users');
    }

    public function index()
    {
        $this->view_data['assistants'] = $this->users->get_assistant_user();
        $this->view_data['_view'] = 'admin/assistant_list';
        $this->load->view('layouts/master_page_admin', $this->view_data);
    }

    public function hide_unhide($id)
    {
        $user = $this->users->get_by_id($id);

        if ($user->status == ACTIVE) {
            $data['status'] = BLOCK;
        } else {
            $data['status'] = ACTIVE;
        }

        $this->_alertInfoResponce($this->users->update($id, $data), "Status changed", "Status not changed", "admin/assistant");
    }

    public function profile_view()
    {
        if ($this->input->get('id')) {
            $this->view_data['profile'] = $this->assistant->get_assistant_details($this->input->get('id'));
            $this->view_data['doctor'] = $this->user->get_by_id($this->view_data['profile']->doctor_id);
            $this->view_data['_view'] = 'admin/profile_view_assistant';
            $this->load->view('layouts/master_page_admin', $this->view_data);
        }

    }

    public function edit()
    {
        if ($this->input->get('id') != '') {
            $id = $this->input->get('id');
            $this->view_data['assistant'] = $this->users->get_by_id($id);
            if ($this->view_data['assistant']) {
                $this->view_data['_view'] = 'admin/assistant_edit';
                $this->load->view('layouts/master_page_admin', $this->view_data);
            } else {
                redirect('admin/assistant', 'refresh');
            }
        } else {
            redirect('admin/patient', 'refresh');
        }

    }

    public function edit_validate()
    {
        if ($this->input->get('id')) {
            $id = $this->input->get('id');
            $input_data = $this->input->post();
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            $this->form_validation->set_rules('name', 'Name', 'trim|required');
            $this->form_validation->set_rules('gender', 'Gender', 'trim|required');
            $this->form_validation->set_rules('mobile_no', 'Mobile', 'trim|required|is_unique[users.mobile_no]');
            if ($this->form_validation->run()) {
                unset($input_data['mobile_no']);
                $input_data['updated_at'] = date('Y-m-d H:i:s');
                $this->_alertSuccessResponce($this->user->update($id, $input_data), "Record updated", "Record Not updated", "admin/assistant");
            } else {
                redirect('admin/assistant', 'refresh');
            }
        }
    }

}

/* End of file Controllername.php */