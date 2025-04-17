<div class="content-wrapper" style="min-height: 990px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Create Slider
            <small>Add New Slide</small>
        </h1>

    </section>

    <!-- Main content -->
    <section class="content">

        <!-- SELECT2 EXAMPLE -->
        <div class="box box-default">
            <div class="box-header with-border">
                <h3 class="box-title">Create new slider</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <form method="post" action="<?= base_url() ?>admin/slider/add_slide_validate"
                      enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Image</label>
                                <input type="file" name="slider_image" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Position</label>
                                <input type="text" name="position" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Link</label>
                                <input type="text" name="link" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <input type="submit" name="" class="btn btn-info" value="SAVE">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>
