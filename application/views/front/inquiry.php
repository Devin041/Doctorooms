<div class="my-3 my-md-5">
    <div class="container">
        <?php
        if ($feedback = $this->session->flashdata('feedback')) {
            $class = $this->session->flashdata('feedback_class');
            ?>
            <div class="alert alert-<?= ($class == 'alert') ? "danger" : $class ?>" role="alert">
                <?= $feedback ?>
            </div>
        <?php } ?>
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <?= form_open("inquiry/send") ?>
                    <div class="card-header">
                        <h3 class="card-title">Hospital Inquiry</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Hospital Name<span class="text-red">*</span></label>
                                    <input type="text"
                                           class="form-control <?= (form_error("hospital_name")) ? "is-invalid" : "" ?>"
                                           name="hospital_name" value="<?= set_value("hospital_name"); ?>"
                                           placeholder="Enter Hospital Name">
                                    <?php echo form_error('hospital_name'); ?>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">Hospital Contact Number<span
                                                class="text-red">*</span></label>
                                    <input type="text"
                                           class="form-control <?= (form_error("hospital_cotanct_no")) ? "is-invalid" : "" ?>"
                                           name="hospital_cotanct_no" value="<?= set_value("hospital_cotanct_no"); ?>"
                                           placeholder="Enter Hospital Contact Number">
                                    <?php echo form_error('hospital_cotanct_no'); ?>

                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">Email<span class="text-red">*</span></label>
                                    <input type="email"
                                           class="form-control <?= (form_error("email")) ? "is-invalid" : "" ?>"
                                           name="email" placeholder="Enter Email"
                                           value="<?= set_value("email"); ?>">
                                    <?php echo form_error('email'); ?>

                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Contact Person Name<span class="text-red">*</span></label>
                                    <input type="text"
                                           class="form-control <?= (form_error("contact_person_name")) ? "is-invalid" : "" ?>"
                                           name="contact_person_name"
                                           placeholder="Enter Contact Person Name"
                                           value="<?= set_value("contact_person_name"); ?>">
                                    <?php echo form_error('contact_person_name'); ?>

                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Contact Person Mobile<span
                                                class="text-red">*</span></label>
                                    <input type="text"
                                           class="form-control <?= (form_error("contact_person_mobile")) ? "is-invalid" : "" ?>"
                                           name="contact_person_mobile"
                                           placeholder="Enter Contact Person Mobile"
                                           value="<?= set_value("contact_person_mobile"); ?>">
                                    <?php echo form_error('contact_person_mobile'); ?>

                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">Address<span class="text-red">*</span></label>
                                    <input type="text"
                                           class="form-control <?= (form_error("address")) ? "is-invalid" : "" ?>"
                                           name="address" placeholder="Enter Address"
                                           value="<?= set_value("address"); ?>">
                                    <?php echo form_error('address'); ?>

                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">City<span class="text-red">*</span></label>
                                    <input type="text"
                                           class="form-control <?= (form_error("city")) ? "is-invalid" : "" ?>"
                                           name="city" placeholder="Enter City"
                                           value="<?= set_value("city"); ?>">
                                    <?php echo form_error('city'); ?>

                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="form-label">State<span class="text-red">*</span></label>
                                    <input type="text"
                                           class="form-control <?= (form_error("state")) ? "is-invalid" : "" ?>"
                                           name="state" placeholder="Enter State"
                                           value="<?= set_value("state"); ?>">
                                    <?php echo form_error('state'); ?>

                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group mb-0">
                                    <label class="form-label">Description</label>
                                    <textarea rows="3" class="form-control" name="description"
                                              placeholder="Here can be your description"
                                              value=""><?= set_value("description"); ?></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </div>
</div>

