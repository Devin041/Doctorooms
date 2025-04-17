<?php

class Hospital_inquiry_model extends CI_Model
{

    public function create($data)
    {
        $data['created_at'] = date("Y-m-d H:i:s");
        $data['updated_at'] = date("Y-m-d H:i:s");
        if ($this->db->insert("hospital_inquiry", $data)) {
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
            ->update("hospital_inquiry", $data);

        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public  function getall()
	{
		$this->db->order_by('id','desc');
		return $this->db->get('hospital_inquiry')->result();
	}

    public function destroy($id, $user_id)
    {
    	if ($user_id) {
			$this->db->delete('hospital_inquiry', array('id' => $id, 'user_id' => $user_id));
		}
		else
		{
			$this->db->delete('hospital_inquiry', array('id' => $id));
		}
        return $this->db->affected_rows() ? TRUE : FALSE;
    }
}
