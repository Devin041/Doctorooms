<?php

class Contactus extends Guest_controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->view_data['_title'] = "Contact Us";
        $this->view_data['_view']="front/contact-us";
        $this->load->view('layouts/master_page_front',$this->view_data);
    }

    public function send()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            if ($this->form_validation->run("contact_us")) {
                $to = $this->input->post("email");
                $subject = $this->input->post("email");
                $message = $this->input->post("message");
//                $this->send_mail($to, $subject, $message);

                $this->_alertInfoResponce(true, "Message has been sent successfully. Thank you !", "Message has not been sent", "contactus");

            } else {
                $this->view_data['_view'] = "front/contact-us";
                $this->load->view('layouts/master_page_front', $this->view_data);
            }
        }

    }
}