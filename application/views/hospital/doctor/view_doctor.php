<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Doctors
			<small>Doctors list</small>
			<a href="<?=base_url()?>hospital/doctor/add" class="btn-sm btn-primary pull-right"><i class="fa fa-plus"></i> ADD</a>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<!-- /.box-header -->
					<div class="box-body">

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
							<?php $n=0; foreach ($doctor as $key) { ?>
								<tr role="row" class="odd">
									<td id="z"><?=++$n;?></td>
									<td>Dr. <?=$key->name?></td>
									<td><?=$key->email?></td>
									<td><?=$key->mobile_no?></td>
									<td><?=$key->role?></td>
									<td><a href="<?=base_url()?>hospital/doctor/update_status?id=<?=$key->id?>&st=<?=$key->status?>"><span class="label <?php if($key->status == ACTIVE){echo 'label-success';}else{ echo 'label-danger';}?> "><?=$key->status?></span></a></td>
									<td>
										<a href="<?=base_url()?>hospital/doctor/profile_view?id=<?=$key->id?>"><span class="btn-sm btn-primary fa fa-eye"></span></a>
										<a href="<?=base_url()?>hospital/doctor/edit/<?=$key->id?>"><span class="btn-sm btn-warning fa fa-edit"></span></a>
										<a class="hidden" href="<?=base_url()?>admin/doctor/distroy?id=<?=$key->id?>" onclick="return confirm('Are you Sure For delete')"><span class="btn-sm btn-danger fa fa-trash"></span></a></td>
								</tr>
							<?php } ?>
							</tbody>
						</table>
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
		var x=	document.getElementById("z").innerHTML = person.fullName();
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
					window.location.href = '<?=base_url()?>admin/doctor/distroy?id=';
				} else {
					swal("Your imaginary file is safe!");
				}
			});
	}
</script>
