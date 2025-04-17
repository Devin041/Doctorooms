<?php if($is_emergency){
	?>
	<div class="alert alert-warning alert-dismissible text-capitalize">
		<!--										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>-->
		Doctor is in Emergency New Appointment Can't Place.
	</div>
<?php
} else{
	?>
	<a href="<?= base_url('receptionist/appointment/create') ?>" class="btn btn-success"><span
			class="fa fa-plus"></span> New</a>
<?php
}?>
