<div class="content-wrapper" style="min-height: 960px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1 >
            Dashboard
            <small>Doctor</small>
			<span class="pull-right">

		<label class="toggle">

			<input type="checkbox" id="check_emergency" <?php if ($is_emergency){ echo 'checked';}?>>
			<span class="toggle-switch"></span>
			<div class="x-shape"></div>
			<div class="v-shape"></div>
			<div class="bg"></div>
		</label>
			</span>
        </h1><br>

    </section>

    <!-- Main content -->
    <section class="content">




			<style>
				*{
					margin: 0;
					padding: 0;
					box-sizing: border-box;
				}
				body,html{
					height: 100%;
					width: 100%;
				}

				.bg{
					position: fixed;
					top: 0;
					left: 0;
					right: 0;
					bottom: 0;
					background-color: #ed1f24;
					z-index: -1;
					transition: background 0.5s linear;
				}
				input{
					display: none;
				}
				.toggle{
					width: 100px;
					height: 50px;
					background-color: #fff;
					border-radius: 35px;
					position: relative;
					cursor: pointer;
				}
				.toggle-switch:before{
					content: "";
					position: absolute;
					width: 40px;
					height: 40px;
					border-radius: 50%;
					background-color: #ed1f24;
					bottom: 5px;
					left: 5px;
					transition: 0.3s ease-in-out;
				}
				.toggle-switch:after{
					content: "";
					position: absolute;
					width: 40px;
					height: 40px;
					border-radius: 50%;
					background-color: #ed1f24;
					bottom: 5px;
					left: 5px;
					transition: 0.3s ease-in-out;
					cursor: pointer;
					transform: scale(0);
				}
				.x-shape:before{
					content: "";
					position: absolute;
					height: 30px;
					width: 5px;
					background-color: #fff;
					transform: rotate(-45deg) scale(1);
					left: 22px;
					bottom: 10px;
					transition: 0.3s cubic-bezier(1,0,0,1) 0.3s;
				}
				.x-shape:after{
					content: "";
					position: absolute;
					height: 30px;
					width: 5px;
					background-color: #fff;
					transform: rotate(45deg) scale(1);
					left: 22px;
					bottom: 10px;
					transition: 0.3s cubic-bezier(1,0,0,1) 0.3s;
				}


				.v-shape:before{
					content: "";
					position: absolute;
					border-right: 5px solid #fff;
					border-bottom: 5px solid #fff;
					transform: rotate(45deg) scale(0);
					transform-origin: center bottom;
					left: 59px;
					bottom: 18px;
					height: 20px;
					width: 10px;
					transition: 0.3s cubic-bezier(1,0,0,1) 0.3s;

				}
				input[type=checkbox]:checked + .toggle-switch:before{
					left: 55px;
					transform: scale(0);
					background-color: #0c426f;
				}
				input[type=checkbox]:checked + .toggle-switch:after{
					left: 55px;
					transform: scale(1);
					background-color: #0c426f;
				}
				input[type=checkbox]:checked ~ .bg{
					background-color: #0c426f;
				}
				input[type=checkbox]:checked ~ .x-shape:before{
					transform: rotate(-45deg) scale(0);
				}
				input[type=checkbox]:checked ~ .x-shape:after{
					transform: rotate(45deg) scale(0);
				}
				input[type=checkbox]:checked ~ .v-shape:before{
					transform: rotate(45deg) scale(1);
				}
			</style>



        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <a href="<?=base_url('doctor/appointment')?>" class="info-box">
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
            <div class="col-md-3 col-sm-6 col-xs-12">
                <a href="<?=base_url('doctor/appointment?status='.VISITED)?>" class="info-box">
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

            <div class="col-md-3 col-sm-6 col-xs-12">
                <a href="<?=base_url('doctor/profile')?>" class="info-box">
                    <span class="info-box-icon bg-aqua"><i class="fa fa-user-md"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">PROFILE RATING</span>
                        <span class="info-box-number"><span class="fa fa-star"></span> <?= $myprofile_rating ?>/5</span>
                    </div>
                    <!-- /.info-box-content -->
                </a>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <a href="<?=base_url('doctor/post')?>" class="info-box">
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
            <div class="col-md-<?= ($hospital) ? "9" : "12" ?>">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Latest Booked Appointment </h3>
						<div class="box-tools" >
							<form method="GET">
								<div class="form-group">
									<select id="st"  name="status" class="form-control input-sm">
										<option value="<?= PENDING ?>" <?= ($this->input->get('status') == PENDING) ? "selected" : "" ?>><?= PENDING ?></option>
										<option value="<?= EXTEND ?>" <?= ($this->input->get('status') == EXTEND) ? "selected" : "" ?>><?= EXTEND ?></option>
										<option value="<?= APPROVE ?>" <?= ($this->input->get('status') == APPROVE) ? "selected" : "" ?> selected><?= APPROVE ?></option>
										<option value="<?= VISITED ?>" <?= ($this->input->get('status') == VISITED) ? "selected" : "" ?>><?= VISITED ?></option>
										<option value="<?= REJECTED ?>" <?= ($this->input->get('status') == REJECTED) ? "selected" : "" ?>><?= REJECTED ?></option>
										<option value="All" <?= (isset($_GET['status']) && $_GET['status'] == "All") ? "selected" : "" ?>>
											All
											Appointment
										</option>
									</select>
								</div>
							</form>
						</div>
                    </div>
                    <div class="box-body">
                        <table class="table table-bordered table-responsive dttable" id="ajaxTable">
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
                            <?php if ($appointments) { ?>
                                <?php $no = 0;
                                foreach ($appointments as $appointment) { ?>
                                    <tr>
                                        <td><?= ++$no ?></td>
                                        <td>
                                            <a href="<?= base_url('doctor/appointment/show/' . $appointment->id) ?>">
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
                                                <?= BY_RECEPTIONIST ?>
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


                        </table><br>
						<button onclick="loadmore()" class="btn btn-primary pull-right">Load more</button>
						<input type="hidden" name="limit" id="limit" value="10"/>
						<input type="hidden" name="offset" id="offset" value="10"/>
                    </div>
                </div>
            </div>
            <?php if ($hospital) { ?>
                <div class="col-md-3">
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
        </div>
        <div class="row hidden">
            <div class="col-md-12">
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
                                            <a href="<?= base_url('doctor/appointment/show/' . $appointment->id) ?>">
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
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Search Appointment History</h3>
                    </div>
                    <br>
                    <div class="box-body">
                        <form  method="get" action="<?=base_url('doctor/appointment/history')?>" style="margin: -30px 0px 0px 220px;">
                            <div class="col-md-4">
                                <input type="text" placeholder="EnterAppointment ID" name="aptid" class="form-control">
                            </div>
                            <div class="col-md-1"><span>OR</span></div>
                            <div class="col-md-4">
                                <input type="number" placeholder="Enter Mobile Number" name="mobile" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-sm btn-success"><span class="fa fa-search"></span></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script>
	$('#check_emergency').change(function() {
		var emergency='';
		if($(this).is(':checked')){
			emergency=1;
		}
		else{
			emergency=0;
		}
		$.post('dashboard/change_emergency', {is_emergency: emergency}, function (data, status) {

			new PNotify({
				title: data[0],
				text: data[1],
				type: data[0],
				styling: 'bootstrap3',

			});
		});
	});

    function loadmore(){

        $.ajax({
            url:'<?=base_url("doctor/dashboard/loadmore")?>',
            data:{
                offset :$('#offset').val(),
                limit :$('#limit').val()
            },
			method:'GET',
            type:'json',
            success :function(data){
           var data=   JSON.parse(data);


                $('#ajaxTable tr:last').after(data.view);
                $('#offset').val(data.offset)
                $('#limit').val(data.limit)
                $('#st').val('All').trigger('change');
            }
        })
    }
$(document).ready( function(){

  //  $('#st').val('Approve').trigger('change');

    $("#st").on("change", function() {
    var value =$(this).val().toLowerCase();

    if(value != "all") {
        $("#ajaxTable tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    }
    else{
        $("#ajaxTable tr").show();
    }

});
    var t= $('#st').trigger('change');
    //console.log(t);
});

</script>
