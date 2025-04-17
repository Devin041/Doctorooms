<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Doctor_rating_model extends CI_Model
{

    public function create($data)
    {
        if ($this->db->insert("doctor_rating", $data)) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }

    public function update($id, $data)
    {
        $this->db->where(array("id" => $id))
            ->update("doctor_rating", $data);

        return $this->db->affected_rows() ? TRUE : FALSE;
    }

    public function get_by_doctor_total_count($doctor_id)
    {
        $qry = $this->db->where("doctor_id", $doctor_id)
            ->get("doctor_rating");
        return $qry->num_rows();
    }

    /**
     * This function calculate the average rating of doctor
     * @param $doctor_id
     * @return float|int
     */
    public function get_average_rating($doctor_id)
    {
        $rat5Count = $this->db->where("doctor_id", $doctor_id)->where("star", 5)->get("doctor_rating")->num_rows();
        $rat4Count = $this->db->where("doctor_id", $doctor_id)->where("star", 4)->get("doctor_rating")->num_rows();
        $rat3Count = $this->db->where("doctor_id", $doctor_id)->where("star", 3)->get("doctor_rating")->num_rows();
        $rat2Count = $this->db->where("doctor_id", $doctor_id)->where("star", 2)->get("doctor_rating")->num_rows();
        $rat1Count = $this->db->where("doctor_id", $doctor_id)->where("star", 1)->get("doctor_rating")->num_rows();


        if ($rat1Count || $rat2Count || $rat3Count || $rat4Count || $rat5Count) {
            $avg = ((5 * $rat5Count) + (4 * $rat4Count) + (3 * $rat3Count) + (2 * $rat2Count) + (1 * $rat1Count)) / ($rat5Count + $rat4Count + $rat3Count + $rat2Count + $rat1Count);
        } else {
            $avg = 0;
        }

        return number_format($avg, 1);
    }

    /**
     * This function check patient rating exits or not and return it
     * @param $doctor_id
     * @param $patient_id
     * @return mixed
     */
    public function get_by_patient_doctor($doctor_id, $patient_id)
    {
        return $this->db->where("patient_id", $patient_id)
            ->where("doctor_id", $doctor_id)
            ->get("doctor_rating")->row();
    }

}
