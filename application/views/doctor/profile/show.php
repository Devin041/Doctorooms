<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Profile
			<small>Manage user profile from here</small>
			<div class="pull-right">
			</div>
		</h1>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-4">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Upload Profile Photo</h3>
					</div>
					<div class="box-body box-profile">
						<img class="profile-user-img img-responsive img-circle"
							 src="<?= base_url() ?>upload/profile/<?= $profile->profile_img ?>"
							 alt="User profile picture" style="height: 100px;width: 100px;">

						<h3 class="profile-username text-center"><?= $profile->name ?></h3>

						<center>
							<?= form_open_multipart("doctor/profile/update_profile_photo") ?>
							<label>Change Profile</label>
							<input type="file" style="width: 250px" name="profile" class="form-control">
							<br>
							<button type="submit" class="btn btn-info">Submit</button>
							<?= form_close() ?>
						</center>
					</div>
					<!-- /.box-body -->
				</div>
			</div>
			<div class="col-md-8">
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#info" data-toggle="tab" aria-expanded="false">Info</a></li>
						<li class=""><a href="#chnagePass" data-toggle="tab" aria-expanded="false">Change
								Password</a></li>
					</ul>
					<div class="tab-content">

						<div class="tab-pane active" id="info">
							<br>
							<form class="form-horizontal">
								<h4 align="center">General info <a href="<?= base_url('doctor/profile/edit') ?>"
																   class=""><i class="fa fa-pencil"></i></a></h4>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label" style="padding: 0px;">Full
										Name</label>

									<div class="col-sm-9">
										<?= $profile->name ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-3 control-label"
										   style="padding: 0px;">Email</label>
									<div class="col-sm-9">
										<?= $profile->email ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-3 control-label"
										   style="padding: 0px;">Gender</label>
									<div class="col-sm-9">
										<?= $profile->gender ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-sm-3 control-label"
										   style="padding: 0px;">Phone</label>

									<div class="col-sm-9">
										<?php if (empty($profile->mobile_no) || is_null($user->mobile_no)) { ?>
											Not yet Provided
										<?php } else { ?>
											<?= $profile->mobile_no ?>
										<?php } ?>

									</div>
								</div>


								<div class="form-group">
									<label for="inputStatus" class="col-sm-3 control-label"
										   style="padding: 0px;">Status</label>

									<div class="col-sm-9">
										<?php if ($profile->status == ACTIVE) { ?>
											<label class="label label-success"><?= $profile->status ?></label>
										<?php } else { ?>
											<label class="label label-danger"><?= $profile->status ?></label>
										<?php } ?>

									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label" style="padding: 0px;">Doctor
										Type</label>

									<div class="col-sm-9">
										<?= $profile->doctor_type ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-3 control-label"
										   style="padding: 0px;">Description</label>
									<div class="col-sm-9">
										<?= $profile->description ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-3 control-label"
										   style="padding: 0px;">Address</label>
									<div class="col-sm-9">
										<?= $profile->address ?>
									</div>
								</div>

                                <div class="form-group">
                                    <label for="inputEmail" class="col-sm-3 control-label"
                                           style="padding: 0px;">State</label>
                                    <div class="col-sm-9">
                                        <?= $profile->state ?>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail" class="col-sm-3 control-label"
                                           style="padding: 0px;">City</label>
                                    <div class="col-sm-9">
                                        <?= $profile->city ?>
                                    </div>
                                </div>

                                <div class="form-group">
									<label for="inputPhone" class="col-sm-3 control-label"
										   style="padding: 0px;"> Hospital Address</label>

									<div class="col-sm-9">
										<?= $profile->hospital_address ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-sm-3 control-label"
										   style="padding: 0px;">Fees</label>

									<div class="col-sm-9">
										<?= $profile->fees ?>
									</div>
								</div>
                                <div class="form-group">
                                    <label for="inputPhone" class="col-sm-3 control-label"
                                           style="padding: 0px;">Emergency charge</label>

                                    <div class="col-sm-9">
                                        <?= $profile->emergency_charge ?>
                                    </div>
                                </div>
								<div class="form-group">
									<label for="inputPhone" class="col-sm-3 control-label"
										   style="padding: 0px;">Specialization</label>

									<div class="col-sm-9">
										<?php
										if ($profile->specialization) {
										$data = json_decode($profile->specialization);
										foreach ($data as $d) { ?>
                                            <label class="label label-default"><?= $d; ?></label>
                                        <?php }
                                        }
										?>

									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-sm-3 control-label"
										   style="padding: 0px;">Award And Recognition</label>

									<div class="col-sm-9">
										<?= $profile->award_and_recognition ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-sm-3 control-label"
										   style="padding: 0px;">Education</label>
									<div class="col-sm-9">
										<?= $profile->eduction ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-sm-3 control-label"
										   style="padding: 0px;">Experience</label>
									<div class="col-sm-9">
										<?= $profile->experience ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-sm-3 control-label"
										   style="padding: 0px;">Registration Details </label>
									<div class="col-sm-9">
										<?= $profile->registration_detail ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-sm-3 control-label"
										   style="padding: 0px;">Contact No. </label>
									<div class="col-sm-9">
										<?= $profile->contact_no ?>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-sm-3 control-label"
										   style="padding: 0px;">Hospital Phone</label>
									<div class="col-sm-9">
										<?= $profile->phone_no ?>
									</div>
								</div>
							</form>

						</div>

						<div class="tab-pane" id="chnagePass">
							<?= form_open("doctor/profile/change_pass", array("class" => "form-horizontal")) ?>
							<div class="form-group">
								<label for="inputCPass" class="col-sm-2 control-label">Current Password</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" name="current_pass"
										   placeholder="Enter Current Password">
									<?php echo form_error('current_pass'); ?>
								</div>
							</div>
							<div class="form-group">
								<label for="inputNPass" class="col-sm-2 control-label">New Password</label>

								<div class="col-sm-10">
									<input type="password" class="form-control" name="new_pass"
										   placeholder="Enter New Password">
									<?php echo form_error('new_pass'); ?>
								</div>
							</div>
							<div class="form-group">
								<label for="inputCPass" class="col-sm-2 control-label">Conform Password</label>

								<div class="col-sm-10">
									<input type="password" class="form-control" name="conform_pass"
										   placeholder="Re-type Password">
									<?php echo form_error('conform_pass'); ?>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-info">Submit</button>
								</div>
							</div>
							<?= form_close() ?>
						</div>
					</div>
					<!-- /.tab-content -->
				</div>
			</div>
		</div>
	</section>
</div>
