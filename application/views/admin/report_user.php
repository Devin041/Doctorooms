<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Users
			<small>advanced user list</small>
		</h1>

	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<br>
					<!-- filter start -->
					<div class="row">
					<form method="get" action="<?=base_url().'admin/report/view_user'?>">
						<div class="col-md-2">
							<div class="form-group">
								<label>From Date</label>
								<input name="fromdate" type="date" class="form-control">
							</div>
						</div>

						<div class="col-md-2">
							<div class="form-group">
								<label>To Date</label>
								<input name="todate" type="date" class="form-control">
							</div>
						</div>


						<div class="col-md-2">
							<div class="form-group">
								<label>User</label>
								<select class="form-control" name="usertype">
								<option value=""> -Select User- </option>
								<option value="<?=HOSPITAL?>"><?=HOSPITAL?></option>
								<option value="<?=RECEPTIONIST?>"><?=RECEPTIONIST?></option>
								<option value="<?=DOCTOR?>"><?=DOCTOR?></option>
								<option value="<?=PATIENT?>"><?=PATIENT?></option>

								</select>

							</div>
						</div>

						<div class="col-md-2" style="margin-top: 24px;">
							<div class="form-group">
								<input name="filter" type="submit" class="btn btn-info">
							</div>
						</div>
					</form>
					</div>
					<!-- End -->
					<!-- /.box-header -->
					<br>
					<div class="box-body">

						<table id="example1" class="display table table-responsive table-bordered table-striped dataTable">
							<thead>
							<tr role="row">
								<th>No</th>
								<th>Image</th>
								<th>Name</th>
								<th>Email</th>
								<th>Role</th>
								<th>Status</th>
								<th>Date</th>

							</tr>
							</thead>
							<tbody>
							<?php $n = 0;
							foreach ($users as $key) { ?>
								<tr role="row" class="odd">
									<td><?= ++$n; ?></td>
									<td><img src="<?=base_url().'upload/profile/'.$key->profile_img?>" width="50"></td>
									<td><?= $key->name ?></td>
									<td><?= $key->email ?></td>
									<td><?= $key->role ?></td>
									<td>
										<a href="<?= base_url() ?>admin/dashboard/update_status?id=<?= $key->id ?>&st=<?= $key->status ?>"><span
												class="label <?php if ($key->status == ACTIVE) {
													echo 'label-success';
												} else {
													echo 'label-danger';
												} ?> "><?= $key->status ?></span></a>
									</td>
									<td>
										<?php
										echo ($key->created_at);
										?>
									</td>

								</tr>
							<?php } ?>
							</tbody>
						</table>
						<?php echo $pageno ?>
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

<script type="text/javascript">
	function confirm_delete() {
		swal({
			title: "Are you sure?",
			text: "Once deleted, you will not be able to recover this imaginary file!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		})
			.then((willDelete) => {
				if (willDelete) {
					swal("Poof! Your imaginary file has been deleted!", {
						icon: "success",
					});
				} else {
					swal("Your imaginary file is safe!");
				}
			});
	}
</script>

<script>
	$(function () {
		$('#example1').DataTable({
			'paging': false,
			'lengthChange': true,
			'searching': true,
			'ordering': true,
			'info': true,
			'autoWidth': true
		})
	})
</script>
