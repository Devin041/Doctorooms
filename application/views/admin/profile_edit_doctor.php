
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Doctor Profile Update
    </h1>

  </section>

  <form method="post" action="<?=base_url()?>admin/doctor/edit_profile_validate/<?=$doctor->id?>">
    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-circle" src="<?=base_url()?>upload/profile/<?=$doctor_detail->profile_img?>" alt="User profile picture">

              <h3 class="profile-username text-center">Dr. <?= $doctor_detail->name;?></h3>

				<select name="doctor_type" class="form-control text-center">
					<?php foreach ($type as $dt) { ?>
					<option value="<?= $dt->type;?>" <?php if ($dt->type==$doctor->doctor_type) echo 'selected';?>><?= $dt->type;?></option>
					<?php } ?>
				</select>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Likes</b> <a class="pull-right" style="color: red;"><span class="fa fa-thumbs-up"></span> 1,322</a>
                </li>
                <li class="list-group-item">
                  <b>Rating</b> <a class="pull-right" style="color: #ffcc00;">
                    <ul>
                      <li style="display: inline-block;"><span class="fa fa-star"></span></li>
                      <li style="display: inline-block;"><span class="fa fa-star"></span></li>
                      <li style="display: inline-block;"><span class="fa fa-star"></span></li>
                      <li style="display: inline-block;"><span class="fa fa-star"></span></li>
                      <li style="display: inline-block;"><span class="fa fa-star"></span></li>
                    </ul>
                  </a>
                </li>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- About Me Box -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Contact Detail</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <strong><i class="fa fa-inr margin-r-5"></i> Fees</strong>
              <input type="text" name="fees" value="<?= $doctor->fees;?>"class="form-control"/>
              <hr>

              <strong><i class="fa fa-map-marker margin-r-5"></i> Address</strong>

              <input type="text" name="address" value="<?= $doctor->address;?>"class="form-control"/>
				<hr>
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
				<hr>
				<div class="form-group">
					<label>City</label><span class="text-red">*</span>
					<select class="form-control" name="city" id="city">
						<option value="">--Select City--</option>
					</select>
					<?php echo form_error('city'); ?>

				</div>
				<hr>
              <strong><i class="fa fa-hospital-o margin-r-5"></i> Hospital Location</strong>

              <input type="text" name="hospital_address" value="<?= $doctor->hospital_address;?>"class="form-control"/>
              <hr>
              <?=$doctor->id?>
              <strong><i class="fa fa-phone margin-r-5"></i>Phone Number</strong>

              <input type="text" name="phone_no" value="<?= $doctor->phone_no;?>"class="form-control"/>
              <hr>
              <strong><i class="fa fa-mobile margin-r-5"></i>Mobile Number</strong>

              <input type="text" name="contact_no" value="<?= $doctor->contact_no;?>"class="form-control"/>
              <hr>
               <strong><i class="fa fa-globe margin-r-5"></i>Latitude</strong>
              
              <input type="text" name="lat" value="<?= $doctor->lat;?>"class="form-control"/>
              <hr>
               <strong><i class="fa fa-globe margin-r-5"></i>Longitude</strong>
              
              <input type="text" name="longi" value="<?= $doctor->longi;?>"class="form-control"/>
              <hr>
              <strong><i class="fa fa-envelope margin-r-5"></i>Email</strong>
              <p><?=$doctor_detail->email?></p>

            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab">Personal Detail</a></li>
              <li><a href="#timeline" data-toggle="tab">Receptionist Detail</a></li>
              <li class="pull-right">
               <button type="submit" name="" class="btn btn-info"><span class="fa fa-save"></span>  SAVE</button> 
             </li>
           </ul>

           <div class="tab-content">
            <div class="active tab-pane" id="activity">
              <!-- Post -->
              <div class="post">
                <div class="user-block">
                  <h4>About Me</h4>
                </div>
                <!-- /.user-block -->
                <textarea id="editor1" name="description" class="form-control"><?=$doctor->description?></textarea>
              </div>
              <!-- /.post -->
              <div class="post">
                <div class="user-block">
                 <h4>Disease Specialization</h4>
               </div>
               <!-- /.user-block -->
				<div class="form-group">
				<?php foreach ($dis_name as $dis) { ?>
					<label style="margin:5px;padding: 3px;">

						<input type="checkbox" name="specialization[]" value="<?=$dis->dis_name?>" <?php $ds = json_decode($doctor->specialization);
						for ($i=0; $i<count($ds); $i++ ) {   if ($dis->dis_name == $ds[$i]) {echo 'checked';} }?> class="flat-red"/>

						<?=$dis->dis_name?></label>
				<?php } ?>
				</div>
             </div>

             <div class="post">
              <div class="user-block">
               <h4>Eduction</h4>
             </div>
             <!-- /.user-block -->

             <textarea id="editor3" name="eduction" class="form-control"><?=$doctor->eduction?></textarea>
           </div>


           <div class="post">
            <div class="user-block">
             <h4>Experience</h4>
           </div>
           <!-- /.user-block -->

           <textarea id="editor4" name="experience" class="form-control"><?=$doctor->experience?></textarea>
         </div>

         <div class="post">
          <div class="user-block">
           <h4>Award & Recognition</h4>
         </div>
         <!-- /.user-block -->
         <textarea id="editor5" name="award_and_recognition" class="form-control"><?=$doctor->award_and_recognition?></textarea>
       </div>

       <div class="post">
        <div class="user-block">
         <h4>Registration Detail</h4>
       </div>
       <!-- /.user-block -->
       <textarea id="editor6" name="registration_detail" class="form-control"><?=$doctor->registration_detail?></textarea>
     </div>
     <!-- Post -->
     

   </div>
   <!-- /.tab-content -->



			   <div class="tab-pane" id="timeline">
				   <br>
				   <?php if ($rec) { ?>
					   <div class="row">
						   <div class="col-md-3">
							   <?php if ($rec->profile_img) { ?>
								   <img class="profile-user-img img-responsive img-circle"
										src="<?= base_url() ?>upload/profile/<?= $rec->profile_img ?>"
										alt="User profile picture">
							   <?php } else { ?>
								   <img class="profile-user-img img-responsive img-circle"
										src="<?= base_url() ?>assets/images/no_img.png"
										alt="User profile picture">
							   <?php } ?>
						   </div>
						   <div class="col-md-3">
							   <label>Name</label>
							   <p><?=$rec->name?></p>
						   </div>
						   <div class="col-md-3">
							   <label>Emial</label>
							   <p><?=$rec->email?></p>
						   </div>
						   <div class="col-md-3">
							   <label>Mobile</label>
							   <p><?=$rec->mobile_no?></p>
						   </div>
						   <div class="col-md-3">
							   <label>Gender</label>
							   <p><?=$rec->gender?></p>
						   </div>
						   <div class="col-md-3">
							   <label>Status</label><br>
							   <p class="label  bg-red"> <?=$rec->status?></p>
						   </div>
						   <div class="col-md-3">
							   <label>Address</label>
							   <p> <?=$rec_address->address?></p>
						   </div>
					   </div>
				   <?php } else { ?>
					   <div class="row">
						   <div class="col-md-8">
							   <span style="color: red;">No Receptionist Created</span>
						   </div>
					   </div>
				   <?php } ?>
			   </div>
		   </div>
			  <!-- /.tab-content -->
 </div>
 <!-- /.nav-tabs-custom -->
</div>
<!-- /.col -->
</div>
<!-- /.row -->

</section>
</form>
<!-- /.content -->
</div>
<script>

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
  <!-- /.content-wrapper -->
