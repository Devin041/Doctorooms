<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Assistant Doctor Profile
        </h1>

    </section>

    <!-- Main content -->
    <section class="content">

        <div class="row">
            <div class="col-md-3">

                <!-- Profile Image -->
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle"
                             src="<?= base_url() ?>upload/profile/<?= $profile->ass_profile_img ?>"
                             alt="User profile picture">
                        <h3 class="profile-username text-center"><?= $profile->ass_name; ?></h3>
                        <h5 class="text-center">An Assitant of <a href="<?=base_url('admin/doctor/profile_view?id=').$doctor->id?>" data-toggle="tooltiip" title="click to view" style="color: #0d6aad"> <strong><?=$doctor->name?></strong></a></h5>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->

                <!-- About Me Box -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Contact Detail</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <strong><i class="fa fa-map-marker margin-r-5"></i> Address</strong>

                        <p class="text-muted"><?= $profile->address ?></p>

                        <hr>
                        <strong><i class="fa fa-mobile margin-r-5"></i>Mobile Number</strong>
                        <p>+91 <?= $profile->ass_mobile_no ?></p>
                        <hr>
                        <strong><i class="fa fa-envelope margin-r-5"></i>Email</strong>
                        <p><?= $profile->ass_email ?></p>
                        <hr>
                        <strong><i class="fa fa-file margin-r-5"></i>Registration Date</strong>
                        <p><?php
                            $date = date_create($profile->created_at);
                            echo date_format($date, 'd-M-Y');
                            ?></p>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#activity" data-toggle="tab">Personal Detail</a></li>
                    </ul>

                    <div class="tab-content">
                        <div class="active tab-pane" id="activity">
                            <!-- Post -->
                            <div class="post">
                                <div class="user-block">
                                    <h4>About Me</h4>
                                </div>
                                <!-- /.user-block -->
                                <p style="text-align:justify;">
									&ensp;<?= $profile->description ?>
								</p>
                            </div>

                            <!-- Post -->
                        </div>
                    </div>
                    <!-- /.tab-content -->
                </div>
                <!-- /.nav-tabs-custom -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
