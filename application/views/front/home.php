
<div id="carousel-captions" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <?php $no = 0;
        foreach ($slide as $key) {
            $no = $no + 1;
            ?>
            <div class="carousel-item <?= ($no == 1) ? "active" : "" ?>">
                <img class="d-block w-100" alt="" src="<?= base_url() ?>upload/slider/<?= $key->slider_image ?>"
                     data-holder-rendered="true">
            </div>
        <?php } ?>
    </div>
    <a class="carousel-control-prev" href="#carousel-captions" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-captions" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<div class="my-3 my-md-5">
    <div class="container">
        <div class="page-header">
            <h1 class="page-title">
                Doctors
            </h1>
            <div class="page-options d-flex">
                <a href="<?= base_url("doctors") ?>" class="btn btn-danger">VIEW ALL</a>
            </div>
        </div>
        <div class="row row-cards row-deck">
            <?php if ($doc) { ?>
                <?php foreach ($doc as $key) { ?>
                    <div class="col-sm-6 col-xl-3">
                        <div class="card card-profile">
                            <div class="card-header"
                                 style="background-image: url(<?= base_url() ?>assets/images/doctor_backgraound.jpeg); opacity: 0.5;"></div>
                            <div class="card-body text-center">
                                <img class="card-profile-img avatar-xxl"
                                     src="<?= base_url() ?>upload/profile/<?= $key->profile_img ?>">
                                <h3 class="mb-3">Dr. <?= $key->name ?></h3>
                                <p class="mb-4">
                                    <?= $key->doctor_type ?> | <?= $key->city ?>, <?= $key->state ?>
                                </p>
                                <a href="<?= base_url() ?>doctors/view/<?= $key->id ?>"
                                   class="btn btn-outline-primary btn-sm">
                                    <span class="fa fa-id-badge"></span> Profile
                                </a>
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

    </div>
    <div class="container">
        <div class="page-header">
            <h1 class="page-title">
                Hospitals
            </h1>
            <div class="page-options d-flex">
                <a href="<?= base_url("hospitals") ?>" class="btn btn-danger">VIEW ALL</a>
            </div>
        </div>
        <div class="row row-cards row-deck">
            <?php if ($hospitals) { ?>
                <?php foreach ($hospitals as $hospital) { ?>
                    <div class="col-sm-6 col-xl-3">
                        <div class="card card-profile">
                            <div class="card-header"
                                 style="background-image: url(<?= base_url() ?>assets/images/hospital_background.jpg); opacity: 0.5;">
                            </div>
                            <div class="card-body text-center">
                                <img class="card-profile-img avatar-xxl"
                                     src="<?= base_url() ?>upload/profile/<?= $hospital->profile_img ?>">
                                <h3 class="mb-3"><?= $hospital->hospital_name ?></h3>
                                <p class="mb-4">
                                    <?= $hospital->city ?>
                                </p>
                                <a href="<?= base_url() ?>hospitals/view/<?= $hospital->id ?>"
                                   class="btn btn-outline-primary btn-sm">
                                    <span class="fa fa-id-badge"></span> Profile
                                </a>
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

    </div>
    <div class="container">
        <div class="page-header">
            <h1 class="page-title">
                Recent Blog
            </h1>
            <div class="page-options d-flex">
                <a href="<?= base_url("blog") ?>" class="btn btn-danger">VIEW ALL</a>
            </div>
        </div>
        <div class="row row-cards row-deck">
            <?php if ($posts) { ?>
                <?php foreach ($posts as $blog) { ?>
                    <div class="col-sm-6 col-xl-3">
                        <div class="card">
                            <a href="<?= base_url("blog/view/$blog->paramalink") ?>"><img class="card-img-top" height="150" src="<?php if ($blog->blog_img) { ?><?= base_url() ?>upload/blog/<?= $blog->blog_img ?><?php } else { ?><?= base_url().'assets/images/no_img.png'?><?php } ?>"</a>
                            <div class="card-body d-flex flex-column">
                                <h4><a href="<?= base_url("blog/view/$blog->paramalink") ?>"><?= $blog->title ?></a>
                                </h4>
                                <div class="text-muted"><?= substr(strip_tags($blog->content), 0, 200) . "..." ?></div>
                                <div class="d-flex align-items-center pt-5 mt-auto">
                                    <div class="avatar avatar-md mr-3"
                                         style="background-image:url(<?= base_url() ?>upload/profile/<?= $blog->profile_img ?>)"></div>
                                    <div>
                                        <a href="" class="text-default"><?= $blog->name ?></a>
                                        <small class="d-block text-muted"><?= date("M, d Y", strtotime($blog->created_at)); ?></small>
                                    </div>
                                    <div class="ml-auto text-muted">
                                        <a href="<?= base_url("blog/view/$blog->paramalink") ?>"
                                           class="btn btn-sm btn-link">Read<i class="fe fe-chevrons-right"></i></a>
                                    </div>
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
    </div>
</div>
