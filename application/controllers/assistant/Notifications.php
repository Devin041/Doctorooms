<?php

class Notifications extends Assistant_controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->view_data['all_notifications'] = $this->notification->get_all_by_user($this->user_data->id, 100);
        $this->view_data['_title'] = "Notifications";
        $this->view_data['_view'] = "assistant/notifications";
        $this->load->view("layouts/master_page_assistant", $this->view_data);
        $this->notification->update($this->user_data->id, ["status" => READ]);
    }
}