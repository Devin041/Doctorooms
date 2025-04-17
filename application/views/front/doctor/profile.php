<div class="my-3 my-md-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="media">
                            <span class="avatar avatar-xxl mr-5"
                                  style="background-image: url(<?= base_url() ?>upload/profile/<?= $doctor->profile_img ?>)"></span>
                            <div class="media-body">
                                <h4 class="m-0">Dr. <?= $doctor->name ?></h4>

                                <p class="text-muted mb-0"><?= $doctor->doctor_type ?></p>

                                <ul class="social-links list-inline mb-0 mt-2">
                                    <li class="list-inline-item"><h2><span
                                                    class="fa fa-star"></span> <?= $doctor_average_rating ?>/5</h2>
                                    </li>
                                </ul>
                                <ul class="social-links list-inline mb-0 mt-0">
                                    <li class="list-inline-item"><span class="fa fa-users"></span></li>
                                    <li class="list-inline-item"><?= $doctor_total_rate_user ?> Total</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php if ($user) { ?>
                        <?php if ($user->role == PATIENT) { ?>
                            <div class="card-body">
                                <div class="media">
                            <span class="mr-5" style="margin-top: 21px;">
                                <h3>Rate us:</h3>
                            </span>
                                    <div class="media-body">
                                        <ul class="social-links list-inline mb-0 mt-2 pull-right">
                                            <div class="rating">
                                                <input type="radio" id="star10" name="rating"
                                                       value="5" <?= ($my_rating && $my_rating->star == 5) ? "checked" : "" ?>/>
                                                <label for="star10" title="Very Good">5 stars</label>

                                                <input type="radio" id="star9" name="rating"
                                                       value="4" <?= ($my_rating && $my_rating->star == 4) ? "checked" : "" ?>/>
                                                <label for="star9" title="Good!">4 stars</label>

                                                <input type="radio" id="star8" name="rating"
                                                       value="3" <?= ($my_rating && $my_rating->star == 3) ? "checked" : "" ?>/>
                                                <label for="star8" title="Pretty good">3 stars</label>

                                                <input type="radio" id="star7" name="rating"
                                                       value="2" <?= ($my_rating && $my_rating->star == 2) ? "checked" : "" ?>/>
                                                <label for="star7" title="Not Bad">2 stars</label>

                                                <input type="radio" id="star6" name="rating"
                                                       value="1" <?= ($my_rating && $my_rating->star == 1) ? "checked" : "" ?>/>
                                                <label for="star6" title="Bad">1 star</label>
                                            </div>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    <?php } ?>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Navigation</h3>
                    </div>
                    <div class="card-body">
                        <?php if ($hospital) { ?>
                            <iframe src="https://maps.google.com/maps?q=<?= $hospital->lat ?>,<?= $hospital->longi ?>&hl=es;z=13&output=embed"
                                    frameborder="0" style="border:0; width: 100%; height: 200px;"
                                    allowfullscreen></iframe>

                        <?php } else { ?>
                            <iframe src="https://maps.google.com/maps?q=<?= $doctor->lat ?>,<?= $doctor->longi ?>&hl=es;z=13&output=embed"
                                    frameborder="0" style="border:0; width: 100%; height: 200px;"
                                    allowfullscreen></iframe>
                        <?php } ?>
                    </div>
                    <?php if ($hospital) { ?>
                        <div class="card-body">
                            <div class="media mb-5">
                                <div class="media-body">
                                    <h5>
                                        <a href="<?= base_url() ?>hospitals/view/<?= $doctor->hospital_id ?>"><?= $hospital->hospital_name ?></a>
                                    </h5>
                                    <address class="text-muted small">
                                        <?= $hospital->address ?>,<br>
                                        <?= $hospital->city ?>,
                                        <?= $hospital->state ?>
                                    </address>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                <div class="h6">Fees</div>
                                <p>Rs. <?= $doctor->fees ?></p>
                                <div class="h6">Emergency charge</div>
                                <p>Rs. <?= ($doctor->emergency_charge) ? $doctor->emergency_charge : "-" ?></p>
                            </div>
                            <!--                            <div class="col-6">-->
                            <!--                                <div class="h6">Time</div>-->
                            <!--                                <p>10:00 AM to 7:00 PM</p>-->
                            <!--                            </div>-->
                            <div class="col-6">
                                <div class="h6">Email</div>
                                <p><a href="mailto:xyz@gmail.com"><?= $doctor->email ?></a></p>
                            </div>
                            <div class="col-6">
                                <div class="h6">Phone</div>
                                <p><?= $doctor->phone_no ?></p>
                            </div>
                        </div>
                        <div class="h6">Description</div>
                        <p><?= $doctor->description ?></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header">
                        <h4>Personal Detail</h4>
                        <div class="float-right ml-auto">
                            <a href="<?= base_url('book/doctor/' . $doctor->id) ?>" class="btn btn-primary btn-sm">Appoint
                                Now</a>
                        </div>
                    </div>
                    <ul class="list-group card-list-group">
                        <li class="list-group-item py-5">
                            <div class="media">
                                <div class="media-body">
                                    <div class="media-heading">
                                        <h5>Overview & Description</h5>
                                    </div>
                                    <div>
                                        <?= $doctor->description ?>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="list-group-item py-5">
                            <div class="media">

                                <div class="media-body">
                                    <div class="media-heading">
                                        <h5>Specialization</h5>
                                    </div>
                                    <div>
                                        <?php if ($doctor->specialization) { ?>
                                            <?php foreach (json_decode($doctor->specialization) as $ds) { ?>
                                                <label class="tag tag-gray"><?= $ds ?></label>
                                            <?php } ?>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="list-group-item py-5">
                            <div class="media">

                                <div class="media-body">
                                    <div class="media-heading">
                                        <h5>Award & Recognition</h5>
                                    </div>
                                    <div>
                                        <?= $doctor->award_and_recognition ?>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="list-group-item py-5">
                            <div class="media">

                                <div class="media-body">
                                    <div class="media-heading">
                                        <h5>Education</h5>
                                    </div>
                                    <div>
                                        <?= $doctor->eduction ?>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="list-group-item py-5">
                            <div class="media">

                                <div class="media-body">
                                    <div class="media-heading">
                                        <h5>Registration Detail</h5>
                                    </div>
                                    <div>
                                        <?= $doctor->registration_detail ?>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item py-5">
                            <div class="media">
                                <div class="media-body">
                                    <div class="media-heading">
                                        <h5>Gallery</h5>
                                    </div>
                                    <div>
                                        <?php if ($doctor->photos) {
                                            $pic = json_decode($doctor->photos);
                                            foreach ($pic as $p) { ?>
                                                <a href="<?= base_url() ?>upload/gallery/<?= $p ?>" target="_blank"><img
                                                            src="<?= base_url() ?>upload/gallery/<?= $p ?>" width="150"
                                                            class="thumbnail"></a>
                                            <?php }
                                        } ?>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    requirejs(['jquery'], function ($) {
        $("input[name='rating']").click(function () {
            var rat = $('input[name=rating]:checked').val();
            var doctor = <?=$doctor->id?>;
            var patient = <?=$user->id?>;
            $.post("<?=base_url('api/rate_us')?>", {patient: patient, doctor: doctor, star: rat}, function (result) {
                if (result.success) {
                    swal(result.success, {
                        icon: "success",
                    });
                } else {
                    swal(result.error, {
                        icon: "error",
                    });
                }
            });
        });
    });
</script>