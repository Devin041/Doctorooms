

<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Label
			<small>Manage Label from here</small>
			<div class="pull-right">
				<a href="<?= base_url('doctor/Label') ?>" class="btn btn-danger btn-sm"><span class="fa fa-times"></span>
					Cancel</a>
			</div>
		</h1>
	</section>
	<section class="content">

<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Label  Edit</h3>
            </div>
			<?php echo form_open('doctor/label/edit/'.$label_master['id']); ?>
			<div class="box-body">
				<div class="row clearfix">
					<div class="col-md-6">
						<label for="label_title" class="control-label"><span class="text-danger">*</span>Label Title</label>
						<div class="form-group">
							<input type="text" name="label_title" value="<?php echo ($this->input->post('label_title') ? $this->input->post('label_title') : $label_master['label_title']); ?>" class="form-control" id="label_title" />
							<span class="text-danger"><?php echo form_error('label_title');?></span>
						</div>
					</div>
					<div class="col-md-6">
						<label for="label_title" class="control-label"><span class="text-danger">*</span>Label Unit</label>
						<div class="form-group">
							<input type="text" name="label_unit" value="<?php echo ($this->input->post('label_unit') ? $this->input->post('label_unit') : $label_master['label_unit']); ?>" class="form-control" id="label_unit" />
							<span class="text-danger"><?php echo form_error('label_unit');?></span>
						</div>
					</div>
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
