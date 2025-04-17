<?php

class AjaxPrescription extends Assistant_controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('Ajaxprescription_model');
		$this->load->model('Co_model');
		$this->load->model('P_Co_model');
		$this->load->model('Booking_model');
		$this->load->model('Questions_model');
		$this->load->model('Label_model');
		$this->load->model('P_Label_model');
		$this->load->model('Table_master_model');
		$this->load->model('P_digno_model');
		$this->load->model('P_medicine_model');
		$this->load->model('P_Suggestion_model');
		$this->load->model('Doctor_medicine_list_model', 'medicine');
		$this->load->model('Doctors_model');
		$this->load->model('P_other_setting_model');
		$this->load->model('Users_model');
		$this->load->model("Doctor_assistants_model", "assistants");
		$this->user_data->doctor_id = $this->assistants->get_by_user_id($this->user_data->id)->doctor_id;


	}

	public function create()
	{
		$booking_id = $this->input->get('booking_id');

		$user_id = $this->input->get('user_id');
		$doctor_id = $this->user_data->doctor_id;

		$check_data = $this->Ajaxprescription_model->check_doctor_booking($doctor_id, $booking_id, $user_id);

		if (!empty($check_data)) {
			$check_prescription = $this->Ajaxprescription_model->check_user_prescription($doctor_id, $booking_id, $user_id);
			$prescription_id = $check_prescription->id;

			$check_table = $this->P_digno_model->check_dgno_table($check_prescription->id);
			if (empty($check_prescription)) {
				$data = array(
					'doc_id' => $this->user_data->doctor_id,
					'patient_id' => $user_id,
					'booking_id' => $booking_id,
					'status' => PENDING,
					'created_by' => $this->user_data->id,
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
				);
				$check_prescription = $this->Ajaxprescription_model->create_prescription($data);
				$dgno_table= $this->Table_master_model->get_all_table_master($this->user_data->doctor_id);
				$prescription_id = $check_prescription->id;

				if(count($dgno_table)!=0){
					$table=array(
						'p_id'=> $check_prescription->id,
						'rows'=>$dgno_table[0]['row'],
						'cols'=>$dgno_table[0]['table_column'],
						'header_label'=>$dgno_table[0]['lable_header'],
						'cols_label'=>$dgno_table[0]['lable_row'],
						'footer_label'=>$dgno_table[0]['lable_footer'],
						'extra_label'=>$dgno_table[0]['extra_label'],
						'created_by' => $this->user_data->id,
						'created_at' => date('Y-m-d H:i:s'),
						'updated_at' => date('Y-m-d H:i:s'),
					);

					 $this->P_digno_model->create_dgno_table($table);
					$check_table = $this->P_digno_model->check_dgno_table($prescription_id);
				}
			}

			$this->view_data['check_table'] = $check_table;



			$this->view_data['prescription'] = $check_prescription;

			$this->view_data['list'] = $this->get_medi_list();
			$this->view_data['list_detail']=$this->get_branch();
			$this->view_data['medicineAll']=$this->medicine;
			$this->view_data['old_cos'] = $this->P_Co_model->get_prescription_co($prescription_id);
			$this->view_data['cos'] = $this->Co_model->get_all_co_master($this->user_data->doctor_id);
			$this->view_data['old_labels'] = $this->P_Label_model->get_prescription_label($prescription_id);
			$this->view_data['labels'] = $this->Label_model->get_all_label_master($this->user_data->doctor_id);

			$this->view_data['old_medicines'] = $this->P_medicine_model->get_prescription_medicine($prescription_id);


			foreach ($this->view_data['cos'] as $key => $co) {
				$this->view_data['cos'][$key]['questions'] = $this->Questions_model->get_co_question($co['id']);

			}
$this->view_data['doctor_id']=$this->user_data->doctor_id;
			$this->view_data['_view'] = "assistant/AjaxPrescription/index";
			$this->load->view("layouts/master_page_assistant", $this->view_data);
		}


	}
	public function get_medi_list()
	{
		$medicine_list = $this->medicine->get_all_list_by_doctor_id($this->user_data->doctor_id);

		return json_encode($medicine_list);
	}
	public function get_branch()
	{
		$q = "";
		$medicine_list = $this->medicine->get_by_doctor_id($this->user_data->doctor_id, $q);

		$t=array();
foreach ($medicine_list as $md){


	$t[$md->text]=array($md->morning,$md->afternoon,$md->evening,$md->tab,$md->doz,$md->description);

}

		return json_encode($t);
	}

	public function ajax_insert_co()
	{

		$cos = $this->input->post('cos');
		$prescription_id = $this->input->post('p_id');
		$p_id = $this->input->post('pre_id');
		$check_p_co = $this->P_Co_model->get_prescription_co($p_id);
		if (count($check_p_co != 0)) {
		$delete=$this->P_Co_model->delete_prescription($p_id);
		}
		foreach ($cos as $key => $co) {
			$cos[$key]['p_id'] = $p_id;
			$cos[$key]['co'] = $co[0];
			$cos[$key]['question'] = $co[1];
			$cos[$key]['question_code'] = $co[2];
			$cos[$key]['created_by'] = $this->user_data->id;
			$cos[$key]['created_at'] = date('Y-m-d H:i:s');
			$cos[$key]['updated_at'] = date('Y-m-d H:i:s');
			unset($cos[$key][0]);
			unset($cos[$key][1]);
			unset($cos[$key][2]);
		}

		$insert_co = $this->P_Co_model->insert_prescription_co($cos);

		if ($insert_co !=""){

			$arr=array('success','Cos-Category Details successfully inserted');

		}
		else{
			$arr=array('error','Something want wrong');
		}
		header('Content-Type: application/json');
		echo json_encode( $arr );

	}

	public function ajax_insert_suggestion()
	{
		$suggestionsList = $this->input->post('sug');
		$prescription_id = $this->input->post('pre_id');
		$next_date= $this->input->post('next_date');
		$check_p_suggestion = $this->P_Suggestion_model->get_prescription_suggestion($prescription_id);
		if (count($check_p_suggestion != 0)) {
			$delete=$this->P_Suggestion_model->delete_prescription_sug($prescription_id);
		}
		foreach ($suggestionsList as $key => $sugg) {
			$suggestionsList[$key]['p_id'] = $prescription_id;
			$suggestionsList[$key]['question'] = $sugg[0];
			$suggestionsList[$key]['suggestions'] = $sugg[1];
			$suggestionsList[$key]['created_by'] = $this->user_data->id;
			$suggestionsList[$key]['created_at'] = date('Y-m-d H:i:s');
			$suggestionsList[$key]['updated_at'] = date('Y-m-d H:i:s');
			unset($suggestionsList[$key][0]);
			unset($suggestionsList[$key][1]);
		}
		$insert_sugg = $this->P_Suggestion_model->insert_prescription_sugg($suggestionsList);
		$update_prescription=array(
			'next_visit'=>$next_date,
			'status'=>VISITED,
		);
		$update_booking=array(
			'status'=>VISITED,
		);


		$p=$this->Ajaxprescription_model->get_prescription_by_id($prescription_id);

		$this->Booking_model->update($p->booking_id,$update_booking);

		$this->Ajaxprescription_model->update_prescription($prescription_id,$update_prescription);

		if ($insert_sugg !=""){

			$arr=array('success','suggestion successfully inserted');

		}
		else{
			$arr=array('error','Something want wrong');
		}
		header('Content-Type: application/json');
		echo json_encode( $arr );
	}

	public function ajax_insert_labels()
	{
		$labels = $this->input->post('labels');
		$p_id = $this->input->post('pre_id');
		$check_p_label = $this->P_Label_model->get_prescription_label($p_id);
		if (count($check_p_label != 0)) {
			$delete=$this->P_Label_model->delete_prescription_label($p_id);
		}
		foreach ($labels as $key => $label) {
		if ($label[1] !=""){
			$labels[$key]['p_id'] = $p_id;
			$labels[$key]['label'] = $label[0];
			$labels[$key]['l_value'] = $label[1];
			$labels[$key]['label_unit'] = $label[2];
			$labels[$key]['created_by'] = $this->user_data->id;
			$labels[$key]['created_at'] = date('Y-m-d H:i:s');
			$labels[$key]['updated_at'] = date('Y-m-d H:i:s');
			unset($labels[$key][0]);
			unset($labels[$key][1]);
			unset($labels[$key][2]);
			}
		else{
			unset($labels[$key]);
		}

		}
		$insert_labels = $this->P_Label_model->insert_prescription_label($labels);
		if ($insert_labels !=""){

			$arr=array('success','labels Successfully inserted');

		}
		else{
			$arr=array('error','Something want wrong');
		}
		header('Content-Type: application/json');
		echo json_encode( $arr );

	}

	public function ajax_insert_medi_list()
	{
		$lists = $this->input->post('lists');
		$p_id = $this->input->post('pre_id');
		$check_p_medilist = $this->P_medicine_model->get_prescription_medicine($p_id);
		if (count($check_p_medilist != 0)) {
			$delete=$this->P_medicine_model->delete_prescription_medicine($p_id);
		}
		foreach ($lists as $key=>$list){
			if ($list[0]!="") {
				$lists[$key]['p_id'] = $p_id;
				$lists[$key]['medicine'] = $list[0];
				$lists[$key]['morning'] = $list[1];
				$lists[$key]['after_noon'] = $list[2];
				$lists[$key]['evning'] = $list[3];
				$lists[$key]['tab'] = $list[4];
				$lists[$key]['doz'] = $list[5];
				$lists[$key]['description'] = $list[6];
				$lists[$key]['created_by'] = $this->user_data->id;
				$lists[$key]['created_at'] = date('Y-m-d H:i:s');
				$lists[$key]['updated_at'] = date('Y-m-d H:i:s');
				unset($lists[$key][0]);
				unset($lists[$key][1]);
				unset($lists[$key][2]);
				unset($lists[$key][3]);
				unset($lists[$key][4]);
				unset($lists[$key][5]);
				unset($lists[$key][6]);
			}
			else{
				unset($lists[$key]);
			}
		}

		if (count($lists)!= 0){
			$insert_list = $this->P_medicine_model->insert_prescription_medicine($lists);
			if ($insert_list !=""){

				$arr=array('success','Medicines Successfully inserted');

			}
			else{
				$arr=array('error','Something want wrong');
			}
		}else{

			$arr=array('warning','No medicine Selected Please select one');
		}

		header('Content-Type: application/json');
		echo json_encode( $arr );


	}

	public function get_saggestion()
	{
		$p_id = $this->input->get('id');
		$check_p_co = $this->P_Co_model->get_prescription_co($p_id);
		$questions=array();
		foreach ($check_p_co as $key=>$co){
			$sugeations=$this->Questions_model->get_question_suggestion($co->question);
			$questions[$key]['question']=$co->question;
			foreach ($sugeations as $row){
				$questions[$key]['suggestion'][]=$row['suggestions'];
			}

		}
		$this->view_data['old_questions'] = $this->P_Suggestion_model->get_prescription_suggestion($p_id);
		$this->view_data['next_date'] = $this->Ajaxprescription_model->get_prescription_by_id($p_id);
		$this->view_data['questions']=$questions;

		 $this->load->view('assistant/AjaxPrescription/get_saggestion_ajax_view',$this->view_data);
	}

	public function print_prescription()
	{
		$booking_id = $this->input->get('booking_id');
		$user_id = $this->input->get('user_id');
		$doctor_id = $this->user_data->doctor_id;
		$check_data = $this->Ajaxprescription_model->check_doctor_booking($doctor_id, $booking_id, $user_id);

		if (!empty($check_data)) {
			$check_prescription = $this->Ajaxprescription_model->check_user_prescription($doctor_id, $booking_id, $user_id);
			$prescription_id = $check_prescription->id;

			$check_table = $this->P_digno_model->check_dgno_table($prescription_id);
			$this->view_data['doctor']=$this->Doctors_model->get_profile($doctor_id);
			$this->view_data['patient']=$this->Booking_model->get_by_id($booking_id);
			$this->view_data['patient_user']=$this->Users_model->get_by_id($user_id);
			$this->view_data['p_table'] = $check_table;
			$this->view_data['prescription'] = $check_prescription;
			$this->view_data['p_cos'] = $this->P_Co_model->get_prescription_co_group_by($prescription_id);
			$this->view_data['p_labels'] = $this->P_Label_model->get_prescription_label($prescription_id);
			$this->view_data['p_medicines'] = $this->P_medicine_model->get_prescription_medicine($prescription_id);
			$this->view_data['p_questions'] = $this->P_Suggestion_model->get_prescription_suggestion_by_question($prescription_id);

			$this->view_data['check_table'] = $this->P_digno_model->check_dgno_table($prescription_id);
			foreach ($this->view_data['p_questions'] as $key => $row) {
				$this->view_data['p_questions'][$key]['suggestions'] = $this->P_Suggestion_model->get_question_suggestion($row['question'],$prescription_id);

			}
			$this->view_data['settings']=$this->P_other_setting_model->get_all_p_other_settings($this->user_data->doctor_id);
//			print_r($this->view_data['settings']);
//			die();
			$this->load->view('assistant/AjaxPrescription/print_prescription',$this->view_data);

		}

	}
}
