<style>
	.dt-button {
		display: none !important;
	}
</style>
<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Dashboard
			<small>Admin</small>
		</h1>

	</section>

	<!-- Main content -->
	<section class="content">
		<!-- Info boxes -->
		<div class="row">
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-aqua"><i class="fa fa-user-md"></i></span>

					<div class="info-box-content">
						<span class="info-box-text">DOCTORS</span>
						<span class="info-box-number"><?= $count_doc ?></span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-red"><i class="fa fa-male"></i></span>

					<div class="info-box-content">
						<span class="info-box-text">PATIENT</span>
						<span class="info-box-number"><?= $count_pat ?></span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->

			<!-- fix for small devices only -->
			<div class="clearfix visible-sm-block"></div>

			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-green"><i class="fa fa-user"></i></span>

					<div class="info-box-content">
						<span class="info-box-text">RECEPTIONIST</span>
						<span class="info-box-number"><?= $count_rec ?></span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-yellow"><i class="fa fa-hospital-o"></i></span>

					<div class="info-box-content">
						<span class="info-box-text">HOSPITAL</span>
						<span class="info-box-number"><?= $count_hos ?></span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->

		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Latest Appointment</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-12">
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
										</tr>
										</thead>
										<tbody>
										<?php $no = 0;
										foreach ($appointments as $appointment) { ?>
											<tr>
												<td><?= ++$no ?></td>
												<td><?= $appointment->appointment_no ?></td>
												<td><?= format_date($appointment->booking_date) ?></td>
												<td>
													<a href="<?= base_url('doctor/appointment/show/' . $appointment->id) ?>">
														<?= $appointment->name ?>
													</a>
													<br>
													<small class="text-muted"><?= $appointment->mobile_no ?>
														| <?= $appointment->email ?></small>

												</td>
												<td><?= $appointment->petient_name ?></td>
												<td><?= $appointment->dname ?></td>
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

											</tr>
										<?php } ?>
										</tbody>
									</table>
								</div>
								<!-- /.chart-responsive -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-footer -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->

		<!--user list-->

		<div class="row">
			<div class="col-md-8">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Latest Users</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-12">
								<div class="table-responsive">
									<table id="" class="table table-bordered table-responsive">
										<thead>
										<tr>
											<th>#</th>
											<th>Name</th>
											<th>Email</th>
											<th>Role</th>
											<th>Status</th>
										</tr>
										</thead>
										<tbody>
										<?php $no = 0;
										foreach ($users as $u) { ?>
											<tr>
												<td><?= ++$no ?></td>
												<td><?= $u->name ?></td>
												<td><?= $u->email ?></td>
												<td><?= $u->role ?></td>
												<td>
													<?php
													if ($u->status == ACTIVE) {
														$cls = "label-success";
													} else {
														$cls = "label-danger";
													}
													?>
													<label class="label <?= $cls ?>"><?= $u->status ?></label>
												</td>

											</tr>
										<?php } ?>
										</tbody>
									</table>
								</div>
								<!-- /.chart-responsive -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-footer -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->

			<!--End User -->


			<!--top post-->

			<div class="col-md-4">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Top Post</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-12">
								<div class="table-responsive">
									<table id="" class="table table-bordered table-responsive">
										<thead>
										<tr>
											<th>#</th>
											<th>Post</th>
											<th>User</th>
										</tr>
										</thead>
										<tbody>
										<?php $no = 0;
										foreach ($posts as $p) { ?>
											<tr>
												<td><?= ++$no ?></td>
												<td><?= $p->title ?></td>
												<td><?= $p->email ?></td>
											</tr>
										<?php } ?>
										</tbody>
									</table>
								</div>
								<!-- /.chart-responsive -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-footer -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		<!-- /.row -->
		<!--End Post -->
		<!-- Main row -->
	</section>
	<!-- /.content -->
</div>
