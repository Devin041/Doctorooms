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
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Appointment ID : <?= $appointment->appointment_no ?></h3>
                        <div class="card-options">
							<a href="<?= base_url('Appointment/print_prescription/'.$appointment->id)?>" class="btn btn-primary btn-sm"><i class="fe fe-printer"></i>Print</a>
<!--                            <button class="btn btn-primary btn-sm" onclick="print()">Print</button>-->
                        </div>
                    </div>
                    <div class="card-body no-margin no-padding">
                        <table class="table">
                            <tbody>
                            <th>Appointment ID</th>
                            <td><?= $appointment->appointment_no ?></td>
                            <th>Booking From</th>
                            <td>
                                <?= $appointment->booking_type ?>
                            </td>
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
        </div>

        <div class="row" id="pos">
            <?php if ($appointment_position) { ?>
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">My Position</h3>
                        </div>
                        <div class="card-body">

                            <table class="table table-hover table-outline table-vcenter text-nowrap card-table dttable">
                                <thead>
                                <tr>

                                    <th>Position</th>
                                    <th>Patient Name</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $no = 0;
                                foreach ($appointment_position as $appoint) { ?>
                                    <tr class="<?= ($appoint->id == $appointment->id) ? "table-warning" : "" ?>">
                                        <td>
                                            <div class="mx-auto chart-circle chart-circle-xs" data-value="1"
                                                 data-thickness="3" data-color="blue">
                                                <canvas width="40" height="40"></canvas>
                                                <div class="chart-circle-value"><?= ++$no ?></div>
                                            </div>

                                        </td>
                                        <td>
                                            <?= $appoint->petient_name ?>
                                        </td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            <?php } ?>
            <?php if ($isCheckBoxEnable) { ?>
                <?php if ($appointment->status != VISITED && $appointment->status != REJECTED) { ?>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Chat With us</h3>
                            </div>
                            <div class="card-body">
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
        <?php if ($prescription && $prescription->medicine_details) { ?>
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Prescription</h3>
                            <div class="card-options">
                                <button class="btn btn-primary btn-sm" onclick="print()">Print</button>
                            </div>
                        </div>
                        <div class="card-body no-margin no-padding">
                            <label>Disease Description</label>
                            <?= $prescription->disease_description ?>
                        </div>
                        <div class="card-body no-margin no-padding">
                            <label>Medicine List</label>
                            <table class="table table-borderless">
                                <?php foreach (json_decode($prescription->medicine_details) as $medicine) { ?>
                                    <tr>
                                        <td>
                                            <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                                            &nbsp<label><?= $medicine->medicine_name ?></label><br>
                                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                            <span class="text-muted"><?= $medicine->description ?></span>
                                        </td>
                                        <td>
                                            <?= $medicine->tab ?>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </table>
                            <hr>
                            <label>Remark</label><br>
                            <?= $prescription->remark ?>
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>
<?php if ($isCheckBoxEnable) { ?>
    <?php if ($appointment->status != VISITED && $appointment->status != REJECTED) { ?>
        <script>
            requirejs(['jquery'], function ($) {
                loadChat();

                setInterval(function () {
                    loadChat();
                }, 5000);

                function loadChat() {
                    var aptid =<?=$appointment->id?>;
                    $.post("<?=base_url('appointment/get_all_chat_message')?>", {appointid: aptid}, function (result) {
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
                                    "                                                <span class=\"glyphicon glyphicon-time\"></span>" + chat.created_at + "\n" +
                                    "                                            </small>\n" +
                                    "                                        </div>\n" +
                                    "                                        <p>" + chat.message + "</p>\n" +
                                    "                                    </div>\n" +
                                    "                                </li>";
                            }
                        });
                        $('#chat').html(chatMsg);
                        //scroll to end;
                        var objDiv = document.getElementById("chat-box");
                        objDiv.scrollTop = objDiv.scrollHeight;
                    });
                }

                $('#btn-send').click(function () {
                    var aptid =<?=$appointment->id?>;
                    var msg = $('#text-msg').val();
                    msg = msg.trim();
                    if (msg != "") {
                        $.post("<?=base_url('appointment/send_chat_msg')?>", {
                            appointId: aptid,
                            msg: msg
                        }, function (result) {
                            loadChat();
                            $('#text-msg').val("");
                        });
                    }
                });
            });
        </script>
    <?php } ?>
<?php } ?>
