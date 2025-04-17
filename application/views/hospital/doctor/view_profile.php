<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Doctor Profile
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Doctor profile</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">

		<div class="row">
			<div class="col-md-3">

				<!-- Profile Image -->
				<div class="box box-primary">
					<div class="box-body box-profile">
						<img class="profile-user-img img-responsive img-circle"
							 src="<?= base_url() ?>upload/profile/<?= $profile->profile_img ?>"
							 alt="User profile picture">

						<h3 class="profile-username text-center">Dr. <?= $profile->name; ?></h3>

						<p class="text-muted text-center"><?= $profile->doctor_type; ?></p>

						<ul class="list-group list-group-unbordered">
							<li class="list-group-item">
								<b>Rating</b> <a class="pull-right">
									<h3 style="margin-top: -5px;"><?= $doctor_average_rating ?>/5</h3>
								</a>
							</li>
						</ul>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

				<!-- About Me Box -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Contact Detail</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<strong><i class="fa fa-inr margin-r-5"></i> Fees</strong>

						<p class="text-muted">
							<?= $profile->fees ?> Rs.
						</p>

						<hr>

						<strong><i class="fa fa-map-marker margin-r-5"></i> Address</strong>

						<p class="text-muted"><?= $profile->address ?></p>

						<hr>

						<strong><i class="fa fa-hospital-o margin-r-5"></i> Hospital Location</strong>

						<p>
							<?= $profile->hospital_address ?>
						</p>

						<hr>

						<strong><i class="fa fa-phone margin-r-5"></i>Phone Number</strong>
						<p><?= $profile->phone_no ?></p>
						<hr>
						<strong><i class="fa fa-mobile margin-r-5"></i>Mobile Number</strong>
						<p>+91 <?= $profile->contact_no ?></p>
						<hr>
						<strong><i class="fa fa-envelope margin-r-5"></i>Email</strong>
						<p><?= $profile->email ?></p>
						<hr>
						<strong><i class="fa fa-file margin-r-5"></i>Registration Date</strong>
						<p>
							<?php
							$date = date_create($profile->created_at);
							echo date_format($date, 'd-M-Y');
							?>
						</p>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#activity" data-toggle="tab">Personal Detail</a></li>
						<li style="display: none"><a href="#timeline" data-toggle="tab">Receptionist</a></li>
					</ul>

					<div class="tab-content">
						<div class="active tab-pane" id="activity">
							<!-- Post -->
							<div class="post">
								<div class="user-block">
									<h4>About Me</h4>
								</div>
								<!-- /.user-block -->
								<p style="text-align:justify;">
									&ensp;<?= $profile->description ?>
								</p>
							</div>
							<!-- /.post -->
							<div class="post">
								<div class="user-block">
									<h4>Specialization</h4>
								</div>
								<!-- /.user-block -->
								<p>
									<?php
									$sp = json_decode($profile->specialization);
									for ($i = 0; $i < count($sp); $i++) { ?>
										<label class="label label-default"
											   style="font-size: 13px;"><?= $sp[$i] ?></label>
									<?php } ?>
								</p>
							</div>

							<div class="post">
								<div class="user-block">
									<h4>Eduction</h4>
								</div>
								<!-- /.user-block -->
								<p>
									<?= $profile->eduction ?>
								</p>
							</div>


							<div class="post">
								<div class="user-block">
									<h4>Experience</h4>
								</div>
								<!-- /.user-block -->
								<p>
									<?= $profile->experience ?>
								</p>
							</div>

							<div class="post">
								<div class="user-block">
									<h4>Award & Recognition</h4>
								</div>
								<!-- /.user-block -->
								<p>
									<?= $profile->award_and_recognition ?>
								</p>
							</div>

							<div class="post">
								<div class="user-block">
									<h4>Registration Detail</h4>
								</div>
								<!-- /.user-block -->
								<p>
									<?= $profile->registration_detail ?>
								</p>
							</div>
							<!-- Post -->
						</div>

						<div class="tab-pane" id="timeline">
							<br>
							<?php if ($rec) { ?>
								<div class="row">
									<div class="col-md-3">
										<img class="profile-user-img img-responsive img-circle"
											 src="<?= base_url() ?>upload/profile/<?= $rec->profile_img ?>"
											 alt="User profile picture">
									</div>
									<div class="col-md-3">
										<label>Name</label>
										<p><?= $rec->name ?></p>
									</div>
									<div class="col-md-3">
										<label>Emial</label>
										<p><?= $rec->email ?></p>
									</div>
									<div class="col-md-3">
										<label>Mobile</label>
										<p><?= $rec->mobile_no ?></p>
									</div>
									<div class="col-md-3">
										<label>Gender</label>
										<p><?= $rec->gender ?></p>
									</div>
									<div class="col-md-3">
										<label>Status</label><br>
										<p class="label  bg-red"> <?= $rec->status ?></p>
									</div>
									<div class="col-md-3">
										<label>Address</label>
										<p> <?= $rec_address->address ?></p>
									</div>
								</div>
							<?php } else { ?>
								<div class="row">
									<div class="col-md-8">
										<span style="color: red;">No Receptionist Created</span>
									</div>
								</div>
							<?php } ?>
						</div>
					</div>
					<!-- /.tab-content -->
				</div>
				<!-- /.nav-tabs-custom -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
