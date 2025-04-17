<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Notifications
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <?php if ($all_notifications) { ?>
                    <div class="box">
                        <div class="box-body no-padding">
                            <table class="table table-hover">
                                <tbody>
                                <?php foreach ($all_notifications as $notification) { ?>
                                    <tr>
                                        <td class="<?= ($notification->status == UNREAD) ? "warning" : "" ?>">
                                            <i class="fa fa-bell-o"></i> <b><?= $notification->title ?></b><br>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= $notification->body ?>
                                            <p class="text-muted pull-right"><?= format_date_time($notification->created_at) ?></p>
                                        </td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                <?php } else { ?>
                    <div class="row">
                        <div class="col-sm-12">
                            <div style="font-size: 40px; opacity: 0.5;">
                                <center>
                                    <i class="fa fa-bell-o fa-5x"></i>
                                    <br>
                                    You have no notifications<br>
                                </center>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>

</div>