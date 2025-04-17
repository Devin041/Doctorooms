<style>
	.todo-list>li>input[type='checkbox'] {
		margin: 4px 10px 0 5px;
	}
	.tab-content {
		padding: 0px 15px;
	}

	.wizard {
		margin: 20px auto;
		background: #fff;
	}

	.wizard .nav-tabs {
		position: relative;
		margin: 40px auto;
		margin-bottom: 0;
		border-bottom-color: #e0e0e0;
	}

	.wizard > div.wizard-inner {
		position: relative;
	}

	.connecting-line {
		height: 2px;
		background: #e0e0e0;
		position: absolute;
		width: 80%;
		margin: 0 auto;
		left: 0;
		right: 0;
		top: 50%;
		z-index: 1;
	}

	.wizard .nav-tabs > li.active > a, .wizard .nav-tabs > li.active > a:hover, .wizard .nav-tabs > li.active > a:focus {
		color: #555555;
		cursor: default;
		border: 0;
		border-bottom-color: transparent;
	}

	span.round-tab {
		width: 70px;
		height: 70px;
		line-height: 70px;
		display: inline-block;
		border-radius: 100px;
		background: #fff;
		border: 2px solid #e0e0e0;
		z-index: 2;
		position: absolute;
		left: 0;
		text-align: center;
		font-size: 25px;
	}

	span.round-tab i {
		color: #555555;
	}

	.wizard li.active span.round-tab {
		background: #fff;
		border: 2px solid #5bc0de;

	}

	.wizard li.active span.round-tab i {
		color: #5bc0de;
	}

	span.round-tab:hover {
		color: #333;
		border: 2px solid #333;
	}

	.wizard .nav-tabs > li {
		width: 16.66666666%;
	}

	.wizard li:after {
		content: " ";
		position: absolute;
		left: 46%;
		opacity: 0;
		margin: 0 auto;
		bottom: 0px;
		border: 5px solid transparent;
		border-bottom-color: #5bc0de;
		transition: 0.1s ease-in-out;
	}

	.wizard li.active:after {
		content: " ";
		position: absolute;
		left: 46%;
		opacity: 1;
		margin: 0 auto;
		bottom: 0px;
		border: 10px solid transparent;
		border-bottom-color: #5bc0de;
	}

	.wizard .nav-tabs > li a {
		width: 70px;
		height: 70px;
		margin: 20px auto;
		border-radius: 100%;
		padding: 0;
	}

	.wizard .nav-tabs > li a:hover {
		background: transparent;
	}

	.wizard .tab-pane {
		position: relative;
		padding-top: 50px;
	}

	.wizard h3 {
		margin-top: 0;
	}

	.step1 .row {
		margin-bottom: 10px;
	}

	.step_21 {
		border: 1px solid #eee;
		border-radius: 5px;
		padding: 10px;
	}

	.step33 {
		border: 1px solid #ccc;
		border-radius: 5px;
		padding-left: 10px;
		margin-bottom: 10px;
	}

	.dropselectsec {
		width: 68%;
		padding: 6px 5px;
		border: 1px solid #ccc;
		border-radius: 3px;
		color: #333;
		margin-left: 10px;
		outline: none;
		font-weight: normal;
	}

	.dropselectsec1 {
		width: 74%;
		padding: 6px 5px;
		border: 1px solid #ccc;
		border-radius: 3px;
		color: #333;
		margin-left: 10px;
		outline: none;
		font-weight: normal;
	}

	.mar_ned {
		margin-bottom: 10px;
	}

	.wdth {
		width: 25%;
	}

	.birthdrop {
		padding: 6px 5px;
		border: 1px solid #ccc;
		border-radius: 3px;
		color: #333;
		margin-left: 10px;
		width: 16%;
		outline: 0;
		font-weight: normal;
	}


	/* according menu */
	#accordion-container {
		font-size: 13px
	}

	.accordion-header {
		font-size: 13px;
		background: #ebebeb;
		margin: 5px 0 0;
		padding: 7px 20px;
		cursor: pointer;
		color: #fff;
		font-weight: 400;
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		border-radius: 5px
	}

	.unselect_img {
		width: 18px;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}

	.active-header {
		-moz-border-radius: 5px 5px 0 0;
		-webkit-border-radius: 5px 5px 0 0;
		border-radius: 5px 5px 0 0;
		background: #F53B27;
	}

	.active-header:after {
		content: "\f068";
		font-family: 'FontAwesome';
		float: right;
		margin: 5px;
		font-weight: 400
	}

	.inactive-header {
		background: #333;
	}

	.inactive-header:after {
		content: "\f067";
		font-family: 'FontAwesome';
		float: right;
		margin: 4px 5px;
		font-weight: 400
	}

	.accordion-content {
		display: none;
		padding: 20px;
		background: #fff;
		border: 1px solid #ccc;
		border-top: 0;
		-moz-border-radius: 0 0 5px 5px;
		-webkit-border-radius: 0 0 5px 5px;
		border-radius: 0 0 5px 5px
	}

	.accordion-content a {
		text-decoration: none;
		color: #333;
	}

	.accordion-content td {
		border-bottom: 1px solid #dcdcdc;
	}
	table.table-bordered{
		border:1px solid black;
		margin-top:20px;
	}
	table.table-bordered > thead > tr > th{
		border:1px solid black;
	}
	table.table-bordered > tbody > tr > td{
		border:1px solid black;
	}
	table.table-bordered > tbody > tr > th{
		border:1px solid black;
	}
	@media ( max-width: 585px ) {

		.wizard {
			width: 90%;
			height: auto !important;
		}

		span.round-tab {
			font-size: 16px;
			width: 50px;
			height: 50px;
			line-height: 50px;
		}

		.wizard .nav-tabs > li a {
			width: 50px;
			height: 50px;
			line-height: 50px;
		}

		.wizard li.active:after {
			content: " ";
			position: absolute;
			left: 35%;
		}
	}

