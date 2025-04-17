<div class="content-wrapper" style="min-height: 990px;">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Update Patient  
      <small>Update Patient</small>
    </h1>

  </section>

  <!-- Main content -->
  <section class="content">

    <!-- SELECT2 EXAMPLE -->
    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">Edit Patient Detail</h3>

        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <form method="post" action="<?=base_url()?>admin/patient/edit_validate?id=<?=$patient_user->id?>">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" value="<?=$patient_user->name?>" class="form-control">
                <?php echo form_error('name'); ?>
              </div>
              <!-- /.form-group -->
              <div class="form-group">
                <label>Gender</label>
                <select class="form-control" name="gender">
                  <option value="Male"<?php if ($patient_user->gender == 'Male') echo 'selected'; ?>>Male</option>
                  <option value="Female"<?php if ($patient_user->gender == 'Female') echo 'selected'; ?>>Female</option>
                </select>
                <?php echo form_error('gender'); ?>
              </div>
              <!-- /.form-group -->
              <div class="form-group">
                <label>Role</label>
                <select class="form-control" name="role" disabled>
                  <option value="<?=HOSPITAL?>"<?php if ($patient_user->role == HOSPITAL) echo 'selected'; ?>><?='HOSPITAL'?></option>
                  <option value="<?=RECEPTIONIST?>"<?php if ($patient_user->role == RECEPTIONIST) echo 'selected'; ?>><?='RECEPTIONIST'?></option>
                  <option value="<?=DOCTOR?>"<?php if ($patient_user->role == DOCTOR) echo 'selected'; ?>><?='DOCTOR'?></option>
                  <option value="<?=PATIENT?>"<?php if ($patient_user->role == PATIENT) echo 'selected'; ?>><?='PATIENT'?></option>
                </select>
                <?php echo form_error('role'); ?>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
            <div class="col-md-6">
             <div class="form-group">
              <label>Email</label>
              <input type="text" name="email" value="<?=$patient_user->email?>" class="form-control" readonly>
              <?php echo form_error('email'); ?>
            </div>
            <!-- /.form-group -->
            <div class="form-group">
              <label>Password</label><br>
				<span><?=$patient_user->password?></span> <a href="<?=base_url()?>admin/patient/resetpass/<?=$patient_user->id?>" class="label bg-green-active">  Reset</a>
              <?php echo form_error('password'); ?>
            </div>
            <!-- /.form-group -->
             <div class="form-group">
            <label>Mobile</label>
            <input type="text" name="mobile_no" value="<?=$patient_user->mobile_no?>" disabled="disabled" class="form-control">
            <?php echo form_error('mobile_no'); ?>
          </div>
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
