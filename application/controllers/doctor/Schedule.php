<?php

class Schedule extends Doctor_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Doctor_holiday_schedule_model", "holiday_schedule");
        $this->load->model("Doctors_model", "doctor");
    }

    public function index()
    {
        $this->view_data['schedule'] = $this->holiday_schedule->get_all_by_user($this->user_data->id);
        $this->view_data['doctor'] = $this->doctor->get_one_by_user($this->user_data->id);
        $this->view_data['_title'] = "Schedule";
        $this->view_data['_view'] = "doctor/schedule/index";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function update_appointment_day()
    {
        if ($this->input->server("REQUEST_METHOD") == "POST") {
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            $this->form_validation->set_rules('days', 'Days', 'required|is_natural_no_zero|less_than_equal_to[180]');
			$this->form_validation->set_rules('day_limit', 'Daily limit', 'required|is_natural_no_zero');
            if ($this->form_validation->run()) {
                $days = $this->input->post('days');
				$limit = $this->input->post('day_limit');
                $doctor = $this->doctor->get_one_by_user($this->user_data->id);
                $this->_alertSuccessResponce($this->doctor->update($doctor->id, array("booking_days" => $days,"daily_limit"=>$limit)), "Record updated", "Record not updated", "doctor/schedule");
            } else {
                $this->view_data['schedule'] = $this->holiday_schedule->get_all_by_user($this->user_data->id);
                $this->view_data['doctor'] = $this->doctor->get_one_by_user($this->user_data->id);
                $this->view_data['_title'] = "Schedule";
                $this->view_data['_view'] = "doctor/schedule/index";
                $this->load->view("layouts/master_page_doctors", $this->view_data);
            }
        }
    }

    public function create()
    {
        $this->view_data['_title'] = "Add Schedule";
        $this->view_data['_view'] = "doctor/schedule/add";
        $this->view_data['_javascript'] = "doctor/schedule/script";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function store()
    {
        if ($this->input->server("REQUEST_METHOD") == "POST") {
            $data = $this->input->post('schedule');

            
            $new_data = array();
            foreach ($data as $d) {
                $d['user_id'] = $this->user_data->id;
                array_push($new_data, $d);
            }
            $this->_alertSuccessResponce($this->holiday_schedule->create_many($new_data), "Holidays added", "Holidays not added", "doctor/schedule");
        }
    }

    public function delete($id)
    {
        $blogData = $this->holiday_schedule->get_one_by_user($id, $this->user_data->id);

        if (is_null($blogData)) {
            redirect("doctor/schedule");
        }

        $this->_alertWarningResponce($this->holiday_schedule->destroy($id, $this->user_data->id), "Record deleted", "Record not deleted", "doctor/schedule");
    }

    public function delete_multi()
    {
        $selected = $this->input->post('selection');
        foreach ($selected as $item) {
            $this->holiday_schedule->destroy($item, $this->user_data->id);
        }
        $this->_alertWarningResponce(true, "Selected Record deleted", "Record not deleted", "doctor/schedule");
    }
}
