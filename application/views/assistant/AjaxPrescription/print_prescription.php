<table style="height: 80px; width: 850px" ; align="center">
	<tbody>
	<tr style="height: 64px;">
		<td style="width: 273px; height: 64px;">
			<?php $time=json_decode($settings[0]['time']) ?>
			<p><span style="color: #993300;"><strong style="font-size: 10px"><?= $settings[0]['time'] ?></strong></span>
			</p>
		</td>
<!--		<td style="width: 316px; height: 64px;" align="right"><span style="color: #993300;">Old / New No : <span-->
<!--					style="border-bottom: 1px solid #993300">001524564123</span></span></td>-->
	</tr>
	<tr style="height: 46px;">
		<?php if($settings[0]['logo'] !=""){?>
		<td style="width: 273px; height: 142px;" rowspan="3"><img height="100px" src="<?= base_url() ?>upload/p_logo/<?= $settings[0]['logo'] ?>"></td>
		<?php }else {
			?>
			<td style="width: 273px; height: 142px;"  rowspan="3"><h1 style="color: #993300; font-size: 36px"><?=$settings[0]['header'] ?></h1></td>

			<?php
		} ?>
		<td style="width: 316px; height: 46px;" align="right">

			<p><span style="color: #993300; font-size: 22px"><?= $doctor->name ?></span><br>
				<span style="color: #993300;"><?= $doctor->doctor_type ?></span>
			</p>
		</td>
	</tr>
	<tr style="height: 18px;">
		<td style="width: 316px; height: 18px;"><span style="color: #993300;"></span></td>
	</tr>
	<tr style="height: 0px;">
		<td style="width: 316px; height: 0px;" align="right">
			<p><strong><span style="color: #993300;font-size: 11px"><?= $doctor->address ?></span> <br>
					<span style="color: #993300;font-size: 11px">Phone No. <?= $doctor->phone_no ?></span></strong></p>
			<p><span style="color: #993300;"></p>
		</td>
	</tr>
	<tr>
		<td  colspan="2">Name : <?= $patient->petient_name ?>
			&nbsp;&nbsp;&nbsp; Gender : <?= $patient->gender ?>&nbsp;&nbsp;&nbsp; Age : <?= $patient->age ?> <span style="float: right">Appointment No. : <?= $patient->appointment_no ?></span></td>
	</tr>
	<tr style="height: 10px;">
		<td style="width: 273px; height: 10px;" colspan="2">&nbsp;<p style="border: 2px solid #993300"></p>
			<p style="border: 1px solid #993300; margin-top: -12px"></p></td>
	</tr>
	</tbody>
