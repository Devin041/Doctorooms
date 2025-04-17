<div class="content-wrapper">
    <section class="content-header">
        <h1>
         Medicine List
         <small>Manage Medicine List from here</small>
            <div class="pull-right">
                <a href="<?=base_url('receptionist/medicinemaster')?>" class="btn btn-warning btn-sm"><span
                            class="fa fa-arrow-left"></span> Back</a>
            </div>
     </h1>
 </section>

 <section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Add New Medicine</h3>
                </div>
                <div class="box-body">
                    <?= form_open("receptionist/medicinemaster/add_validate") ?>
                    <div class="row">
                        
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label class="form-label">Medicine Name <span class="text-red">*</span></label>
                                <input type="text" value="<?= set_value("name"); ?>"
                                class="form-control  <?= (form_error("name")) ? "is-invalid" : "" ?>"
                                name="name"
                                placeholder="Medicine name">
                                <?php echo form_error('name'); ?>
                            </div>
                        </div>
						<div class="col-sm-4">
							<div class="form-group">
								<label class="form-label">Morning <span class="text-red">*</span></label>
								<input type="text" value="<?= set_value("morning"); ?>"
									   class="form-control  <?= (form_error("morning")) ? "is-invalid" : "" ?>"
									   name="morning"
									   placeholder="Morning detail">
								<?php echo form_error('morning'); ?>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label class="form-label">Afternoon <span class="text-red">*</span></label>
								<input type="text" value="<?= set_value("afternoon"); ?>"
									   class="form-control  <?= (form_error("afternoon")) ? "is-invalid" : "" ?>"
									   name="afternoon"
									   placeholder="Afternoon detail">
								<?php echo form_error('afternoon'); ?>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label class="form-label">Evening <span class="text-red">*</span></label>
								<input type="text" value="<?= set_value("evening"); ?>"
									   class="form-control  <?= (form_error("evening")) ? "is-invalid" : "" ?>"
									   name="evening"
									   placeholder="Evening detail">
								<?php echo form_error('evening'); ?>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label class="form-label">Doz <span class="text-red">*</span></label>

								<select class="form-control select2Tag <?= (form_error("doz")) ? "is-invalid" : "" ?>"   name="doz[]" multiple >
								<?php foreach (set_value("doz") as $key=>$doz){
									?>
									<option selected value="<?= $doz?>"><?= $doz ?></option>
									<?php

								}?>

								</select>
<!--								<input type="text" value="--><?//= set_value("doz"); ?><!--"-->
<!--									   class="form-control  --><?//= (form_error("doz")) ? "is-invalid" : "" ?><!--"-->
<!--									   name="doz"-->
<!--									   placeholder="Doz detail">-->
								<?php echo form_error('doz[]'); ?>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label class="form-label">Tab <span class="text-red">*</span></label>
								<input type="number" value="<?= set_value("tab"); ?>"
									   class="form-control  <?= (form_error("tab")) ? "is-invalid" : "" ?>"
									   name="tab"
									   placeholder="Tab detail">
								<?php echo form_error('tab'); ?>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label class="form-label">Description <span class="text-red">*</span></label>
								<input type="text" value="<?= set_value("description"); ?>"
									   class="form-control  <?= (form_error("description")) ? "is-invalid" : "" ?>"
									   name="description"
									   placeholder="Description detail">
								<?php echo form_error('description'); ?>
							</div>
						</div>
                        <div class="col-sm-12">
                            <button type="submit" onclick="this.form.submit();this.disabled = true;"
                            class="btn btn-primary float-right">Save
                        </button>
                    </div>
                </div>
                <?= form_close() ?>
            </div>
            <div class="box-footer">
                <ul class="pagination pagination-sm no-margin pull-right">
                    <? //$links?>
                </ul>
            </div>
        </div>
    </div>
</div>
</section>
</div>
<script>
    $(document).ready(function () {

        $("#date_of_birth").change(function () {
            var date_of_birth = $("#date_of_birth").val();
            date_of_birth = new Date(date_of_birth);
            var today = new Date();
            if (date_of_birth >= today) {
                $('#date_of_birth').val("");
                $('#age').val("");
            } else {
                var age = Math.floor((today - date_of_birth) / (365.25 * 24 * 60 * 60 * 1000));
                $('#age').val(age);
            }
        });

        var datesForDisable = <?=$getHolidays?>;
        $("#booking_date").datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true,
            weekStart: 1,
            calendarWeeks: true,
            todayHighlight: true,
            datesDisabled: datesForDisable,
            startDate: new Date(Date.parse('<?=date('Y-m-d', strtotime(date('Y-m-d') . "+ 0 day"))?>')),
            endDate: new Date(Date.parse('<?=date('Y-m-d', strtotime(date('Y-m-d') . " + " . (int)$doctor->booking_days . " day"))?>'))
        });

        $("#booking_date").change(function () {
            var booking_date = $("#booking_date").val();
            var doctor =<?=$doctor->user_id?>;
            //$('#city').find('option:not(:first)').remove();
            $.post("<?=base_url('receptionist/appointment/date_booked')?>", {
                doctor: doctor,
                date: booking_date
            }, function (result) {
                console.log(result);
                $('#booked').text(result.booked + " Appointment booked.");
            });
        });
    });
</script>
