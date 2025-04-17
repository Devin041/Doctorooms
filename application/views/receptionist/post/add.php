<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Blog
            <small>Manage blog from here</small>
            <div class="pull-right">

                <a href="<?= base_url('receptionist/post') ?>" class="btn btn-danger btn-sm"><span
                            class="fa fa-times"></span>
                    Cancel</a>


            </div>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">New post</h3>
                    </div>
                    <?= form_open_multipart("receptionist/post/store", array("role" => "form")) ?>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="exampleInputTitle">Title</label>
                                    <input type="text" class="form-control" name="title"
                                           value="<?php echo set_value("title"); ?>" id="title"
                                           placeholder="Enter Title">
                                    <?php echo form_error('title'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="exampleInputDescription">Blog Contant</label>
                                    <textarea class="textarea form-control" rows="7"
                                              name="content"><?php echo set_value("content"); ?></textarea>
                                    <?php echo form_error('content'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Video Link <span class="text-muted">(optional)</span> </label>
                                    <input type="text"
                                           class="form-control <?= (form_error("video_link")) ? "is-invalid" : "" ?>"
                                           name="video_link"
                                           value="<?php echo set_value("video_link"); ?>" id="video_link"
                                           placeholder="Enter video link (e.g. https://www.youtube.com/embed/K4DyBUG242c )"
                                           id="ytplayerSide" onclick="validateYouTubeUrl()">
                                    <?php echo form_error('video_link'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="exampleInputTitle">Image <span
                                                class="text-muted">(optional)</span></label>
                                    <input type="file" class="form-control" name="image" id="image">
                                    <div class="text-danger"
                                         style="font-size: 10px;"><?php if (isset($imgError)) echo $imgError ?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <button type="submit" class="btn btn-success">Publish</button>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </section>
</div>
