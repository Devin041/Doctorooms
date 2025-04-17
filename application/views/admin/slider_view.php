<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Slider
			<small>Slider list</small>
            <div class="pull-right">
                <a href="<?=base_url()?>admin/slider/add" class="btn-sm btn-info"><span
                            class="fa fa-plus"></span> New</a>
            </div>
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
						<table id="example1" class="table table-bo table-responsive	rdered table-striped dataTable no-footer">
							<thead>
								<tr role="row">
									<th>No</th>
									<th>Photo</th>
									<th>Position</th>
									<th width="120">Date</th>
									<th>Status</th>
									<th width="60">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php $n=0; foreach ($slides as $key) { ?>
									<tr role="row" class="odd">
										<td><?=++$n;?></td>
										<td><img width="100" class="thumbnail" src="<?=base_url()?>upload/slider/<?=$key->slider_image?>"></td>
										<td><?=$key->position?></td>
										<td><?=$key->created_at?></td>
										<td><a href="<?=base_url()?>admin/slider/update_status?id=<?=$key->id?>&st=<?=$key->status?>"><span class="label <?php if($key->status == ACTIVE){echo 'label-success';}else{ echo 'label-danger';}?> "><?=$key->status?></span></a></td>
										<td>
											<a href="<?=base_url()?>admin/slider/distroy?id=<?=$key->id?>&uid=<?=$key->id?>" onclick="return confirm('Are You Sure For Delete ?')"><span class="btn-sm btn-danger fa fa-trash"></span></a></td>
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
