<?php

/**
 * @property Users_model user
 */
class Suggestions extends Doctor_controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Suggestions_model');
		$this->load->model('Questions_model');
		$this->load->model('Co_model');
	}

	public function index()
	{
		$id=$this->input->get('id');
		if ($id !=""){
			$this->view_data['suggestions']=$this->Suggestions_model->get_all($id);

		}
		$this->view_data['cos'] = $this->Co_model->get_all_co_master($this->user_data->id);
		foreach ($this->view_data['cos'] as $key => $co) {
			$this->view_data['cos'][$key]['questions'] = $this->Questions_model->get_co_question($co['id']);

		}
		$this->view_data['questions'] = $this->Questions_model->get_all_questions_master($this->user_data->id);
		$this->view_data['_view'] = 'doctor/suggestions/index';
		$this->load->view('layouts/master_page_doctors',$this->view_data);
	}

	public function add($question_id)
	{

		$question = $this->Questions_model->get_questions_master($question_id,$this->user_data->id);
		if(isset($question['id']) && $this->input->post('suggestions')!=""){
			$suggestions=$this->input->post('suggestions');
			foreach ($suggestions as $key=>$row){
				$suggestions[$key]['question_id']=$question_id;
				$suggestions[$key]['created_by'] = $this->user_data->id;
				$suggestions[$key]['doctor_id'] = $this->user_data->id;
				$suggestions[$key]['status'] = "Active";
				$suggestions[$key]['created_at'] = date('Y-m-d H:i:s');
				$suggestions[$key]['updated_at'] = date('Y-m-d H:i:s');
			}
			$this->Suggestions_model->remove_old_suggestions($question_id);
			$this->Suggestions_model->add_suggestions($suggestions);
			$this->_alertSuccessResponce(true, "Suggestions Inserted.", "Suggestions not Inserted..", "doctor/suggestions?id=".$question_id);


		}
		else{
			$this->_alertWarningResponce(true, "Please Enter suggestions.", "Suggestions not Inserted..", "doctor/suggestions?id=".$question_id);


		}

	}


}
