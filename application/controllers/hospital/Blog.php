<?php

class Blog extends Hospital_contoller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Posts_model','blog');
		$this->load->model('Users_model','user');
		$this->view_data['a']=$this->user->get_by_id($this->user_data->id);
	}

	public function index()
	{
		$this->view_data['post']=$this->blog->get_all_by_user($this->user_data->id);
		$this->view_data['_view']="hospital/post/blog_view";
		$this->load->view("layouts/master_page_hospital",$this->view_data);
	}

	public function add()
	{

		$this->view_data['_view']="hospital/post/blog_add";
		$this->load->view("layouts/master_page_hospital",$this->view_data);
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

						$this->_alertSuccessResponce($this->blog->create($post_data), "Post Created", "Post not created", "hospital/blog");
					} else {
						$this->view_data['imgError'] = $bgImgUp['upload_error'];
						$this->view_data['_view'] = "hospital/blog_add";
						$this->load->view("layouts/master_page_hospital", $this->view_data);
					}
				} else {

					$post_data = $this->input->post();
					$post_data['status'] = PUBLISHED;
					$post_data['type'] = BLOG;
					$post_data['paramalink'] = $this->generateUrl($post_data['title']);
					$post_data['user_id'] = $this->user_data->id;
					unset($post_data['_wysihtml5_mode']);

					$this->_alertSuccessResponce($this->blog->create($post_data), "Post Created", "Post not created", "hospital/blog");
				}
			} else {
				$this->view_data['_view'] = "hospital/blog_add";
				$this->load->view("layouts/master_page_hospital", $this->view_data);
			}
		}
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
			$this->_alertSuccessResponce($this->blog->update($id,$data),"Status changed","Status not changed","hospital/blog");
		}
	}

	public function update()
	{
		$id=$this->input->get('id', TRUE);
		$user_id=$this->input->get('uid');
		$this->view_data['post']=$this->blog->get_one_by_user($id,$user_id);
		$this->view_data['_view']='hospital/post/blog_edit';
		$this->load->view('layouts/master_page_hospital', $this->view_data);
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
						$this->_alertInfoResponce($this->blog->update($id, $post_data), "Post updated", "Post not updated", "hospital/blog");
					} else {
						$this->view_data['imgError'] = $bgImgUp['upload_error'];
						$this->view_data['post'] = $blogData;
						$this->view_data['_view'] = "hospital/blog_edit";
						$this->load->view("layouts/master_page_hospital", $this->view_data);
					}
				} else {
					$post_data = $this->input->post();
					$post_data['type'] = BLOG;
					$post_data['paramalink'] = $this->generateUrl($post_data['title']);
					unset($post_data['_wysihtml5_mode']);
					$this->_alertInfoResponce($this->blog->update($id, $post_data), "Post updated", "Post not updated", "hospital/blog");
				}
			} else {
				$this->view_data['post'] = $blogData;
				$this->view_data['_view'] = "hospital/blog_edit";
				$this->load->view("layouts/master_page_hospital", $this->view_data);
			}
		}

	}


	public function distroy()
	{
		if ($this->input->get('id', TRUE)) {
			$id=$this->input->get('id');
			$uid=$this->input->get('uid');
			$this->_alertwarningResponce($this->blog->destroy($id,$uid),"Post Deleted", "Post Not Deleted", "hospital/blog");
		}
		else
		{
			redirect('hospital/blog','refresh');
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
}
