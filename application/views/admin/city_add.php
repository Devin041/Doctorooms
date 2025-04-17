<div class="content-wrapper" style="min-height: 990px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Add City
			<small>Preview</small>
		</h1>

	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Add City</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form role="form" method="post" action="<?=base_url()?>admin/localization/city_add">
						<div class="box-body">
							<?php if ( $this->session->flashdata('success')) { ?>
								<div class="alert alert-success">
									<p><?php echo $this->session->flashdata('success'); ?></p>
								</div>
							<?php    }  ?>
							<?php if ( $this->session->flashdata('fail')) { ?>
								<div class="alert alert-danger">
									<p><?php echo $this->session->flashdata('fail'); ?></p>
								</div>
							<?php    }  ?>
							<div class="form-group">
								<label for="exampleInputEmail1">State Name</label>
								<select class="form-control" name="state_id">
								<option>-select-</option>
									<?php
									foreach ($state as $s) {?>
									<option value="<?=$s->id?>"><?=$s->state_name?></option>
									<?php } ?>
								</select>

								<?php echo validation_errors(); ?>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">City Name</label>
								<input type="text" class="form-control" name="city_name" id="exampleInputEmail1" placeholder="Enter City Name">
								<?php echo validation_errors(); ?>
							</div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<button type="submit" class="btn btn-primary">SAVE</button>
						</div>
					</form>
				</div>
				<!-- /.box -->
			</div>
			<!--/.col (left) -->
			<!--/.col (right) -->
		</div>
		<!-- /.row -->

		<section>
			<div class="row">
				<div class="col-xs-12">
					<div class="box box-primary">
						<!-- /.box-header -->

						<div class="box-header with-border">
							<h3 class="box-title">View City</h3>
						</div>
						<div class="box-body">

							<table id="example1" class="table table-bordered table-striped dataTable">
								<thead>
								<tr role="row">
									<th>No</th>
									<th>State</th>
									<th>City</th>
									<th>Action</th>
								</tr>
								</thead>
								<tbody>
								<?php $n=0; foreach ($city as $key) { ?>
									<tr role="row" class="odd">
										<td><?=++$n;?></td>
										<td><?=$key->state_name?></td>
										<td><?=$key->city_name?></td>
										<td>
											<a href="<?=base_url()?>admin/localization/delete_city/<?=$key->id?>" onclick="return confirm('Are you sure?')"><span class="btn-sm btn-danger fa fa-trash"></span></a>
										</td>
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
</div>
</section>
<!-- /.content -->
</div>
