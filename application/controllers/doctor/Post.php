<?php

class Post extends Doctor_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("posts_model", "post");
    }

    public function index()
    {
        $this->view_data['posts'] = $this->post->get_all_by_user($this->user_data->id);
        $this->view_data['_title'] = "Post";
        $this->view_data['_view'] = "doctor/post/index";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function create()
    {
        $this->view_data['_view'] = "doctor/post/add";
        $this->view_data['_title'] = "New Post";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function store()
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

                        $this->_alertSuccessResponce($this->post->create($post_data), "Post Created", "Post not created", "doctor/post");
                    } else {
                        $this->view_data['imgError'] = $bgImgUp['upload_error'];
                        $this->view_data['_title'] = "New Post";
                        $this->view_data['_view'] = "doctor/post/add";
                        $this->load->view("layouts/master_page_doctors", $this->view_data);
                    }
                } else {

                    $post_data = $this->input->post();
                    $post_data['status'] = PUBLISHED;
                    $post_data['type'] = BLOG;
                    $post_data['paramalink'] = $this->generateUrl($post_data['title']);
                    $post_data['user_id'] = $this->user_data->id;
                    unset($post_data['_wysihtml5_mode']);

                    $this->_alertSuccessResponce($this->post->create($post_data), "Post Created", "Post not created", "doctor/post");
                }
            } else {
                $this->view_data['_title'] = "New Post";
                $this->view_data['_view'] = "doctor/post/add";
                $this->load->view("layouts/master_page_doctors", $this->view_data);
            }
        }
    }

    public function edit($id)
    {
        $blogData = $this->post->get_one_by_user($id, $this->user_data->id);

        if (is_null($blogData)) {
            redirect("users/blog");
        }

        $this->view_data['post'] = $blogData;
        $this->view_data['_title'] = "Edit Post";
        $this->view_data['_view'] = "doctor/post/edit";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function update($id)
    {
        $blogData = $this->post->get_one_by_user($id, $this->user_data->id);

        if (is_null($blogData)) {
            redirect("users/blog");
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
                        $this->_alertInfoResponce($this->post->update($id, $post_data), "Post updated", "Post not updated", "doctor/post");
                    } else {
                        $this->view_data['imgError'] = $bgImgUp['upload_error'];
                        $this->view_data['post'] = $blogData;
                        $this->view_data['_title'] = "Edit Post";
                        $this->view_data['_view'] = "doctor/post/edit";
                        $this->load->view("layouts/master_page_doctors", $this->view_data);
                    }
                } else {
                    $post_data = $this->input->post();
                    $post_data['type'] = BLOG;
                    $post_data['paramalink'] = $this->generateUrl($post_data['title']);
                    unset($post_data['_wysihtml5_mode']);
                    $this->_alertInfoResponce($this->post->update($id, $post_data), "Post updated", "Post not updated", "doctor/post");
                }
            } else {
                $this->view_data['post'] = $blogData;
                $this->view_data['_title'] = "Edit Post";
                $this->view_data['_view'] = "doctor/post/edit";
                $this->load->view("layouts/master_page_doctors", $this->view_data);
            }
        }
    }

    public function delete($id)
    {
        $blogData = $this->post->get_one_by_user($id, $this->user_data->id);

        if (is_null($blogData)) {
            redirect("doctor/post");
        }

        if ($blogData->blog_img) {
            unlink('upload/blog/' . $blogData->blog_img);
        }

        $this->_alertWarningResponce($this->post->destroy($id, $this->user_data->id), "Post deleted", "Post not deleted", "doctor/post");
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

    public function hide_unhide($id)
    {
        $blogData = $this->post->get_one_by_user($id, $this->user_data->id);

        if (is_null($blogData)) {
            redirect("users/blog");
        }

        if ($blogData->status == PUBLISHED) {
            $data['status'] = HIDE;
        } elseif ($blogData->status == HIDE) {
            $data['status'] = PUBLISHED;
        } else {
            $data['status'] = $blogData->status;
        }

        $this->_alertInfoResponce($this->post->update($id, $data), "Status changed", "Status not changed", "doctor/post");
    }
}