</style>

<div class="content-wrapper">
	<input type="hidden" value="<?= $prescription->id ?>" id="p_id">
	<section class="content-header">
		<h1>
			Patient Prescription
			<small>Manage Prescription from here</small>
		</h1>


	</section>
	<section class="content">
		<div class="wizard">
			<div class="wizard-inner">
				<div class="connecting-line"></div>
				<ul class="nav nav-tabs" role="tablist">

					<li role="presentation" class="active">
						<a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
                            <span class="round-tab">
                                <i class="fa fa-stethoscope"></i>
                            </span>
						</a>
					</li>

					<li role="presentation" class="disabled">
						<a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
                            <span class="round-tab">
                                <i class="fa fa-file-text-o"></i>
                            </span>
						</a>
					</li>
					<li role="presentation" class="disabled">
						<a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
                            <span class="round-tab">
                                <i class="fa fa-table"></i>
                            </span>
						</a>
					</li>

					<li role="presentation" class="disabled">
						<a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Step 4">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-th-list"></i>
                            </span>
						</a>
					</li>
					<li role="presentation" class="disabled">
						<a href="#complete2" data-toggle="tab" aria-controls="complete2" role="tab" title="Finish">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-check"></i>
                            </span>
						</a>
					</li>

					<li role="presentation" class="disabled">
						<a href="#complete3" data-toggle="tab" aria-controls="complete3" role="tab" title="Finish">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-ok"></i>
                            </span>
						</a>
					</li>

				</ul>
			</div>

			<form role="form">
				<div class="tab-content">


					<div class="tab-pane active" role="tabpanel" id="step1">
						<div class="step1">
							<div class="step_21 content-header">
								<h1>Cos-Category Details</h1>
								<hr>
								<div class="row">
									<?php foreach ($cos as $key => $co) { ?>
										<div class="col-md-6">
											<div class="box box-info" style="margin-bottom: -5px">
												<div class="box-body">
													<h4 class="text-aqua"><?= $co['co_code'] ?></h4>
											<!--										<input type="hidden" name="co[]" value="-->
											<? //= $co['co_code']?><!--">-->
											<?php foreach ($co['questions'] as $qus) {
												$checked = "";
												foreach ($old_cos as $old) {
													if ($qus['question'] == $old->question) {
														$checked = "checked='checked'";
													}
												}

												?>
												<ul class="todo-list ui-sortable" style="margin-bottom: 7px">
													<li style="display:flex;">

														<!-- checkbox -->
														<input type="checkbox" class="form-check-inline checkbox "
															   name="co_question" value="<?= $qus['question'] ?>"
															   id="<?= $qus['id'] ?>"
															   data-co="<?= $co['co_code']; ?>"  data-code="<?= $qus['question_code']; ?>" <?= $checked ?>">
														<span class="text" for="<?= $qus['id'] ?>"><?= $qus['question'] ?></span>
														<!-- Emphasis label -->
													</li>
												</ul>



											<?php } ?>
												</div>
											</div>
										</div>
									<?php } ?>

								</div>
							</div>


						</div>
						<br>
						<ul class="list-inline pull-right">
							<li>
								<button type="button" onclick="return add_co()" class="btn btn-primary next-step">Save
									and continue
								</button>
							</li>
						</ul>
					</div>
					<div class="tab-pane" role="tabpanel" id="step2">
						<div class="step2">
							<div class="step_21 content-header">
								<h1>labels Details</h1>
								<hr>
								<div class="row">
									<?php foreach ($labels as $label) {
										$value = "";
										foreach ($old_labels as $row) {

											if ($label['label_title'] == $row->label) {
												$value = $row->l_value;
											}
										}
										?>
										<div class="col-md-6">
											<div class="form-group">
												<label><?= $label['label_title'] ?> <?php if ($label['label_unit'] !="") {?> (<?= $label['label_unit'] ?>)<?php }?></label>
												<input type="text" data-label="<?= $label['label_title'] ?>" data-unit="<?= $label['label_unit'] ?>"
													   name="p_label" value="<?= $value ?>"
													   class="form-control p_label">
											</div>
										</div>
										<?php
									} ?>
								</div>
							</div>
							<div class="step-22">

							</div>
						</div>
						<br>
						<ul class="list-inline pull-right">
							<li>
								<button type="button" class="btn btn-default prev-step">Previous</button>
							</li>
							<li>
								<button type="button" onclick="add_label()" class="btn btn-primary next-step">Save and
									continue
								</button>
							</li>
						</ul>
					</div>
					<div class="tab-pane" role="tabpanel" id="step3">
						<div class="step_21 content-header">
							<h1>Table Details</h1>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<?php

									if (count($check_table) > 0) {

										$rows = $check_table[0]->rows; // define number of rows
										$cols = $check_table[0]->cols;// define number of columns
										$th = $check_table[0]->cols;
										$lableth = json_decode($check_table[0]->header_label);

										$inserted = array( '#' );
										array_splice( $lableth, 0, 0, $inserted );

										$labletd = json_decode($check_table[0]->cols_label);
										$lablefoot = json_decode($check_table[0]->footer_label);
										?>
										<table class="table table-responsive table-bordered border-1" >
											<thead>
											<tr>
												<?php
												for ($th=0; $th <= $cols; $th++) {
													echo "<th>".$lableth[$th]."</th>";
												}
												?>
											</tr>

											</thead>
											<tbody>
											<?php
											for($tr=1;$tr<=$rows;$tr++){
												echo "<tr>";

												echo "<td><b>".$labletd[$tr-1]."</b></td>";
												for($td=1;$td<=$cols;$td++){

													echo "<td></td>";

												}
												echo "</tr>";
											}
											echo "<tr>";
											for ($th=0; $th <= $cols; $th++) {
												echo "<th>".$lablefoot[$th]."</th>";
											}
											echo "</tr>";
											?>

											</tbody>



										</table>

									<?php } ?>
								</div>
							</div>

						</div>
						<div class="step-22">

						</div>
						<br>
						<ul class="list-inline pull-right">
							<li>
								<button type="button" class="btn btn-default prev-step">Previous</button>
							</li>
							<li>
								<button type="button" onclick="get_saggestion()" class="btn btn-primary btn-info-full next-step">Save and
									continue
								</button>
							</li>
						</ul>
					</div>
					<div class="tab-pane" role="tabpanel" id="complete">
						<div class="step44 content-header">
							<h1>Medicine Details</h1><img src="<?= base_url('assets/v_.gif')?>" height="100px" id="v_on"><img src="<?= base_url('assets/voice_off.gif')?>" height="80px" id="v_of">

							<!--							<button id="start-record-btn" type="button" class="btn-info" title="Start Recording">Start Recognition</button>-->
							<hr>
							<div class="col-sm-12">

										<div class="row">
											<div class="col-sm-12">
												<table id="mytbl" class="table table-bordered table-responsive">
													<thead>
													<tr>
														<th>Medicine Name</th>
														<th>Doz</th>
														<th>Morning</th>
														<th>Afternoon</th>
														<th>Evening</th>
														<th>Tab</th>

														<th>Description</th>
														<th>Action</th>
													</tr>
													</thead>
													<tbody>
													<?php if (count($old_medicines)>0){

														foreach ($old_medicines as $row){
													?>
															<tr class="medi">
																<td>
																	<div class="form-group">
                                                 <span style="position: relative;">
                                                    <input type="text" class="form-control basicAutoComplete medil"
														   placeholder="Enter medicine name"
														   name="details[0][medicine_name]"   value="<?= $row->medicine?>" autocomplete="off" required>
                                                 </span>
																	</div>
																</td>
																<td>
																	<div class="form-group">
																		<?php
																		$allLists=json_decode($medicineAll->get_by_doctor_id_detail($doctor_id,$row->medicine)[0]->doz);

																		?>
																		<select style="width: 100px;" class="form-control" name="details[0][doz]"
																				 placeholder="Enter Doz" required>
																			<?php foreach ($allLists as $me){
																				?>
																				<option <?php if ($row->doz == $me  ){ echo 'selected'; } ?> value="<?= $me?>"><?= $me?></option>
																				<?php
																			}?>

																		</select>
																	</div>
																</td>
																<td>
																	<div class="form-group">
																		<input type="text" class="form-control" name="details[0][morning]"
																			   placeholder="morning" value="<?= $row->morning?>" required>
																	</div>
																</td>
																<td>
																	<div class="form-group">
																		<input type="text" class="form-control" name="details[0][afternoon]"
																			   placeholder="afternoon" value="<?= $row->after_noon?>" required>
																	</div>
																</td>
																<td>
																	<div class="form-group">
																		<input type="text" class="form-control" name="details[0][evening]"
																			   placeholder="evening" value="<?= $row->evning?>" required>
																	</div>
																</td>
																<td>
																	<div class="form-group">
																		<input type="text" class="form-control" name="details[0][tab]"
																			   placeholder="Enter Medicine quantity" value="<?= $row->tab?>" required>
																	</div>
																</td>

																<td>
																	<div class="form-group">
																		<input type="text" class="form-control" name="details[0][description]"
																			   placeholder="Enter description" value="<?= $row->description?>">
																	</div>
																</td>
																<td>
																<button onclick="removeItem(this)" class="btn btn-danger btn-sm"><span
																			 class="fa fa-trash-o"></span>
																	 </button>
																</td>
															</tr>
												<?php 	} }else{?>
													<tr class="medi">
														<td>
															<div class="form-group">
                                                 <span style="position: relative;">
                                                    <input type="text" class="form-control basicAutoComplete medil"
														   placeholder="Enter medicine name"
															name="details[0][medicine_name]"  id="note-textarea" autocomplete="off" required>
                                                 </span>
															</div>
														</td>
														<td>
															<div class="form-group">
																<select style="width: 100px;"  class="form-control" name="details[0][doz]"
																		placeholder="Select Doz" required></select>

															</div>
														</td>
														<td>
															<div class="form-group">
																<input type="text" class="form-control" name="details[0][morning]"
																	   placeholder="morning" required>
															</div>
														</td>
														<td>
															<div class="form-group">
																<input type="text" class="form-control" name="details[0][afternoon]"
																	   placeholder="afternoon" required>
															</div>
														</td>
														<td>
															<div class="form-group">
																<input type="text" class="form-control" name="details[0][evening]"
																	   placeholder="evening" required>
															</div>
														</td>
														<td>
															<div class="form-group">
																<input type="text" class="form-control" name="details[0][tab]"
																	   placeholder="Enter Medicine quantity" required>
															</div>
														</td>

														<td>
															<div class="form-group">
																<input type="text" class="form-control" name="details[0][description]"
																	   placeholder="Enter description">
															</div>
														</td>
														<td>
															<!-- <button onclick="removeItem(this)" class="btn btn-danger btn-sm"><span
																	 class="fa fa-trash-o"></span>
															 </button>-->
														</td>
													</tr>
													<?php } ?>
													</tbody>
													<tfoot>
													<tr>
														<td>
															<button id="addMore" type="button" class="btn btn-info btn-xs"><span
																	class="fa fa-plus"> Add More</span>
															</button>
														</td>
													</tr>
													</tfoot>
												</table>
											</div>