</table>
<table style="width: 850px;border-bottom: 2px solid #993300;" align="center">
	<tbody>
	<tr>

		<td><span style="color: #993300;"><b>C/o</b></span></td>
		<td style="width: 1px;border-left: 1px solid #993300;" rowspan="15" style=""></td>
		<td style="width: 288px;color: #993300;">&nbsp;Rx</td>
		<?php
		$date = DateTime::createFromFormat('Y-m-d H:i:s', $prescription->created_at)->format('d-m-Y');
		$time = DateTime::createFromFormat('Y-m-d H:i:s', $prescription->created_at)->format('H:i:s');
		?>
		<td style="float: right"><span style="color: #993300;"><b>Date:</b> <?= $date ?></span></td>
	</tr>

	<tr>
		<td></td>
		<td></td>
		<td style="float: right"><span style="color: #993300;"><b>Time : </b><?= $time ?></span></td>


	</tr>


	<tr>
		<td style="width: 308px;color: #993300;"></td>
		<td style="width: 491px;" colspan="2" rowspan="17">
			<p align="top" style="color: #993300;"><b>Medicine : </b></p>
			<?php foreach ($p_medicines as $row) {
				?>
				<p style="color: #993300;"><?= $row->medicine ?>(<span style="font-size: 10px"><?= $row->doz ?></span>)
					&nbsp;&nbsp;<span><span style="font-size: 12px"><?= '('.$row->morning.')'.' morning' ?> - <?= '('.$row->after_noon.')'.' afternoon' ?> - <?= '('.$row->evning.')'.' evening' ?> &nbsp;&nbsp;(<?= $row->tab ?>)<br> <?= ($row->description) ?></span> </span>
				</p>
				<?php
			} ?>

			<p align="top" style="color: #993300;"><b>Suggestions : </b></p>
			<?php foreach ($p_questions as $row) {
				if ($row['question'] != 'extra') {
					?>
<!--					<p style="color: #993300;">--><?//= $row['question'] ?><!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span> </span></p>-->
					<?php foreach ($row['suggestions'] as $sug) {
						?>
						<p style="color: #993300; font-size: 12px"><?= $sug['suggestions'] ?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span> </span>
						</p>
						<?php
					} ?>
					<?php
				} else {
					$extara = $row['suggestions'];
				}
			} ?>
			<p align="top" style="color: #993300;"><b>Note : </b><?= $extara[0]['suggestions'] ?></p>
		</td>
	</tr>

	<?php foreach ($p_cos as $row) {
		?>
		<tr>
			<td style="width: 308px;color: #993300;"><?= $row->question_code ?></td>
		</tr>
		<?php
	} ?>
	<tr>
		<td style="border-bottom: 1px solid #993300 !important;"></td>
	</tr>
	<?php foreach ($p_labels as $row) { ?>
		<tr>
			<td style="color: #993300;"><b><?= $row->label ?></b> : <?= $row->l_value ?> <?php if ($row->label_unit != ""){?>(<?= $row->label_unit ?>)<?php }?></td>
		</tr>
	<?php } ?>
	<tr>
		<td style="width: 330px;">
			<?php
			if (count($check_table) > 0) {

				$rows = $check_table[0]->rows; // define number of rows
				$cols = $check_table[0]->cols;// define number of columns
				$th = $check_table[0]->cols;
				$lableth = json_decode($check_table[0]->header_label);

				$inserted = array('#');
				array_splice($lableth, 0, 0, $inserted);

				$labletd = json_decode($check_table[0]->cols_label);
				$lablefoot = json_decode($check_table[0]->footer_label);
				?>
				<table style="width:0px;margin-top:48px;border-left: 1px solid #993300;
			    border-top: 1px solid #993300;
			    border-bottom: 1px solid #993300; color:#993300;  border-collapse: collapse;">
					<thead>
					<tr>
						<?php
						for ($th = 0; $th <= $cols; $th++) {
							echo "<th style='width: 91px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;'>" . $lableth[$th] . "</th>";
						}
						?>
					</tr>
					</thead>
					<tbody>
					<?php
					for ($tr = 1; $tr <= $rows; $tr++) {
						echo "<tr>";
						echo "<th style='width: 91px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;' ><b>" . $labletd[$tr - 1] . "</b></th>";
						for ($td = 1; $td <= $cols; $td++) {
							echo "<td style='width: 91px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;'></td>";
						}
						echo "</tr>";
					}
					echo "<tr>";
					for ($th = 0; $th <= $cols; $th++) {
						echo "<th style='width: 91px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;'>" .$lablefoot[$th] . "</th>";
					}
					echo "</tr>";
					?>
					</tbody>
				</table>
			<?php } ?>
			<!--			<table style="width:0px;margin-top:48px;border-left: 1px solid #993300;-->
			<!--    border-top: 1px solid #993300;-->
			<!--    border-bottom: 1px solid #993300;border-collapse: collapse;">-->
			<!--				<tbody>-->
			<!--				<tr>-->
			<!--					<td style="width: 95px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;">&nbsp;-->
			<!--					</td>-->
			<!--					<td style="width: 91px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;">Rt</td>-->
			<!--					<td style="width: 124px;border-bottom: 1px solid #993300;">Lt</td>-->
			<!--				</tr>-->
			<!--				<tr>-->
			<!--					<td style="width: 95px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;">AFC</td>-->
			<!--					<td style="width: 91px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;">&nbsp;-->
			<!--					</td>-->
			<!--					<td style="width: 124px;border-bottom: 1px solid #993300;">&nbsp;</td>-->
			<!--				</tr>-->
			<!--				<tr>-->
			<!--					<td style="width: 95px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;">Week</td>-->
			<!--					<td style="width: 91px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;">EFW</td>-->
			<!--					<td style="width: 124px;border-bottom: 1px solid #993300;">Placenta</td>-->
			<!--				</tr>-->
			<!--				<tr>-->
			<!--					<td style="width: 95px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;">AFI</td>-->
			<!--					<td style="width: 91px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;">MAC PL-->
			<!--					</td>-->
			<!--					<td style="width: 124px;border-bottom: 1px solid #993300;">Umblical PL</td>-->
			<!--				</tr>-->
			<!--				<tr>-->
			<!--					<td style="width: 95px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;">UPI</td>-->
			<!--					<td style="width: 91px;border-right: 1px solid #993300;border-bottom: 1px solid #993300;">&nbsp;-->
			<!--					</td>-->
			<!--					<td style="width: 124px;border-bottom: 1px solid #993300;">100</td>-->
			<!--				</tr>-->
			<!--				<tr>-->
			<!--					<td style="width: 95px;border-right: 1px solid #993300;">Useus</td>-->
			<!--					<td style="width: 91px;border-right: 1px solid #993300;">AV/RV</td>-->
			<!--					<td style="width: 124px;">Cx: Langth</td>-->
			<!--				</tr>-->
			<!--				</tbody>-->
			<!--			</table>-->
		</td>
		<td colspan="2"><br/>
			<table style="width: 300px; margin-top: 65px; float: right">
				<tbody>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td style="color: #993300" colspan="2" width="200"><b>Next Visit Date</b></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td style="color: #993300" width="200">
						<b>Date : </b><?= date("d-m-Y", strtotime($prescription->next_visit)); ?></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td style="color: #993300" width="200">
						<b>Day : </b><?= date("l", strtotime($prescription->next_visit)); ?></td>
				</tr>
				<tr>
					<td style="color: #993300" width="150"><b><?= $check_table[0]->extra_label?></b></td>
				</tr>

				</tbody>
			</table>
		</td>
	</tr>
	</tbody>
</table>
<table style="width: 850px" align="center">
	<tbody>
	<tr>

		<td style="color: #993300"><strong>Doctorooms Id : <?= $patient_user->mobile_no ?></strong></td>
	</tr>
	</tbody>
</table>
