<div class="content-wrapper">
    <section class="content-header">
        <h1>
            My Appointments
            <small>Manage Appointments from here</small>
            <div class="pull-right">
            </div>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Appointment List</h3>
                        <div class="box-tools">
                            <form method="GET">
                                <div class="form-group">
                                    <select id="st" name="status" onchange="changeStatus(this)" class="form-control input-sm">
                                        <option value="<?= APPROVE ?>" <?= ($this->input->get('status') == APPROVE) ? "selected" : "" ?>><?= APPROVE ?></option>
                                        <option value="<?= VISITED ?>" <?= ($this->input->get('status') == VISITED) ? "selected" : "" ?>><?= VISITED ?></option>
                                        <option value="<?= REJECTED ?>" <?= ($this->input->get('status') == REJECTED) ? "selected" : "" ?>><?= REJECTED ?></option>
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
                            </tr>
                            </thead>
                            <tbody>
                            <?php $no = 0;
                            foreach ($appointments as $appointment) { ?>
                                <tr>
                                    <td><?= ++$no ?></td>
                                    <td>
                                        <a href="<?= base_url('assistant/appointment/show/' . $appointment->id) ?>">
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
                                    <td>
                                        <?= $appointment->petient_name ?>
                                    </td>
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
                    <div class="box-footer">
                        <ul class="pagination pagination-sm no-margin pull-right">
                            <? //$links?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>


<script>
	$(document).ready( function () {
		//$('#check_emergency').load('appointment/check_emergency');
		setInterval(function () {
			var status=$("#st").val();
			$('#ajaxTable').load('appointment/get_appointment_table?status='+status+'');
			//$('#check_emergency').load('appointment/check_emergency');
		},10000);
	});
	function changeStatus(el) {
		var status= el.value;
		$('#ajaxTable').load('appointment/get_appointment_table?status='+status+'');
	}

	function visited(id) {
		console.log(id);
		$.get('appointment/visited/'+id+'', function(data, status){

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
