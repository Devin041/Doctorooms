<div class="content-wrapper" style="min-height: 960px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <small>Hospital</small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Info boxes -->
        <div class="row">
            <a href="<?= base_url('hospital/doctor') ?>">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="fa fa-user-md"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">DOCTORS</span>
                            <span class="info-box-number"><?= $countdoc ?></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
            </a>
            <!-- /.col -->
            <a href="<?= base_url('hospital/blog') ?>">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-red"><i class="fa fa-file-o"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">POST</span>
                            <span class="info-box-number"><?= $countpost ?></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
            </a>
            <!-- /.col -->

            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>
            <a href="<?= base_url('hospital/appoinment') ?>">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green"><i class="fa fa-user"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Pending Appointment</span>
                            <span class="info-box-number"><?= $booking ?></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
            </a>
            <!-- /.col -->
            <a href="<?= base_url('hospital/appoinment') ?>">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-yellow"><i class="fa fa-hospital-o"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Today appointment</span>
                            <span class="info-box-number"><?= $bookingtoday ?></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
            </a>
            <!-- /.col -->
        </div>

        <!-- /.row -->

        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Doctors</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <?php foreach ($doctors as $doc) { ?>
                                <?php if ($doc->status != BLOCK) { ?>
                                <div class="col-md-4">
                                    <!-- Widget: user widget style 1 -->
                                    <div class="box box-widget widget-user">
                                        <!-- Add the bg color to the header using any of the bg-* classes -->
                                        <div class="widget-user-header bg-aqua-active">
                                            <h3 class="widget-user-username"><?= $doc->name ?></h3>
                                            <h5 class="widget-user-desc"><?= $doc->doctor_type ?></h5>
                                        </div>

                                        <div class="widget-user-image">
                                            <img class="img-circle"
                                                 src="<?= base_url() ?>upload/profile/<?= $doc->profile_img ?>"
                                                 alt="User Avatar">
                                        </div>
                                        <div class="box-footer">
                                            <div class="row">
                                                <div class="col-sm-6 border-right">
                                                    <div class="description-block">
                                                        <h5 class="description-header"><?= $doc->contact_no ?></h5>
                                                        <span class="description-text">Contact No</span>
                                                    </div>
                                                    <!-- /.description-block -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-sm-6 border-right">
                                                    <div class="description-block">
                                                        <h5 class="description-header"><?= $doc->email ?></h5>
                                                        <span class="description-text">Email</span>
                                                    </div>
                                                    <!-- /.description-block -->
                                                </div>
                                                <!-- /.col -->

                                                <!-- /.col -->
                                            </div>
                                            <!-- /.row -->
                                        </div>
                                    </div>
                                    <!-- /.widget-user -->
                                </div>
                                <!-- /.col -->
                            <?php } } ?>
                        </div>

                        <!-- /.row -->
                    </div>
                    <!-- ./box-body -->
                    <!-- /.box-footer -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <div class="row">
            <div class="col-md-12">

                <!-- /.box-body -->

                <!-- /.box -->

                <!-- BAR CHART -->
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Appointment Growth</h3>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                        class="fa fa-times"></i></button>
                        </div>
                    </div>
                    <div class="box-body chart-responsive">
                        <div class="chart" id="bar-chart">

                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
        <!-- /.box -->

    </section>
    <!-- /.content -->
</div>

