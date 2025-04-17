<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Post extends Admin_contoller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Posts_model', 'post');
		$this->load->model('Users_model', "user");
		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);
    }

    public function index()
    {
        $this->view_data['posts'] = $this->post->get_all();
        $this->view_data['_view'] = 'post/index';
        $this->load->view('layouts/master_page_admin', $this->view_data);
    }

    public function hide_unhide($id)
    {
        $blogData = $this->post->get_one_by_user($id,$this->user_data->id);

        if (is_null($blogData)) {
            redirect("admin/post");
        }

        if ($blogData->status == PUBLISHED) {
            $data['status'] = HIDE;
        }
        if ($blogData->status == HIDE) {
            $data['status'] = PUBLISHED;
        }

        $this->_alertInfoResponce($this->post->update($id,$data),"Status changed","Status not changed","admin/post");
    }

    public function create()
    {
        $this->view_data['_view'] = 'post/add';
        $this->load->view('layouts/master_page_admin', $this->view_data);
    }

    public function store()
    {

        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            if ($this->form_validation->run("blog")) {
                $post_data = $this->input->post();
                $post_data['status'] = PUBLISHED;
                $post_data['type'] = BLOG;
                $post_data['paramalink'] = $this->_generateSeoURL($post_data['title']);
                $post_data['user_id'] = $this->user_data->id;
                unset($post_data['_wysihtml5_mode']);

                $this->_alertSuccessResponce($this->post->create($post_data), "Post Created", "Post not created", "admin/post");
            } else {
                $this->view_data['_view'] = "post/add";
                $this->load->view("layouts/master_page_admin", $this->view_data);
            }
        }
    }

    public function delete($id)
    {
        $blogData = $this->post->get_one_by_user($id,$this->user_data->id);

        if (is_null($blogData)) {
            redirect("admin/post");
        }

        $this->_alertWarningResponce($this->post->destroy($id,$this->user_data->id),"Post deleted","Post not deleted","admin/post");
    }

    public function edit($id)
    {
        $this->view_data['post'] = $this->post->get_one_by_user($id, $this->user_data->id);
        $this->view_data['_view'] = 'post/edit';
        $this->load->view('layouts/master_page_admin', $this->view_data);
    }

    public function update($id)
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
            if ($this->form_validation->run("blog")) {
                $post_data = $this->input->post();
                $post_data['status'] = PUBLISHED;
                $post_data['type'] = BLOG;
                $post_data['paramalink'] = $this->_generateSeoURL($post_data['title']);
                $post_data['user_id'] = $this->user_data->id;
                unset($post_data['_wysihtml5_mode']);

                $this->_alertSuccessResponce($this->post->update($this->user_data->id, $post_data), "Post Updated", "Post not Updated", "admin/post");
            } else {
                $this->view_data['post'] = $this->post->get_one_by_user($id, $this->user_data->id);
                $this->view_data['_view'] = "post/edit";
                $this->load->view("layouts/master_page_admin", $this->view_data);
            }
        }

    }

}

