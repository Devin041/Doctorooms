<div class="my-3 my-md-5">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <?= form_open_multipart('post/update/'.$post->id) ?>
                    <div class="card-header">
                        <h3 class="card-title">Add New Post</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Title</label>
                                    <input type="text" class="form-control <?=(form_error("title"))?"is-invalid":""?>" name="title"
                                           value="<?=(set_value("title"))?set_value("title"):$post->title ?>" id="title"
                                           placeholder="Enter Title">
                                    <?php echo form_error('title'); ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Content</label>
                                    <textarea id="editor1" class="form-control" rows="7"
                                              name="content"><?=(set_value("content"))?set_value("content"):$post->content ?></textarea>
                                    <?php echo form_error('content'); ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Video Link <span class="text-muted">(optional)</span> </label>
                                    <input type="text" class="form-control <?=(form_error("video_link"))?"is-invalid":""?>" name="video_link"
                                           value="<?=(set_value("video_link"))?set_value("video_link"):$post->video_link ?>" id="video_link"
                                           placeholder="Enter video embed link (e.g. https://www.youtube.com/embed/K4DyBUG242c )">
                                    <?php echo form_error('video_link'); ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Image <span class="text-muted">(optional)</span></label>
                                    <input type="file" class="form-control <?php if (isset($imgError)) echo "is-invalid" ?>" name="image" id="image">
                                    <div class="text-danger" style="font-size: 10px;"><?php if (isset($imgError)) echo $imgError ?></div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <img src="<?= base_url() . "upload/blog/" . $post->blog_img ?>" alt="" style="height: 200px;width: 200px;">
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <div class="d-flex">
                            <button type="submit" class="btn btn-primary"><i class="fe fe-check-square"></i> Publish
                            </button>
                        </div>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </div>
</div>