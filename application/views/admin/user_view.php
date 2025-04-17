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
					<!-- /.box-header -->
					<div class="box-body">
						<div class="table-responsive">
						<table id="example1" class="table table-bordered table-striped dataTable">
							<thead>
								<tr role="row">
									<th>No</th>
									<th>Name</th>
									<th>Email</th>
									<th>Role</th>
									<th>Status</th>

								</tr>
							</thead>
							<tbody>
								<?php $n=0; foreach ($user as $key) { ?>
								<tr role="row" class="odd">
									<td><?=++$n;?></td>
									<td><?=$key->name?></td>
									<td><?=$key->email?></td>
									<td><?=$key->role?></td>
									<td><a href="<?=base_url()?>admin/dashboard/update_status?id=<?=$key->id?>&st=<?=$key->status?>"><span class="label <?php if($key->status == ACTIVE){echo 'label-success';}else{ echo 'label-danger';}?> "><?=$key->status?></span></a></td>

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

<script type="text/javascript">
function confirm_delete(){
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
