<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Admin Charge
			<small>Admin Charge Income list</small>
		</h1>

	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<!-- /.box-header -->
					<div class="box-body">
						<div>
						<form method="get">
							<div class="row">
								<div class="col-md-2">
									<label>From Date</label>
									<input type="date" class="form-control" name="fromdate"
										   value="<?= $this->input->get('fromdate') ?>">

								</div>
								<div class="col-md-2">
									<label>To Date</label>
									<input type="date" class="form-control" name="todate"
										   value="<?= $this->input->get('fromdate') ?>">
								</div>

								<div class="col-md-2">
									<label>Doctor</label>
									<select name="doctor" class="form-control">
										<option value="">-Select-</option>
										<?php foreach ($doctors as $d) { ?>
											<option value="<?=$d->id?>"><?=$d->name?></option>
										<?php } ?>
									</select>
								</div>

								<div class="col-md-2" style="margin-top: 24px;">
									<input type="submit" class="btn btn-info">
								</div>
							</div>
						</form>
						</div>
						<br>
						<div class="table-responsive">
							<table id="example1" class="table table-responsive table-bordered table-striped dataTable">
								<thead>
								<tr role="row">
									<th>No</th>
									<th>Image</th>
									<th>Doctor Name</th>
									<th>Email</th>
									<th>Mobile</th>
									<th>Charges</th>
								</tr>
								</thead>
								<tbody>
								<?php $n = 0;
								foreach ($doctorcharge as $key) { ?>
									<tr role="row" class="odd">
										<td><?= ++$n; ?></td>
										<td><img src="<?= base_url('upload/profile/') ?><?= $key->profile_img ?>"
												 width="40"></td>
										<td><?= $key->name ?></td>
										<td><?= $key->email ?></td>
										<td><?= $key->mobile_no ?></td>
										<td><?= empty($key->total) ? 0 : $key->total; ?> Rs.</td>

									</tr>
								<?php } ?>
								</tbody>
							</table>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
	</section>
	<!-- /.content -->
</div>
