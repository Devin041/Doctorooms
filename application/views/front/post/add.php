<div class="my-3 my-md-5">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <?= form_open_multipart('post/store') ?>
                    <div class="card-header">
                        <h3 class="card-title">Add New Post</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Title</label>
                                    <input type="text" class="form-control <?=(form_error("title"))?"is-invalid":""?>" name="title"
                                           value="<?php echo set_value("title"); ?>" id="title"
                                           placeholder="Enter Title">
                                    <?php echo form_error('title'); ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Content</label>
                                    <textarea id="editor1" class="form-control <?=(form_error("content"))?"is-invalid":""?>" rows="7"
                                              name="content"><?php echo set_value("content"); ?></textarea>
                                    <?php echo form_error('content'); ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Video Link <span class="text-muted">(optional)</span> </label>
                                    <input type="text" class="form-control <?=(form_error("video_link"))?"is-invalid":""?>" name="video_link"
                                           value="<?php echo set_value("video_link"); ?>" id="video_link"
                                           placeholder="Enter video embed link (e.g. https://www.youtube.com/embed/K4DyBUG242c )" id="ytplayerSide" onclick="validateYouTubeUrl()">
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
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <div class="d-flex">
                            <button type="submit" class="btn btn-primary"><i class="fe fe-check-square"></i> Publish
                            </button>&nbsp&nbsp
                            <a href="<?=base_url("post")?>" class="btn btn-danger">Cancel</a>
                        </div>
                    </div>

                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
	function validateYouTubeUrl()
	{
		var url = $('#youTubeUrl').val();
		if (url != undefined || url != '') {
			var regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=|\?v=)([^#\&\?]*).*/;
			var match = url.match(regExp);
			if (match && match[2].length == 11) {
				// Do anything for being valid
				// if need to change the url to embed url then use below line
				$('#ytplayerSide').attr('src', 'https://www.youtube.com/embed/' + match[2] + '?autoplay=0');
			}
			else {
				// Do anything for not being valid
			}
		}
	}
</script>
