<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Hospital Profile
		</h1>

	</section>

	<!-- Main content -->
	<section class="content">

		<div class="row">
			<div class="col-md-3">

				<!-- Profile Image -->
				<div class="box box-primary">
					<div class="box-body box-profile">
						<img class="profile-user-img img-responsive img-circle"
							 src="<?= base_url() ?>assets/photos/hospital.jpg" alt="User profile picture">

						<h3 class="profile-username text-center"><?= $profile->hospital_name ?></h3>
						<ul class="list-group list-group-unbordered">
							<li class="list-group-item">
								<b>Likes</b> <a class="pull-right" style="color: red;"><span
										class="fa fa-thumbs-up"></span> 1,322</a>
							</li>
							<li class="list-group-item">
								<b>Rating</b> <a class="pull-right" style="color: #ffcc00;">
									<ul>
										<li style="display: inline-block;"><span class="fa fa-star"></span></li>
										<li style="display: inline-block;"><span class="fa fa-star"></span></li>
										<li style="display: inline-block;"><span class="fa fa-star"></span></li>
										<li style="display: inline-block;"><span class="fa fa-star"></span></li>
										<li style="display: inline-block;"><span class="fa fa-star"></span></li>
									</ul>
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
						<h3 class="box-title">About Hospital</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">


						<strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>

						<p class="text-muted"><?= $profile->address ?></p>

						<hr>
						<strong><i class="fa fa-phone margin-r-5"></i> Phone Number</strong>

						<p class="text-muted"><?= $profile->mobile_no ?></p>

						<hr>

						<strong><i class="fa fa-envelope margin-r-5"></i> Email</strong>

						<p class="text-muted"><?= $profile->email ?></p>

						<hr>

						<strong><i class="fa fa-file-text-o margin-r-5"></i> Registration Date</strong>

						<p><?php
							$date = date_create($profile->created_at);
							echo date_format($date, 'd-M-Y');
							?></p>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#activity" data-toggle="tab">Activity</a></li>
						<li class=""><a href="#doctors" data-toggle="tab">Doctors</a></li>

					</ul>
					<div class="tab-content">
						<div class="active tab-pane" id="activity">
							<!-- Post -->
							<div class="post">
								<div class="user-block">
									<h4>Gallary</h4>
								</div>
								<!-- /.user-block -->

								<img src="<?= base_url() ?>assets/photos/<?= $profile->gallary ?>">
								<img src="<?= base_url() ?>assets/photos/<?= $profile->gallary ?>">
								<img src="<?= base_url() ?>assets/photos/<?= $profile->gallary ?>">

							</div>
							<!-- /.post -->
							<!-- Post -->
							<div class="post">
								<div class="user-block">
									<h4>Map / Direction</h4>
								</div>
								<!-- /.user-block -->
								<iframe src="https://maps.google.com/maps?q=<?= $profile->lat ?>,<?= $profile->longi ?>&hl=es;z=13&output=embed"
										frameborder="0" style="border:0; width: 100%; height: 500px;"
										allowfullscreen></iframe>
								<div class="clearfix"></div>
							</div>
							<!-- /.post -->
							<!-- /.tab-pane -->
						</div>

						<!-- Doctor View -->
						<div class="active tab-pane" id="doctors">


							<div class="row">
								<?php foreach ($doc as $doctors) { ?>
								<div class="col-md-4">
									<!-- Widget: user widget style 1 -->
									<div class="box box-widget widget-user">
										<!-- Add the bg color to the header using any of the bg-* classes -->
										<div class="widget-user-header bg-aqua-active">
											<h3 class="widget-user-username">Dr. <?=$doctors->name?></h3>
											<h5 class="widget-user-desc"><?=$doctors->doctor_type?></h5>
										</div>
										<div class="widget-user-image">
											<img class="img-circle" src="<?=base_url()?>upload/profile/<?=$doctors->profile_img?>"
												 alt="User Avatar">
										</div>
										<div class="box-footer">
											<div class="row">
												<div class="col-sm-4 border-right">
													<div class="description-block">
														<h5 class="description-header">Status</h5>
														<span class="description-text"><?=$doctors->status?></span>
													</div>
													<!-- /.description-block -->
												</div>
												<!-- /.col -->
												<div class="col-sm-4 border-right">
													<div class="description-block">
														<h5 class="description-header pull-left"><?=$doctors->email?></h5>
														<span class="description-text pull-left"><?=$doctors->contact_no?></span>
													</div>
													<!-- /.description-block -->
												</div>

												<!-- /.col -->
											</div>
											<!-- /.row -->
										</div>
									</div>
									<!-- /.widget-user -->
								</div>
							<?php } ?>

								<!-- /.col -->
							</div>
							<div>

							</div>
							<!-- /.row -->

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
11
