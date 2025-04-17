<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Receptionist
            <small>Manage Receptionist from here</small>
        </h1>
    </section>

    <section class="content">
        <?php if ($receptionist) { ?>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Receptionist details</h3>
                        </div>
                        <div class="box-body">
                            <dl class="dl-horizontal">
                                <dd><img style="height: 150px; width: 150px;"
                                         src="<?= base_url() ?>upload/profile/<?= $receptionist->profile_img ?>"
                                         class="img-circle" alt="User Image"></dd>
                                <br>
                                <dt>Name</dt>
                                <dd><?= $receptionist->name ?></dd>

                                <dt>Gender</dt>
                                <dd><?= $receptionist->gender ?></dd>

                                <dt>Email</dt>
                                <dd><?= $receptionist->email ?></dd>

                                <dt>Mobile Number</dt>
                                <dd><?= $receptionist->mobile_no ?></dd>

                                <dt>Address</dt>
                                <dd><?= $receptionist->address ?></dd>
                                <br>
                                <dt>Action</dt>
                                <dd>
                                    <a href="<?= base_url("doctor/receptionist/edit/" . $receptionist->id) ?>"
                                       class="btn btn-primary btn-sm"><span class="fa fa-pencil"></span></a>

                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
        <?php } else { ?>
            <div class="row">
                <div class="col-sm-12">
                    <div style="font-size: 40px; opacity: 0.5;">
                        <center>
                            <i class="fa fa-exclamation-circle fa-5x"></i>
                            <br>
                            No Receptionist yet<br>
                        </center>
                    </div>
                    <center>
                        <a href="<?= base_url("doctor/receptionist/create") ?>" class="btn btn-success">Create</a>
                    </center>
                </div>
            </div>
        <?php } ?>
    </section>
</div>