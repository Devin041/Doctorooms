<div class="content-wrapper" style="min-height: 960px;"><!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Assistant
            <small>Assistant list</small>
        </h1>
    </section><!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box"><!-- /.box-header -->
                    <div class="box-body"><!-- End -->
                        <div class="col-md-12 table-responsive">
                            <table id="example1" class="table table-bordered table-striped dataTable">
                                <thead>
                                <tr role="row">
                                    <th>No</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Mobile</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody><?php $n = 0;
                                foreach ($assistants as $key) { ?>
                                    <tr role="row" class="odd">
                                        <td><?= ++$n; ?></td>
                                        <td><?= $key->name ?></td>
                                        <td><?= $key->email ?></td>
                                        <td><?= $key->mobile_no ?></td>
                                        <td>
                                            <a href="<?= base_url() ?>admin/assistant/hide_unhide/<?= $key->id ?>"><span
                                                        class="label <?php if ($key->status == ACTIVE) {
                                                            echo 'label-success';
                                                        } else {
                                                            echo 'label-danger';
                                                        } ?> "><?= $key->status ?></span></a></td>
                                        <td>
                                            <a href="<?= base_url() ?>admin/assistant/profile_view?id=<?= $key->id ?>"><span
                                                        class="btn-sm btn-primary fa fa-eye"></span></a><a
                                                    href="<?= base_url() ?>admin/assistant/edit?id=<?= $key->id ?>"><span
                                                        class="btn-sm btn-warning fa fa-edit"></span></a></td>
                                    </tr> <?php } ?></tbody>
                            </table>
                        </div>
                    </div><!-- /.box-body --></div><!-- /.box --></div><!-- /.col --></div>
    </section><!-- /.content --></div>
