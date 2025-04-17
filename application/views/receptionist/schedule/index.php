<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Schedule
            <small>Manage Schedule from here</small>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">How many days before the appointment will be book?</h3>
                    </div>
                    <div class="box-body">
                        <?= form_open("receptionist/schedule/update_appointment_day") ?>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group <?= (form_error('days')) ? "has-error" : "" ?>">
                                    <input type="text" class="form-control" name="days" placeholder="Enter day's"
                                           value="<?= $doctor->booking_days ?>">
                                    <?= form_error('days') ?>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </div>
                        <?= form_close() ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-primary">
                    <?= form_open("receptionist/schedule/delete_multi") ?>
                    <div class="box-header with-border">
                        <h3 class="box-title">Holiday list</h3>
                        <div class="pull-right">
                            <button id="selectAll" type="button" class="btn btn-default btn-sm"><span
                                        class="fa fa-check-square-o"></span> Select All
                            </button>
                            <button onclick="return conformFormDel(this, event)" type="submit" class="btn btn-danger btn-sm"><span
                                        class="fa fa-trash-o"></span> Delete Selected
                            </button>
                            <a href="<?= base_url('receptionist/schedule/create') ?>" class="btn btn-success btn-sm"><span
                                        class="fa fa-plus"></span> New</a>
                        </div>
                    </div>
                    <div class="box-body">
                        <table class="table table-bordered dttable">
                            <thead>
                            <tr>
                                <th style="width: 25px;"></th>
                                <th>#</th>
                                <th>Date</th>
                                <th>Remark</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $no = 0;
                            foreach ($schedule as $sch) { ?>
                                <tr class="<?= (new DateTime($sch->date) < new DateTime(date("Y-m-d"))) ? "danger" : "success" ?>">
                                    <td>
                                        <input name="selection[]" style="height: 25px; width: 25px;" type="checkbox"
                                               value="<?= $sch->id ?>">
                                    </td>
                                    <td><?= ++$no ?></td>
                                    <td><?= format_date($sch->date) ?></td>
                                    <td><?= $sch->remark ?></td>
                                    <td>
                                        <a href="<?= base_url('receptionist/schedule/delete/' . $sch->id) ?>"
                                           class="btn btn-danger btn-sm" onclick="return conformDel(this, event)">
                                            <span class="fa fa-trash-o"></span>
                                        </a>
                                    </td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </section>
</div>
<script>
    $(document).ready(function () {
        $("#selectAll").click(function () {
            $("input[type='checkbox']").attr('checked', true);
        });
    });
</script>