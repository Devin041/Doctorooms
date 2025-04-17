<div class="content-wrapper">
	<section class="content-header">
		<h1>
			C/O
			<small>Manage c/o from here</small>
			<div class="pull-right">
				<a href="<?= base_url('doctor/co') ?>" class="btn btn-danger btn-sm"><span class="fa fa-times"></span>
					Cancel</a>
			</div>
		</h1>
	</section>
	<section class="content">
<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">C/O  Edit</h3>
            </div>
			<?php echo form_open('doctor/co/edit/'.$co_master['id']); ?>
			<div class="box-body">
				<div class="row clearfix">
					<div class="col-md-12">
						<label for="co_code" class="control-label"><span class="text-danger">*</span>C/O Category</label>
						<div class="form-group">
							<input type="text" name="co_code" value="<?php echo ($this->input->post('co_code') ? $this->input->post('co_code') : $co_master['co_code']); ?>" class="form-control" id="co_code" />
							<span class="text-danger"><?php echo form_error('co_code');?></span>
						</div>
					</div>

					<div class="col-md-12">
						<label for="co_detail" class="control-label"><span class="text-danger">*</span>C/O Detail</label>
						<div class="form-group">
							<textarea name="co_detail" class="form-control" id="co_detail"><?php echo ($this->input->post('co_detail') ? $this->input->post('co_detail') : $co_master['co_detail']); ?></textarea>
							<span class="text-danger"><?php echo form_error('co_detail');?></span>

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
