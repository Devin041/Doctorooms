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
									<td><?= (empty($key->total)) ? 0 : $key->total; ?> Rs.</td>

								</tr>
							<?php } ?>
							</tbody>
							<tfoot>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							</tfoot>
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
