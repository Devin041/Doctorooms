<div class="content-wrapper">
    <section class="content-header">
        <h1>
            My Appointments
            <small>Manage Appointments from here</small>
            <div class="pull-right">
                <a href="<?= base_url('assistant/appointment/show/' . $appointment->id) ?>"
                   class="btn btn-warning">Back</a>
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
                    <?= form_open_multipart("assistant/appointment/store_medicine/" . $appointment->id, array("role" => "form")) ?>
                    <div class="box-header with-border d-n">
                        <h3 class="box-title">Create Medicine list</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <table id="mytbl" class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>Medicine Name</th>
                                        <th>Tab</th>
                                        <th>Description</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <div class="form-group">
                                                <span style="position: relative;">
                                                <input type="text" class="form-control basicAutoComplete"
                                                       placeholder="Enter medicine name"
                                                       name="details[0][medicine_name]" autocomplete="off" required>
                                                </span>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="details[0][tab]"
                                                       placeholder="Enter Medicine quantity" required>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="details[0][description]"
                                                       placeholder="Enter description">
                                            </div>
                                        </td>
                                        <td>
                                            <!-- <button onclick="removeItem(this)" class="btn btn-danger btn-sm"><span
                                                     class="fa fa-trash-o"></span>
                                             </button>-->
                                        </td>
                                    </tr>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td>
                                            <button id="addMore" type="button" class="btn btn-info btn-xs"><span
                                                        class="fa fa-plus"> Add More</span>
                                            </button>
                                        </td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="exampleInputDescription">Remark</label>
                                    <textarea class="form-control" rows="5"
                                              name="remark"><?php echo set_value("remark"); ?></textarea>
                                    <?php echo form_error('remark'); ?>
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
<script src="https://cdn.jsdelivr.net/gh/xcash/bootstrap-autocomplete@v2.2.2/dist/latest/bootstrap-autocomplete.min.js"></script>
<script>
    $(document).ready(function () {
        $("#addMore").click(function () {
            var row = "<?php $r =
                <<<END
            <tr>
                                        <td>
                                            <div class="form-group">
                                                <span style="position: relative;">
                                                    <input type="text" class="form-control basicAutoComplete" placeholder="Enter medicine name"
                                                       name="details[__name__][medicine_name]" autocomplete="off" required>
                                                </span>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="details[__name__][tab]"
                                                       placeholder="Enter Medicine quantity" required>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="details[__name__][description]"
                                                       placeholder="Enter description">
                                            </div>
                                        </td>
                                        <td>
                                            <button onclick="removeItem(this)" class="btn btn-danger btn-sm"><span
                                                        class="fa fa-trash-o"></span>
                                            </button>
                                        </td>
                                    </tr>

END;
                echo(htmlspecialchars(str_replace("\r", '', str_replace("\n", '', $r))));
                ?>";
            var count = $('#mytbl > tbody > tr').length;

            row = row.replace(/__name__/g, count);

            $('#mytbl tbody').append($("<div/>").html(row).text());
            $('.basicAutoComplete').autoComplete({
                resolverSettings: {
                    url: '<?=base_url('assistant/appointment/get_branch')?>'
                }
            });
        });

        $('.basicAutoComplete').autoComplete({
            resolverSettings: {
                url: '<?=base_url('assistant/appointment/get_branch')?>'
            }
        });

    });

    function removeItem(btn) {
        $(btn).parent().parent().remove();
    }
</script>