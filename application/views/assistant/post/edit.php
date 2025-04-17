<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Blog
            <small>Manage blog from here</small>
            <div class="pull-right">
                <a href="<?= base_url("assistant/post") ?>" class="btn btn-danger btn-sm"><span class="fa fa-times"></span>
                    Cancel</a>
            </div>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Edit post</h3>
                    </div>
                    <?= form_open_multipart("assistant/post/update/$post->id", array("role" => "form")) ?>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="exampleInputTitle">Title</label>
                                    <input type="text" class="form-control" name="title"
                                           value="<?= (set_value("title")) ? set_value("title") : $post->title ?>"
                                           id="title" placeholder="Enter Title">
                                    <?php echo form_error('title'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="exampleInputDescription">Blog Contant</label>
                                    <textarea class="textarea form-control" rows="7"
                                              name="content"><?= (set_value("content")) ? set_value("content") : $post->content ?></textarea>
                                    <?php echo form_error('content'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="exampleInputTitle">Video Link <span class="text-muted">(optional)</span></label>
                                    <input type="text" class="form-control" name="video_link"
                                           value="<?= (set_value("video_link")) ? set_value("video_link") : $post->video_link ?>"
                                           id="title"
                                           placeholder="Enter Title">
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
                                <img src="<?= base_url() . "upload/blog/" . $post->blog_img ?>" alt=""
                                     style="height: 200px;width: 200px;">
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