<?php if ($results) { ?>
	<?php $no = $offset;
	foreach ($results as $appointment) { ?>
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
