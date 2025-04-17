<div class="my-3 my-md-5">
    <div class="container">
        <?php
        if ($feedback = $this->session->flashdata('feedback')) {
            $class = $this->session->flashdata('feedback_class');
            ?>
            <div class="alert alert-<?= ($class == 'error') ? "danger" : $class ?>" role="alert">
                <?= $feedback ?>
            </div>
        <?php } ?>
        <div class="row">
            <div class="col-12">
                <div class="page-header">
                    <h1 class="page-title">My Appointment</h1>
                    <div class="page-options d-flex" style="margin-right: 14px;">
                        <form class="float-left form-inline">
                            <div class="row text-center">
                                <div class="form-group col-centered">
                                    <input type="date" name="from" value="<?=$this->input->get('from')?>" id="from" class="form-control"
                                           style="height: 34px;">
                                </div>
                                <div class="form-group col-centered">
                                    <input type="date" name="to" id="to" value="<?=$this->input->get('to')?>" class="form-control"
                                           style="height: 34px;">
                                </div>
                                <div class="form-group col-centered">
                                    <select class="form-control" style="height: 34px;" name="status">
                                        <option value="<?= PENDING ?>" <?= ($this->input->get('status') == PENDING) ? "selected" : "" ?>><?= PENDING ?></option>
                                        <option value="<?= EXTEND ?>" <?= ($this->input->get('status') == EXTEND) ? "selected" : "" ?>><?= EXTEND ?></option>
                                        <option value="<?= APPROVE ?>" <?= ($this->input->get('status') == APPROVE) ? "selected" : "" ?>><?= APPROVE ?></option>
                                        <option value="<?= REJECTED ?>" <?= ($this->input->get('status') == REJECTED) ? "selected" : "" ?>><?= REJECTED ?></option>
                                        <option value="<?= VISITED ?>" <?= ($this->input->get('status') == VISITED) ? "selected" : "" ?>><?= VISITED ?></option>
                                        <option value="<?= "all" ?>" <?= ($this->input->get('status') == 'all') ? "selected" : "" ?>><?="All"?></option>
                                    </select>
                                </div>
                                <div class="form-group col-centered">
                                    <button type="submit" class="btn btn-warning btn-sm ml-2"
                                            style="line-height: 1.84615385!important;"><i class="fe fe-filter"></i>
                                        Filter
                                    </button>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <div class="table-responsive">
                        <table class="table table-hover table-outline table-vcenter text-nowrap card-table dttable">
                            <thead>
                            <tr>
                                <th class="text-center w-1"><i class="icon-people"></i></th>
                                <th>Appointment ID</th>
                                <th>Doctor</th>
                                <th>Patient Name</th>
                                <th>Disease</th>
                                <th class="text-center">Status</th>
                                <th class="text-center"><i class="fa fa-cog"></i></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($appointments as $appointment) { ?>
                                <tr>
                                    <td class="text-center">
                                        <div class="avatar d-block"
                                             style="background-image: url(<?= base_url() ?>upload/profile/<?= $appointment->profile_img ?>)">
                                            <span class="avatar-status bg-green"></span>
                                        </div>
                                    </td>
                                    <td>
                                        <a data-toggle="tooltip" title="Click here to chat with us." href="<?= base_url() . "appointment/show/" . $appointment->id ?>">
                                            <?= $appointment->appointment_no ?>
                                        </a>
                                    </td>
                                    <td>
                                        <div><?= $appointment->name ?></div>
                                        <div class="small text-muted">
                                            Booked at: <?= format_date($appointment->created_at) ?>
                                        </div>
                                        <div class="small text-muted">
                                            Booking on: <?= format_date($appointment->booking_date) ?>
                                        </div>
                                    </td>
                                    <td>
                                        <?= $appointment->petient_name ?>
                                    </td>
                                    <td>
                                        <?= $appointment->disease ?>
                                    </td>
                                    <td class="text-center">
                                        <?php
                                        if ($appointment->status == PENDING) {
                                            $cls = "tag-warning";
                                        } elseif ($appointment->status == APPROVE) {
                                            $cls = "tag-primary";
                                        } elseif ($appointment->status == EXTEND) {
                                            $cls = "tag-info";
                                        } elseif ($appointment->status == VISITED) {
                                            $cls = "tag-green";
                                        } else {
                                            $cls = "tag-danger";
                                        }
                                        ?>
                                        <label class="tag <?= $cls ?>"><?= $appointment->status ?></label>
                                    </td>
                                    <td class="text-center">
                                        <?php if ($appointment->status == PENDING || $appointment->status == EXTEND) { ?>
                                        <div class="item-action dropdown">
                                            <a href="javascript:void(0)" data-toggle="dropdown" class="icon"><i
                                                        class="fe fe-more-vertical"></i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a onclick="return conformCancel(this, event)" href="<?= base_url('appointment/cancel/' . $appointment->id) ?>"
                                                   class="dropdown-item"><i
                                                            class="dropdown-icon fe fe-tag"></i> Cancel </a>
                                            </div>
                                        </div>
                                        <?php } ?>
                                    </td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
