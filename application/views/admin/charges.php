<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Admin Charge
		</h1>

	</section>

	<!-- Main content -->
	<section class="content">

			<!-- /.col -->
			<div class="box">
				<div class="nav-tabs-custom">
					<div class="tab-content">
						<div class="active tab-pane" id="activity">
							<form method="post" action="<?= base_url() ?>admin/config/update/<?=$admincharge->id?>">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Admin Charge</label>
											<input type="text" name="admin_charge" class="form-control"
												   value="<?=$admincharge->admin_charge?>">
										</div>

									</div>


									<div class="col-md-12">
										<input type="submit" class="btn btn-info" value="Update">
									</div>
								</div>
							</form>
						</div>
						<!-- /.tab-content -->
					</div>
					<!-- /.nav-tabs-custom -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<!-- /.box -->

		</div>

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