<!--											<div class="col-sm-12">-->
<!--												<div class="form-group">-->
<!--													<label for="exampleInputDescription">Remark</label>-->
<!--													<textarea class="form-control" rows="5"-->
<!--															  name="remark">--><?php //echo set_value("remark"); ?><!--</textarea>-->
<!--													--><?php //echo form_error('remark'); ?>
<!--												</div>-->
<!--											</div>-->
										</div>

							</div>
							<ul class="list-inline pull-right">
								<li>
									<button type="button" class="btn btn-default prev-step">Previous</button>
								</li>
								<li>
									<button type="button" onclick="add_medilist()" class="btn btn-primary btn-info-full next-step">Save and
										continue
									</button>
								</li>
							</ul>
						</div>

					</div>

					<div class="tab-pane " role="tabpanel" id="complete2">
						<div class="complete2">
							<div class="step_21 content-header">
								<h1>Suggestion Details</h1>
								<hr>
								<div class="row" id="loading">
								</div>
						</div>
							<br>
							<ul class="list-inline pull-right">
								<li>
									<button type="button" class="btn btn-default prev-step">Previous</button>
								</li>
								<li>
									<button type="button" onclick="add_suggestion()" class="btn btn-primary btn-info-full next-step">Save and
										continue
									</button>
								</li>
							</ul>
					</div>

				</div>

					<div class="tab-pane " role="tabpanel" id="complete3">
						<div class="complete2">
							<div class="step_21 content-header">
								<h1>Finish</h1>
								<hr>
								<div class="col-md-offset-5 mb-5" style="margin-bottom: 50px;">
									<img src="<?=base_url('assets/success.gif')?>" alt="" style="width: 200px;height: 200px;">
								</div>
								<div class="row">
									<div class="col-md-12">
									<ul class="list-inline " style="display: flex; justify-content: center;">
										<li>
									<button type="button" onclick="goAppointment()" class="btn btn-default ">Go Appointment</button>
										</li>
										<li>
									<button type="button" onclick="goprescription()" class="btn btn-primary ">Print Prescription</button>
										</li>
									</ul>
								</div>
								</div>
							</div>
							<br>
							<ul class="list-inline pull-right">
								<li>
									<button type="button" class="btn btn-default prev-step">Previous</button>
								</li>
