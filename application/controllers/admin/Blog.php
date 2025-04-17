<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blog extends Admin_contoller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Posts_model','blog');
		$this->load->model('Users_model', "user");
		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);

	}

	public function index()
	{
		$this->view_data['post']=$this->blog->get_all();
		$this->view_data['_view']='admin/blog_view';
		$this->load->view('layouts/master_page_admin',$this->view_data);
	}

	public function update_status()
	{
		if ($this->input->get('id')) {
			$status=$this->input->get('st');
			$id=$this->input->get('id');

			if ($status == PUBLISHED) {
				$data['status'] = HIDE;
			}

			if ($status == HIDE) {
				$data['status'] = PUBLISHED;
			}
			$this->_alertSuccessResponce($this->blog->update($id,$data),"Status changed","Status not changed","admin/blog");
		}
	}
	public function add ()
	{
		$this->view_data['_view']='admin/blog_add';
		$this->load->view('layouts/master_page_admin',$this->view_data);
	}
	public function add_validate()
	{

		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
			if ($this->form_validation->run("blog")) {
				if (!empty($_FILES['image']['name'])) {
					$bgImgUp = $this->_upload_file("upload/blog/", date("Y-m-d"), "image");

					if ($bgImgUp['status'] == "true") {

						$post_data = $this->input->post();
						$post_data['status'] = PUBLISHED;
						$post_data['type'] = BLOG;
						$post_data['paramalink'] = $this->generateUrl($post_data['title']);
						$post_data['user_id'] = $this->user_data->id;
						$post_data['blog_img'] = $bgImgUp['file_name'];
						unset($post_data['_wysihtml5_mode']);

						$this->_alertSuccessResponce($this->blog->create($post_data), "Post Created", "Post not created", "admin/blog");
					} else {
						$this->view_data['imgError'] = $bgImgUp['upload_error'];
						$this->view_data['_view'] = "admin/blog_add";
						$this->load->view("layouts/master_page_admin", $this->view_data);
					}
				} else {

					$post_data = $this->input->post();
					$post_data['status'] = PUBLISHED;
					$post_data['type'] = BLOG;
					$post_data['paramalink'] = $this->generateUrl($post_data['title']);
					$post_data['user_id'] = $this->user_data->id;
					unset($post_data['_wysihtml5_mode']);

					$this->_alertSuccessResponce($this->blog->create($post_data), "Post Created", "Post not created", "admin/blog");
				}
			} else {
				$this->view_data['_view'] = "admin/blog_add";
				$this->load->view("layouts/master_page_admin", $this->view_data);
			}
		}

	}
	public function distroy()
	{
		if ($this->input->get('id', TRUE)) {
			$id=$this->input->get('id');
			$uid=$this->input->get('uid');
			$this->_alertwarningResponce($this->blog->destroy($id,$uid),"Post Deleted", "Post Not Deleted", "admin/blog");
		}
		else
		{
			redirect('admin/blog','refresh');
		}
	}

	public function update($id)
	{
		$this->view_data['post']=$this->blog->get_by_id($id);
		$this->view_data['_view']='admin/blog_edit';
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}
	public function update_validate($id)
	{
		$blogData = $this->blog->get_by_id($id);

		if (is_null($blogData)) {
			redirect("admin/blog");
		}

		if ($this->input->server('REQUEST_METHOD') == 'POST') {
			$this->form_validation->set_error_delimiters('<div class="text-danger" style="font-size:10px;">', '</div>');
			if ($this->form_validation->run("blog")) {

				if (!empty($_FILES['image']['name'])) {
					$bgImgUp = $this->_upload_file("upload/blog/", date("Y-m-d"), "image");
					if ($bgImgUp['status'] == "true") {
						$post_data = $this->input->post();
						$post_data['type'] = BLOG;
						$post_data['blog_img'] = $bgImgUp['file_name'];
						$post_data['paramalink'] = $this->generateUrl($post_data['title']);
						unset($post_data['_wysihtml5_mode']);
						if ($blogData->blog_img) {
							unlink("upload/blog/" . $blogData->blog_img);
						}
						$this->_alertInfoResponce($this->blog->update($id, $post_data), "Post updated", "Post not updated", "admin/blog");
					} else {
						$this->view_data['imgError'] = $bgImgUp['upload_error'];
						$this->view_data['post'] = $blogData;
						$this->view_data['_view'] = "admin/blog_edit";
						$this->load->view("layouts/master_page_admin", $this->view_data);
					}
				} else {
					$post_data = $this->input->post();
					$post_data['type'] = BLOG;
					$post_data['paramalink'] = $this->generateUrl($post_data['title']);
					unset($post_data['_wysihtml5_mode']);
					$this->_alertInfoResponce($this->blog->update($id, $post_data), "Post updated", "Post not updated", "admin/blog");
				}
			} else {
				$this->view_data['post'] = $blogData;
				$this->view_data['_view'] = "admin/blog_edit";
				$this->load->view("layouts/master_page_admin", $this->view_data);
			}
		}
	}


	public function generateUrl($str)
	{
		$seo = $this->_generateSeoURL($str);
		$data = $this->db->where("paramalink", "$seo")->get("posts");

		if ($data->num_rows()) {
			$new = $seo . " " . rand(1, 99);
			return $this->generateUrl($new);
		} else {
			return $seo;
		}
	}

	public function post_view($paramalink)
	{

		$this->view_data['single_blog'] = $this->blog->get_single_post($paramalink);
		$this->view_data['latest_post'] = $this->blog->get_latest_post(5);
		$this->view_data['_title'] = $paramalink;
		$this->view_data['_view'] = "admin/blog_view_single";
		$this->load->view('layouts/master_page_admin', $this->view_data);
	}

}

