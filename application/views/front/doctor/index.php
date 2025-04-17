<div class="my-3 my-md-5">
    <div class="container">
        <div class="page-header">
            <h1 class="page-title">
                Doctors
            </h1>
        </div>
        <?php if ($doctors) { ?>
            <div class="row row-cards row-deck">
                <?php foreach ($doctors as $key) { ?>
                    <div class="col-sm-6 col-xl-3">
                        <div class="card card-profile">
                            <div class="card-header"
                                 style="background-image: url(<?= base_url() ?>assets/images/doctor_backgraound.jpeg); opacity: 0.5;">
                            </div>
                            <div class="card-body text-center">
                                <img class="card-profile-img avatar-xxl"
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
        <?php } else { ?>
            <div class="row row-cards row-deck">
                <div class="col-sm-12 col-xl-12">

                    <div class="card-body d-flex flex-column" style="margin-top: 50px; margin-bottom: 50px;">
                        <center>
                            <h5><a>Oops!</a></h5>
                            <div class="text-muted"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> No data
                            </div>
                        </center>
                    </div>

                </div>
            </div>
        <?php } ?>
        <ul class="pagination">
            <?= $links ?>
        </ul>
    </div>
</div>
