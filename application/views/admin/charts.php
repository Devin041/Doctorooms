<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Income Growth
			<small></small>

		</h1>

	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">

				<!-- /.box-body -->

				<!-- /.box -->

				<!-- BAR CHART -->
				<div class="box box-success">
					<div class="box-header with-border">
						<h3 class="box-title">Hospital Income Growth</h3>
						<form method="get" action="<?=base_url('admin/report/income_chart_hospital')?>">
						<div class="col-md-3 pull-right" style="margin-right:30px;margin-top: -20px;">

							<select name="hospital" id="hospital" class="form-control">
								<option value="0">-select-</option>
								<?php foreach ($hospitals as $hos) { ?>
									<option value="<?=$hos->id?>" ><?=$hos->name?></option>
								<?php } ?>
							</select>
						</div>
							<div class="col-md-1 pull-right" style="margin-top: -20px;">
								<input type="submit" value="filter" class="btn btn-success" >
							</div>
						</form>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i
									class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool" data-widget="remove"><i
									class="fa fa-times"></i></button>
						</div>
					</div>
					<div class="box-body chart-responsive">
						<div class="chart" id="bar-chart">

						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>


	<section class="content">
		<div class="row">
			<div class="col-md-12">

				<!-- /.box-body -->

				<!-- /.box -->

				<!-- BAR CHART -->
				<div class="box box-success">
					<div class="box-header with-border">
						<h3 class="box-title">Doctor Income Growth</h3>
						<form method="get" action="<?=base_url('admin/report/income_chart_doctor')?>">
							<div class="col-md-3 pull-right" style="margin-right:30px;margin-top: -20px;">
								<select name="doctor" id="docotr" class="form-control">
									<option value="0">-select-</option>
									<?php foreach ($docs as $d) { ?>
										<option value="<?=$d->id?>" ><?=$d->name?></option>
									<?php } ?>
								</select>
							</div>
							<div class="col-md-1 pull-right" style="margin-top: -20px;">
								<input type="submit" value="filter" class="btn btn-success" >
							</div>
						</form>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i
									class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool" data-widget="remove"><i
									class="fa fa-times"></i></button>
						</div>
					</div>
					<div class="box-body chart-responsive">
						<div class="chart" id="bar-chart-doc">

						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>
