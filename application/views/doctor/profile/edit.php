<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Profile
            <small>Update profile</small>
            <div class="pull-right">
                <a href="<?= base_url("doctor/profile") ?>" class="btn btn-danger btn-sm"><span
                            class="fa fa-times"></span> Cancel</a>
            </div>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="box box-primary">
                    <?= form_open_multipart("doctor/profile/update", array("role" => "form")) ?>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Name</label><span class="text-red">*</span>
                                    <input type="text" name="name"
                                           value="<?= (set_value("name")) ? set_value("name") : $profile->name ?>"
                                           class="form-control" id="name">
                                    <?php echo form_error('name'); ?>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Gender</label>
                                    <select class="form-control" name="gender">
                                        <option <?= ($profile->gender == "Male") ? "selected" : "" ?>>Male</option>
                                        <option <?= ($profile->gender == "Female") ? "selected" : "" ?>>Female</option>
                                        <option <?= ($profile->gender == "Other") ? "selected" : "" ?>>Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>Doctor Type</label><span class="text-red">*</span>
                                    <select name="doctor_type" class="form-control" id="doctor_type">
                                        <option value="">--Select Doctor Type--</option>
                                        <?php foreach ($doctor_type as $item) { ?>
                                            <option value="<?= $item->type ?>" <?= ($profile->doctor_type == $item->type) ? "selected" : "" ?>><?= $item->type ?></option>
                                        <?php } ?>
                                    </select>
                                    <?php echo form_error('doctor_type'); ?>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>Fees</label><span class="text-red">*</span>
                                    <input type="text" name="fees"
                                           value="<?= (set_value("fees")) ? set_value("fees") : $profile->fees ?>"
                                           class="form-control" id="fees">
                                    <?php echo form_error('fees'); ?>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>Emergency charge</label>
                                    <input type="text" name="emergency_charge"
                                           value="<?= (set_value("emergency_charge")) ? set_value("emergency_charge") : $profile->emergency_charge ?>"
                                           class="form-control" id="emergency_charge">
                                    <?php echo form_error('emergency_charge'); ?>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>Hospital Contact Number</label>
                                    <input type="text" class="form-control" name="contact_no"
                                           value="<?= (set_value("contact_no")) ? set_value("contact_no") : $profile->contact_no ?>">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Address</label><span class="text-red">*</span>
                                    <textarea name="address" class="form-control" id="address"
                                              rows="3"><?= (set_value("address")) ? set_value("address") : $profile->address ?></textarea>
                                    <?php echo form_error('address'); ?>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>State</label><span class="text-red">*</span>
                                    <select class="form-control" name="state" id="state">
                                        <option value="">--Select State--</option>
                                        <?php foreach ($state as $sta) { ?>
                                            <option value="<?= $sta->state_name ?>" <?= ($sta->state_name == $profile->state) ? "selected" : "" ?>><?= $sta->state_name ?></option>
                                        <?php } ?>
                                    </select>
                                    <?php echo form_error('state'); ?>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>City</label><span class="text-red">*</span>
                                    <select class="form-control" name="city" id="city">
                                        <option value="">--Select City--</option>
                                    </select>
                                    <?php echo form_error('city'); ?>

                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>Latitude</label>
                                    <input type="text" class="form-control" name="lat"
                                           value="<?= (set_value("lat")) ? set_value("lat") : $profile->lat ?>">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>Longitude</label>
                                    <input type="text" name="longi" class="form-control" id="longi"
                                           value="<?= (set_value("longi")) ? set_value("longi") : $profile->longi ?>">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Description</label><span class="text-red">*</span>
                                    <textarea name="description" class="form-control" id="description"
                                              rows="5"><?= (set_value("description")) ? set_value("description") : $profile->description ?></textarea>
                                    <?php echo form_error('description'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Specialization</label><br>
                                    <?php foreach ($dis_name as $dis) { ?>
                                        &nbsp
                                        <input type="checkbox" name="specialization[]"
                                               value="<?= $dis->dis_name ?>" <?php if ($profile->specialization) {
                                            $ds = json_decode($profile->specialization);
                                            for ($i = 0; $i < count($ds); $i++) {
                                                if ($dis->dis_name == $ds[$i]) {
                                                    echo 'checked';
                                                }
                                            }
                                        }
                                        ?> class="flat-red"/>

                                        <?= $dis->dis_name ?>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Award And Recognition</label>
                                    <textarea name="award_and_recognition" class="form-control"
                                              id="award_and_recognition"
                                              rows="5"><?= (set_value("award_and_recognition")) ? set_value("award_and_recognition") : $profile->award_and_recognition ?></textarea>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Eduction</label><span class="text-red">*</span>
                                    <textarea name="eduction" class="form-control" id="eduction"
                                              rows="5"><?= (set_value("eduction")) ? set_value("eduction") : $profile->eduction ?></textarea>
                                    <?php echo form_error('eduction'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Experience</label>
                                    <textarea name="experience" class="form-control" id="experience"
                                              rows="5"><?= (set_value("experience")) ? set_value("experience") : $profile->experience ?></textarea>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Registration Detail</label>
                                    <textarea name="registration_detail" class="form-control"
                                              id="registration_detail"
                                              rows="5"><?= (set_value("registration_detail")) ? set_value("registration_detail") : $profile->registration_detail ?></textarea>
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
    $(document).ready(function () {
        loadCity();
        $("#state").change(function () {
            loadCity();
        });
    });

    function loadCity() {
        var state = $("#state").val();
        $('#city').find('option:not(:first)').remove();
        $.post("<?=base_url('doctor/profile/city_by_state')?>", {state_name: state}, function (result) {
            result.forEach(function (city) {
                var profileCity = "<?=$profile->city?>";
                var isSelected = profileCity == city.city_name ? "selected" : "";
                var elem = $("<option value='" + city.city_name + "' " + isSelected + ">" + city.city_name + "</option>");
                $("#city").append(elem);
            });
        });
    }
</script>
