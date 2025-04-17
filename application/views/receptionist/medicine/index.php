<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Medicine
            <small>Manage Medicine List from here</small>
            <div class="pull-right">
                <a href="medicinemaster/add" class="btn btn-success btn-sm"><span
                        class="fa fa-plus"></span> New</a>
            </div>
        </h1>
    </section>

    <section class="content">
        <?php if ($medicines) { ?>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Medicine List</h3>
                        </div>
                        <div class="box-body">
                            <table id="tblBlog" class="table table-bordered dttable">
                                <thead>
                                <tr>
                                    <th>#No</th>
                                    <th>Medicine Name</th>
									<th>Time</th>
									<th>Doz</th>
									<th>Tab</th>
									<th>Description</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                $no = 0;
                                foreach ($medicines as $medicine) {
                                    ?>
                                    <tr>
                                        <td><?= ++$no ?></td>
                                        <td><?= $medicine->name ?></td>
										<td><?= $medicine->morning ?>-<?= $medicine->afternoon ?>-<?= $medicine->evening ?></td>
										<td><?php foreach (json_decode($medicine->doz) as $doz) { echo $doz.', '; } ?></td>
										<td><?= $medicine->tab ?></td>
										<td><?= $medicine->description ?></td>
                                        <td>
                                            <?php if ($medicine->status == ACTIVE) { ?>
                                                <label class="label label-success"><?= $medicine->status ?></label>
                                            <?php } ?>
                                            <?php if ($medicine->status == BLOCK) { ?>
                                                <label class="label label-danger"><?= $medicine->status ?></label>
                                            <?php } ?>
                                        </td>

                                        <td>
                                            <a href="medicinemaster/edit/<?=$medicine->id?>"
                                               class="btn btn-info btn-xs" data-toggle="tooltip" title="Edit"><span
                                                    class="fa fa-edit"></span></a>

                                            <?php if ($medicine->status == ACTIVE) { ?>
                                                <a href="medicinemaster/hide_unhide/<?=$medicine->id?>"
                                                   class="btn btn-success btn-xs" data-toggle="tooltip"
                                                   title="Click To Block"><span class="fa fa-check"></span></a>
                                            <?php } elseif ($medicine->status == BLOCK) { ?>
                                                <a href="medicinemaster/hide_unhide/<?=$medicine->id?>"
                                                   class="btn btn-danger btn-xs" data-toggle="tooltip"
                                                   title="Click To Active"><span class="fa fa-ban"></span></a>
                                            <?php } else { ?>
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
        <?php } else { ?>
            <div class="row">
                <div class="col-sm-12">
                    <div style="font-size: 40px; opacity: 0.5;">
                        <center>
                            <i class="fa fa-exclamation-circle fa-5x"></i>
                            <br>
                            No data yet<br>

                        </center>
                    </div>
                </div>
            </div>
        <?php } ?>
    </section>

</div>
