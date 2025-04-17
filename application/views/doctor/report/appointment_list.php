<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Appointments
            <small>Manage Appointments from here</small>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">

                        <form method="GET">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input name="fromdate" type="date" class="form-control">
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <input name="todate" type="date" class="form-control">
                                </div>
                            </div>


                            <div class="col-md-2">
                                <div class="form-group">
                                    <select name="status"
                                            class="form-control input-sm">

                                        <option
                                                value="<?= PENDING ?>" <?= ($this->input->get('status') == PENDING) ? "selected" : "" ?>><?= PENDING ?></option>
                                        <option
                                                value="<?= EXTEND ?>" <?= ($this->input->get('status') == EXTEND) ? "selected" : "" ?>><?= EXTEND ?></option>
                                        <option
                                                value="<?= APPROVE ?>" <?= ($this->input->get('status') == APPROVE) ? "selected" : "" ?>><?= APPROVE ?></option>
                                        <option
                                                value="<?= VISITED ?>" <?= ($this->input->get('status') == VISITED) ? "selected" : "" ?>><?= VISITED ?></option>
                                        <option
                                                value="<?= REJECTED ?>" <?= ($this->input->get('status') == REJECTED) ? "selected" : "" ?>><?= REJECTED ?></option>
                                        <option
                                                value="" <?= (isset($_GET['status']) && $_GET['status'] == "All") ? "selected" : "" ?>>
                                            All
                                            Appointment
                                        </option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <input name="patientmobile" placeholder="Enter Patient Mobile" type="number"
                                       class="form-control">
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <input name="filter" type="submit" class="btn btn-sm btn-info" value="Filter">
                                </div>
                            </div>
                        </form>

                    </div>
                    <div class="box-body">
                        <table id="example" class="table table-bordered table-responsive display">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Appointment ID</th>
                                <th>Appointment Date</th>
                                <th>Who has booked</th>
                                <th>Patient Name</th>
                                <th>Doctor</th>
                                <th>Disease</th>
                                <th>Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $no = 0;
                            foreach ($appointments as $appointment) { ?>
                                <tr>
                                    <td><?= ++$no ?></td>
                                    <td><?= $appointment->appointment_no ?></td>
                                    <td><?= format_date($appointment->booking_date) ?></td>
                                    <td>
                                        <a href="<?= base_url('doctor/appointment/show/' . $appointment->id) ?>">
                                            <?= $appointment->name ?>
                                        </a>
                                        <br>
                                        <small class="text-muted"><?= $appointment->mobile_no ?>
                                            | <?= $appointment->email ?></small>

                                    </td>
                                    <td><?= $appointment->petient_name ?></td>
                                    <td>Dr. <?= $appointment->dname ?></td>
                                    <td><?= $appointment->disease ?></td>
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
                            <?php } ?>
                            </tbody>
                        </table>
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
