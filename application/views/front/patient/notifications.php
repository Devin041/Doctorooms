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
                    <h1 class="page-title">Notifications</h1>
                    <div class="page-options d-flex" style="margin-right: 14px;">
                        <form class="float-left form-inline">
                            <div class="row text-center">
                            </div>
                        </form>
                    </div>
                </div>
                <?php if ($all_notifications) { ?>
                <div class="card">
                    <table class="table card-table table-vcenter">
                        <tbody>
                        <?php foreach ($all_notifications as $notification) { ?>
                        <tr class="<?= ($notification->status == UNREAD) ? "table-warning" : "" ?>">
                            <td>
                                <span class="mr-1 align-self-center fe fe-bell"></span>
                            </td>
                            <td>
                                <strong><?= $notification->title ?></strong>
                                <div class="small"><?= $notification->body ?></div>
                            </td>
                            <td class="text-right text-muted d-none d-md-table-cell text-nowrap"><?= format_date_time($notification->created_at) ?></td>
                        </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>
                <?php } else { ?>
                    <div style="font-size: 20px; opacity: 0.5; margin-top: 70px; margin-bottom: 70px;">
                        <div class="text-center">
                            <i class="fe fe-bell fa-5x"></i>
                            <br>
                            You have no notifications<br>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
