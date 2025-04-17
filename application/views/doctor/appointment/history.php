
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Appointment History
<!--            <small>View Appointments History by Patient</small>-->
        </h1>
        <form  method="get" action="<?=base_url('doctor/appointment/history')?>" style="margin: -30px 0px 0px 220px;">
            <div class="col-md-3">
                <input type="text" placeholder="EnterAppointment ID" name="aptid" class="form-control">
            </div>
            <div class="col-md-3">
                <input type="number" placeholder="Enter Mobile Number" name="mobile" class="form-control">
            </div>
            <button type="submit" class="btn btn-sm btn-success"><span class="fa fa-search"></span></button>
        </form>
    </section>
    <?php if ($appointments) { ?>
    <section class="content">
        <?php  foreach ($appointments as $appointment) {

        	?>
            <div class="row">
                <div class="single-item col-sm-12">
                    <div class="box box-primary">
                        <div class="box-header with-border d-n">
                            <h3 class="box-title">Appointment Details</h3>
                            <div class="box-tools">
                                <button onclick="print()" class="btn btn-default btn-sm" data-toggle="tooltip"
                                        title="Print"><span class="fa fa-print"></span></button>
                                <?php if (!$prescription && $appointment->status == APPROVE) { ?>
                                    <a href="<?= base_url('doctor/appointment/create_prescription/' . $appointment->id) ?>"
                                       class="btn btn-success btn-sm" data-toggle="tooltip"
                                       title="Create Prescription"><span class="fa fa-plus"></span></a>
                                <?php } ?>

                                <?php if ($appointment->status == PENDING) { ?>
                                    <a href="<?= base_url('doctor/appointment/approve/' . $appointment->id) ?>"
                                       class="btn btn-primary btn-sm" data-toggle="tooltip"
                                       title="Approved"><span
                                                class="fa fa-thumbs-o-up"></span></a>

                                    <a href="<?= base_url('doctor/appointment/extend/' . $appointment->id) ?>"
                                       class="btn btn-info btn-sm" data-toggle="tooltip"
                                       title="Extend"><span
                                                class="fa fa-arrow-right"></span></a>

                                    <a href="<?= base_url('doctor/appointment/cancel/' . $appointment->id) ?>"
                                       class="btn btn-danger btn-sm" data-toggle="tooltip"
                                       title="Cancel"><span class="fa fa-close"></span></a>

                                <?php } elseif ($appointment->status == EXTEND) { ?>
                                    <a href="<?= base_url('doctor/appointment/approve/' . $appointment->id) ?>"
                                       class="btn btn-primary btn-sm" data-toggle="tooltip"
                                       title="Approved"><span
                                                class="fa fa-thumbs-o-up"></span></a>
                                    <a href="<?= base_url('doctor/appointment/cancel/' . $appointment->id) ?>"
                                       class="btn btn-danger btn-sm" data-toggle="tooltip"
                                       title="Cancel"><span class="fa fa-close"></span></a>

                                <?php } elseif ($appointment->status == APPROVE) { ?>
                                    <a href="<?= base_url('doctor/appointment/visited/' . $appointment->id) ?>"
                                       class="btn btn-success btn-sm" data-toggle="tooltip"
                                       title="Visited"><span
                                                class="fa fa-check"></span></a>
                                    <a href="<?= base_url('doctor/appointment/cancel/' . $appointment->id) ?>"
                                       class="btn btn-danger btn-sm" data-toggle="tooltip"
                                       title="Cancel"><span class="fa fa-close"></span></a>
                                <?php } else { ?>

                                <?php } ?>
                            </div>
                        </div>
                        <div class="box-body">
                            <table class="table">
                                <tbody>
                                <th>Appointment ID</th>
                                <td><?= $appointment->appointment_no ?></td>
                                <th>Booking From</th>
                                <td>
                                    <?= $appointment->booking_type ?>
                                </td>
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
                        <!-- prescription -->
                        <div class="box-header with-border d-n">
                            <h3 class="box-title">Prescription</h3>
                        </div>
                        <div class="box-body">
                            <table class="table">
                                <tbody>
                                <th>Description</th>
                                <td><?= $appointment->disease_description ?></td>
                                </tbody>
                            </table>
                        </div>

                        <!-- medicine-->
                        <div class="box-header with-border d-n">
                            <h3 class="box-title">Medicine Details</h3>
                        </div>
                        <div class="box-body">
                            <table class="table">
                                <tr>
                                    <th>No.</th>
                                    <th>Medicine</th>
									<th>Doz</th>
                                    <th>Quantity</th>
									<th>Time</th>
                                    <th>Description</th>
                                </tr>
                                <tbody>
                                <?php
                                $n = 0;
								$p_id=$appointment->p_id;
								$medicines=$p_medicine->get_prescription_medicine($p_id);
                                //$getpriscriptiondata=$book->get_prescription_data_by_booking_id($appointment->id);

                               // $medicines = json_decode($appointment->medicine_details);
                                foreach ($medicines as $medicine) {
                                    ?>
                                    <tr>
                                        <td><?= ++$n; ?></td>
                                        <td><?= $medicine->medicine ?></td>
										<td><?= $medicine->doz ?></td>
                                        <td><?= $medicine->tab ?></td>
										<td><?= $medicine->morning ?>-<?= $medicine->after_noon ?>-<?= $medicine->evning ?></td>
                                        <td><?= $medicine->description ?></td>
                                    </tr>
                                <?php } ?>
                                <tr>
                                    <th>Remark</th>
                                    <td><?= $appointment->remark ?></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>
        <style>
            @media print {
                .pagination {display:none;}
            }
        </style>
        <ul class="pagination">
            <?= $links ?>
        </ul>
    </section>
    <?php } else { ?>
        <br>
        <br>
        <div class="row">
            <div class="col-sm-12">
                <div style="font-size: 40px; opacity: 0.5;">
                    <center>
                        <i class="fa fa-exclamation-circle fa-5x"></i>
                        <br>
                        No History yet<br>
                    </center>
                </div>
            </div>
        </div>
    <?php } ?>
</div>

<script>
</script>
