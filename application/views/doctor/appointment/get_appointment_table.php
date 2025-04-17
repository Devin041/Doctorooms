

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
						<button href="<?= base_url('doctor/appointment/approve/' . $appointment->id) ?>"
						   class="btn btn-primary btn-sm" data-toggle="tooltip"
						   title="Approved" onclick="approve(<?=$appointment->id?>)"><span
								class="fa fa-thumbs-o-up"></span></button>

						<button href="<?= base_url('doctor/appointment/extend/' . $appointment->id) ?>"
						   class="btn btn-info btn-sm" data-toggle="tooltip"
						   title="Extend" onclick="extend(<?=$appointment->id?>)"><span
								class="fa fa-arrow-right"></span></button>

						<!--                                            <a href="<?//= base_url('doctor/appointment/cancel/' . $appointment->id) ?>
<!--                                               class="btn btn-danger btn-sm" data-toggle="tooltip"-->
						<!--                                               title="Cancel" onclick="return conformCancel(this, event)"><span-->
						<!--                                                        class="fa fa-close"></span></a>-->

					<?php } elseif ($appointment->status == EXTEND) { ?>
						<button href="<?= base_url('doctor/appointment/approve/' . $appointment->id) ?>"
						   class="btn btn-primary btn-sm" data-toggle="tooltip"
						   title="Approved" onclick="approve(<?=$appointment->id?>)"><span
								class="fa fa-thumbs-o-up"></span></button>
						<!--                                            <a href="<?//= base_url('doctor/appointment/cancel/' . $appointment->id) ?>
<!--                                               class="btn btn-danger btn-sm" data-toggle="tooltip"-->
						<!--                                               title="Cancel" onclick="return conformCancel(this, event)"><span-->
						<!--                                                        class="fa fa-close"></span></a>-->

					<?php } elseif ($appointment->status == APPROVE) { ?>
						<button href="<?= base_url('doctor/appointment/visited/' . $appointment->id) ?>"
						   class="btn btn-success btn-sm" data-toggle="tooltip"
						   title="Visited" onclick="visited(<?=$appointment->id?>)"><span
								class="fa fa-check"></span></button>
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

<script>
	$(function () {
		$('.dttable').DataTable();
	});

</script>
