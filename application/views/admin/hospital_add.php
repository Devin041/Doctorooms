<div class="content-wrapper" style="min-height: 990px;">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Create Hospital
      <small>Add New Hospital</small> |
      <a href="<?=base_url()?>admin/hospital/add_profile" class="btn-sm btn-primary"><span class="fa fa-plus"></span>  Add Detail</a>
    </h1>

  </section>

  <!-- Main content -->
  <section class="content">

    <!-- SELECT2 EXAMPLE -->
    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">Create new hospital</h3>

        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <form method="post" action="<?=base_url()?>admin/hospital/add_validate">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label>Hospital Name</label>
                <input type="text" name="name" class="form-control">
                <?php echo form_error('name'); ?>
              </div>

              <div class="form-group">
                <label>Email</label>
              <input type="text" name="email" class="form-control">
                <?php echo form_error('email'); ?>
              </div>

              <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" class="form-control">
                <?php echo form_error('password'); ?>
              </div>

              <div class="form-group">
                <label>Confirm Password</label>
                <input type="password" name="c_pass" class="form-control">
                <?php echo form_error('c_pass'); ?>
              </div>

              <div class="form-group">
                <label>Contact No</label>
                <input type="text" name="mobile_no" class="form-control">
                <?php echo form_error('mobile_no'); ?>
              </div>

				<div class="form-group">
					<label>State</label><span class="text-red">*</span>
					<select class="form-control" name="state" id="state" onchange="loadCity()">
						<option value="">--Select State--</option>
						<?php foreach ($state as $sta) { ?>
							<option value="<?= $sta->state_name ?>"><?= $sta->state_name ?></option>
						<?php } ?>
					</select>
					<?php echo form_error('state'); ?>
				</div>

				<div class="form-group">
					<label>City</label><span class="text-red">*</span>
					<select class="form-control" name="city" id="city">
						<option value="">--Select City--</option>
					</select>
					<?php echo form_error('city'); ?>

				</div>

                <div class="form-group">
                <label> Terms and conditions And Privacy Policy</label>
                <input type="checkbox" name="terms" class="">
                <?php echo form_error('terms'); ?>
              </div>
             
            </div>
          </div>

          <div class="col-md-12">
            <input type="submit" name="" class="btn btn-info">
          </div>
          <!-- /.col -->
        </div>
      </form>
      <!-- /.row -->
    </div>
    <!-- /.box-body -->

  </div>
  <!-- /.box -->
</div>
</div>
</div>
</div>
</section>
<!-- /.content -->
</div>
<script>
	// $(document).ready(function () {
	// 	loadCity();
	// 	$("#state").change(function () {
	// 		alert('hi');
	// 		loadCity();
	// 	});
	// });

	function loadCity(){

		var state = $("#state").val();
		$('#city').find('option:not(:first)').remove();
		$.post("<?=base_url('admin/hospital/city_by_state')?>", {state_name: state}, function (result) {
			result.forEach(function (city) {
				var elem = $("<option value='" + city.city_name + "'>" + city.city_name + "</option>");
				$("#city").append(elem);
			});
		});
	}
</script>
