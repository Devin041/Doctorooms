<div class="content-wrapper">
    <section class="content-header">
        <h1>
            My Appointments
            <small>Manage Appointments from here</small>
            <div class="pull-right">
                <a href="<?= base_url('receptionist/appointment') ?>" class="btn btn-warning">Back</a>
            </div>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="box box-primary">
                    <div class="box-header with-border d-n">
                        <h3 class="box-title">Appointment Details</h3>
                        <div class="box-tools">
                            <button onclick="print()" class="btn btn-default btn-sm" data-toggle="tooltip"
                                    title="Print"><span class="fa fa-print"></span></button>
                            <?php if ($appointment->status == PENDING) { ?>
                                <a href="<?= base_url('receptionist/appointment/approve/' . $appointment->id) ?>"
                                   class="btn btn-primary btn-sm" data-toggle="tooltip"
                                   title="Approved"><span
                                            class="fa fa-thumbs-o-up"></span></a>

                                <a href="<?= base_url('receptionist/appointment/extend/' . $appointment->id) ?>"
                                   class="btn btn-info btn-sm" data-toggle="tooltip"
                                   title="Extend"><span
                                            class="fa fa-arrow-right"></span></a>

                                <a href="<?= base_url('receptionist/appointment/reject/' . $appointment->id) ?>"
                                   class="btn btn-danger btn-sm" data-toggle="tooltip"
                                   title="Reject"><span class="fa fa-close"></span></a>

                            <?php } elseif ($appointment->status == EXTEND) { ?>
                                <a href="<?= base_url('receptionist/appointment/approve/' . $appointment->id) ?>"
                                   class="btn btn-primary btn-sm" data-toggle="tooltip"
                                   title="Approved"><span
                                            class="fa fa-thumbs-o-up"></span></a>
                                <a href="<?= base_url('receptionist/appointment/reject/' . $appointment->id) ?>"
                                   class="btn btn-danger btn-sm" data-toggle="tooltip"
                                   title="Reject"><span class="fa fa-close"></span></a>

                            <?php } elseif ($appointment->status == APPROVE) { ?>
                                <a href="<?= base_url('receptionist/appointment/visited/' . $appointment->id) ?>"
                                   class="btn btn-success btn-sm" data-toggle="tooltip"
                                   title="Visited"><span
                                            class="fa fa-check"></span></a>
                                <a href="<?= base_url('receptionist/appointment/reject/' . $appointment->id) ?>"
                                   class="btn btn-danger btn-sm" data-toggle="tooltip"
                                   title="Reject"><span class="fa fa-close"></span></a>
                            <?php } else { ?>

                            <?php } ?>
                        </div>
                    </div>
                    <div class="box-body">
                        <table class="table">
                            <tbody>
                            <tr>
                                <th>Appointment ID</th>
                                <td><?= $appointment->appointment_no ?></td>
                                <th>Booking From</th>
                                <td>
                                    <?= $appointment->booking_type ?>
                                </td>
                            </tr>
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
                </div>
            </div>
            <?php if ($appointment->status != VISITED && $appointment->status != REJECTED) { ?>
                <?php if($appointment->user_id) { ?>
                    <div class="col-sm-6">
                        <div class="box box-primary">
                            <div class="box-header with-border d-n">
                                <h3 class="box-title">Chat Box</h3>
                                <div class="box-tools">
                                </div>
                            </div>
                            <div class="box-body">
                                <div style="height: 400px; overflow: auto;" id="chat-box">
                                    <ul class="chat" id="chat">

                                    </ul>
                                </div>

                                <div class="input-group">
                                    <input id="text-msg" type="text" class="form-control input-sm"
                                           placeholder="Type your message here..."/>
                                    <span class="input-group-btn">
                            <button class="btn btn-warning btn-sm" id="btn-send">
                                Send</button>
                        </span>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            <?php } ?>
        </div>
    </section>
</div>
<?php if ($appointment->status != VISITED && $appointment->status != REJECTED) { ?>
    <script>
        $(document).ready(function () {
            loadChat();
            setInterval(function () {
                loadChat();
            }, 5000);

            function loadChat() {
                var aptid =<?=$appointment->id?>;
                $.post("<?=base_url('receptionist/appointment/get_all_chat_message')?>", {appointid: aptid}, function (result) {
                    var my =<?=$user->id?>;
                    var chatMsg = "<li><div class='text-center'> Start Conversation</div></li>";
                    result.forEach(function (chat) {
                        if (chat.from_id == my) {
                            chatMsg += "<li class=\"right clearfix\">\n" +
                                "                                <span class=\"chat-img pull-right\">\n" +
                                "                                    <img src=\"https://placehold.it/50/FA6F57/fff&text=ME\" alt=\"User Avatar\"\n" +
                                "                                         class=\"image\"/>\n" +
                                "                                </span>\n" +
                                "                                    <div class=\"chat-body clearfix\">\n" +
                                "                                        <div class=\"header\">\n" +
                                "                                            <small class=\" text-muted\"><span class=\"glyphicon glyphicon-time\"></span>" +
                                "                                               " + chat.created_at +
                                "                                            </small>\n" +
                                "                                            <strong class=\"pull-right primary-font\">" + chat.from_name + "</strong>\n" +
                                "                                        </div>\n" +
                                "                                        <p>" + chat.message + "</p>\n" +
                                "                                    </div>\n" +
                                "                                </li>";
                        } else {
                            chatMsg += "<li class=\"left clearfix\">\n" +
                                "                                <span class=\"chat-img pull-left\">\n" +
                                "                                    <img src=\"https://placehold.it/50/55C1E7/fff&text=" + chat.from_name.charAt(0) + "\" alt=\"User Avatar\"\n" +
                                "                                         class=\"img-circle\"/>\n" +
                                "                                </span>\n" +
                                "                                    <div class=\"chat-body clearfix\">\n" +
                                "                                        <div class=\"header\">\n" +
                                "                                            <strong class=\"primary-font\">" + chat.from_name + "</strong>\n" +
                                "                                            <small class=\"pull-right text-muted\">\n" +
                                "                                                <span class=\"glyphicon glyphicon-time\"></span>" + chat.created_at +
                                "                                            </small>\n" +
                                "                                        </div>\n" +
                                "                                        <p>" + chat.message + "</p>\n" +
                                "                                    </div>\n" +
                                "                                </li>";
                        }
                    });
                    $('#chat').html(chatMsg);

                    var objDiv = document.getElementById("chat-box");
                    objDiv.scrollTop = objDiv.scrollHeight;
                });
            }

            $('#btn-send').click(function () {
                var aptid =<?=$appointment->id?>;
                var msg = $('#text-msg').val();
                msg = msg.trim();
                if (msg != "") {
                    $.post("<?=base_url('receptionist/appointment/send_chat_msg')?>", {
                        appointId: aptid,
                        msg: msg
                    }, function (result) {
                        console.log(result);
                        loadChat();
                        $('#text-msg').val("");
                    });
                }DGKPM4300J
            });
        });

    </script>
<?php } ?>