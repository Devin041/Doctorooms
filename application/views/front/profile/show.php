<div class="my-3 my-md-5">
    <div class="container">
        <?php
        if ($feedback = $this->session->flashdata('feedback')) {
            $class = $this->session->flashdata('feedback_class');
            ?>
            <div class="alert alert-<?= ($class == 'error') ? "danger" : $class ?>" role="alert">
                <?= $feedback ?>
            </div>
        <?php } ?>
        <div class="row">
            <div class="col-lg-4">
                <div class="card card-profile">
                    <div class="card-header" style="background-color: #b2ebf2;"></div>
                    <div class="card-body text-center">
                        <?= form_open_multipart('profile/upload_profile_img') ?>
                        <img class="card-profile-img"
                             src="<?= base_url() ?>upload/profile/<?= $user->profile_img ?>"
                             style="width: 100px;height: 100px;">
                        <h3 class="mb-3"><?= $user->name ?></h3>
                        <p class="mb-4">
                        <div class="form-group input-group-sm">
                            <input type="file" class="form-control" name="profile">
                        </div>

                        </p>
                        <button type="submit" class="btn btn-success"><i class="fe fe-check-square"></i> Upload
                        </button>
                        <?= form_close() ?>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="card">
                    <?= form_open('profile/update_profile_basic') ?>
                    <div class="card-header">
                        <h3 class="card-title">Update Profile</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" id="name"
                                           name="name"
                                           class="form-control <?= (form_error("name")) ? "is-invalid" : "" ?>"
                                           value="<?= (set_value("name")) ? set_value("name") : $profile->name ?>">
                                    <?= form_error("name") ?>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="text" id="email"
                                           name="email"
                                           class="form-control <?= (form_error("email")) ? "is-invalid" : "" ?>"
                                           value="<?= (set_value("email")) ? set_value("email") : $profile->email ?>"
                                           disabled>
                                    <div class="invalid-feedback"><?= form_error("name") ?></div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Gender</label>
                                    <select class="form-control" name="gender">
                                        <option value="Male" <?= ($profile->gender == "Male") ? "selected" : "" ?>>
                                            Male
                                        </option>
                                        <option value="Female" <?= ($profile->gender == "Female") ? "selected" : "" ?>>
                                            Female
                                        </option>
                                        <option value="Other" <?= ($profile->gender == "Other") ? "selected" : "" ?>>
                                            Other
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Mobile</label>
                                    <input type="text" id="mobile_no"
                                           name="mobile_no"
                                           maxlength="10"
                                           class="form-control <?= (form_error("mobile_no")) ? "is-invalid" : "" ?>"
                                           value="<?= (set_value("mobile_no")) ? set_value("mobile_no") : $profile->mobile_no ?>" disabled>
                                    <div class="invalid-feedback"><?= form_error("name") ?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <div class="d-flex">
                            <button type="submit" class="btn btn-success"><i class="fe fe-check-square"></i> Update
                            </button>
                        </div>
                    </div>
                    <?= form_close() ?>
                </div>

                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Change Password</h3>
                    </div>
                    <?= form_open('profile/chnage_password') ?>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group"><label>Old Password</label>
                                    <input type="password" name="current_pass"
                                           class="form-control <?= (form_error("current_pass")) ? "is-invalid" : "" ?>">
                                    <div class="invalid-feedback"><?= form_error("current_pass") ?></div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>New Password</label>
                                    <input type="password" id="new_pass" name="new_pass"
                                           class="form-control <?= (form_error("new_pass")) ? "is-invalid" : "" ?>">
                                    <div class="invalid-feedback"><?= form_error("new_pass") ?></div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>New Password</label>
                                    <input type="password" id="conform_pass" name="conform_pass"
                                           class="form-control <?= (form_error("conform_pass")) ? "is-invalid" : "" ?>">
                                    <div class="invalid-feedback"><?= form_error("conform_pass") ?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <div class="d-flex">
                            <button type="submit" class="btn btn-success" name="btnpass"><i
                                        class="fe fe-check-square"></i>
                                Change
                            </button>
                        </div>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </div>
</div>