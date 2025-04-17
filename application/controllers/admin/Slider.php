<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Slider extends Admin_contoller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Slider_model', 'slider');
		$this->load->model('Users_model', "user");
		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);
    }

    public function index()
    {
        $this->view_data['slides'] = $this->slider->get_slider();
        $this->view_data['_view'] = 'admin/slider_view';
        $this->load->view('layouts/master_page_admin', $this->view_data);
    }

    public function add()
    {
        $this->view_data['_view'] = 'admin/slider_add';
        $this->load->view('layouts/master_page_admin', $this->view_data);
    }

    public function add_slide_validate()
    {
        $config['upload_path'] = './upload/slider';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = '2000';
        $config['max_width'] = '1900';
        $config['max_height'] = '1220';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('slider_image')) {
            $error = array('error' => $this->upload->display_errors());
            $this->view_data['_view'] = 'admin/slider_add';
            $this->load->view('layouts/master_page_admin', $this->view_data);
        } else {
            if ($this->input->post()) {
                $position = $this->input->post('position');
                $post_data = array('slider_image' => $this->upload->data('file_name'), 'status' => ACTIVE, 'created_at' => date('Y-m-d h:i:sa'), 'updated_at' => date('Y-m-d h:i:sa'), 'position' => $position, 'link' => $this->input->post('link'));
                $this->_alertSuccessResponce($this->slider->create_slider($post_data), "Slider Creaed", "Slider Not Created", "admin/slider");

            }

        }

    }


    public function update_status()
    {
        if ($this->input->get('id')) {
            $status = $this->input->get('st');
            $id = $this->input->get('id');
            if ($status == ACTIVE) {

                $this->_alertSuccessResponce($this->slider->update_status_active($id), "Status updated", "Status updated", "admin/slider");
            } elseif ($status == BLOCK) {

                $this->_alertSuccessResponce($this->slider->update_status_block($id), "Status updated", "Status  updated", "admin/slider");
            }
        }
    }

    public function distroy()
    {
        if ($this->input->get('id', TRUE)) {
            $id = $this->input->get('id');
            $this->_alertWarningResponce($this->slider->destroy($id), "Slider Deleted", "Slider Not Deleted", "admin/slider");
        } else {
            $this->_alertWarningResponce(1, 'Delete', "Slider Deleted", "Slider Not Deleted", "admin/slider");
        }

    }

}

/* End of file Slider.php */
/* Location: ./application/controllers/Slider.php */
