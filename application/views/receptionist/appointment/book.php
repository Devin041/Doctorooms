<div class="content-wrapper">
    <section class="content-header">
        <h1>
            My Appointments
            <small>Manage Appointments from here</small>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <?php if ($this->session->flashdata('alert_msg')) { ?>
                    <div class="alert <?= $this->session->flashdata('alert_class') ?> alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <?= $this->session->flashdata('alert_msg') ?>
                    </div>
                <?php } ?>

                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Book New Appointment</h3>
                    </div>
                    <div class="box-body">
                        <form method="post" action="<?=base_url('receptionist/appointment/book')?>">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="form-label">Doctorooms Id / Mobile</label>
                                    <!--<input type="text" value="<? /*= set_value("mobile"); */ ?>"
										   class="form-control  <? /*= (form_error("mobile")) ? "is-invalid" : "" */ ?>"
										   name="mobile"
										   placeholder="Registered mobile ">
									--><?php /*echo form_error('mobile'); */ ?>

                                    <div class="input-group">
                                        <input type="text"
                                               class="form-control <?= (form_error("mobile")) ? "is-invalid" : "" ?>"
                                               value="<?= $this->session->flashdata('mobileno');
										set_value("mobile"); ?>"
                                               name="mobile" id="mobile" required
                                               placeholder="Registered mobile ">
                                        <span class="input-group-btn">
                                              <button type="button" class="btn btn-success" data-toggle="modal"
                                                      data-target="#modal-default">+</button>
										</span>
                                    </div>
                                    <?php echo form_error('mobile'); ?>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="form-label">Name <span class="text-red">*</span></label>
                                    <input type="text" required="required" value="<?= $this->session->flashdata('uname'); set_value("petient_name"); ?>"
                                           class="form-control  <?= (form_error("petient_name")) ? "is-invalid" : "" ?>"
                                           name="petient_name" required
                                           placeholder="Patient name" id="petient_name">
                                    <?php echo form_error('petient_name'); ?>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="form-label">Appointment Date <span class="text-red">*</span></label>
                                    <input class="form-control" autocomplete="off" type="text" name="booking_date"
                                           id="booking_date" required="required" value="<?=date('Y-m-d')?>"
                                           onkeydown="return false" placeholder="Select booking date">
                                    <?php echo form_error('booking_date'); ?>
                                    <span class="text-info" id="booked"
                                          style="font-size: 11px;"></span>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Symptoms </label>
                                    <input type="text"
                                           class="form-control <?= (form_error("disease")) ? "is-invalid" : "" ?>"
                                           value="<?= set_value("disease"); ?>"
                                           name="disease" placeholder="Enter Symptoms">
                                    <?php echo form_error('disease'); ?>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Physical Handicape <span class="text-red">*</span></label>
                                    <select class="form-control" name="physical_handicape">
                                        <option
                                                value="No" <?= (set_value("physical_handicape") == "No") ? "selected" : "" ?>>
                                            No
                                        </option>
                                        <option
                                                value="Yes" <?= (set_value("physical_handicape") == "Yes") ? "selected" : "" ?>>
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
                                        <option
                                                value="Female" <?= (set_value("gender") == "Female") ? "selected" : "" ?>>
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
                                        <option
                                                value="AB+" <?= (set_value("blood_group") == "AB+") ? "selected" : "" ?>>
                                            AB+
                                        </option>
                                        <option
                                                value="AB-" <?= (set_value("blood_group") == "AB-") ? "selected" : "" ?>>
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
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Relation With Me</label>
                                    <input type="text" class="form-control" value="<?= set_value('relation_with_me') ?>"
                                           name="relation_with_me" placeholder="Relation With me">
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
                                <input type="submit" value="Appoint" class="btn btn-primary float-right">
                            </div>
                        </div>
                    </form>
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

<!--model start-->
<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Registration</h4>
            </div>
            <div class="modal-body">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">New Patient</h3>
                    </div>
                    <?= form_open_multipart("receptionist/registration/submit", array("role" => "form")) ?>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control" id="pname" value="<?php echo set_value("name");?>"
                                           name="name"
                                           placeholder="Enter name">
                                    <?php echo form_error('name'); ?>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Email address</label>
                                    <input type="email" class="form-control" id="email"
                                           value="<?php echo set_value("email"); ?>"
                                           name="email" placeholder="Enter email">
                                    <?php echo form_error('email'); ?>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <label class="form-label">Doctorooms Id / Mobile</label>
                                    <input type="text" maxlength="10" class="form-control" id="mobile_no"
                                           value="<?php echo set_value("mobile_no"); ?>" style="" name="mobile_no"
                                           placeholder="Enter mobile number">
                                    <span class="input-group-btn">
											<a href="#" onclick="CreateRandomNumber()" type="button"
                                               style="margin-top:24px;"
                                               class="btn btn-success btn-flat" data-toggle="tooltip"
                                               data-title="Click To Change Number" data-original-title="" title="">
												<i class="fa fa-phone"></i>
											</a>
										</span>
                                    <?php echo form_error('mobile_no'); ?>
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
                                           placeholder="Enter password" readonly="readonly" value="123456">
                                    <?php echo form_error('password'); ?>
                                </div>
                                <small style="color: red;font-size:10px;">Note : Default Password is "123456"</small>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Confirm Password</label>
                                    <input type="password" class="form-control" readonly="readonly" name="c_pass"
                                           placeholder="Conform Password" value="123456">
                                    <?php echo form_error('c_pass'); ?>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <button type="submit" onclick="getmobileno()" class="btn btn-success">Create new account
                        </button>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!--end-->
<script>
    $(document).ready(function () {
        $("#date_of_birth").change(function () {
            var date_of_birth = $("#date_of_birth").val();
            date_of_birth = new Date(date_of_birth);
            var today = new Date();
            if (date_of_birth >= today) {
                $('#date_of_birth').val("");
                $('#age').val("");
            } else {
                var age = Math.floor((today - date_of_birth) / (365.25 * 24 * 60 * 60 * 1000));
                $('#age').val(age);
            }
        });

        var datesForDisable = <?=$getHolidays?>;
        $("#booking_date").datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true,
            weekStart: 1,
            calendarWeeks: true,
            todayHighlight: true,
            datesDisabled: datesForDisable,
            startDate: new Date(Date.parse('<?=date('Y-m-d', strtotime(date('Y-m-d') . "+ 0 day"))?>')),
            endDate: new Date(Date.parse('<?=date('Y-m-d', strtotime(date('Y-m-d') . " + " . (int)$doctor->booking_days . " day"))?>'))
        });

        $("#booking_date").change(function () {
            var booking_date = $("#booking_date").val();
            var doctor =<?=$doctor->user_id?>;
            //$('#city').find('option:not(:first)').remove();
            $.post("<?=base_url('receptionist/appointment/date_booked')?>", {
                doctor: doctor,
                date: booking_date
            }, function (result) {
                console.log(result);
                $('#booked').text(result.booked + " Appointment booked.");
            });
        });
    });
</script>
<script>
    $('document').ready(function () {
        CreateRandomNumber();
        document.getElementById('mobile_no').focus();
    });

    function CreateRandomNumber() {
        var digits = Math.floor(Math.random() * 9000000000) + 1000000000;
        document.getElementById('mobile_no').value = digits;
        document.getElementById('email').value = digits + '@doctorooms.com';
    }

</script>
