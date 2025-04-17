<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Patient
			<small>Patinet list</small>
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
								<th>Name</th>
								<th>Email</th>
								<th>Mobile</th>
								<th>Role</th>
								<th>Status</th>
								<th>Action</th>
							</tr>
							</thead>
							<tbody>
							<?php $n=0; foreach ($patinet as $key) { ?>
								<tr role="row" class="odd">
									<td><?=++$n;?></td>
									<td><?=$key->name?></td>
									<td><?=$key->email?></td>
									<td><?=$key->mobile_no?></td>
									<td><?=$key->role?></td>
									<td><a href="JavaScript:Void(0);"><span class="label <?php if($key->status == ACTIVE){echo 'label-success';}else{ echo 'label-danger';}?> "><?=$key->status?></span></a></td>
									<td><a class="hidden" href="<?=base_url()?>admin/patient/edit?id=<?=$key->id?>"><span class="btn-sm btn-warning fa fa-edit"></span></a>
										<a href=""><span class="btn-sm btn-danger fa fa-trash"></span></a></td>
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
