<div class="content-wrapper">
    <section class="content-header">
        <h1>
			Pharmacist
            <small>Manage Pharmacist from here</small>
            <div class="pull-right">
                <a href="<?= base_url("doctor/pharmacist") ?>" class="btn btn-danger btn-sm"><span
                            class="fa fa-times"></span> Cancel</a>
            </div>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Edit Pharmacist</h3>
                    </div>
                    <?= form_open_multipart("doctor/pharmacist/update/" . $pharmacist->id, array("role" => "form")) ?>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control"
                                           value="<?php echo (set_value("name")) ? set_value("name") : $pharmacist->name; ?>"
                                           name="name" placeholder="Enter name">
                                    <?php echo form_error('name'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label class="form-label">Email address</label>
                                    <input type="email" class="form-control"
                                           value="<?php echo (set_value("email")) ? set_value("email") : $pharmacist->email; ?>"
                                           placeholder="Enter email" disabled>
                                    <?php echo form_error('email'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label class="form-label">Mobile</label>
                                    <input type="text" maxlength="10" class="form-control"
                                           value="<?php echo (set_value("mobile_no")) ? set_value("mobile_no") : $pharmacist->mobile_no; ?>"
                                           placeholder="Enter mobile number" disabled>
                                    <?php echo form_error('mobile_no'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label class="form-label">Gender</label>
                                    <select name="gender" class="form-control">
                                        <option value="Male" <?= ($pharmacist->gender == "Male") ? "selected" : "" ?>>
                                            Male
                                        </option>
                                        <option value="Female" <?= ($pharmacist->gender == "Female") ? "selected" : "" ?>>
                                            Female
                                        </option>
                                        <option value="Other" <?= ($pharmacist->gender == "Other") ? "selected" : "" ?>>
                                            Other
                                        </option>
                                    </select>
                                    <?php echo form_error('gender'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label class="form-label">Password</label>
                                    <input type="password" class="form-control" name="password"
                                           placeholder="Enter password">
                                    <?php echo form_error('password'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label class="form-label">Confirm Password</label>
                                    <input type="password" class="form-control" name="c_pass"
                                           placeholder="Conform Password">
                                    <?php echo form_error('c_pass'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label class="form-label">Address</label>
                                    <input type="text" class="form-control"
                                           value="<?php echo (set_value("address")) ? set_value("address") : $pharmacist->address; ?>"
                                           name="address" placeholder="Enter Address">
                                    <?php echo form_error('address'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label class="form-label">Description</label>
                                    <input type="text" class="form-control" name="description"
                                           value="<?php echo (set_value("description")) ? set_value("description") : $pharmacist->description; ?>"
                                           placeholder="Enter Description">
                                    <?php echo form_error('description'); ?>
                                </div>
                            </div>
							<div class="col-sm-12">
								<div class="form-group">
									<label class="form-label">Drug Licence Number</label>
									<input type="text" class="form-control" name="dlno"
										   value="<?php echo (set_value("dlno")) ? set_value("dlno") : $pharmacist->dlno; ?>"
										   placeholder="Enter Drug Licence Number">
									<?php echo form_error('dlno'); ?>
								</div>
							</div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <button type="submit" class="btn btn-success">Update</button>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </section>
</div>
