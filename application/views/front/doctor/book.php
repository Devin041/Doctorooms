<style>
	.datepicker-days table .disabled-date.day {
		background-color: red !important;
		color: #fff;
	}
</style>
<div class="my-3 my-md-5">
	<div class="container">
		<?php

		if ($feedback = $this->session->flashdata('feedback')) {
			$class = $this->session->flashdata('feedback_class');
			?>
			<div class="alert alert-warning" role="alert">
				<?= $feedback ?>
			</div>
		<?php } ?>
		<div class="row">
			<div class="col-lg-4">
				<div class="card">
					<div class="card-body">
						<div class="media">
                            <span class="avatar avatar-xxl mr-5"
								  style="background-image: url(<?= base_url() ?>upload/profile/<?= $doctor->profile_img ?>)"></span>
							<div class="media-body">
								<h4 class="m-0">Dr. <?= $doctor->name ?></h4>

								<p class="text-muted mb-0"><?= $doctor->doctor_type ?></p>

								<ul class="social-links list-inline mb-0 mt-2">
									<li class="list-inline-item"><h2><span
												class="fa fa-star"></span> <?= $doctor_average_rating ?>/5</h2>
									</li>
								</ul>
								<ul class="social-links list-inline mb-0 mt-0">
									<li class="list-inline-item"><span class="fa fa-users"></span></li>
									<li class="list-inline-item"><?= $doctor_total_rate_user ?> Total</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">Navigation</h3>
					</div>
					<div class="card-body">
						<?php if ($hospital) { ?>
							<iframe
								src="https://maps.google.com/maps?q=<?= $hospital->lat ?>,<?= $hospital->longi ?>&hl=es;z=13&output=embed"
								frameborder="0" style="border:0; width: 100%; height: 200px;"
								allowfullscreen></iframe>

						<?php } else { ?>
							<iframe
								src="https://maps.google.com/maps?q=<?= $doctor->lat ?>,<?= $doctor->longi ?>&hl=es;z=13&output=embed"
								frameborder="0" style="border:0; width: 100%; height: 200px;"
								allowfullscreen></iframe>
						<?php } ?>
					</div>

					<?php if ($hospital) { ?>
						<div class="card-body">
							<div class="media mb-5">
								<div class="media-body">
									<h5><?= $hospital->hospital_name ?></h5>
									<address class="text-muted small">
										<?= $hospital->address ?>,<br>
										<?= $hospital->city ?>,
										<?= $hospital->state ?>
									</address>
								</div>
							</div>
						</div>
					<?php } ?>
					<div class="card-body">
						<div class="row">
							<div class="col-6">
								<div class="h6">Fees</div>
								<p>Rs. <?= $doctor->fees ?></p>
							</div>
							<div class="col-6">
								<div class="h6">Time</div>
								<p>10:00 AM to 7:00 PM</p>
							</div>
							<div class="col-6">
								<div class="h6">Email</div>
								<p><a href="mailto:xyz@gmail.com"><?= $doctor->email ?></a></p>
							</div>
							<div class="col-6">
								<div class="h6">Hospital Phone</div>
								<p><?= $doctor->phone_no ?></p>
							</div>
						</div>
						<div class="h6">Description</div>
						<p><?= $doctor->description ?></p>
					</div>
				</div>
			</div>
			<div class="col-lg-8">
				<div class="card">
					<div class="card-header">
						<h4>Appoint My Doctor</h4>
						<div class="float-right ml-auto">
						</div>
					</div>
					<div class="card-body">


						<?= form_open("book/doctor_book/" . $doctor->user_id) ?>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label class="form-label">Name <span class="text-red">*</span></label>
									<input type="text" value="<?= set_value("petient_name"); ?>"
										   class="form-control  <?= (form_error("petient_name")) ? "is-invalid" : "" ?>"
										   name="petient_name"
										   placeholder="Patient name">
									<?php echo form_error('petient_name'); ?>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<label class="form-label">Appointment Date <span class="text-red">*</span></label>
									<input class="form-control <?= (form_error("booking_date")) ? "is-invalid" : "" ?>"
										   type="text" autocomplete="off" name="booking_date" id="booking_date"
										   onkeydown="return false" placeholder="Select booking date">
									<?php echo form_error('booking_date'); ?>
									<span class="text-info" id="booked"
										  style="font-size: 11px;"></span>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<label class="form-label">Physical Handicape</label>
									<select class="form-control" name="physical_handicape">
										<option value="No"
												<?= (set_value("physical_handicape") == "No") ? "selected" : "" ?>>
											No
										</option>
										<option value="Yes"
												<?= (set_value("physical_handicape") == "Yes") ? "selected" : "" ?>>
											Yes
										</option>
									</select>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label class="form-label">Symptoms </label>
									<input type="text"
										   class="form-control <?= (form_error("disease")) ? "is-invalid" : "" ?>"
										   value="<?= set_value("disease"); ?>"
										   name="disease" placeholder="Enter disease">
									<?php echo form_error('disease'); ?>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<label class="form-label">State</label>
									<select name="state" id="state"
											class="form-control <?= (form_error("state")) ? "is-invalid" : "" ?>">
										<option value="">--Select State--</option>
										<?php foreach ($state as $sta) { ?>
											<option value="<?= $sta->state_name ?>"><?= $sta->state_name ?></option>
										<?php } ?>
									</select>
									<?php echo form_error('state'); ?>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<label class="form-label">City </label>
									<select name="city" id="city"
											class="form-control <?= (form_error("city")) ? "is-invalid" : "" ?>">
										<option value="">--Select City--</option>
									</select>
									<?php echo form_error('city'); ?>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<label class="form-label">Gender</label>
									<select class="form-control" name="gender">
										<option value="Male" <?= (set_value("gender") == "Male") ? "selected" : "" ?>>
											Male
										</option>
										<option value="Female"
												<?= (set_value("gender") == "Female") ? "selected" : "" ?>>
											Female
										</option>
										<option value="Other" <?= (set_value("gender") == "Other") ? "selected" : "" ?>>
											Other
										</option>
									</select>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<label class="form-label">Blood Group</label>
									<select class="form-control" name="blood_group">
										<option value="">-- Select Group --</option>
										<option value="O+" <?= (set_value("blood_group") == "O+") ? "selected" : "" ?>>
											O+
										</option>
										<option value="O-" <?= (set_value("blood_group") == "O-") ? "selected" : "" ?>>
											O-
										</option>
										<option value="A+" <?= (set_value("blood_group") == "A+") ? "selected" : "" ?>>
											A+
										</option>
										<option value="A-" <?= (set_value("blood_group") == "A-") ? "selected" : "" ?>>
											A-
										</option>
										<option value="B+" <?= (set_value("blood_group") == "B+") ? "selected" : "" ?>>
											B+
										</option>
										<option value="B-" <?= (set_value("blood_group") == "B-") ? "selected" : "" ?>>
											B-
										</option>
										<option value="AB+"
												<?= (set_value("blood_group") == "AB+") ? "selected" : "" ?>>
											AB+
										</option>
										<option value="AB-"
												<?= (set_value("blood_group") == "AB-") ? "selected" : "" ?>>
											AB-
										</option>
									</select>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<label class="form-label">Date Of Birth</label>
									<input type="date" class="form-control" value="<?= set_value('date_of_birth') ?>"
										   name="date_of_birth" id="date_of_birth" readonly="readonly"
										   onchange="">
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<label class="form-label">Age</label>
									<input type="text"
										   class="form-control <?= (form_error("age")) ? "is-invalid" : "" ?>"
										   value="<?= set_value('age') ?>"
										   name="age" id="age" placeholder="Enter age">
									<?php echo form_error('age'); ?>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<label class="form-label">Height (cm)</label>
									<input type="text" class="form-control" name="height"
										   value="<?= set_value('height') ?>" placeholder="Enter height in cm">
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<label class="form-label">Weight (KG)</label>
									<input type="text" class="form-control"
										   value="<?= set_value('weight') ?>"
										   name="weight" placeholder="Enter weight in KG">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label class="form-label">Relation With Me</label>
									<input type="text" class="form-control" value="<?= set_value('relation_with_me') ?>"
										   name="relation_with_me" placeholder="Relation With me">
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label class="form-label">Description</label>
									<textarea
										class="form-control <?= (form_error("description")) ? "is-invalid" : "" ?>"
										name="description" rows="5"
										placeholder="Enter description here"><?= set_value('description') ?></textarea>
									<?php echo form_error('description'); ?>
								</div>
							</div>

							<div class="col-sm-12">
								<button type="submit" onclick="this.form.submit();this.disabled = true;"
										class="btn btn-primary float-right">Appoint
								</button>
							</div>
						</div>
						<?= form_close() ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	requirejs(['jquery', 'datepicker'], function ($) {

		$("#state").change(function () {
			var state = $("#state").val();
			//console.log(result);
			$('#city').find('option:not(:first)').remove();
			$.post("<?=base_url('book/city_by_state')?>", {state_name: state}, function (result) {

				result.forEach(function (city) {
					var elem = $("<option value='" + city.city_name + "'>" + city.city_name + "</option>");
					$("#city").append(elem);
				});
			});
		});

		$("#date_of_birth").change(function () {
			var date_of_birth = $("#date_of_birth").val();
			date_of_birth = new Date(date_of_birth);
			var today = new Date();
			if (date_of_birth >= today) {
				$('#date_of_birth').val("");
				$('#age').val("");
			} else {
				var age = Math.floor((today - date_of_birth) / (365.25 * 24 * 60 * 60 * 1000));
				$('#age').val(age);
			}
		});

		var datesForDisable = <?=$getHolidays?>;
		$("#booking_date").datepicker({
			format: 'yyyy-mm-dd',
			autoclose: false,
			weekStart: 1,
			calendarWeeks: true,
			todayHighlight: true,
			datesDisabled: datesForDisable,
			startDate: new Date(Date.parse('<?=date('Y-m-d', strtotime(date('Y-m-d') . "+ 0 day"))?>')),
			endDate: new Date(Date.parse('<?=date('Y-m-d', strtotime(date('Y-m-d') . " + " . (int)$doctor->booking_days . " day"))?>')),

		}).on('changeDate', function(e){
			var date = e.format();
			var doctor = <?=$doctor->user_id?>;
			$.post("<?=base_url('book/date_booked')?>", {doctor: doctor, date: date}, function (result) {
				console.log(result);
				var limit = '<?= $doctor->daily_limit?>';

				if (limit != "") {
					if (limit <= result.booked) {

						$("#booking_date").val("");
						datesForDisable.push(date);
						$('#booking_date').datepicker('setDatesDisabled', datesForDisable);
					}
				}

				// $('#booked').text(result.booked + " Appointment booked.");
			});

		});

		//$("#booking_date").change(function (event) {
		//
		//	var booking_date = $("#booking_date").val();
		//	console.log(booking_date);
		//	var doctor = <?//=$doctor->user_id?>//;
		//	//$('#city').find('option:not(:first)').remove();
		//	$.post("<?//=base_url('book/date_booked')?>//", {doctor: doctor, date: booking_date}, function (result) {
		//		console.log(result);
		//		var limit = '<?//= $doctor->daily_limit?>//';
		//		if (limit != "") {
		//			if (limit <= result.booked) {
		//
		//				$("#booking_date").val("");
		//			}
		//		}
		//
		//		$('#booked').text(result.booked + " Appointment booked.");
		//	});
		//});
	});
</script>

