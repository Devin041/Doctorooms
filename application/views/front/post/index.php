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
                        <h3 class="card-title">My Posts</h3>
                        <span class="float-right ml-auto">
                        <a href="post/create" class="btn btn-success"><i class="fe fe-plus"></i> New</a>
                    </span>
                    </div>
                    <div class="table-responsive">
                        <table class="table card-table table-vcenter text-nowrap dttable">
                            <thead>
                            <tr>
                                <th class="w-1">No.</th>
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
                                    <td><span class="text-muted"><?= ++$no ?></span></td>
                                    <td>
                                        <a target="_blank"
                                           href="<?= base_url("blog/view/$blog->paramalink") ?>"><?= $blog->title ?></a>
                                    </td>
                                    <td><?= date("M d, Y - h:i A", strtotime($blog->created_at)); ?></td>
                                    <td>
                                        <?php if ($blog->status == PUBLISHED) { ?>
                                            <label class="badge badge-success"><?= $blog->status ?></label>
                                        <?php } ?>
                                        <?php if ($blog->status == HIDE) { ?>
                                            <label class="badge badge-default"><?= $blog->status ?></label>
                                        <?php } ?>
                                        <?php if ($blog->status == BLOCK) { ?>
                                            <label class="badge badge-danger"><?= $blog->status ?></label>
                                        <?php } ?>
                                    </td>

                                    <td>
                                        <a href="post/edit/<?= $blog->id ?>"
                                           class="btn btn-info btn-sm" data-toggle="tooltip" title="Edit"><span
                                                    class="fa fa-edit"></span></a>

                                        <a href="post/delete/<?= $blog->id ?>"
                                           class="btn btn-danger btn-sm" onclick="return conformDel(this, event)"
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
    </div>
</div>
