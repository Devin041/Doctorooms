
<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Complain
			<small>Manage Complain from here</small>
			<div class="pull-right">
				<a href="<?= base_url('doctor/questions') ?>" class="btn btn-danger btn-sm"><span class="fa fa-times"></span>
					Cancel</a>
			</div>
		</h1>
	</section>
	<section class="content">
<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Complain  Edit</h3>
            </div>
			<?php echo form_open('doctor/questions/edit/'.$questions_master['id']); ?>
			<div class="box-body">
				<div class="row clearfix">

					<div class="col-md-6">
						<label for="question" class="control-label"><span class="text-danger">*</span>Complain code</label>
						<div class="form-group">
							<input type="text" name="question_code" value="<?php echo ($this->input->post('question_code') ? $this->input->post('question_code') : $questions_master['question_code']); ?>" class="form-control" id="question" />
							<span class="text-danger"><?php echo form_error('question_code');?></span>
						</div>
					</div>

					<div class="col-md-6">
						<label for="question" class="control-label"><span class="text-danger">*</span>Category</label>
						<div class="form-group">
							<select class="form-control" name="co_id">
								<option value="">Select Category</option>
								<?php foreach ($co_masters as $row){ ?>
									<option value="<?= $row['id']?>" <?php if ($row['id']==$questions_master['co_id']) {echo 'selected';}?>><?= $row['co_code']?></option>
								<?php }?>
							</select>
							<span class="text-danger"><?php echo form_error('co_id');?></span>
						</div>
					</div>

					<div class="col-md-12">
						<label for="question" class="control-label"><span class="text-danger">*</span>Complain</label>
						<div class="form-group">
							<input type="text" name="question" value="<?php echo ($this->input->post('question') ? $this->input->post('question') : $questions_master['question']); ?>" class="form-control" id="question" />
							<span class="text-danger"><?php echo form_error('question');?></span>
						</div>
					</div>
					<div class="col-md-12">
						<label for="explenations" class="control-label">Explanations</label>
						<div class="form-group">
							<textarea name="explenations" class="form-control" id="explenations"><?php echo ($this->input->post('explenations') ? $this->input->post('explenations') : $questions_master['explenations']); ?></textarea>
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
