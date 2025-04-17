
<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Settings
			<small>Prescription Other Settings from here</small>
			<div class="pull-right">
				<a href="<?= base_url('doctor/P_other_setting') ?>" class="btn btn-danger btn-sm"><span class="fa fa-times"></span>
					Cancel</a>
			</div>
		</h1>
	</section>
	<section class="content">
<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Other Setting Edit</h3>
            </div>
			<?php $time=json_decode($p_other_setting['time']) ?>
			<?php echo form_open_multipart('doctor/p_other_setting/edit/'.$p_other_setting['id']); ?>
			<div class="box-body">
				<div class="row clearfix">
					<div class="col-md-6">
						<label for="logo" class="control-label">Logo</label>
						<div class="form-group">
							<input type="file" name="logo" value="<?php echo ($this->input->post('logo') ? $this->input->post('logo') : $p_other_setting['logo']); ?>" class="form-control" id="logo" />
						</div>
					</div>
					<div class="col-md-6">
						<label for="header" class="control-label">Header</label>
						<div class="form-group">
							<input type="text" name="header" value="<?php echo ($this->input->post('header') ? $this->input->post('header') : $p_other_setting['header']); ?>" class="form-control" id="header" />
						</div>
					</div>

					<div class="col-md-6">
						<label for="time" class="control-label"><span class="text-danger">*</span>Time</label>
						<div class="form-group">
							<input type="text" name="time" value="<?php echo ($this->input->post('time') ? $this->input->post('time') : $p_other_setting['time']); ?>" class="form-control" id="time" />
							<span class="text-danger"><?php echo form_error('time');?></span>
						</div>
					</div>
					<div class="col-md-6">
						<label for="full_header" class="control-label">Full Header</label>
						<div class="form-group">
							<input type="file" name="full_header" value="<?php echo $this->input->post('logo'); ?>" class="form-control" id="full_header" />
						</div>
					</div>

					<div class="col-md-6">
						<label for="full_header" class="control-label">What you want To show in prescription?</label>
						<br>
						<input <?php if ($p_other_setting['is_full_header'] == 1) { echo 'checked'; } ?> type="radio" id="male" name="is_full_header" value="1">
						<label for="male">Full Header</label><br>
						<input <?php if ($p_other_setting['is_full_header'] == 0) { echo 'checked'; } ?> type="radio" id="female" name="is_full_header" value="0">
						<label for="female">Logo/Time/header</label><br>
					</div>
					<label>Note: Full header   height = 250px and width =  880 </label>
				</div>
			</div>
			<div class="box-footer">
            	<button type="submit" class="btn btn-success">
					<i class="fa fa-check"></i> Save
				</button>
	        </div>				
			<?php echo form_close(); ?>
		</div>
    </div>
</div>
	</section>
</div>

