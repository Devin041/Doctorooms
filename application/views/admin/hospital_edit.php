<div class="content-wrapper" style="min-height: 990px;">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Update Hospital  
      <small>Update Hospital</small> |  
      <a href="<?=base_url()?>admin/hospital/edit_profile?id=<?=$rec_user->id?>" class="btn-sm btn-primary"><span class="fa fa-plus"></span> Edit Profile</a>
    </h1>

  </section>

  <!-- Main content -->
  <section class="content">

    <!-- SELECT2 EXAMPLE -->
    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">Edit Hospital Detail</h3>

        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <form method="post" action="<?=base_url()?>admin/hospital/edit_validate?id=<?=$rec_user->id?>">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Hospital Name</label>
                <input type="text" name="name" value="<?=$rec_user->name?>" class="form-control">
              </div>
            <div class="form-group">
              <label>Email</label><br>
				<span><?=$rec_user->email?></span>
              <?php echo form_error('email'); ?>
            </div>
            </div>
            <!-- /.col -->
            <div class="col-md-6">
     
          <div class="form-group">
            <label>Contact Number</label>
            <input type="text" name="mobile_no" value="<?=$rec_user->mobile_no?>" disabled="disabled" class="form-control">
            <?php echo form_error('mobile_no'); ?>
          </div>
            <!-- /.form-group -->
            <div class="form-group">
              <label>Password</label><br>
             	<span><?=$rec_user->password?></span> <a href="<?=base_url()?>admin/hospital/resetpass/<?=$rec_user->id?>" class="label bg-green-active">  Reset</a>
              <?php echo form_error('password'); ?>

            </div>
            <!-- /.form-group -->
         
          </div>

          <!-- /.form-group -->
          <div class="col-md-12">
            <input type="submit" name="" class="btn btn-info" value="UPDATE"> 
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
