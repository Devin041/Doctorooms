<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Assistant
            <small>Manage Assistant from here</small>
        </h1>
    </section>

    <section class="content">
        <?php if ($assistant) { ?>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Assistant details</h3>
                        </div>
                        <div class="box-body">
                            <dl class="dl-horizontal">
                                <dd><img style="height: 150px; width: 150px;"
                                         src="<?= base_url() ?>upload/profile/<?= $assistant->profile_img ?>"
                                         class="img-circle" alt="User Image"></dd>
                                <br>
                                <dt>Name</dt>
                                <dd><?= $assistant->name ?></dd>

                                <dt>Gender</dt>
                                <dd><?= $assistant->gender ?></dd>

                                <dt>Email</dt>
                                <dd><?= $assistant->email ?></dd>

                                <dt>Mobile Number</dt>
                                <dd><?= $assistant->mobile_no ?></dd>

                                <dt>Address</dt>
                                <dd><?= $assistant->address ?></dd>

                                <dt>Address</dt>
                                <dd><?= $assistant->description ?></dd>
                                <br>
                                <dt>Action</dt>
                                <dd>
                                    <a href="<?= base_url("doctor/assistant/edit/" . $assistant->id) ?>"
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
                            No Assistant yet<br>
                        </center>
                    </div>
                    <center>
                        <a href="<?= base_url("doctor/assistant/create") ?>" class="btn btn-success">Create</a>
                    </center>
                </div>
            </div>
        <?php } ?>
    </section>
</div>