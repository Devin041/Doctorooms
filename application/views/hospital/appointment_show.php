
<div class="content-wrapper">
	<section class="content-header">
		<h1>
			My Appointments
			<small>Manage Appointments from here</small>
			<div class="pull-right">
				<a href="<?= base_url('hospital/appoinment') ?>" class="btn btn-warning">Back</a>
			</div>
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-sm-12">
				<div class="box box-primary">
					<div class="box-header with-border d-n">
						<h3 class="box-title">Appointment Details</h3>
						<div class="box-tools">
							<button onclick="print()" class="btn btn-default btn-sm" data-toggle="tooltip"
									title="Print"><span class="fa fa-print"></span></button>

						</div>
					</div>
					<div class="box-body">
						<table class="table">
							<tbody>
							<tr>
								<th>Appointment ID</th>
								<td><?= $appointment->appointment_no ?></td>
								<th>Booking From</th>
								<td>
									<?= $appointment->booking_type ?>
								</td>
							</tr>
							<tr>
								<th>Appointment Date</th>
								<td><?= format_date($appointment->booking_date) ?></td>
								<th>Patient Name</th>
								<td><?= $appointment->petient_name ?></td>
							</tr>
							<tr>
								<th>Disease</th>
								<td><?= $appointment->disease ?></td>
								<th>Physical Handicape</th>
								<td><?= $appointment->physical_handicape ?></td>
							</tr>
							<tr>
								<th>Date Of Birth</th>
								<td><?= ($appointment->date_of_birth) ? $appointment->date_of_birth : "-" ?></td>
								<th>Age</th>
								<td><?= ($appointment->age) ? $appointment->age : "-" ?></td>
							</tr>
							<tr>
								<th>Gender</th>
								<td><?= $appointment->gender ?></td>
								<th>Relation With Who has Booked</th>
								<td><?= ($appointment->relation_with_me) ? $appointment->relation_with_me : "-" ?></td>
							</tr>
							<tr>
								<th>Height (CM)</th>
								<td><?= ($appointment->height) ? $appointment->height : "-" ?></td>
								<th>Weight (KG)</th>
								<td><?= ($appointment->weight) ? $appointment->weight : "-" ?></td>
							</tr>
							<tr>
								<th>Book date</th>
								<td><?= format_date($appointment->created_at) ?></td>
								<th>Status</th>
								<td>
									<?php
									if ($appointment->status == PENDING) {
										$cls = "label-warning";
									} elseif ($appointment->status == APPROVE) {
										$cls = "label-primary";
									} elseif ($appointment->status == EXTEND) {
										$cls = "label-info";
									} elseif ($appointment->status == VISITED) {
										$cls = "label-success";
									} else {
										$cls = "label-danger";
									}
									?>
									<label class="label <?= $cls ?>"><?= $appointment->status ?></label>
								</td>
							</tr>
							<tr>
								<th>Description</th>
								<td colspan="3"><?= $appointment->description ?></td>
							</tr>
							</tbody>
						</table>
					</div>

					<!--chat module-->
					<div class="row">

								<div class="box-body">
									<?php if ($appointment->status != VISITED && $appointment->status != REJECTED) { ?>
										<?php if ($appointment->user_id) { ?>
											<div class="col-sm-6">
												<div class="box box-primary">
													<div class="box-header with-border d-n">
														<h3 class="box-title">Chat Box</h3>
														<div class="box-tools">
														</div>
													</div>
													<div class="box-body">
														<div style="height: 400px; overflow: auto;" id="chat-box">
															<ul class="chat" id="chat">

															</ul>
														</div>

														<div class="input-group">
															<input id="text-msg" type="text"
																   class="form-control input-sm"
																   placeholder="Type your message here..."/>
															<span class="input-group-btn">
                            <button class="btn btn-warning btn-sm" id="btn-send">
                                Send</button>
                        </span>
														</div>
													</div>
												</div>
											</div>
										<?php } ?>
									<?php } ?>
								</div>
								<!--end-->
							</div>
						</div>
					</div>
				</div>
	</section>
</div>
