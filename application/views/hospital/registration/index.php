<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Registration
			<small></small>
			<div class="pull-right">
			</div>
		</h1>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">New Patient</h3>
					</div>
					<?= form_open_multipart("hospital/registration/submit", array("role" => "form")) ?>
					<div class="box-body">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label class="form-label">Name</label>
									<input type="text" class="form-control" value="<?php echo set_value("name"); ?>" name="name"
										   placeholder="Enter name">
									<?php echo form_error('name'); ?>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label class="form-label">Email address</label>
									<input type="email" class="form-control" value="<?php echo set_value("email"); ?>"
										   name="email" placeholder="Enter email">
									<?php echo form_error('email'); ?>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-sm-6">
								<div class="form-group">
									<label class="form-label">Mobile</label>
									<input type="text" maxlength="10" class="form-control"
										   value="<?php echo set_value("mobile_no"); ?>" name="mobile_no"
										   placeholder="Enter mobile number">
									<?php echo form_error('mobile_no'); ?>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label class="form-label">Gender</label>
									<select name="gender" class="form-control">
										<option value="Male" <?= (set_value("gender") == "Male") ? "selected" : "" ?>>Male
										</option>
										<option value="Female" <?= (set_value("gender") == "Female") ? "selected" : "" ?>>
											Female
										</option>
										<option value="Other" <?= (set_value("gender") == "Other") ? "selected" : "" ?>>Other
										</option>
									</select>
									<?php echo form_error('gender'); ?>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-sm-6">
								<div class="form-group">
									<label class="form-label">Password</label>
									<input type="password" class="form-control" name="password" placeholder="Enter password">
									<?php echo form_error('password'); ?>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label class="form-label">Confirm Password</label>
									<input type="password" class="form-control" name="c_pass" placeholder="Conform Password">
									<?php echo form_error('c_pass'); ?>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-success">Create new account</button>
					</div>
					<?= form_close() ?>
				</div>
			</div>
		</div>
	</section>
</div>
