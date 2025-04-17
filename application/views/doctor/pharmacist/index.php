<div class="content-wrapper">
    <section class="content-header">
        <h1>
			Pharmacist
            <small>Manage Pharmacist from here</small>
        </h1>
    </section>

    <section class="content">
        <?php if ($pharmacist) { ?>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Pharmacist details</h3>
                        </div>
                        <div class="box-body">
                            <dl class="dl-horizontal">
                                <dd><img style="height: 150px; width: 150px;"
                                         src="<?= base_url() ?>upload/profile/<?= $pharmacist->profile_img ?>"
                                         class="img-circle" alt="User Image"></dd>
                                <br>
                                <dt>Name</dt>
                                <dd><?= $pharmacist->name ?></dd>

                                <dt>Gender</dt>
                                <dd><?= $pharmacist->gender ?></dd>

                                <dt>Email</dt>
                                <dd><?= $pharmacist->email ?></dd>

                                <dt>Mobile Number</dt>
                                <dd><?= $pharmacist->mobile_no ?></dd>

                                <dt>Address</dt>
                                <dd><?= $pharmacist->address ?></dd>

                                <dt>Address</dt>
                                <dd><?= $pharmacist->description ?></dd>

								<dt>Drug Licence Number</dt>
								<dd><?= $pharmacist->dlno ?></dd>
                                <br>
                                <dt>Action</dt>
                                <dd>
                                    <a href="<?= base_url("doctor/pharmacist/edit/" . $pharmacist->id) ?>"
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
                            No Pharmacist yet<br>
                        </center>
                    </div>
                    <center>
                        <a href="<?= base_url("doctor/pharmacist/create") ?>" class="btn btn-success">Create</a>
                    </center>
                </div>
            </div>
        <?php } ?>
    </section>
</div>
