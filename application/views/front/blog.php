<div class="my-3 my-md-5">
    <div class="container">
        <div class="row row-cards row-deck">
            <div class="col-lg-8">
                <div class="page-header">
                    <h1 class="page-title">
                        Blog
                    </h1>
                </div>
                <div class="row row-cards row-deck">
                    <?php if ($posts) { ?>
                        <?php foreach ($posts as $blog) { ?>
                            <div class="col-md-4">
                                <div class="card">
                                    <a href="<?= base_url("blog/view/$blog->paramalink") ?>"><img class="card-img-top" height="150" src="<?php if ($blog->blog_img) { ?><?= base_url() ?>upload/blog/<?= $blog->blog_img ?><?php } else { ?><?= base_url().'assets/images/no_img.png'?><?php } ?>"</a>
                                    <div class="card-body d-flex flex-column">
                                        <h4><a href="<?= base_url("blog/view/$blog->paramalink") ?>"><?= $blog->title ?></a>
                                        </h4>
                                        <div class="text-muted"><?= substr(strip_tags($blog->content), 0, 100) . "..." ?></div>
                                        <div class="d-flex align-items-center pt-5 mt-auto">
                                            <div class="avatar avatar-md mr-3"
                                                 style="background-image:url(<?= base_url() ?>upload/profile/<?= $blog->profile_img ?>)"></div>
                                            <div>
                                                <a href="" class="text-default"><?= $blog->name ?></a>
                                                <small class="d-block text-muted"><?= date("M, d Y", strtotime($blog->created_at)); ?></small>
                                            </div>
                                        </div>
                                        <div class="ml-auto text-muted">
                                            <a href="<?= base_url("blog/view/$blog->paramalink") ?>"
                                               class="btn btn-sm btn-link">Read More<i class="fe fe-chevrons-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    <?php } else { ?>
                        <div class="col-sm-12">
                            <div class="card card-aside">
                                <div class="card-body d-flex flex-column"
                                     style="margin-top: 50px; margin-bottom: 50px;">
                                    <center>
                                        <h5><a>Oops!</a></h5>
                                        <div class="text-muted"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> No
                                            data
                                        </div>
                                    </center>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>


                <ul class="pagination">
                    <?= $links ?>
                </ul>

            </div>
            <div class="col-md-4">
                <div class="page-header">
                    <h1 class="page-title">
                        Read more
                    </h1>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="table-responsive">
                                <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                                    <thead>
                                    <tr>
                                        <th class="text-center w-1"><i class="fa fa-list"></i></th>
                                        <th>Latest posts</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php if (!empty($latest_post)) { ?>
                                        <?php foreach ($latest_post as $lb) { ?>
                                            <tr>
                                                <td class="text-center">
                                                    <?php if ($lb->blog_img) { ?>
                                                        <div class="avatar-thumb d-block"
                                                             style="background-image: url(<?= base_url() ?>/upload/blog/<?= $lb->blog_img ?>)">
                                                        </div>
                                                    <?php } else { ?>
                                                        <div class="avatar-thumb d-block"
                                                             style="background-image: url(<?= base_url() ?>assets/images/no_img.png)">
                                                        </div>
                                                    <?php } ?>
                                                </td>
                                                <td>
                                                    <div>
                                                        <a href="<?= base_url("blog/view/$lb->paramalink") ?>"><?= substr(strip_tags($lb->title), 0, 32) . ".." ?></a>
                                                    </div>
                                                    <div class="small text-muted">
                                                        <?= substr(strip_tags($lb->content), 0, 35) . "..." ?>
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php } ?>
                                    <?php } else { ?>
                                        <tr>
                                            <td class="text-center">
                                                <div class="avatar-thumb" style="background-image: url()">
                                                </div>
                                            </td>
                                            <td>
                                                <p style="opacity: 0.7">
                                                    <i class="fa fa-exclamation-circle"></i> Ops! Data not found
                                                </p>
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
    </div>
</div>
