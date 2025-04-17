<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Medicinemaster extends Reception_contoller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Doctor_medicine_list_model','medicine');
        $this->load->model("Receptionist_model", "receptionist");
        $this->user_data->doctor_id = $this->receptionist->get_by_user_id($this->user_data->id)->doctor_id;

    }

    public function index()
    {
        $this->view_data['medicines']=$this->medicine->get_all_by_doctor($this->user_data->doctor_id);
        $this->view_data['_view'] = 'receptionist/medicine/index';
        $this->load->view('layouts/master_page_receptionist', $this->view_data);
    }

    public function add()
    {
        $this->view_data['_view'] = 'receptionist/medicine/add';
        $this->load->view('layouts/master_page_receptionist', $this->view_data);
    }

    public function add_validate()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            if ($this->form_validation->run('medicine')) {
                $data=$this->input->post();
                $data['doz']=json_encode($this->input->post('doz'));
                $data['user_id']=$this->user_data->doctor_id;
                $data['status']=ACTIVE;
                $data['created_at']=date('Y-m-d H:i:s');
                $data['updated_at']=date('Y-m-d H:i:s');
                $data['created_by']=$this->user_data->id;

                $this->_alertSuccessResponce($this->medicine->create($data),'Medicine Successfully add','Fail to save','receptionist/medicinemaster');
            } else {
                $this->view_data['_view'] = 'receptionist/medicine/add';
                $this->load->view('layouts/master_page_receptionist', $this->view_data);
            }
        }
    }

    public function edit($id)
    {
        $this->view_data['medicine']=$this->medicine->get_by_id($id);

        $this->view_data['_view'] = 'receptionist/medicine/edit';
        $this->load->view('layouts/master_page_receptionist', $this->view_data);
    }

    public function edit_validate($id)
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            if ($this->form_validation->run('medicine')) {
                $data=$this->input->post();
				$data['doz']=json_encode($this->input->post('doz'));
                $data['updated_at']=date('Y-m-d H:i:s');
                $this->_alertSuccessResponce($this->medicine->update($id,$data),'Medicine Successfully Updated','Fail to update','receptionist/medicinemaster');
            } else {
                $this->view_data['_view'] = 'receptionist/medicine/add';
                $this->load->view('layouts/master_page_receptionist', $this->view_data);
            }
        }
    }

    public function distroy($id)
    {

    }

    /**
     * @param $id
     */
    public function hide_unhide($id)
    {
        $medicine=$this->medicine->get_by_id($id);

        if ($medicine->status == ACTIVE) {
            $data['status'] = BLOCK;
        } else {
            $data['status'] = ACTIVE;
        }

        $this->_alertInfoResponce($this->medicine->update($id, $data), "Status changed", "Status not changed", "receptionist/medicinemaster");
    }

}

/* End of file Medicinemaster.php */
/* Location: ./application/controllers/receptionist/Medicinemaster.php */
