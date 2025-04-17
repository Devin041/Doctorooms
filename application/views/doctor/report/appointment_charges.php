<div class="content-wrapper" style="min-height: 990px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Reports
            <small>All report here</small>
        </h1>

    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Anointment Charges</h3>
                        <div class="box-tools">

                        </div>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <form method="get">
                                <div class="col-sm-4">
                                    <label>From Date</label>
                                    <input type="date" class="form-control input-sm" name="fromdate"
                                           value="<?= $this->input->get('fromdate') ?>">
                                </div>
                                <div class="col-sm-4">
                                    <label>To Date</label>
                                    <input type="date" class="form-control input-sm" name="todate"
                                           value="<?= $this->input->get('fromdate') ?>">
                                </div>
                                <div class="col-sm-4">
                                    <input type="submit" value="Filter" style="margin-top: 24px;"
                                           class="btn btn-warning btn-sm">
                                </div>
                            </form>
                        </div>
                        <?php if($appointment_charge) { ?>
                        <div class="row">
                            <div class="col-sm-12">
                                <h3><strong>Total charges</strong> : Rs. <?= $appointment_charge[0]->total ?></h3>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
    </section>
    <!-- /.content -->
</div>
