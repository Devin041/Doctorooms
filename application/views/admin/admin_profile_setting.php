<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Admin Profile
		</h1>
	</section>

	<!-- Main content -->
	<section class="content">

		<div class="row">
			<div class="col-md-3">

				<!-- Profile Image -->
				<div class="box box-primary">
					<form method="post" action="<?=base_url()?>admin/dashboard/upload_profile_img" enctype="multipart/form-data">
					<div class="box-body box-profile">
						<img class="profile-user-img img-responsive img-circle"
							 src="<?= base_url() ?>upload/profile/<?= $userdetail->profile_img ?>"
							 alt="User profile picture" style="height: 100px;width: 100px;">

						<h3 class="profile-username text-center"><?= $userdetail->name ?></h3>
						<div>
							<input type="file" name="profile" class="form-control" >
						</div>
						<br>
						<div class="text-center">
							<input type="submit" class="btn-sm btn-info" value="Change"/>
						</div>
					</div>
					</form>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#activity" data-toggle="tab">Activity</a></li>

					</ul>
					<div class="tab-content">
						<div class="active tab-pane" id="activity">
							<form method="post" action="<?= base_url() ?>admin/dashboard/update_validate">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Name</label>
											<input type="text" name="name" class="form-control"
												   value="<?= $userdetail->name ?>">
											<?php echo form_error('name'); ?>
										</div>
										<div class="form-group">
											<label>Email</label>
											<input type="text" disabled="disabled" name="email" class="form-control"
												   value="<?= $userdetail->email ?>">
											<?php echo form_error('email'); ?>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label>Contact Number</label>
											<input type="text" name="mobile_no" class="form-control"
												   value="<?= $userdetail->mobile_no ?>">
											<?php echo form_error('mobile_no'); ?>
										</div>
										<div class="form-group">
											<label>Gender</label>
											<select class="form-control" name="gender">
												<option value="Male">Male</option>
												<option value="Female">Female</option>
											</select>
											<?php echo form_error('gender'); ?>
										</div>
									</div>
									<div class="col-md-12">
										<input type="submit" class="btn btn-info" value="Update">
									</div>
								</div>
							</form>
						</div>
						<!-- /.tab-content -->
					</div>
					<!-- /.nav-tabs-custom -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<div class="col-md-9 col-md-offset-3">
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">Change Password</h3>
					</div>
					<div class="box-body">
						<!-- Date -->
						<form method="post" action="<?=base_url()?>admin/dashboard/change_password">
							<div class="col-md-4">
								<div class="form-group">
									<label>Password</label>
									<input type="password" class="form-control" name="current_pass"><br>
									<?php echo form_error('current_pass'); ?>
									<!-- /.input group -->
									<input type="submit" value="Change" class="btn btn-primary">
								</div>
							</div>
							<!-- /.form group -->
							<!-- Date -->
							<div class="col-md-4">
								<div class="form-group">
									<label>New Password</label>
									<input type="password" class="form-control" name="new_pass">
									<?php echo form_error('new_pass'); ?>
									<!-- /.input group -->
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label>Confirm Password</label>
									<input type="password" class="form-control" name="conform_pass">
									<?php echo form_error('conform_pass'); ?>
									<!-- /.input group -->
								</div>
							</div>
					</div>
					</form>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
			<!-- /.box -->

		</div>

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
