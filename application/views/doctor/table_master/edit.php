
<link rel="stylesheet" href="<?= base_url('assets/lte/bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.css')?>">
<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Table
			<small>Manage table from here</small>
			<div class="pull-right">
				<a href="<?= base_url('doctor/table_master') ?>" class="btn btn-danger btn-sm"><span
						class="fa fa-times"></span>
					Cancel</a>
			</div>
		</h1>
	</section>
	<section class="content">

		<div class="row">
			<div class="col-md-12">
				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">Table Master Edit</h3>
					</div>
					<?php echo form_open('doctor/table_master/edit/' . $table_master['id']); ?>
					<div class="box-body">
						<div class="row clearfix">
							<div class="col-md-6">
								<label for="row" class="control-label"><span class="text-danger">*</span>Row</label>
								<div class="form-group">
									<input type="text" name="row" onchange="setLimit()"
										   value="<?php echo($this->input->post('row') ? $this->input->post('row') : $table_master['row']); ?>"
										   class="form-control" id="row"/>
									<span class="text-danger"><?php echo form_error('row'); ?></span>
								</div>
							</div>
							<div class="col-md-6">
								<label for="column" class="control-label"><span
										class="text-danger">*</span>Column</label>
								<div class="form-group">
									<input type="text" name="column" onchange="setLimit()"
										   value="<?php echo($this->input->post('column') ? $this->input->post('column') : $table_master['table_column']); ?>"
										   class="form-control" id="column"/>
									<span class="text-danger"><?php echo form_error('column'); ?></span>
								</div>
							</div>
							<div class="col-md-6">
								<label for="lable_header" class="control-label">Lable Header</label>
								<div class="form-group">
									<input type="hidden" name="lable_header" id="labelHeader1">
									<select class="form-control " data-role="tagsinput"  onchange="setLimit()" id="labelHeader"
										 multiple="multiple">
										<?php foreach (json_decode($table_master['lable_header']) as $label) { ?>
											<option value="<?= $label ?>" ><?= $label ?></option>
										<?php } ?>
									</select><br>
									<span class="text-danger" id="labelHeaderError"></span>
								</div>
							</div>
							<div class="col-md-6">

								<label for="lable_footer" class="control-label">Lable Footer</label>
								<input type="hidden" name="lable_footer" id="labelFooter1">
								<div class="form-group">
									<select class="form-control " data-role="tagsinput"  onchange="setLimit()" id="labelFooter"
											 multiple="multiple">
										<?php foreach (json_decode($table_master['lable_footer']) as $label) { ?>
											<option value="<?= $label ?>" ><?= $label ?></option>
										<?php } ?>
									</select><br>
									<span class="text-danger" id="labelFooterError"></span>
								</div>
							</div>
							<div class="col-md-6">
								<label for="lable_row" class="control-label">Lable Row</label>
								<div class="form-group">
									<input type="hidden"name="lable_row" id="labelRow1">
									<select class="form-control " data-role="tagsinput"  onchange="setLimit()" id="labelRow"
											 multiple="multiple">
										<?php foreach (json_decode($table_master['lable_row']) as $label) { ?>
											<option value="<?= $label ?>" ><?= $label ?></option>
										<?php } ?>
									</select>
									<br>
									<span class="text-danger" id="labelRowError"></span>
								</div>
							</div>

							<div class="col-md-6">
								<label for="lable_row" class="control-label">Extra Label</label>
								<div class="form-group">
									<input type="text" name="extra_label" id="extra_label" value="<?php echo($this->input->post('extra_label') ? $this->input->post('extra_label') : $table_master['extra_label']); ?>" class="form-control">


								</div>
							</div>
						</div>
					</div>
					<div class="box-footer">
						<button type="button" onclick="checkvalidate()" class="btn btn-success">
							<i class="fa fa-check"></i> Save
						</button>
						<button type="button" onclick="checkPreview()" class="btn btn-warning">
							<i class="fa fa-print"></i> preview
						</button>
					</div>
					<?php echo form_close(); ?>
				</div>
			</div>

		</div>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">Table Preview</h3>
					</div>
					<div class="box-body">
						<div class="row clearfix col-md-12" id="tablePreview">

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<script>
	$(document).ready(function () {

		setLimit();
		checkPreview();
	});


	function setLimit() {
		var row = $("#row").val();
		$("#labelRow").tagsinput({

			allowDuplicates: true,
			//maxTags: row
		});

		var column = $("#column").val();

		$("#labelHeader").tagsinput({

			allowDuplicates: true,
			//maxTags: column

		});

		$("#labelFooter").tagsinput({
			allowDuplicates: true,
			//maxTags: column
		});

	}

	function validate() {
		var hader=$("#labelFooter").tagsinput('items');
		// jQuery.each(hader, function(index, item) {
		// 	$('<input>').attr({
		// 		type: 'hidden',
		// 		name: 'bar'
		// 	}).appendTo('form');labelRow
		// 	// do something with `item` (or `this` is also `item` if you like)
		// });

		$('#labelHeader1').val(JSON.stringify($("#labelHeader").tagsinput('items')));
		$('#labelFooter1').val(JSON.stringify($("#labelFooter").tagsinput('items')));
		$('#labelRow1').val(JSON.stringify($("#labelRow").tagsinput('items')));

		var row = $('#row').val();
		var column = $('#column').val();
		var x = 0;
		//console.log();
		var labelHeader = JSON.parse($("#labelHeader1").val()).length;

		var labelFooter = JSON.parse($("#labelFooter1").val()).length;

		var labelRow = JSON.parse($("#labelRow1").val()).length;
		if (labelHeader != column) {
			x++;
			$('#labelHeaderError').html("Please Enter " + column + " labels")
		} else {
			$('#labelHeaderError').html("")
		}
		// if (labelFooter != column) {
		// 	x++;
		// 	$('#labelFooterError').html("Please Enter " + column + " labels")
		//
		// } else {
		// 	$('#labelFooterError').html("")
		// }
		if (labelRow != row) {
			x++;
			$('#labelRowError').html("Please Enter " + row + " labels")

		} else {
			$('#labelRowError').html("")
		}
		if (x > 0) {
			return false;
		} else {
			return true;
		}


	}

	function checkPreview() {
		if (validate()) {
			$('#tablePreview').load('<?= base_url('doctor/Table_master/get_table')?>',
				{
					label_row: $('#labelRow1').val(),
					label_header:$('#labelHeader1').val(),
					label_footer:$('#labelFooter1').val(),
					extra_label:$('#extra_label').val(),
				}
		)



		}
	}
	function checkvalidate() {
if (validate()){
	$('#labelHeader1').val($("#labelHeader").tagsinput('items'));
	$('#labelFooter1').val($("#labelFooter").tagsinput('items'));
	$('#labelRow1').val($("#labelRow").tagsinput('items'));

	//alert("dsf");
	$('form').submit();
}
	}
	$('#labelHeader').on('itemRemoved', function(event) {
		// event.item: contains the item
		$('#labelHeader').tagsinput('remove', event.item);
		// event.cancel: set to true to prevent the item getting removed
	});
	$('#labelFooter').on('itemRemoved', function(event) {
		// event.item: contains the item
		$('#labelFooter').tagsinput('remove', event.item);
		// event.cancel: set to true to prevent the item getting removed
	});
	$('#labelRow').on('itemRemoved', function(event) {
		// event.item: contains the item
		$('#labelRow').tagsinput('remove', event.item);
		// event.cancel: set to true to prevent the item getting removed
	});



</script>
<script src="<?= base_url('assets/lte/bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js')?>"></script>
