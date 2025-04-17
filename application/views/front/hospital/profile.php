<div class="my-3 my-md-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="media">
                            <span class="avatar avatar-xxl mr-5"
                                  style="background-image: url(<?= base_url() ?>upload/profile/<?= $hospital->profile_img ?>)"></span>
                            <div class="media-body">
                                <h4 class="m-0"> <?= $hospital->name ?></h4>

                                <p class="text-muted mb-0"><?= $hospital->city . ", " . $hospital->state ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Navigation</h3>
                    </div>
                    <div class="card-body">
                        <iframe src="https://maps.google.com/maps?q=<?= $hospital->lat ?>,<?= $hospital->longi ?>&hl=es;z=13&output=embed"
                                frameborder="0" style="border:0; width: 100%; height: 200px;"
                                allowfullscreen></iframe>
                    </div>
                    <div class="card-body">
                        <div class="media mb-5">
                            <div class="media-body">
                                <h5><?= $hospital->hospital_name ?></h5>
                                <address class="text-muted small">
                                    <?= $hospital->address ?>,<br>
                                    <?= $hospital->city ?>,
                                    <?= $hospital->state ?>
                                </address>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                <div class="h6">Email</div>
                                <p><a href="mailto:<?= $hospital->email ?>"><?= $hospital->email ?></a></p>
                            </div>
                            <div class="col-6">
                                <div class="h6">Phone</div>
                                <p><?= $hospital->contact_no ?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <ul class="list-group card-list-group">
                        <li class="list-group-item py-5">
                            <div class="media">
                                <div class="media-body">
                                    <div class="media-heading">
                                        <h5>Doctors
                                            <?php if ($schedule) { ?>
                                                <a href="<?= base_url() ?>upload/schedule_docs/<?= $schedule[0]->file_name ?>"
                                                   style="margin-top: -5px;" class="pull-right btn-sm btn-success"
                                                   target="_blank"><i class="fa fa-cloud-download"></i> Get Doctor
                                                    Schedule</a>
                                            <?php } ?>
                                        </h5>

                                    </div>
                                    <div>
                                        <div class="row row-cards row-deck">
                                            <?php foreach ($doctors as $key) { ?>
                                                <div class="col-sm-4">
                                                    <div class="card card-profile">
                                                        <div class="card-header"
                                                             style="background-image: url(<?= base_url() ?>assets/images/doctor_backgraound.jpeg); opacity: 0.5;">
                                                        </div>
                                                        <div class="card-body text-center">
                                                            <img class="card-profile-img"
                                                                 src="<?= base_url() ?>upload/profile/<?= $key->profile_img ?>">
                                                            <h3 class="mb-3">Dr. <?= $key->name ?></h3>
                                                            <p class="mb-4">
                                                                <?= $key->doctor_type ?>
                                                            </p>
                                                            <a href="<?= base_url() ?>doctors/view/<?= $key->id ?>"
                                                               class="btn btn-outline-primary btn-sm">
                                                                <span class="fa fa-id-badge"></span> Profile
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php } ?>
                                        </div>
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
                                        <?php if ($hospital->gallary) {
                                            $pic = json_decode($hospital->gallary);
                                            foreach ($pic as $p) { ?>
                                                <a href="<?= base_url() ?>upload/gallery/<?= $p ?>" target="_blank"><img
                                                            src="<?= base_url() ?>upload/gallery/<?= $p ?>" width="150"
                                                            class="thumbnail"></a>
                                            <?php }
                                        } else { ?>
                                            <span class="text-muted">No images</span>
                                        <?php } ?>
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
