<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Inquiry
			<small>Inquiry list</small>
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
								<th>Hospital Name</th>
								<th>Contact No</th>
								<th>Email</th>
								<th>Contact Person</th>
								<th>Mobile No.</th>
								<th>Address</th>
								<th>Detail</th>
								<th>Date</th>
								<th>Action</th>
							</tr>
							</thead>
							<tbody>
							<?php $n=0; foreach ($inquiry as $key) { ?>
								<tr role="row" class="odd">
									<td><?=++$n;?></td>
									<td><?=$key->hospital_name?></td>
									<td><?=$key->hospital_cotanct_no?></td>
									<td><?=$key->email?></td>
									<td><?=$key->contact_person_name?></td>
									<td><?=$key->contact_person_mobile?></td>
									<td><?=$key->address?></td>
									<td><?=$key->description?></td>
									<td><?=$key->created_at?></td>
									<td><a onclick="return confirm('Are You Sure to Delete ?')" href="<?=base_url()?>admin/inquiry/destroy?id=<?=$key->id?>"><span class="btn btn-danger fa fa-trash"></span></a></td>
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
