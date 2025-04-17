<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Blog extends Guest_controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Posts_model', 'post');

    }

    public function index($page = 0)
    {
        $all_post = $this->post->get_all_front();

        $this->load->library("pagination");
        $config['base_url'] = base_url() . "blog/index/";
        $config['total_rows'] = count($all_post);
        $config['per_page'] = 9;
        $config['attributes'] = array('class' => 'page-link');

        $config['first_tag_open'] = "<li>";
        $config['first_tag_close'] = "</li>";

        $config['last_tag_open'] = "<li>";
        $config['last_tag_close'] = "</li>";

        $config['num_tag_open'] = "<li class='page-item'>";
        $config['num_tag_close'] = "</li>";

        $config['cur_tag_open'] = "<li class='page-item active'><a class='page-link'>";
        $config['cur_tag_close'] = "</a></li>";

        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['next_link'] = "Next";

        $config['prev_tag_open'] = "<li>";
        $config['prev_tag_close'] = "<li>";
        $config['prev_link'] = "Prev";

        $this->pagination->initialize($config);

        $all_post = $this->post->get_all_front($config['per_page'], $page);

        $this->view_data['posts'] = $all_post;
        $this->view_data['links'] = $this->pagination->create_links();
        $this->view_data['latest_post'] = $this->post->get_latest_post(5);
        $this->view_data['_title'] = "Blog";
        $this->view_data['_view'] = "front/blog";
        $this->load->view('layouts/master_page_front', $this->view_data);
    }

    public function view($paramalink)
    {
        $this->view_data['single_blog'] = $this->post->get_single_post($paramalink);
        $this->view_data['latest_post'] = $this->post->get_latest_post(5);
        $this->view_data['_title'] = $paramalink;
        $this->view_data['_view'] = "front/blog-details";
        $this->load->view('layouts/master_page_front', $this->view_data);
    }

}
