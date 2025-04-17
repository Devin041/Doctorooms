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
                <div class="box box-primary">
                    <?= form_open("receptionist/schedule/store") ?>
                    <div class="box-header with-border">
                        <h3 class="box-title">Add Holiday's</h3>
                    </div>
                    <div class="box-body">
                        <table id="mytbl" class="table table-bordered">
                            <thead>
                            <tr>
                                <th>Date</th>
                                <th>Remark</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <input type="date" class="form-control" onchange="checkDate(this)"
                                               name="schedule[0][date]" required>
                                    </div>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="schedule[0][remark]"
                                               placeholder="Enter remark">
                                    </div>
                                </td>
                                <td>
                                    <button onclick="removeItem(this)" class="btn btn-danger btn-sm"><span
                                                class="fa fa-trash-o"></span>
                                    </button>
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
                    <div class="box-footer">
                        <button class="btn btn-primary" type="submit">Save</button>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </section>
</div>