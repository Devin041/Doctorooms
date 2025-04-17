<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Doctor
			<small>Create doctor</small>
			<div class="pull-right">
				<a href="<?= base_url("hospital/doctor") ?>" class="btn btn-danger btn-sm"><span
						class="fa fa-times"></span> Cancel</a>
			</div>
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-sm-12">
				<div class="box box-primary">
					<?= form_open_multipart("hospital/doctor/create", array("role" => "form")) ?>
					<div class="box-body">
						<div class="row">
							<div class="col-sm-4">
								<div class="form-group">
									<label>Name</label><span class="text-red">*</span>
									<input type="text" name="name" value="<?= (set_value("name")) ?>"
										   class="form-control" id="name">
									<?php echo form_error('name'); ?>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label>Gender</label>
									<select class="form-control" name="gender">
										<option value="Male">Male</option>
										<option value="female">Female</option>
										<option value="Other">Other</option>
									</select>
								</div>
							</div>

							<div class="col-sm-4">
								<div class="form-group">
									<label>User Id</label>
                                    <a href="#" onclick="CreateRandomNumber()" class="btn-xs btn-success" data-toggle="tooletip" title="click to change number">click to Create</a>
									<input type="number" value="<?= (set_value("mobile_no")) ?>" readonly="readonly" name="mobile_no"
										   class="form-control" id="mobile_no">
                                    <?php echo form_error('mobile_no'); ?>
								</div>
							</div>


							<div class="col-sm-6">
								<div class="form-group">
									<label>Email</label><span class="text-red">*</span>
									<input type="text" name="email" value="<?= (set_value("email")) ?>"
										   class="form-control" id="email">
									<?php echo form_error('email'); ?>
								</div>

							</div>


							<div class="col-sm-6">
								<div class="form-group">
									<label>Password</label><span class="text-red">*</span>
									<input type="text" value="<?= (set_value("password")) ?>" name="password"
										   class="form-control" id="password">
									<?php echo form_error('password'); ?>
								</div>
							</div>


							<div class="col-sm-4">
								<div class="form-group">
									<label>Doctor Type</label><span class="text-red">*</span>
									<select name="doctor_type" class="form-control" id="doctor_type">
										<option>-select-</option>
										<?php
										foreach ($doctype as $type) { ?>
											<option <?=$type->type?>><?=$type->type?></option>
										<?php } ?>
										?>
									</select>
									<?php echo form_error('doctor_type'); ?>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label>Fees</label><span class="text-red">*</span>
									<input type="text" name="fees" value="<?= (set_value("fees")) ?>"
										   class="form-control" id="fees">
									<?php echo form_error('fees'); ?>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label>Hospital Contact Number</label>
									<input type="text" class="form-control" name="contact_no"
										   value="<?= (set_value("contact_no")) ?>">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Latitude</label>
									<input type="text" class="form-control" name="lat"
										   value="<?= (set_value("lat")) ?>">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Longitude</label>
									<input type="text" name="longi" class="form-control" id="longi"
										   value="<?= (set_value("longi")) ?>">
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label>Address</label><span class="text-red">*</span>
									<textarea name="address" class="form-control" id="address"
											  rows="3"><?= (set_value("address")) ?></textarea>
									<?php echo form_error('address'); ?>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label>Description</label><span class="text-red">*</span>
									<textarea name="description" class="form-control" id="description"
											  rows="5"><?= (set_value("description")) ?></textarea>
									<?php echo form_error('description'); ?>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label>Disease Specialization</label>
								</div>
								<div class="form-group">
									<?php foreach ($dis_name as $dis) { ?>
										<label style="margin:5px;padding: 3px;">

											<input type="checkbox" name="specialization[]" value="<?= $dis->dis_name ?>"
												   class="flat-red"/>

											<?= $dis->dis_name ?></label>
									<?php } ?>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label>Award And Recognition</label>
									<textarea name="award_and_recognition" class="form-control"
											  id="award_and_recognition"
											  rows="5"><?= (set_value("award_and_recognition")) ?></textarea>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label>Eduction</label><span class="text-red">*</span>
									<textarea name="eduction" class="form-control" id="eduction"
											  rows="5"><?= (set_value("eduction")) ?></textarea>
									<?php echo form_error('eduction'); ?>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label>Experience</label>
									<textarea name="experience" class="form-control" id="experience"
											  rows="5"><?= (set_value("experience")) ?></textarea>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label>Registration Detail</label>
									<textarea name="registration_detail" class="form-control"
											  id="registration_detail"
											  rows="5"><?= (set_value("registration_detail")) ?></textarea>
								</div>
							</div>
						</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</div>

<script>
    $('document').ready(function(){
        CreateRandomNumber();
        document.getElementById('mobile_no').focus();
    });
    function CreateRandomNumber() {
        var digits = Math.floor(Math.random() * 9000) + 1000;
        document.getElementById('mobile_no').value = digits;
    }
</script>
