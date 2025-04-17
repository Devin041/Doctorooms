<?php
$config = array(
	'register' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'email',
			'label' => 'Email',
			'rules' => 'trim|required|valid_email|is_unique[users.email]'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'required|min_length[6]'
		),
		array(
			'field' => 'c_pass',
			'label' => 'Conform Password',
			'rules' => 'required|matches[password]'
		),
		array(
			'field' => 'mobile_no',
			'label' => 'Mobile',
			'rules' => 'trim|required|is_unique[users.mobile_no]'
		),
		array(
			'field' => 'terms',
			'label' => 'Terms and conditions And Privacy Policy',
			'rules' => 'required'
		)
	),
	'receptionist_patient_registration' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'email',
			'label' => 'Email',
			'rules' => 'trim|required|valid_email|is_unique[users.email]'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'required|min_length[6]'
		),
		array(
			'field' => 'c_pass',
			'label' => 'Conform Password',
			'rules' => 'required|matches[password]'
		),
		array(
			'field' => 'mobile_no',
			'label' => 'Mobile',
			'rules' => 'trim|required|is_unique[users.mobile_no]'
		)
	),
	'login' => array(
		array(
			'field' => 'email',
			'label' => 'Email',
			'rules' => 'required'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'required'
		)
	),
	'contry' => array(
		array(
			'field' => 'country_name',
			'label' => 'country name',
			'rules' => 'trim|required'
		)

	),
	'state' => array(
		array(
			'field' => 'state_name',
			'label' => 'state name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'county_id',
			'label' => 'country name',
			'rules' => 'trim|required'
		)

	),
	'city' => array(
		array(
			'field' => 'state_id',
			'label' => 'state name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'city_name',
			'label' => 'city name',
			'rules' => 'trim|required'
		)

	),
	'type' => array(
		array(
			'field' => 'type',
			'label' => 'Doctor',
			'rules' => 'trim|required'
		)

	),
	'disease' => array(
		array(
			'field' => 'dis_name',
			'label' => 'disease name',
			'rules' => 'trim|required'
		)

	),
	'blog' => array(
		array(
			'field' => 'title',
			'label' => 'Title',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'content',
			'label' => 'Content',
			'rules' => 'required'
		),
		array(
			'field' => 'video_link',
			'label' => 'Video Link',
			'rules' => 'valid_url'
		)
	),
	'profile' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'email',
			'label' => 'Email',
			'rules' => 'trim|required|valid_email|is_unique[users.email]'
		),
		array(
			'field' => 'mobile_no',
			'label' => 'Mobile',
			'rules' => 'trim|required|is_unique[users.mobile_no]'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'trim|required'
		),

		array(
			'field' => 'doctor_type',
			'label' => 'Doctor Type',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'fees',
			'label' => 'Fees',
			'rules' => 'trim|required|greater_than_equal_to[2]|numeric'
		),
		array(
			'field' => 'address',
			'label' => 'Address',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'description',
			'label' => 'Description',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'eduction',
			'label' => 'Eduction',
			'rules' => 'trim|required'
		),
	),
	'doctor_profile' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'doctor_type',
			'label' => 'Doctor Type',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'fees',
			'label' => 'Fees',
			'rules' => 'trim|required|greater_than_equal_to[2]|numeric'
		),
		array(
			'field' => 'address',
			'label' => 'Address',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'description',
			'label' => 'Description',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'eduction',
			'label' => 'Eduction',
			'rules' => 'trim|required'
		),
	),
	'change_password' => array(
		array(
			'field' => 'current_pass',
			'label' => 'Current Password',
			'rules' => 'required|callback_valid_current_password'
		),
		array(
			'field' => 'new_pass',
			'label' => 'New Password',
			'rules' => 'required'
		),
		array(
			'field' => 'conform_pass',
			'label' => 'Conform Password',
			'rules' => 'required|matches[new_pass]'
		)
	),
	'patient_profile' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'required'
		),
		array(
			'field' => 'gender',
			'label' => 'Gender',
			'rules' => 'required'
		),
		array(
			'field' => 'mobile_no',
			'label' => 'Mobile',
			'rules' => 'trim|required|is_unique[users.mobile_no]'
		)
	),
	'register_receptionist' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'email',
			'label' => 'Email',
			'rules' => 'trim|required|valid_email|is_unique[users.email]'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'required|min_length[6]'
		),
		array(
			'field' => 'c_pass',
			'label' => 'Conform Password',
			'rules' => 'required|matches[password]'
		),
		array(
			'field' => 'mobile_no',
			'label' => 'Mobile',
			'rules' => 'trim|required|is_unique[users.mobile_no]'
		)
	),
	'register_receptionist_update' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'min_length[6]'
		),
		array(
			'field' => 'c_pass',
			'label' => 'Conform Password',
			'rules' => 'matches[password]'
		)
	),
	'register_assistant' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'email',
			'label' => 'Email',
			'rules' => 'trim|required|valid_email|is_unique[users.email]'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'required|min_length[6]'
		),
		array(
			'field' => 'c_pass',
			'label' => 'Conform Password',
			'rules' => 'required|matches[password]'
		),
		array(
			'field' => 'mobile_no',
			'label' => 'Mobile',
			'rules' => 'trim|required|is_unique[users.mobile_no]'
		)
	),
	'register_assistant_update' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'min_length[6]'
		),
		array(
			'field' => 'c_pass',
			'label' => 'Conform Password',
			'rules' => 'matches[password]'
		)
	),
	'admin_doctor' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'min_length[6]'
		),
		array(
			'field' => 'mobile_no',
			'label' => 'Mobile',
			'rules' => 'trim|required|is_unique[users.mobile_no]'
		)
	),
	'receptionist_profile' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		)
	),
	'assistant_profile' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		)
	),
	'booking_by_patient' => array(
		array(
			'field' => 'petient_name',
			'label' => 'Patient Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'booking_date',
			'label' => 'Booking Date ',
			'rules' => 'trim|required'
		),
//		array(
//			'field' => 'disease',
//			'label' => 'Disease',
//			'rules' => 'trim|required'
//		),
		array(
			'field' => 'age',
			'label' => 'Age',
			'rules' => 'trim|numeric'
		),
		array(
			'field' => 'description',
			'label' => 'Description',
			'rules' => 'trim|max_length[300]'
		)
	),
	'booking_by_receptionist' => array(
		array(
			'field' => 'mobile',
			'label' => 'Mobile',
			'rules' => 'trim'
		), array(
			'field' => 'petient_name',
			'label' => 'Patient Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'booking_date',
			'label' => 'Booking Date ',
			'rules' => 'trim|required'
		),
//		array(
//			'field' => 'disease',
//			'label' => 'Disease',
//			'rules' => 'trim|required'
//		),
		array(
			'field' => 'age',
			'label' => 'Age',
			'rules' => 'trim|numeric'
		),
		array(
			'field' => 'description',
			'label' => 'Description',
			'rules' => 'trim|max_length[300]'
		)
	),
	'booking_by_hospital' => array(
	    array(
			'field' => 'petient_name',
			'label' => 'Patient Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'booking_date',
			'label' => 'Booking Date ',
			'rules' => 'trim|required'
		),
//		array(
//			'field' => 'disease',
//			'label' => 'Disease',
//			'rules' => 'trim|required'
//		),
		array(
			'field' => 'age',
			'label' => 'Age',
			'rules' => 'trim|numeric'
		),

		array(
			'field' => 'doctor_id',
			'label' => 'Doctor',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'description',
			'label' => 'Description',
			'rules' => 'trim|max_length[300]'
		),
		array(
			'field' => 'doctor_id',
			'label' => 'Doctor',
			'rules' => 'trim|required'
		),
	),
	'hospital_profile' => array(
		array(
			'field' => 'name',
			'label' => 'Hospital Name',
			'rules' => 'trim|required'
		),
	),
	'hospital_inquiry' => array(
		array(
			'field' => 'hospital_name',
			'label' => 'Hospital Name',
			'rules' => 'trim|required'
		), array(
			'field' => 'hospital_cotanct_no',
			'label' => 'Hospital Cotanct Number',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'email',
			'label' => 'Email',
			'rules' => 'trim|required|valid_email'
		),
		array(
			'field' => 'contact_person_name',
			'label' => 'Contact Person Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'contact_person_mobile',
			'label' => 'Contact Person Mobile',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'address',
			'label' => 'Address',
			'rules' => 'trim|required|max_length[255]'
		),
		array(
			'field' => 'city',
			'label' => 'City',
			'rules' => 'trim|required|max_length[255]'
		),
		array(
			'field' => 'state',
			'label' => 'State',
			'rules' => 'trim|required|max_length[255]'
		)
	),
	'contact_us' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required|min_length[3]|max_length[255]'
		), array(
			'field' => 'email',
			'label' => 'Email Address',
			'rules' => 'trim|required|valid_email|min_length[3]|max_length[300]'
		),
		array(
			'field' => 'subject',
			'label' => 'Subject',
			'rules' => 'trim|required|min_length[3]|max_length[300]'
		),
		array(
			'field' => 'message',
			'label' => 'Message',
			'rules' => 'trim|required|min_length[3]|max_length[1500]'
		)
	),

	'medicine' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required|min_length[2]|max_length[255]'
		),
		array(
			'field' => 'morning',
			'label' => 'Morning',
			'rules' => 'trim|required|min_length[1]|max_length[255]'
		),
		array(
			'field' => 'afternoon',
			'label' => 'Afternoon',
			'rules' => 'trim|required|min_length[1]|max_length[255]'
		),
		array(
			'field' => 'evening',
			'label' => 'Evening',
			'rules' => 'trim|required|min_length[1]|max_length[255]'
		),
		array(
			'field' => 'tab',
			'label' => 'Tab',
			'rules' => 'trim|required|min_length[1]|max_length[255]'
		),
		array(
			'field' => 'doz[]',
			'label' => 'Doz',
			'rules' => 'trim|required'
		),
	),
	'co' => array(
	array(
		'field' => 'co_code',
		'label' => 'Co Category',
		'rules' => 'trim|required'
	),

),

	'questions' => array(
		array(
			'field' => 'question',
			'label' => 'Complain',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'co_id',
			'label' => 'Category',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'question_code',
			'label' => 'Complain code',
			'rules' => 'trim|required'
		),

	),

	'label' => array(
		array(
			'field' => 'label_title',
			'label' => 'Label Title',
			'rules' => 'trim|required'
		),


	),
	'register_pharmacist' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'email',
			'label' => 'Email',
			'rules' => 'trim|required|valid_email|is_unique[users.email]'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'required|min_length[6]'
		),
		array(
			'field' => 'c_pass',
			'label' => 'Conform Password',
			'rules' => 'required|matches[password]'
		),
		array(
			'field' => 'mobile_no',
			'label' => 'Mobile',
			'rules' => 'trim|required|is_unique[users.mobile_no]'
		)
	),
	'register_pharmacist_update' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'password',
			'label' => 'Password',
			'rules' => 'min_length[6]'
		),
		array(
			'field' => 'c_pass',
			'label' => 'Conform Password',
			'rules' => 'matches[password]'
		)
	),
	'pharmacist_profile' => array(
		array(
			'field' => 'name',
			'label' => 'Name',
			'rules' => 'trim|required'
		)
	),
);

