<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Hospital
			<small>Hospital list</small>
			<a href="<?= base_url() ?>admin/hospital/add" class="btn-sm btn-info pull-right"><span class="fa fa-plus"></span> ADD</a>
		</h1>

	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<!-- /.box-header -->
					<div class="box-body">
						
						<!-- End -->
						<div class="col-md-12 table-responsive">
							<table id="example1" class="table table-bordered table-striped dataTable">
								<thead>
								<tr role="row">
									<th>No</th>
									<th>Name</th>
									<th>Email</th>
									<th>Mobile</th>
									<th>Role</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
								</thead>
								<tbody>
								<?php $n = 0;
								foreach ($hospital as $key) { ?>
									<tr role="row" class="odd">
										<td><?= ++$n; ?></td>
										<td><?= $key->name ?></td>
										<td><?= $key->email ?></td>
										<td><?= $key->mobile_no ?></td>
										<td><?= $key->role ?></td>
										<td>
											<a href="<?= base_url() ?>admin/Hospital/update_status?id=<?= $key->id ?>&st=<?= $key->status ?>"><span
													class="label <?php if ($key->status == ACTIVE) {
														echo 'label-success';
													} else {
														echo 'label-danger';
													} ?> "><?= $key->status ?></span></a></td>
										<td>
											<a href="<?= base_url() ?>admin/hospital/profile_view?id=<?= $key->id ?>"><span
													class="btn-sm btn-primary fa fa-eye"></span></a>
											<a href="<?= base_url() ?>admin/hospital/edit?id=<?= $key->id ?>"><span
													class="btn-sm btn-warning fa fa-edit"></span></a>
											<a class="hidden" href="<?= base_url() ?>admin/hospital/distroy?id=<?= $key->id ?>"
											   onclick="return confirm('Are You Sure For Delete ?')"><span
													class="btn-sm btn-danger fa fa-trash"></span></a></td>
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
