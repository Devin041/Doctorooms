<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Appointment
			<a href="<?= base_url() ?>hospital/appoinment/add" class="pull-right btn-sm btn-primary"><i
					class="fa fa-plus"></i> ADD</a>
		</h1>

	</section>
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Appointment List</h3>
						<div class="box-tools">
							<form method="GET">
								<div class="form-group">
									<select onchange="this.form.submit()" name="status" class="form-control input-sm">
										<option
											value="<?= PENDING ?>" <?= ($this->input->get('status') == PENDING) ? "selected" : "" ?>><?= PENDING ?></option>
										<option
											value="<?= EXTEND ?>" <?= ($this->input->get('status') == EXTEND) ? "selected" : "" ?>><?= EXTEND ?></option>
										<option
											value="<?= APPROVE ?>" <?= ($this->input->get('status') == APPROVE) ? "selected" : "" ?>><?= APPROVE ?></option>
										<option
											value="<?= VISITED ?>" <?= ($this->input->get('status') == VISITED) ? "selected" : "" ?>><?= VISITED ?></option>
										<option
											value="<?= REJECTED ?>" <?= ($this->input->get('status') == REJECTED) ? "selected" : "" ?>><?= REJECTED ?></option>
										<option
											value="All" <?= (isset($_GET['status']) && $_GET['status'] == "All") ? "selected" : "" ?>>
											All
											Appointment
										</option>
									</select>
								</div>
							</form>
						</div>
					</div>
					<div class="box-body">
						<div class="table-responsive">
							<table id="example1" class="table table-bordered table-responsive">
								<thead>
								<tr>
									<th>#</th>
									<th>Appointment ID</th>
									<th>Appointment Date</th>
									<th>Who has booked</th>
									<th>Patient Name</th>
									<th>Doctor</th>
									<th>Disease</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
								</thead>
								<tbody>
								<?php $no = 0;
								foreach ($appointments as $appointment) { ?>
									<tr>
										<td><?= ++$no ?></td>
										<td><a href="<?= base_url('hospital/appoinment/show/' . $appointment->id) ?>"><?= $appointment->appointment_no ?></a></td>
										<td><?= format_date($appointment->booking_date) ?></td>
										<td>
											<a href="<?= base_url('hospital/appoinment/appointment_show_detail/' . $appointment->id) ?>">
												<?= ($appointment->name)? $appointment->name : '-'?>
											</a>
											<br>
											<small class="text-muted"><?= ($appointment->mobile_no)?$appointment->mobile_no : ''; ?>
												 <?=('|	'. $appointment->email)? $appointment->email : ''; ?></small>

										</td>
										<td><?= $appointment->petient_name ?></td>
										<td>Dr. <?= $appointment->dname ?></td>
										<td><?= $appointment->disease ?></td>
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


										<td>
											<?php if ($appointment->status == PENDING) { ?>
												<a href="<?= base_url('hospital/appoinment/approve/' . $appointment->id) ?>"
												   class="btn btn-primary btn-sm" data-toggle="tooltip"
												   title="Approved"><span
														class="fa fa-thumbs-o-up"></span></a>

												<a href="<?= base_url('hospital/appoinment/extend/' . $appointment->id) ?>"
												   class="btn btn-info btn-sm" data-toggle="tooltip"
												   title="Extend"><span
														class="fa fa-arrow-right"></span></a>

												<a href="<?= base_url('hospital/appoinment/reject/' . $appointment->id) ?>"
												   class="btn btn-danger btn-sm" data-toggle="tooltip"
												   title="Reject"><span class="fa fa-close"></span></a>

											<?php } elseif ($appointment->status == EXTEND) { ?>
												<a href="<?= base_url('hospital/appoinment/approve/' . $appointment->id) ?>"
												   class="btn btn-primary btn-sm" data-toggle="tooltip"
												   title="Approved"><span
														class="fa fa-thumbs-o-up"></span></a>
												<a href="<?= base_url('hospital/appoinment/reject/' . $appointment->id) ?>"
												   class="btn btn-danger btn-sm" data-toggle="tooltip"
												   title="Reject"><span class="fa fa-close"></span></a>

											<?php } elseif ($appointment->status == APPROVE) { ?>
												<a href="<?= base_url('hospital/appoinment/visited/' . $appointment->id) ?>"
												   class="btn btn-success btn-sm" data-toggle="tooltip"
												   title="Visited"><span
														class="fa fa-check"></span></a>
												<a href="<?= base_url('hospital/appoinment/reject/' . $appointment->id) ?>"
												   class="btn btn-danger btn-sm" data-toggle="tooltip"
												   title="Reject"><span class="fa fa-close"></span></a>
											<?php } else { ?>
												-
											<?php } ?>
										</td>


									</tr>
								<?php } ?>
								</tbody>
							</table>
						</div>
					</div>
					<div class="box-footer">
						<ul class="pagination pagination-sm no-margin pull-right">
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
