<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Gallery
            <small></small>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Upload Gallery</h3>
                    </div>
                    <?= form_open_multipart("doctor/gallery/upload") ?>
                    <div class="box-body">
                        <div class="form-group">
                            <label for="exampleInputFile">Select Image</label>
                            <input type="file" id="gal_img" name="gal_img">
                            <p class="help-block">Maximum image size 2MB</p>
                            <p class="text-danger"
                               style="font-size: 10px;"><?= (isset($imgError)) ? $imgError : "" ?></p>
                        </div>
                    </div>
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                    <?= form_close() ?>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">My Gallery</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <?php if ($gallery) { ?>
                                <?php foreach ($gallery as $item) { ?>
                                    <div class="col-sm-3" style="width: 300px;">
                                        <a href="<?= base_url("upload/gallery/" . $item) ?>" data-toggle="lightbox"
                                           data-gallery="example-gallery">
                                            <img src="<?= base_url("upload/gallery/" . $item) ?>"
                                                 class="img img-responsive img-thumbnail">
                                        </a>
                                        <center>
                                            <a href="<?= base_url("doctor/gallery/delete/$item") ?>"
                                               class="btn btn-danger" style="margin-top: 10px; margin-bottom: 15px;"
                                               onclick="return conformDel(this, event)"><span
                                                        class="fa fa-trash-o"></span></a>
                                        </center>
                                    </div>
                                <?php } ?>
                            <?php } else { ?>
                                <div class="col-sm-12">
                                    <div style="font-size: 30px; opacity: 0.5;">
                                        <center>
                                            <i class="fa fa-exclamation-circle fa-5x"></i>
                                            <br>
                                            No image yet<br>
                                        </center>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