<!--								<li>-->
<!--									<button type="button" onclick="add_suggestion()" class="btn btn-primary btn-info-full next-step">Save and-->
<!--										continue-->
<!--									</button>-->
<!--								</li>-->
							</ul>
						</div>

					</div>


					<div class="clearfix"></div>
			</form>
		</div>
	</section>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--//SUGGESTION-->
<script src="https://code.jquery.com/jquery-2.1.3.js"></script>
<!--<script src="https://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>-->
<script src="<?= base_url('assets/lte/bower_components/jquery-ui/jquery-ui.js')?>"></script>
<link rel="stylesheet" href="<?= base_url('assets/lte/bower_components/jquery-ui/themes/hot-sneaks/jquery-ui.css')?>" />

<script !src="">



    $(document).ready(function () {
		$('#v_of').hide();
		$('#v_on').hide();
        //Initialize tooltips
        $('.nav-tabs > li a[title]').tooltip();

        //Wizard
        $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {

            var $target = $(e.target);

            if ($target.parent().hasClass('disabled')) {
                return false;
            }
        });

        $(".next-step").click(function (e) {

            var $active = $('.wizard .nav-tabs li.active');
            $active.next().removeClass('disabled');
            nextTab($active);

        });
        $(".prev-step").click(function (e) {

            var $active = $('.wizard .nav-tabs li.active');
            prevTab($active);

        });
    });

    function nextTab(elem) {
        $(elem).next().find('a[data-toggle="tab"]').click();
    }

    function prevTab(elem) {
        $(elem).prev().find('a[data-toggle="tab"]').click();
    }


    //according menu

    $(document).ready(function () {
        //Add Inactive Class To All Accordion Headers
        $('.accordion-header').toggleClass('inactive-header');

        //Set The Accordion Content Width
        var contentwidth = $('.accordion-header').width();
        $('.accordion-content').css({});

        //Open The First Accordion Section When Page Loads
        $('.accordion-header').first().toggleClass('active-header').toggleClass('inactive-header');
        $('.accordion-content').first().slideDown().toggleClass('open-content');

        // The Accordion Effect
        $('.accordion-header').click(function () {
            if ($(this).is('.inactive-header')) {
                $('.active-header').toggleClass('active-header').toggleClass('inactive-header').next().slideToggle().toggleClass('open-content');
                $(this).toggleClass('active-header').toggleClass('inactive-header');
                $(this).next().slideToggle().toggleClass('open-content');
            } else {
                $(this).toggleClass('active-header').toggleClass('inactive-header');
                $(this).next().slideToggle().toggleClass('open-content');
            }
        });

        return false;
    });
    const p_id = $('#p_id').val();
	const  booking_id = "<?=$this->input->get('booking_id')?>";
    const  user_id = "<?=$this->input->get('user_id')?>";


    function goAppointment() {
        location.replace('<?=base_url()?>/assistant/dashboard');
    }
    function goprescription() {
        window.open("<?=base_url()?>/assistant/AjaxPrescription/print_prescription?booking_id="+booking_id+"&user_id="+user_id+"");

    }

    function add_co() {

        var co = [];
        $.each($("input[name='co_question']:checked"), function () {
            co.push([$(this).data('co'), $(this).val(),$(this).data('code')]);
        });

        $.post('ajax_insert_co', {cos: co, pre_id: p_id}, function (data, status) {

            new PNotify({
                title: data[0],
                text: data[1],
                type: data[0],
                styling: 'bootstrap3'
            });
        });
    }

	function add_suggestion() {

		var suggestion = [];
		$.each($("input[name='ques_suggestion']:checked"), function () {
			suggestion.push([$(this).data('qus'), $(this).val()]);
		});
		suggestion.push(['extra',$("#extra_suggestion").val()]);
		var date =$("#next_date").val();
		$.post('ajax_insert_suggestion', {sug: suggestion, pre_id: p_id,next_date:date}, function (data, status) {

			new PNotify({
				title: data[0],
				text: data[1],
				type: data[0],
				styling: 'bootstrap3'
			});

            //window.open("<?=base_url()?>/doctor/AjaxPrescription/print_prescription?booking_id=440&user_id=279");


		});
	}

    function add_label() {
        var labels = [];
        $.each($("input[name='p_label']"), function () {
            labels.push([$(this).data('label'), $(this).val(),$(this).data('unit')]);
        });
        $.post('ajax_insert_labels', {labels: labels, pre_id: p_id}, function (data, status) {
            new PNotify({

                title: data[0],
                text: data[1],
                type: data[0],
                styling: 'bootstrap3',

            });
        });

    }
	function get_saggestion() {
		$("#loading").load('get_saggestion?id='+p_id+'');

	}
	function add_medilist() {
		var medi_lists = [];
		$.each($("input[name*='medicine_name']"), function () {
			var medi= $(this).parents('.medi');
			var morning= medi.find("input[name*='morning']").val();
		var afternoon=	medi.find("input[name*='afternoon']").val();
		var evening=	medi.find("input[name*='evening']").val();
			var tab=	medi.find("input[name*='tab']").val();
			var doz=	medi.find("select[name*='doz']").val();
		var	description = medi.find("input[name*='description']").val();
			medi_lists.push([$(this).val(),morning,afternoon,evening,tab,doz,description]);
		});

		$.post('ajax_insert_medi_list', {lists: medi_lists, pre_id: p_id}, function (data, status) {

			new PNotify({
				title: data[0],
				text: data[1],
				type: data[0],
				styling: 'bootstrap3',

			});
		});
	}
