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
                            <?= form_open_multipart("assistant/profile/update_profile_photo") ?>
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

                            <?= form_open("assistant/profile/update", array("class" => "form-horizontal")) ?>
                            <div class="form-group">
                                <label for="inputName" class="col-sm-3 control-label">Full
                                    Name</label>

                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="name"
                                           value="<?= (set_value("name")) ? set_value("name") : $profile->name ?>"
                                           id="name"
                                           placeholder="Enter Name">
                                    <?php echo form_error('name'); ?>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-sm-3 control-label">Email</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="email"
                                           value="<?= (set_value("email")) ? set_value("email") : $profile->email ?>"
                                           id="email"
                                           placeholder="Enter Email" disabled>
                                    <?php echo form_error('email'); ?>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-sm-3 control-label">Gender</label>
                                <div class="col-sm-9">
                                    <select name="gender" class="form-control">
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
                            <div class="form-group">
                                <label for="inputPhone" class="col-sm-3 control-label">Mobile</label>

                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="mobile_no"
                                           value="<?= (set_value("mobile_no")) ? set_value("mobile_no") : $profile->mobile_no ?>"
                                           id="mobile_no"
                                           maxlength="10"
                                           placeholder="Enter Mobile" disabled>
                                    <?php echo form_error('mobile_no'); ?>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputEmail" class="col-sm-3 control-label">Address</label>
                                <div class="col-sm-9">
                                         <textarea class="form-control" name="address"
                                                   id="address"><?= (set_value("address")) ? set_value("address") : $profile->address ?></textarea>
                                    <?php echo form_error('address'); ?>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-9">
                                    <button type="submit" class="btn btn-info">Submit</button>
                                </div>
                            </div>
                            <?= form_close() ?>
                        </div>

                        <div class="tab-pane" id="chnagePass">
                            <?= form_open("assistant/profile/change_pass", array("class" => "form-horizontal")) ?>
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