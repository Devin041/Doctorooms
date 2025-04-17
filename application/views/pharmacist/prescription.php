<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Prescriptions List
			<small>Manage Prescriptions List from here</small>
		</h1>
	</section>

	<section class="content">
		<?php if ($prescriptions) { ?>
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Prescriptions List</h3>
						</div>
						<div class="box-body">
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
									<tr>
										<th>Appointment id</th>
										<th>Patient Name</th>
										<th>Next Visit Date</th>
										<th>Print Prescription</th>
									</tr>			
									</thead>
									<tbody>
										<?php foreach ($prescriptions as $value) {  ?>
											<tr>
											<td><?=$value->appointment_no ?></td>
											<td><?=$value->patient?></td>
											<td><?= date("d-m-Y",strtotime($value->next_visit));?></td>
											<td><a href="<?=base_url('pharmacist/pharmacist/print_prescription?booking_id=').$value->booking_id.'&doctor_id='.$value->doc_id.'&user_id='.$value->patient_id; ?>" target="_blank" tootltip="tootltip" title="Print" class=" btn btn-xs btn-danger"><i class="fa fa-print"></i></a></td>
											</tr>
									    <?php } ?>
									</tbody>
								</table>
							</div> 
						</div>
					</div>
				</div>
			</div>
		<?php } else { ?>
			<div class="row">
				<div class="col-sm-12">
					<div style="font-size: 40px; opacity: 0.5;">
						<center>
							<i class="fa fa-exclamation-circle fa-5x"></i>
							<br>
							No Prescriptions yet<br>
						</center>
					</div>
				</div>
			</div>
		<?php } ?>
	</section>
</div>
