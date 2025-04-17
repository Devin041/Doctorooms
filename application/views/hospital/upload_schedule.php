<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Upload Schedule
			<small>Upload Doctor Schedule pdf here</small>
			<a href="<?= base_url() ?>hospital/appoinment" class="pull-right btn-sm btn-success"> <i
					class="fa fa-arrow-circle-left"></i> Back</a>
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Upload Schedule List File</h3>
					</div>
					<div class="box-body">
						<?= form_open_multipart("hospital/doctor/schedule_upload") ?>
						<div class="row">
							<div class="col-sm-4">
								<div class="form-group">
									<label class="form-label">Choose File <span class="text-red">*</span></label>
									<input type="file" value="<?= set_value("schedule"); ?>"
										   class="form-control  <?= (form_error("schedule")) ? "is-invalid" : "" ?>"
										   name="schedule"
										   placeholder="Upload Schedule PDF ">
									<?php echo form_error('schedule'); ?>
								</div>
							</div>

							<div class="col-sm-12">
								<button type="submit" onclick="this.form.submit();this.disabled = true;"
										class="btn btn-primary float-right">Upload
								</button>
							</div>
						</div>
						<?= form_close() ?>
					</div>
					<div class="box-footer">
						<ul class="pagination pagination-sm no-margin pull-right">
							<? //$links?>
						</ul>
					</div>
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Schedule File List</h3>
					</div>
					<div class="box-body">
						<?= form_open_multipart("hospital/doctor/schedule_upload") ?>
						<div class="col-md-12">
							<table class="table table-striped">
								<thead>
								<tr>
									<td>No</td>
									<td>Date</td>
									<td>Action</td>
								</tr>
								</thead>
								<tbody>
								<?php $n = 0;
								foreach ($schedule_file as $f) { ?>
									<tr>
										<td><?= ++$n ?></td>
										<td><?= $f->created_at ?></td>
										<td><a href="<?= base_url() ?>upload/schedule_docs/<?= $f->file_name ?>" target="_blank"
											   class="btn-sm btn-primary"><i class="fa fa-eye"></i></a>
										<a href="<?= base_url() ?>hospital/doctor/remove_file/<?=$f->id?>"
											   class="btn-sm btn-danger"><i class="fa fa-trash"></i></a>
										</td>
									</tr>
								<?php } ?>
								</tbody>
							</table>
						</div>
						<?= form_close() ?>
					</div>
					<div class="box-footer">
						<ul class="pagination pagination-sm no-margin pull-right">
							<? //$links?>
						</ul>
					</div>
				</div>
			</div>
		</div>


	</section>
</div>

