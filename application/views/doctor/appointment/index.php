<div class="content-wrapper">
    <section class="content-header">
        <h1>
            My Appointments
            <small>Manage Appointments from here</small>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-primary" >
                    <div class="box-header with-border">
                        <h3 class="box-title">Appointment List</h3>
                        <div class="box-tools" >
                            <form method="GET">
                                <div class="form-group">
                                    <select id="st" onchange="changeStatus(this)" name="status" class="form-control input-sm">
                                        <option value="<?= PENDING ?>" <?= ($this->input->get('status') == PENDING) ? "selected" : "" ?>><?= PENDING ?></option>
                                        <option value="<?= EXTEND ?>" <?= ($this->input->get('status') == EXTEND) ? "selected" : "" ?>><?= EXTEND ?></option>
                                        <option value="<?= APPROVE ?>" <?= ($this->input->get('status') == APPROVE) ? "selected" : "" ?>><?= APPROVE ?></option>
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
                    <div class="box-body" id="ajaxTable">
                        <table class="table table-bordered dttable">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Appointment ID</th>
                                <th>Appointment Date</th>
                                <th>Who has booked</th>
                                <th>Patient Name</th>
                                <th>Disease</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
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
                                    <td>
                                        <?php if ($appointment->status == PENDING) { ?>
                                            <a href="<?= base_url('doctor/appointment/approve/' . $appointment->id) ?>"
                                               class="btn btn-primary btn-sm" data-toggle="tooltip"
                                               title="Approved"><span
                                                        class="fa fa-thumbs-o-up"></span></a>

                                            <a href="<?= base_url('doctor/appointment/extend/' . $appointment->id) ?>"
                                               class="btn btn-info btn-sm" data-toggle="tooltip"
                                               title="Extend"><span
                                                        class="fa fa-arrow-right"></span></a>

<!--                                            <a href="<?//= base_url('doctor/appointment/cancel/' . $appointment->id) ?>
<!--                                               class="btn btn-danger btn-sm" data-toggle="tooltip"-->
<!--                                               title="Cancel" onclick="return conformCancel(this, event)"><span-->
<!--                                                        class="fa fa-close"></span></a>-->

                                        <?php } elseif ($appointment->status == EXTEND) { ?>
                                            <a href="<?= base_url('doctor/appointment/approve/' . $appointment->id) ?>"
                                               class="btn btn-primary btn-sm" data-toggle="tooltip"
                                               title="Approved"><span
                                                        class="fa fa-thumbs-o-up"></span></a>
<!--                                            <a href="<?//= base_url('doctor/appointment/cancel/' . $appointment->id) ?>
<!--                                               class="btn btn-danger btn-sm" data-toggle="tooltip"-->
<!--                                               title="Cancel" onclick="return conformCancel(this, event)"><span-->
<!--                                                        class="fa fa-close"></span></a>-->

                                        <?php } elseif ($appointment->status == APPROVE) { ?>
                                            <a href="<?= base_url('doctor/appointment/visited/' . $appointment->id) ?>"
                                               class="btn btn-success btn-sm" data-toggle="tooltip"
                                               title="Visited"><span
                                                        class="fa fa-check"></span></a>
<!--                                            <a href="<?//= base_url('doctor/appointment/cancel/' . $appointment->id) ?>
<!--                                               class="btn btn-danger btn-sm" data-toggle="tooltip"-->
<!--                                               title="Cancel" onclick="return conformCancel(this, event)"><span-->
<!--                                                        class="fa fa-close"></span></a>-->
                                        <?php } else { ?>
                                            -
                                        <?php } ?>
                                    </td>
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
<script>
	$(document).ready( function () {
setInterval(function () {
	var status=$("#st").val();
$('#ajaxTable').load('appointment/get_appointment_table?status='+status+'');
},10000);
	});
	function changeStatus(el) {
var status= el.value;
		$('#ajaxTable').load('appointment/get_appointment_table?status='+status+'');
	}

    function visited(id) {
        console.log(id);
        $.get('<?=base_url()?>/doctor/appointment/visited/'+id+'', function(data, status){

            $("#st option[value=Visited]").attr('selected', 'selected');
            $('#st').trigger('change');
        });

    }
    function approve(id) {
        console.log(id);
        $.get("appointment/approve/"+id+"", function(data, status){
            $("#st option[value=Approve]").attr('selected', 'selected');
            $('#st').trigger('change');
        });
    }
    function extend(id) {
        console.log(id);
        $.get("appointment/extend/"+id+"", function(data, status){
            $("#st option[value=Extend]").attr('selected', 'selected');
            $('#st').trigger('change');
        });
    }
</script>
