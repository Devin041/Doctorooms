<div class="content-wrapper" style="min-height: 990px;">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Add Hospital Details
      <small>Add Details</small> 
    </h1>

  </section>
  <!-- Main content -->
  <section class="content">
    <!-- SELECT2 EXAMPLE -->
    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">Add Hospital Details</h3>
        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <form method="post" action="<?=base_url()?>admin/hospital/add_profile_validate">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Hospital Name</label>
                <input type="text" name="hospital_name" class="form-control">
                <?php echo form_error('hospital_name'); ?>
              </div>

              <div class="form-group">
                <label>Address</label>
              <input type="text" name="address" class="form-control">
                <?php echo form_error('address'); ?>
              </div>

              <div class="form-group">
                <label>Contact Number</label>
                <input type="text" name="contact_no" class="form-control">
                <?php echo form_error('contact_no'); ?>
              </div>

              
              <div class="form-group">
                <label>Hospital</label>
                <select name="user_id" class="form-control">
                  <option>- Select -</option>
                  <?php foreach ($hospital as $key) { ?>
                    <option value="<?=$key->id?>"><?=$key->name?></option>
                <?php  } ?>
                </select>
                <?php echo form_error('user_id'); ?>
              </div>

            </div>  

            <div class="col-md-6"> 
              <div class="form-group">
                <label>Photo Gallary</label>
                <input type="file" name="gallary" class="form-control">
                <?php echo form_error('gallary'); ?>
              </div>

              <div class="form-group">
                <label>Latitude</label>
                <input type="text" name="lat" class="form-control">
                <?php echo form_error('lat'); ?>
              </div>

              <div class="form-group">
                <label>Longitude</label>
                <input type="text" name="longi" class="form-control">
                <?php echo form_error('longi'); ?>
              </div>
            </div>
        
          <div class="col-md-12">
            <input type="submit" name="" class="btn btn-info">
          </div>
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
