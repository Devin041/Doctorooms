<?php

class Posts_model extends CI_Model
{

    public function create($data)
    {
        $data['created_at'] = date("Y-m-d H:i:s");
        $data['updated_at'] = date("Y-m-d H:i:s");
        if ($this->db->insert("posts", $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }

    public function update($id, $data)
    {
        //unset($data['_wysihtml5_mode']);
        $data['updated_at'] = date("Y-m-d H:i:s");
        $this->db->where(array("id" => $id))
            ->update("posts", $data);

        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function destroy($id, $user_id)
    {
        $this->db->delete('posts', array('id' => $id, 'user_id' => $user_id));
        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function get_all($limit = null, $start = null)
    {
        $this->db->select('p.*,users.email');
        $this->db->from('posts as p,users');
        $this->db->where('users.id=p.user_id');
        if (!is_null($limit)) {
            $this->db->limit($limit, $start);
        }
        $this->db->order_by('id', 'desc');
        return $this->db->get()->result();
    }

//    public function get_only_four()
//    {
//        $this->db->order_by('id', 'desc');
//        return $this->db->get("posts", 4)->result();
//    }

    public function get_all_by_user($user_id)
    {
        $this->db->select('p.*,users.email');
        $this->db->from('posts as p,users');
        $this->db->where('users.id=p.user_id');
        $this->db->where('p.user_id', $user_id);
        $this->db->order_by('id', 'desc');
        return $this->db->get()->result();
       
    }

    public function get_one_by_user($id, $user_id)
    {
        return $this->db
            ->where("id", $id)
            ->where("user_id", $user_id)
            ->get("posts")->row();
    }

    public function get_by_id($id)
    {
        return $this->db
        ->where("id", $id)
        ->get("posts")->row();

    }

    /**
     * this function get blog for front show
     * @param null $limit
     * @param null $start
     * @return array
     */
    public function get_all_front($limit = null, $start = null)
    {
        $this->db->select('p.*,users.email,users.name,users.profile_img');
        $this->db->from('posts as p,users');
        $this->db->where('users.id=p.user_id');
        $this->db->where('p.status', PUBLISHED);
        $this->db->where('p.type', BLOG);
        if (!is_null($limit)) {
            $this->db->limit($limit, $start);
        }
        $this->db->order_by('id', 'desc');
        return $this->db->get()->result();
    }

    public function get_single_post($paramalink)
    {
        $this->db->select('p.*,users.email,users.name,users.profile_img');
        $this->db->from('posts as p,users');
        $this->db->where('users.id=p.user_id');
        $this->db->where('p.status', PUBLISHED);
        $this->db->where('p.type', BLOG);
        $this->db->where('p.paramalink', $paramalink);
        $this->db->order_by('id', 'desc');
        return $this->db->get()->row();
    }

    public function get_latest_post($limit)
    {
        $this->db->select('p.*,users.email,users.name,users.profile_img');
        $this->db->from('posts as p,users');
        $this->db->where('users.id=p.user_id');
        $this->db->where('p.status', PUBLISHED);
        $this->db->where('p.type', BLOG);
        $this->db->limit($limit);
        $this->db->order_by('id', 'desc');

        return $this->db->get()->result();
    }
	public function count_by_hospital($id)
	{
		$this->db->where('user_id', $id);
		return $this->db->count_all_results('posts');
	}

}