</script>


<!--<script src="https://cdn.jsdelivr.net/gh/xcash/bootstrap-autocomplete@v2.2.2/dist/latest/bootstrap-autocomplete.min.js"></script>-->
<script>
	//let noteTextarea;
	         	let medi_data =<?=$list?>;
	$(".medil").focus(function(){

	 var t=$(this);
		//console.log(noteTextarea);

		speech(t);
	});
    $(document).ready(function () {
        $("#addMore").click(function () {
            var row = "<?php $r =
				<<<END
            <tr class="medi">
                                        <td>
                                            <div class="form-group">
                                                <span style="position: relative;">
                                                    <input type="text" class="form-control basicAutoComplete medil" placeholder="Enter medicine name"
                                                       name="details[__name__][medicine_name]"    autocomplete="off"  required>
                                                </span>
                                            </div>
                                        </td>
                                         <td>
															<div class="form-group">
																<select style="width: 100px;"  class="form-control" name="details[__name__][doz]"
																	   placeholder="Select Doz" required></select>
															</div>
														</td>
                                        		<td>
															<div class="form-group">
																<input type="text" class="form-control" name="details[__name__][morning]"
																	   placeholder="morning" required>
															</div>
														</td>
														<td>
															<div class="form-group">
																<input type="text" class="form-control" name="details[__name__][afternoon]"
																	   placeholder="afternoon" required>
															</div>
														</td>
														<td>
															<div class="form-group">
																<input type="text" class="form-control" name="details[__name__][evening]"
																	   placeholder="evening" required>
															</div>
														</td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="details[__name__][tab]"
                                                       placeholder="Enter Medicine quantity" required>
                                            </div>
                                        </td>
                                       
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="details[__name__][description]"
                                                       placeholder="Enter description">
                                            </div>
                                        </td>
                                        <td>
                                            <button onclick="removeItem(this)" class="btn btn-danger btn-sm"><span
                                                        class="fa fa-trash-o"></span>
                                            </button>
                                        </td>
                                    </tr>

END;
				echo(htmlspecialchars(str_replace("\r", '', str_replace("\n", '', $r))));
				?>";
            var count = $('#mytbl > tbody > tr').length;

            row = row.replace(/__name__/g, count);

            $('#mytbl tbody').append($("<div/>").html(row).text());
			var noteTextarea = $(".medil").last();
            var i=0;
			var zipCode = <?=$list_detail?>;

            $('.basicAutoComplete').autocomplete({
                autoFocus: true,
                source: function (request, response) { // use a function so you can trim the request and ignore ""
                    var term = $.trim(request.term)
                    var reg = new RegExp($.ui.autocomplete.escapeRegex(term), "i")
                    if (term !== "") response($.grep(medi_data, function (tag) {
                        return tag.match(reg)
                    }))
                },
				select: function(event, ui) {

						var timeing = zipCode[ui.item.value];

						var morning= timeing[0];
						var afternoon= timeing[1];
						var evening= timeing[2];
					var tab= timeing[3];
					var doz= timeing[4];
					var description= timeing[5];
						var productRow = $(event.target).parents('.medi');
						productRow.find("input[name*='morning']").val(morning);
						productRow.find("input[name*='afternoon']").val(afternoon);
						productRow.find("input[name*='evening']").val(evening);
					productRow.find("input[name*='tab']").val(tab);
					productRow.find("input[name*='description']").val(description);
				var doption=	productRow.find("select[name*='doz']").val(doz);

						var dozLoop = JSON.parse(doz);
					$.each(dozLoop, function(key,value) {
						doption.append($("<option></option>")
								.attr("value", value)
								.text(value));

					});
				}

            });
			$(".medil").focus(function(){
			 var t =$(this);



				speech(t);

			});

        });

		var zipCode = <?=$list_detail?>;

        $('.basicAutoComplete').blur(function() {
			var keyEvent = $.Event("keydown");
			keyEvent.keyCode = $.ui.keyCode.ENTER;
			$(this).trigger(keyEvent);
		}).autocomplete({
			autoFocus: true,
            source: function (request, response) { // use a function so you can trim the request and ignore ""
                var term = $.trim(request.term)
                var reg = new RegExp($.ui.autocomplete.escapeRegex(term), "i")
                if (term !== "") response($.grep(medi_data, function (tag) {
                    return tag.match(reg)
                }))
            },

			select: function(event, ui) {
				var timeing = zipCode[ui.item.value];
			var morning= timeing[0];
			var afternoon= timeing[1];
				var evening= timeing[2];
				var tab= timeing[3];
				var doz= timeing[4];
				var description= timeing[5];
				var productRow = $(event.target).parents('.medi');
				productRow.find("input[name*='morning']").val(morning);
				productRow.find("input[name*='afternoon']").val(afternoon);
				productRow.find("input[name*='evening']").val(evening);
				productRow.find("input[name*='tab']").val(tab);
				productRow.find("input[name*='description']").val(description);
				var doption=	productRow.find("select[name*='doz']").val(doz);

				var dozLoop = JSON.parse(doz);
				$.each(dozLoop, function(key,value) {
					doption.append($("<option></option>")
						.attr("value", value)
						.text(value));

				});
				console.log(productRow);

				//$('#zipCode').val(zipCode[ui.item.value]);
			}
        });

			//$('.basicAutoComplete').change (function () {
			//	var names = $(this).val();
			//	alert(names);
			//    var medician = $(this).parents('.medi');
			//    console.log(medician.find("input[name*='medicine_name']").val());
			//    $.get('<?//=base_url()?>///doctor/appointment/get_branch?q='+names+'', function(data, status){
			//
			//		var morning= data.morning;
			//     console.log(data[0].morning);
			//    });
			//})
    });
    function change_medi(el) {
	//	var medician = $(el).parents('<tr>');
		console.log(el);
    }


    function removeItem(btn) {
        $(btn).parent().parent().remove();
    }


    function speech(t){

        try {
            var SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
            var recognition = new SpeechRecognition();
        }
        catch(e) {
            console.error(e);
            $('.no-browser-support').show();
            $('.app').hide();
        }


        var noteTextarea = t;
        var instructions = $('#recording-instructions');
        var notesList = $('ul#notes');

        var noteContent = '';

// Get all notes from previous sessions and display them.
// var notes = getAllNotes();
// renderNotes(notes);



        /*-----------------------------
			  Voice Recognition
		------------------------------*/

// If false, the recording will stop after a few seconds of silence.
// When true, the silence period is longer (about 15 seconds),
// allowing us to keep recording even when the user pauses.
        recognition.continuous = true;

// This block is called every time the Speech APi captures a line.
        recognition.onresult = function(event) {

            // event is a SpeechRecognitionEvent object.
            // It holds all the lines we have captured so far.
            // We only need the current one.
            var current = event.resultIndex;

            // Get a transcript of what was said.
            var transcript = event.results[current][0].transcript;



            // Add the current transcript to the contents of our Note.
            // There is a weird bug on mobile, where everything is repeated twice.
            // There is no official solution so far so we have to handle an edge case.
            var mobileRepeatBug = (current == 1 && transcript == event.results[0][0].transcript);

            if(!mobileRepeatBug) {
                noteContent += transcript;
                noteTextarea.val(noteContent);
                noteTextarea.trigger('keydown');
            }
        };




        /*-----------------------------
			  App buttons and input
		------------------------------*/

// $('#start-record-btn').on('click', function(e) {
        if (noteContent.length) {
            noteContent += ' ';
        }
        recognition.start();

        $('#v_on').show();
        $('#v_of').hide();

        $('#v_on1').show();
        $('#v_of1').hide();
// });


// Sync the text inside the text area with the noteContent variable.
        noteTextarea.on('input', function() {
            noteContent = $(this).val();

        })

        noteTextarea.on('blur',function (e) {

            recognition.stop();
            $('#v_on').hide();
            $('#v_of').show();

            $('#v_on1').hide();
            $('#v_of1').show();
        });


    }

</script>

<!--<script src="--><?//=base_url()?><!--assets/lte/bower_components/speechToText/script.js"></script>-->

