<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Dashboard
			<small>Receptionist</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
	</section>

    <section class="content">
        <!-- Info boxes -->
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12">
                <a href="<?=base_url('receptionist/appointment')?>" class="info-box">
                    <span class="info-box-icon bg-yellow"><i class="fa fa-check-circle-o"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Today Pending Appointment</span>
                        <span class="info-box-number"><?= $today_pending_appointment ?></span>
                    </div>
                    <!-- /.info-box-content -->
                </a>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-4 col-sm-6 col-xs-12">
                <a href="<?=base_url('receptionist/appointment?status='.VISITED)?>" class="info-box">
                    <span class="info-box-icon bg-green"><i class="fa fa-check-circle"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">TODAY VISITED APPOINTMENT </span>
                        <span class="info-box-number"><?= $today_visited_appointment ?></span>
                    </div>
                    <!-- /.info-box-content -->
                </a>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->

            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>

            <div class="col-md-4 col-sm-6 col-xs-12">
                <a href="<?=base_url('receptionist/post')?>" class="info-box">
                    <span class="info-box-icon bg-red"><i class="fa fa-rss"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">My Blogs</span>
                        <span class="info-box-number"><?= $my_blog ?></span>
                    </div>
                    <!-- /.info-box-content -->
                </a>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <div class="row">
            <?php if ($hospital) { ?>
                <div class="col-md-4">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">My Hospital</h3>
                        </div>
                        <div class="box-body box-profile">
                            <center>
                                <div><i class="fa fa-hospital-o fa-4x"></i></div>
                                <h3 class="profile-username text-center"><?= $hospital->hospital_name ?></h3>
                                <p>
                                    <?= $hospital->address ?><br>
                                    <?= $hospital->city ?>, <?= $hospital->state ?><br>
                                    Contact number: <?= $hospital->contact_no ?>
                                </p>

                            </center>
                        </div>
                        <!-- /.box-body -->
                    </div>
                </div>
            <?php } ?>
            <div class="col-md-4">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">My Doctor</h3>
                    </div>
                    <div class="box-body box-profile">
                        <center>
                            <img class="profile-user-img img-responsive img-circle" src="<?=base_url()?>upload/profile/<?=$doctor->profile_img?>" alt="User profile picture">
                            <h3 class="profile-username text-center">Dr. <?= $doctor->name ?></h3>
                            <p>
                                <?= $doctor->address ?><br>
                                <?= $doctor->city ?>, <?= $doctor->state ?><br>
                                Contact number: <?= $doctor->contact_no ?>
                            </p>

                        </center>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Latest booked 5 appointment </h3>
                    </div>
                    <div class="box-body">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Appointment ID</th>
                                <th>Appointment Date</th>
                                <th>Who has booked</th>
                                <th>Patient Name</th>
                                <th>Disease</th>
                                <th>Status</th>

                            </tr>
                            </thead>
                            <tbody>
                            <?php $no = 0;
                            foreach ($appointments as $appointment) { ?>
                                <tr>
                                    <td><?= ++$no ?></td>
                                    <td>
                                        <a href="<?= base_url('receptionist/appointment/show/' . $appointment->id) ?>">
                                            <?= $appointment->appointment_no ?>
                                        </a>
                                    </td>
                                    <td><?= format_date($appointment->booking_date) ?></td>
                                    <td>
                                        <?php if ($appointment->user_id) { ?>
                                            <?= $appointment->name ?>
                                            <br>
                                            <small class="text-muted"><?= $appointment->mobile_no ?>
                                                | <?= $appointment->email ?></small>
                                        <?php } else { ?>
                                            <?= BY_SELF ?>
                                        <?php } ?>
                                    </td>
                                    <td><?= $appointment->petient_name ?></td>
                                    <td><?= $appointment->disease ?></td>
                                    <td>
                                        <?php
                                        if ($appointment->status == PENDING) {
                                            $cls = "label-warning";
                                        } elseif ($appointment->status == APPROVE) {
                                            $cls = "label-primary";
                                        } elseif ($appointment->status == EXTEND) {
                                            $cls = "label-info";
                                        } elseif ($appointment->status == VISITED) {
                                            $cls = "label-success";
                                        } else {
                                            $cls = "label-danger";
                                        }
                                        ?>
                                        <label class="label <?= $cls ?>"><?= $appointment->status ?></label>
                                    </td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Today Appointments</h3>
                    </div>
                    <div class="box-body">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Appointment ID</th>
                                <th>Appointment Date</th>
                                <th>Who has booked</th>
                                <th>Patient Name</th>
                                <th>Disease</th>
                                <th>Status</th>

                            </tr>
                            </thead>
                            <tbody>
                            <?php if ($today_appointments) { ?>
                                <?php $no = 0;
                                foreach ($today_appointments as $appointment) { ?>
                                    <tr>
                                        <td><?= ++$no ?></td>
                                        <td>
                                            <a href="<?= base_url('receptionist/appointment/show/' . $appointment->id) ?>">
                                                <?= $appointment->appointment_no ?>
                                            </a>
                                        </td>
                                        <td><?= format_date($appointment->booking_date) ?></td>
                                        <td>
                                            <?php if ($appointment->user_id) { ?>
                                                <?= $appointment->name ?>
                                                <br>
                                                <small class="text-muted"><?= $appointment->mobile_no ?>
                                                    | <?= $appointment->email ?></small>
                                            <?php } else { ?>
                                                <?= BY_SELF ?>
                                            <?php } ?>

                                        </td>
                                        <td><?= $appointment->petient_name ?></td>
                                        <td><?= $appointment->disease ?></td>
                                        <td>
                                            <?php
                                            if ($appointment->status == PENDING) {
                                                $cls = "label-warning";
                                            } elseif ($appointment->status == APPROVE) {
                                                $cls = "label-primary";
                                            } elseif ($appointment->status == EXTEND) {
                                                $cls = "label-info";
                                            } elseif ($appointment->status == VISITED) {
                                                $cls = "label-success";
                                            } else {
                                                $cls = "label-danger";
                                            }
                                            ?>
                                            <label class="label <?= $cls ?>"><?= $appointment->status ?></label>
                                        </td>
                                    </tr>
                                <?php } ?>
                            <?php } else { ?>
                                <tr>
                                    <td colspan="7" align="center">No data</td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
