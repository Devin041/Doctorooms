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
<script>
	$(function () {
		$('.dttable').DataTable();
	});

</script>
