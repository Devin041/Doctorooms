<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Blog
            <small>Manage blog from here</small>
            <div class="pull-right">
                <a href="post/create" class="btn btn-success btn-sm"><span
                            class="fa fa-plus"></span> New</a>
            </div>
        </h1>
    </section>

    <section class="content">
        <?php if ($posts) { ?>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Blog details</h3>
                        </div>
                        <div class="box-body">
                            <table id="tblBlog" class="table table-bordered dttable">
                                <thead>
                                <tr>
                                    <th>#No</th>
                                    <th>Title</th>
                                    <th>Date Time</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                $no = 0;
                                foreach ($posts as $blog) {
                                    ?>
                                    <tr>
                                        <td><?= ++$no ?></td>
                                        <td>
                                            <a target="_blank"
                                               href="<?= base_url("blog/view/$blog->paramalink") ?>"><?= $blog->title ?></a>
                                        </td>
                                        <td><?= date("M d, Y - h:i A", strtotime($blog->created_at)); ?></td>
                                        <td>
                                            <?php if ($blog->status == PUBLISHED) { ?>
                                                <label class="label label-success"><?= $blog->status ?></label>
                                            <?php } ?>
                                            <?php if ($blog->status == HIDE) { ?>
                                                <label class="label label-default"><?= $blog->status ?></label>
                                            <?php } ?>
                                            <?php if ($blog->status == BLOCK) { ?>
                                                <label class="label label-danger"><?= $blog->status ?></label>
                                            <?php } ?>
                                        </td>

                                        <td>
                                            <a href="post/edit/<?=$blog->id?>"
                                               class="btn btn-info btn-xs" data-toggle="tooltip" title="Edit"><span
                                                        class="fa fa-edit"></span></a>

                                            <?php if ($blog->status == PUBLISHED) { ?>
                                                <a href="post/hide_unhide/<?=$blog->id?>"
                                                   class="btn btn-default btn-xs" data-toggle="tooltip"
                                                   title="Hide"><span class="fa fa-eye-slash"></span></a>
                                            <?php } elseif ($blog->status == HIDE) { ?>
                                                <a href="post/hide_unhide/<?=$blog->id?>"
                                                   class="btn btn-default btn-xs" data-toggle="tooltip"
                                                   title="Publish"><span class="fa fa-eye"></span></a>
                                            <?php } else { ?>
                                            <?php } ?>

                                            <a href="post/delete/<?=$blog->id?>"
                                               class="btn btn-danger btn-xs"
                                               data-toggle="tooltip" title="Delete"><span
                                                        class="fa fa-trash"></span></a>
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