<div class="content-wrapper">
    <section class="content-header">
        <h1>
            My Appointments
            <small>Manage Appointments from here</small>
            <a href="<?= base_url() ?>hospital/appoinment" class="pull-right btn-sm btn-success"> <i
                        class="fa fa-arrow-circle-left"></i> Back</a>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Book New Appointment</h3>
                    </div>
                    <div class="box-body">
                        <?= form_open("hospital/appoinment/add_validate") ?>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="input-group">
                                    <label class="form-label">Mobile <span class="text-red">*</span></label>
                                    <input type="number" value="<?= $this->session->flashdata('mobileno'); ?>"
                                           class="form-control"
                                           name="mobile_no"
                                           placeholder="Registered Mobile Number">
                                    <span class="input-group-btn" style="top: 13px;">
                                         <a href="#"
                                            type="button" class="btn btn-success btn-flat" data-toggle="modal"
                                            data-target="#modal-default"
                                            data-title="New Patient Registration">
                                             <i class="fa fa-plus"></i>
                                         </a>
                                     </span>
                                </div>

                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="form-label">Name <span class="text-red">*</span></label>
                                    <input type="text" value="<?= set_value("petient_name"); ?>"
                                           class="form-control  <?= (form_error("petient_name")) ? "is-invalid" : "" ?>"
                                           name="petient_name"
                                           placeholder="Patient name">
                                    <?php echo form_error('petient_name'); ?>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="form-label">Appointment Date <span class="text-red">*</span></label>
                                    <input class="form-control" autocomplete="off" type="date"
                                           value="<?= date('Y-m-d') ?>" name="booking_date"
                                           id="booking_date_"
                                           placeholder="Select booking date">
                                    <?php echo form_error('booking_date'); ?>
                                    <span class="text-info" id="booked"
                                          style="font-size: 11px;"></span>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Symptoms <span class="text-red">*</span></label>
                                    <input type="text"
                                           class="form-control <?= (form_error("disease")) ? "is-invalid" : "" ?>"
                                           value="<?= set_value("disease"); ?>"
                                           name="disease" placeholder="Enter Symptoms ">
                                    <?php echo form_error('disease'); ?>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Physical Handicape <span class="text-red">*</span></label>
                                    <select class="form-control" name="physical_handicape">
                                        <option value="No" <?= (set_value("physical_handicape") == "No") ? "selected" : "" ?>>
                                            No
                                        </option>
                                        <option value="Yes" <?= (set_value("physical_handicape") == "Yes") ? "selected" : "" ?>>
                                            Yes
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">Gender</label>
                                    <select class="form-control" name="gender">
                                        <option value="Male" <?= (set_value("gender") == "Male") ? "selected" : "" ?>>
                                            Male
                                        </option>
                                        <option value="Female" <?= (set_value("gender") == "Female") ? "selected" : "" ?>>
                                            Female
                                        </option>
                                        <option value="Other" <?= (set_value("gender") == "Other") ? "selected" : "" ?>>
                                            Other
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">Blood Group</label>
                                    <select class="form-control" name="blood_group">
                                        <option value="">-- Select Group --</option>
                                        <option value="O+" <?= (set_value("blood_group") == "O+") ? "selected" : "" ?>>
                                            O+
                                        </option>
                                        <option value="O-" <?= (set_value("blood_group") == "O-") ? "selected" : "" ?>>
                                            O-
                                        </option>
                                        <option value="A+" <?= (set_value("blood_group") == "A+") ? "selected" : "" ?>>
                                            A+
                                        </option>
                                        <option value="A-" <?= (set_value("blood_group") == "A-") ? "selected" : "" ?>>
                                            A-
                                        </option>
                                        <option value="B+" <?= (set_value("blood_group") == "B+") ? "selected" : "" ?>>
                                            B+
                                        </option>
                                        <option value="B-" <?= (set_value("blood_group") == "B-") ? "selected" : "" ?>>
                                            B-
                                        </option>
                                        <option value="AB+" <?= (set_value("blood_group") == "AB+") ? "selected" : "" ?>>
                                            AB+
                                        </option>
                                        <option value="AB-" <?= (set_value("blood_group") == "AB-") ? "selected" : "" ?>>
                                            AB-
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">Date Of Birth</label>
                                    <input type="date" class="form-control" value="<?= set_value('date_of_birth') ?>"
                                           name="date_of_birth" id="date_of_birth">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">Age</label>
                                    <input type="text"
                                           class="form-control <?= (form_error("age")) ? "is-invalid" : "" ?>"
                                           value="<?= set_value('age') ?>"
                                           name="age" placeholder="Enter age" id="age">
                                    <?php echo form_error('age'); ?>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">Height (cm)</label>
                                    <input type="text" class="form-control" name="height"
                                           value="<?= set_value('height') ?>" placeholder="Enter height in cm">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">Weight (KG)</label>
                                    <input type="text" class="form-control"
                                           value="<?= set_value('weight') ?>"
                                           name="weight" placeholder="Enter weight in KG">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">Relation With Me</label>
                                    <input type="text" class="form-control" value="<?= set_value('relation_with_me') ?>"
                                           name="relation_with_me" placeholder="Relation With me">
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">Doctor</label>
                                    <select name="doctor_id" class="form-control" required>
                                        <option value="">-select-</option>
                                        <?php foreach ($doctors as $doc) {
                                            if ($doc->status != BLOCK) { ?>
                                                <option value="<?= $doc->id ?>">Dr. <?= $doc->name ?></option>
                                            <?php }
                                        } ?>
                                    </select>
                                    <?php echo form_error('doctor_id'); ?>
                                </div>
                            </div>


                            <div class="clearfix"></div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label class="form-label">Description</label>
                                    <textarea
                                            class="form-control <?= (form_error("description")) ? "is-invalid" : "" ?>"
                                            name="description" rows="5"
                                            placeholder="Enter description here"><?= set_value('description') ?></textarea>
                                    <?php echo form_error('description'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <button type="submit" onclick="this.form.submit();this.disabled = true;"
                                        class="btn btn-primary float-right">Appoint
                                </button>
                            </div>
                        </div>
                        <?= form_close() ?>
                    </div>
                    <div class="box-footer">
                        <ul class="pagination pagination-sm no-margin pull-right">
                            <? //$links?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- model for user registration -->

<div class="modal fade in" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Default Modal</h4>
            </div>
            <div class="modal-body">
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
                                            <input type="text" class="form-control"
                                                   value="<?php echo set_value("name"); ?>" name="name"
                                                   placeholder="Enter name">
                                            <?php echo form_error('name'); ?>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label">Email address</label>
                                            <input type="email" class="form-control"
                                                   value="<?php echo set_value("email"); ?>"
                                                   name="email" placeholder="Enter email" id="email">
                                            <?php echo form_error('email'); ?>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label">Mobile</label>
                                            <input type="text" maxlength="10" class="form-control"
                                                   value="<?php echo set_value("mobile_no"); ?>" name="mobile_no"
                                                   id="mobile_no"
                                                   placeholder="Enter mobile number">
                                            <?php echo form_error('mobile_no'); ?>
                                            <a href="#" class="btn btn-success pull-right" style="margin-top: -34px;"
                                               onclick="CreateRandomNumber()"><span class="fa fa-plus"></span></a>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label">Gender</label>
                                            <select name="gender" class="form-control">
                                                <option value="Male" <?= (set_value("gender") == "Male") ? "selected" : "" ?>>
                                                    Male
                                                </option>
                                                <option value="Female" <?= (set_value("gender") == "Female") ? "selected" : "" ?>>
                                                    Female
                                                </option>
                                                <option value="Other" <?= (set_value("gender") == "Other") ? "selected" : "" ?>>
                                                    Other
                                                </option>
                                            </select>
                                            <?php echo form_error('gender'); ?>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label">Password</label>
                                            <input type="password" class="form-control" name="password"
                                                   placeholder="Enter password" readonly="" value="123456">
                                            <?php echo form_error('password'); ?>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label">Confirm Password</label>
                                            <input type="password" class="form-control" name="c_pass"
                                                   placeholder="Conform Password" readonly="" value="123456">
                                            <?php echo form_error('c_pass'); ?>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <small class="text-red">Default Password is "123456"</small>
                            </div>
                            <div class="box-footer">
                                <button type="submit" class="btn btn-success">Create new account</button>
                            </div>
                            <?= form_close() ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
    function CreateRandomNumber() {
        var digits = Math.floor(Math.random() * 9000000000) + 1000000000;
        document.getElementById('mobile_no').value = digits;
        document.getElementById('email').value = digits + '@gmail.com';
    }
</script>
