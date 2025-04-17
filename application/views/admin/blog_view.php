<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Posts
			<small>Blog Posts list</small>
			<a href="<?=base_url()?>admin/blog/add" class="btn-sm btn-info pull-right"><span class="fa fa-plus">ADD</span></a>
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
						<table id="example1" class="table table-responsive table-bordered table-striped dataTable no-footer">
							<thead>
								<tr role="row">
									<th>No</th>
									<th>Title</th>
									<th>Type</th>
									<th width="120">Date</th>
									<th>User</th>
									<th>Status</th>
									<th width="60">   Action</th>
								</tr>
							</thead>
							<tbody>
								<?php $n=0; foreach ($post as $key) { ?>
									<tr role="row" class="odd">
										<td><?=++$n;?></td>
										<td><a href="<?=base_url("admin/blog/post_view/$key->paramalink")?>"> <?=$key->title?></a></td>
										<td><?=$key->type?></td>
										<td><?=$key->created_at?></td>
										<td><?=$key->email?></td>
										<td><a href="<?=base_url()?>admin/blog/update_status?id=<?=$key->id?>&st=<?=$key->status?>"><span class="label <?php if($key->status == PUBLISHED){echo 'label-success';}else{ echo 'label-danger';}?> "><?=$key->status?></span></a></td>
										<td>
											<a href="<?=base_url()?>admin/blog/update/<?=$key->id?>"><span class="btn-sm btn-warning fa fa-edit"></span></a>
											<a href="<?=base_url()?>admin/blog/distroy?id=<?=$key->id?>&uid=<?=$key->user_id?>" onclick="return confirm('Are You Sure For Delete ?')"><span class="btn-sm btn-danger fa fa-trash"></span></a></td>
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
