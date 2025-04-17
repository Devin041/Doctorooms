<div class="my-3 my-md-5">
    <div class="container">

        <div class="page-title">
            Search Results for: <?= $this->input->get('q') ?>
        </div>
        <form class="form-inline" method="GET">
            <input type="hidden" name="q" value="<?= $this->input->get('q') ?>">
            <select name="city" id="" class="form-control">
                <option value="">--Select City</option>
                <?php foreach ($city as $c) { ?>
                    <option value="<?= $c->city_name ?>" <?= ($this->input->get('city') == $c->city_name) ? "selected" : "" ?>><?= $c->city_name . "(" . $c->state_name . ")" ?></option>
                <?php } ?>
            </select>
            <select name="type" id="" class="form-control">
                <option value="">--Select Doctor type</option>
                <?php foreach ($type as $t) { ?>
                    <option value="<?= $t->type ?>" <?= ($this->input->get('type') == $t->type) ? "selected" : "" ?>><?= $t->type ?></option>
                <?php } ?>
            </select>
            <button class="btn btn-default" type="submit">
                <i class="fa fa-filter"></i>
            </button>
        </form>
        <?php if ($doctors || $hospitals) { ?>

            <?php if ($doctors) { ?>
                <div class="page-header">
                    <h1 class="page-title">
                        Doctors
                    </h1>
                </div>
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
            <?php } ?>
            <?php if ($hospitals) { ?>
                <div class="page-header">
                    <h1 class="page-title">
                        Hospitals
                    </h1>
                </div>
                <div class="row row-cards row-deck">
                    <?php foreach ($hospitals as $hospital) { ?>
                        <div class="col-sm-6 col-xl-3">
                            <div class="card card-profile">
                                <div class="card-header"
                                     style="background-image: url(<?= base_url() ?>assets/images/hospital_background.jpg); opacity: 0.5;">
                                </div>
                                <div class="card-body text-center">
                                    <img class="card-profile-img avatar-xxl"
                                         src="<?= base_url() ?>upload/profile/<?= $hospital->profile_img ?>">
                                    <h3 class="mb-3"><?= $hospital->hospital_name ?></h3>
                                    <p class="mb-4">
                                        <?= $hospital->city ?>
                                    </p>
                                    <a href="<?= base_url() ?>hospitals/view/<?= $hospital->id ?>"
                                       class="btn btn-outline-primary btn-sm">
                                        <span class="fa fa-id-badge"></span> Profile
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            <?php } ?>
        <?php } else { ?>
            <div class="row row-cards row-deck">
                <div class="col-sm-12 col-xl-12">

                    <div class="card-body d-flex flex-column" style="margin-top: 50px; margin-bottom: 50px;">
                        <center>
                            <h5><a>Oops!</a></h5>
                            <div class="text-muted"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> did not
                                match any result.
                            </div>
                        </center>
                    </div>

                </div>
            </div>
        <?php } ?>
        <ul class="pagination">
        </ul>
    </div>
</div>
