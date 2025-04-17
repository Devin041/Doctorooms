<div class="content-wrapper">
    <section class="content-header">
        <h1>
            My Appointments
            <small>Manage Appointments from here</small>
            <div class="pull-right">
                <a href="<?= base_url('assistant/appointment') ?>" class="btn btn-warning">Back</a>
            </div>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="box box-primary">
                    <div class="box-header with-border d-n">
                        <h3 class="box-title">Appointment Details</h3>
                        <div class="box-tools">
                            <button onclick="print()" class="btn btn-default btn-sm" data-toggle="tooltip"
                                    title="Print"><span class="fa fa-print"></span></button>
                            <?php if (!$prescription && $appointment->status == APPROVE) { ?>
                                <a href="<?= base_url('assistant/appointment/create_prescription/' . $appointment->id) ?>"
                                   class="btn btn-success btn-sm" data-toggle="tooltip"
                                   title="Create Description"><span class="fa fa-plus"></span></a>



                            <?php }?>


							<?php if ( $appointment->status == APPROVE) { ?>



								<a href="<?= base_url('assistant/AjaxPrescription/create?booking_id='.$appointment->id.'&user_id='.$appointment->user_id.'') ?>"
								   class="btn btn-success btn-sm" data-toggle="tooltip"
								   title="Create Ajax Prescription"><span class="fa fa-user-plus"></span></a>
							<?php }elseif ($appointment->status == VISITED){?>

								<a href="<?= base_url('assistant/AjaxPrescription/create?booking_id='.$appointment->id.'&user_id='.$appointment->user_id.'') ?>"
								   class="btn btn-success btn-sm" data-toggle="tooltip"
								   title="Update Ajax Prescription"><span class="fa fa-user-plus"></span></a>
								<a href="<?= base_url('assistant/AjaxPrescription/print_prescription?booking_id='.$appointment->id.'&user_id='.$appointment->user_id.'')?>" class="btn btn-primary btn-sm" data-toggle="tooltip"
								   title="Print"><span class="fa fa-print"></span></a>
							<?php	} ?>
                        </div>
                    </div>
                    <div class="box-body">
                        <table class="table">
                            <tbody>
                            <tr>
                                <th>Appointment ID</th>
                                <td><?= $appointment->appointment_no ?></td>
                                <th>Booking From</th>
                                <td>
                                    <?= $appointment->booking_type ?>
                                </td>
                            </tr>
                            <tr>
                                <th>Appointment Date</th>
                                <td><?= format_date($appointment->booking_date) ?></td>
                                <th>Patient Name</th>
                                <td><?= $appointment->petient_name ?></td>
                            </tr>
                            <tr>
                                <th>Disease</th>
                                <td><?= $appointment->disease ?></td>
                                <th>Physical Handicape</th>
                                <td><?= $appointment->physical_handicape ?></td>
                            </tr>
                            <tr>
                                <th>Date Of Birth</th>
                                <td><?= ($appointment->date_of_birth) ? $appointment->date_of_birth : "-" ?></td>
                                <th>Age</th>
                                <td><?= ($appointment->age) ? $appointment->age : "-" ?></td>
                            </tr>
                            <tr>
                                <th>Gender</th>
                                <td><?= $appointment->gender ?></td>
                                <th>Relation With Who has Booked</th>
                                <td><?= ($appointment->relation_with_me) ? $appointment->relation_with_me : "-" ?></td>
                            </tr>
                            <tr>
                                <th>Height (CM)</th>
                                <td><?= ($appointment->height) ? $appointment->height : "-" ?></td>
                                <th>Weight (KG)</th>
                                <td><?= ($appointment->weight) ? $appointment->weight : "-" ?></td>
                            </tr>
                            <tr>
                                <th>Book date</th>
                                <td><?= format_date($appointment->created_at) ?></td>
                                <th>Status</th>
                                <td>
                                    <?php
                                    if ($appointment->status == PENDING) {
                                        $cls = "label-warning";
                                    } elseif ($appointment->status == APPROVE) {
                                        $cls = "label-primary";
                                    } elseif ($appointment->status == EXTEND) {
                                        $cls = "label-info";
                                    } elseif ($appointment->status == VISITED) {
                                        $cls = "label-success";
                                    } else {
                                        $cls = "label-danger";
                                    }
                                    ?>
                                    <label class="label <?= $cls ?>"><?= $appointment->status ?></label>
                                </td>
                            </tr>
                            <tr>
                                <th>Description</th>
                                <td colspan="3"><?= $appointment->description ?></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <?php if ($prescription) { ?>
                <div class="col-sm-12">
                    <div class="box box-primary">
                        <div class="box-header with-border d-n">
                            <h3 class="box-title">Prescription</h3>
                            <div class="box-tools">
                                <?php if (!$prescription->medicine_details && $appointment->status == APPROVE) { ?>
                                    <a href="<?= base_url('assistant/appointment/create_medicine/' . $appointment->id) ?>"
                                       class="btn btn-success btn-sm" data-toggle="tooltip"
                                       title="Add Medicine List"><span class="fa fa-th-list"></span></a>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="box-body">
                            <label>Disease Description</label>
                            <?php if ($appointment->status == APPROVE) { ?>
                                <a href="<?= base_url('assistant/appointment/edit_prescription/' . $appointment->id) ?>"
                                   class="" data-toggle="tooltip"
                                   title="Edit Prescription"><span class="fa fa-edit"></span></a>
                            <?php } ?>
                            <?= $prescription->disease_description ?>
                        </div>
                        <?php if ($prescription->medicine_details) { ?>
                            <div class="box-body">
                                <label>Medicine List</label>
                                <?php if ($appointment->status == APPROVE) { ?>
                                    <a href="<?= base_url('assistant/appointment/edit_medicine/' . $appointment->id) ?>"
                                       class="" data-toggle="tooltip"
                                       title="Edit Medicine List"><span class="fa fa-edit"></span></a>
                                <?php } ?>
                                <table class="table table-borderless">
                                    <?php foreach (json_decode($prescription->medicine_details) as $medicine) { ?>
                                        <tr>
                                            <td>
                                                <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                                                &nbsp<label><?= $medicine->medicine_name ?></label><br>
                                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <span class="text-muted"><?= $medicine->description ?></span>
                                            </td>
                                            <td>
                                                <?= $medicine->tab ?>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                </table>
                                <hr>
                                <label>Remark</label><br>
                                <?= $prescription->remark ?>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            <?php } ?>
        </div>
    </section>
</div>
