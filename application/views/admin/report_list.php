<div class="content-wrapper" style="min-height: 990px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Reports List
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
						<h3 class="box-title">Reporting List</h3>
					</div>
					<!-- /.box-header -->
					<section>
						<div class="row">
							<div class="col-xs-12">
								<div class="col-md-3">
									<h4>General Report</h4>
									<ul>
										<li><a href="<?=base_url().'admin/report/view_user'?>">User Report</a></li>
										<li><a href="">Site Statistics</a></li>
									</ul>
								</div>
								<div class="col-md-3">
									<h4>Doctor Report</h4>
									<ul>
										<li><a href="<?=base_url().'admin/report/view_doctor'?>">User Report</a></li>
									</ul>
								</div>
								<div class="col-md-3">
									<h4>Hospital Report</h4>
									<ul>
										<li><a href="<?=base_url().'admin/report/view_hospital'?>">User Report</a></li>
									</ul>
								</div>
								<div class="col-md-3">
									<h4>Patient Report</h4>
									<ul>
										<li><a href="<?=base_url().'admin/report/view_patient'?>">User Report</a></li>
									</ul>
								</div>
							</div>

							<div class="col-xs-12">
								<div class="col-md-3">
									<h4>Appointment Report</h4>
									<ul>
										<li><a href="<?=base_url().'admin/report/view_appointment'?>">Appointment Report</a></li>
									</ul>
								</div>

								<div class="col-md-3">
									<h4>Income Report</h4>
									<ul>
										<li><a href="<?=base_url().'admin/report/view_income'?>">Admin Income Report</a></li>
									</ul>

									<ul>
										<li><a href="<?=base_url().'admin/report/view_income_hospital'?>">Hospital Wise Income Report</a></li>
									</ul>
								</div>



								<div class="col-md-3">
									<h4>Chart Report</h4>
									<ul>
										<li><a href="<?=base_url().'admin/report/income_chart_hospital?hospital=0'?>">chart</a></li>
									</ul>
								</div>
							</div>
						</div>
					</section>
				</div>
				<!-- /.box -->
			</div>
			<!--/.col (left) -->
			<!--/.col (right) -->
		</div>
	</section>
</div>

		<!-- /.row -->
