<?php

class Users_model extends CI_Model
{

    public function create($data)
    {
        $data['created_at'] = date("Y-m-d H:i:s");
        $data['updated_at'] = date("Y-m-d H:i:s");
        $this->db->insert("users", $data);
        return $this->db->insert_id();
    }

    public function update($id, $update)
    {
        $this->db->where('id', $id);
        $this->db->update('users', $update);
        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function destroy($id)
    {

    }

    public function get_all()
    {
        $this->db->order_by('id', 'desc');
        return $this->db->get('users')->result();
    }


    public function get_by_id($id)
    {
        $query = $this->db
            ->where("id", $id)
            ->get("users")->row();
        if ($query) {
            return $query;
        } else {
            return false;
        }
    }

    public function check_auth($data)
    {
        if (is_numeric($data['email'])) {
            $g = $this->db->where(array('mobile_no' => $data['email'], 'password' => $data['password']))
                ->get('users');
        } else {
            $g = $this->db->where(array('email' => $data['email'], 'password' => $data['password']))
                ->get('users');
        }

        if ($g->num_rows()) {
            $uData = array(
                "id" => (int)$g->row()->id,
                "name" => $g->row()->name,
                "email" => $g->row()->email,
                "role" => $g->row()->role,
                "status" => $g->row()->status,
                "mobile_no" => $g->row()->mobile_no,
                "profile_img" => $g->row()->profile_img
            );
            return $uData;
        } else {
            return FALSE;
        }
    }

    public function check_auth_after_login($data)
    {
        $g = $this->db->where(array('mobile_no' => $data['mobile_no']))
            ->where("status <>'" . BLOCK . "'")
            ->get('users');

        if ($g->num_rows()) {
            return $g->row();
        } else {
            return FALSE;
        }
    }

    public function get_doctor_user()
    {
        $this->db->where('role', DOCTOR);
        $this->db->order_by('id', 'desc');
        return $this->db->get('users')->result();
    }


    public function get_doctor_user_by_hospital($hid)
    {
        $this->db->select('users.*,');
        $this->db->from('users,doctors');
        $this->db->where('users.id=doctors.user_id');
        if ($hid) {
            $this->db->where('doctors.hospital_id', $hid);
        }
        return $this->db->get()->result();
    }

    public function get_doctor_user_report($fromdate, $todate)
    {

        if ($fromdate && $todate) {
            $this->db->where('created_at >=', $fromdate . ' 00:00:00');
            $this->db->where('created_at <=', $todate . ' 23:59:59');
        }
        $this->db->where('role', DOCTOR);
        $this->db->order_by('id', 'desc');
        return $this->db->get('users')->result();
    }


    public function get_patient_user()
    {
        $this->db->where('role', PATIENT);
        $this->db->order_by('id', 'desc');
        return $this->db->get('users')->result();
    }


    public function get_assistant_user()
    {
        $this->db->where('role', DOCTOR_ASSISTANT);
        $this->db->order_by('id', 'desc');
        return $this->db->get('users')->result();
    }

    public function get_patient_user_report($fromdate, $todate)
    {
        if ($fromdate && $todate) {
            if ($fromdate && $todate) {
                $this->db->where('created_at >=', $fromdate . ' 00:00:00');
                $this->db->where('created_at <=', $todate . ' 23:59:59');
            }
        }
        $this->db->where('role', PATIENT);
        $this->db->order_by('id', 'desc');
        return $this->db->get('users')->result();
    }

    public function get_receptionist_user()
    {
        $this->db->where('role', RECEPTIONIST);
        $this->db->order_by('id', 'desc');
        return $this->db->get('users')->result();
    }

    public function get_hospital_user()
    {

        $this->db->where('role', HOSPITAL);
        $this->db->order_by('id', 'desc');
        return $this->db->get('users')->result();
    }

    public function get_hospital_user_report($fromdate, $todate)
    {
        if ($fromdate && $todate) {
            $this->db->where('created_at >=', $fromdate . ' 00:00:00');
            $this->db->where('created_at <=', $todate . ' 23:59:59');
        }
        $this->db->where('role', HOSPITAL);
        $this->db->order_by('id', 'desc');
        return $this->db->get('users')->result();
    }

    public function update_status_active($id)
    {
        $this->db->where('id', $id);
        $this->db->set('status', BLOCK);
        return $this->db->update('users');
    }

    public function update_status_block($id)
    {
        $this->db->where('id', $id);
        $this->db->set('status', ACTIVE);
        return $this->db->update('users');
    }

    public function checkCurrentPassword($id, $str)
    {
        $str = hash("sha256", $str);
        $g = $this->db->where(array('id' => $id, "password" => $str))
            ->get('users');

        if ($g->num_rows()) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    public function email_exits($email)
    {
        $qry = $this->db->where("email", $email)
            ->where("role", PATIENT)
            ->where("status", ACTIVE)
            ->get('users');
        if ($qry->num_rows()) {
            return true;
        } else {
            return false;
        }
    }

    public function forgot_email_exits($email)
    {
        $qry = $this->db->where("email", $email)
            ->where("status", PENDING)
            ->get('users');
        if ($qry->num_rows()) {
            return true;
        } else {
            return false;
        }
    }

    public function forgot_mobile_exits($mobile)
    {
        $qry = $this->db->where("mobile_no", $mobile)
            ->where("status !=", BLOCK)
            ->get('users');
        if ($qry->num_rows()) {
            return true;
        } else {
            return false;
        }
    }

    public function get_by_email($email)
    {
        $qry = $this->db->where("email", $email)
            ->where("role", PATIENT)
            ->get('users')->row();

        return $qry;
    }

    public function get_by_mobile($mobile)
    {
        $qry = $this->db->where("mobile_no", $mobile)
            ->where("role", PATIENT)
            ->get('users')->row();

        return $qry;
    }

    public function get_all_user_report($lim, $start, $fromdate, $todate, $type)
    {
        $this->db->limit($lim, $start);
        $this->db->order_by('id', 'desc');
        if ($fromdate && $todate) {
            $this->db->where('created_at >=', $fromdate . ' 00:00:00');
            $this->db->where('created_at <=', $todate . ' 23:59:59');
        }
        if ($type) {
            $this->db->where('role', $type);
        }
        return $this->db->get('users')->result();

    }

    public function count_users()
    {
        return $this->db->count_all("users");
    }

    public function get_user_five()
    {
        $this->db->order_by('id', 'desc');
        return $this->db->get('users', 5)->result();
    }

    public function count_doctors()
    {
        $this->db->where('status', ACTIVE);
        $this->db->where('role', DOCTOR);
        return $this->db->count_all_results('users');
    }

    public function count_patient()
    {
        $this->db->where('role', PATIENT);
        return $this->db->count_all_results('users');
    }

    public function count_receptionist()
    {
        $this->db->where('status', ACTIVE);
        $this->db->where('role', RECEPTIONIST);
        return $this->db->count_all_results('users');
    }

    public function count_hospital()
    {
        $this->db->where('status', ACTIVE);
        $this->db->where('role', HOSPITAL);
        return $this->db->count_all_results('users');
    }

    public function count_doctor_by_hospital($id)
    {
        $this->db->where('hospital_id', $id);
        return $this->db->count_all_results('doctors');
    }

    public function check_status_is_pending($id)
    {
        $this->db->where('id', $id);
        $this->db->where('status', PENDING);
        if ($this->db->count_all_results('users')) {
            return true;
        } else {
            return false;
        }
    }

    public function get_by_email_for_forgot_password($email)
    {
        $qry = $this->db->select("id,email")->where("email", $email)
            ->get('users')->row();

        return $qry;
    }

    public function get_by_mobile_for_forgot_password($mobile)
    {
        $qry = $this->db->select("id,email,mobile_no")->where("mobile_no", $mobile)
            ->get('users')->row();

        return $qry;
    }
    public function get_today_birthday()
    {
        $todaydate=date('Y-m-d');
        $query=$this->db->select('users.name,users.mobile_no,booking.date_of_birth,docusers.name as docname')->from('users,booking,users as docusers')->where('docusers.id=booking.doctor_id')->where('users.id=booking.user_id')->where('date_of_birth',$todaydate)->order_by('booking.id','desc')->get()->result();
        return $query;
    }
}
