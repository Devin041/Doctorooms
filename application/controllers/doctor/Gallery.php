<?php

/**
 * @property Doctors_model doctor
 * Class Gallery
 */
class Gallery extends Doctor_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Doctors_model", "doctor");
        $doctor = $this->doctor->get_one_by_user($this->user_data->id);
        if (!$doctor) {
            $this->doctor->create(array("user_id" => $this->user_data->id));
        }
    }

    public function index()
    {
        $doc_data = $this->doctor->get_one_by_user($this->user_data->id);
        $this->view_data['gallery'] = ($doc_data->photos) ? json_decode($doc_data->photos) : array();
        $this->view_data['_title'] = "Gallery";
        $this->view_data['_view'] = "doctor/gallery";
        $this->load->view("layouts/master_page_doctors", $this->view_data);
    }

    public function upload()
    {
        $doc_data = $this->doctor->get_one_by_user($this->user_data->id);
        $galCount = ($doc_data->photos) ? json_decode($doc_data->photos) : array();

        if (count($galCount) >= 5) {
            return $this->_alertSuccessResponce(false, "nothing", "Upload Only 5 image on gallery", "doctor/gallery");
        }

        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            if ($_FILES['gal_img']['name']) {
                $upImg = $this->_upload_file("upload/gallery/", date("Y-m-d") . "_" . $this->user_data->id, "gal_img");
                if ($upImg["status"] == "true") {
                    $myGal = ($doc_data->photos) ? (array)json_decode($doc_data->photos) : array();
                    array_push($myGal, $upImg['file_name']);

                    $imgData['photos'] = json_encode($myGal);
                    return $this->_alertSuccessResponce($this->doctor->update($doc_data->id, $imgData), "Gallery updated", "Gallery not updated", "doctor/gallery");
                } else {

                    $this->view_data['imgError'] = $upImg['upload_error'];
                    $this->view_data['_title'] = "Gallery";
                    $this->view_data['_view'] = "doctor/gallery";
                    $this->view_data['gallery'] = ($doc_data->photos) ? json_decode($doc_data->photos) : array();
                    $this->load->view("layouts/master_page_doctors", $this->view_data);
                }
            } else {
                return $this->_alertSuccessResponce(false, "nothing", "Please select image for upload", "doctor/gallery");
            }
        }
    }

    public function delete($one_img)
    {
        $doc_data = $this->doctor->get_one_by_user($this->user_data->id);
        $photos = ($doc_data->photos) ? (array)json_decode($doc_data->photos) : array();

        if (in_array($one_img, $photos)) {
            $newArr = array_diff($photos, array($one_img));
            unlink("upload/gallery/" . $one_img);
            $data['photos'] = ($newArr) ? json_encode(array_values($newArr)) : null;
            return $this->_alertSuccessResponce($this->doctor->update($doc_data->id, $data), "Gallery updated", "Gallery not updated", "doctor/gallery");
        }
    }
}