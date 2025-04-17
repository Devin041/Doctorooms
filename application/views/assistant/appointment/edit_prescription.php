<div class="content-wrapper">
    <section class="content-header">
        <h1>
            My Appointments
            <small>Manage Appointments from here</small>
            <div class="pull-right">
                <a href="<?= base_url('assistant/appointment/show/'.$appointment->id) ?>" class="btn btn-warning">Back</a>
            </div>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-sm-4">
                <div class="box box-primary">
                    <div class="box-header with-border d-n">
                        <h3 class="box-title">Appointment Details</h3>
                        <div class="box-tools">
                        </div>
                    </div>
                    <div class="box-body">
                        <table class="table">
                            <tbody>
                            <tr>
                                <th>Appointment ID</th>
                                <td><?= $appointment->appointment_no ?></td>
                            </tr>
                            <tr>
                                <th>Booking From</th>
                                <td>
                                    <?= $appointment->booking_type ?>
                                </td>
                            </tr>
                            <tr>
                                <th>Appointment Date</th>
                                <td><?= format_date($appointment->booking_date) ?></td>
                            </tr>
                            <tr>
                                <th>Patient Name</th>
                                <td><?= $appointment->petient_name ?></td>
                            </tr>
                            <tr>
                                <th>Disease</th>
                                <td><?= $appointment->disease ?></td>
                            </tr>
                            <tr>
                                <th>Physical Handicape</th>
                                <td><?= $appointment->physical_handicape ?></td>
                            </tr>
                            <tr>
                                <th>Age</th>
                                <td><?= ($appointment->age) ? $appointment->age : "-" ?></td>
                            </tr>
                            <tr>
                                <th>Gender</th>
                                <td><?= $appointment->gender ?></td>
                            </tr>
                            <tr>
                                <th>Height (CM)</th>
                                <td><?= ($appointment->height) ? $appointment->height : "-" ?></td>
                            </tr>
                            <tr>
                                <th>Weight (KG)</th>
                                <td><?= ($appointment->weight) ? $appointment->weight : "-" ?></td>
                            </tr>
                            <tr>
                                <th>Book date</th>
                                <td><?= format_date($appointment->created_at) ?></td>
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
            <div class="col-sm-8">
                <div class="box box-primary">
                    <?= form_open_multipart("assistant/appointment/update_prescription/".$appointment->id, array("role" => "form")) ?>
                    <div class="box-header with-border d-n">
                        <h3 class="box-title">Edit Prescription</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="exampleInputDescription">Disease Description</label>
                                    <textarea class="textarea form-control" rows="7"
                                              name="disease_description"><?=$prescription->disease_description?></textarea>
                                    <?php echo form_error('disease_description'); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <button class="btn btn-primary">Submit</button>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </section>
</div>