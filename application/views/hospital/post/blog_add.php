<div class="content-wrapper" style="min-height: 990px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Create Post
			<small>Add New Post</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Create Post</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">

		<!-- SELECT2 EXAMPLE -->
		<div class="box box-default">
			<div class="box-header with-border">
				<h3 class="box-title">Create new post and blog</h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
				</div>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<form method="post" action="<?=base_url()?>hospital/blog/add_validate" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label>Title</label>
								<input type="text" name="title" class="form-control">
								<?php echo form_error('title'); ?>
							</div>

							<!-- /.form-group -->
						</div>
						<!-- /.col -->
						<div class="col-md-12">
							<div class="form-group">
								<label>Post</label>
								<textarea class="form-control"  id="editor1" name="content"></textarea>
								<?php echo form_error('content'); ?>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label for="exampleInputTitle">Video Link <span class="text-muted">(optional)</span></label>
								<input type="text" class="form-control" name="video_link"
									   value="<?php echo set_value("video_link"); ?>" id="title"
									   placeholder="Enter video link (e.g. https://www.youtube.com/embed/K4DyBUG242c )">
								<?php echo form_error('video_link'); ?>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label for="exampleInputTitle">Image <span class="text-muted">(optional)</span></label>
								<input type="file" class="form-control" name="image" id="image">
								<div class="text-danger" style="font-size: 10px;"><?php if (isset($imgError)) echo $imgError ?></div>
							</div>
						</div>

						<div class="col-md-12">
							<input type="submit" name="" class="btn btn-info" value="SAVE">
						</div>
						<!-- /.col -->
					</div>
				</form>
				<!-- /.row -->
			</div>
			<!-- /.box-body -->

		</div>
		<!-- /.box -->
</div>
</div>
</div>
</div>
</section>
<!-- /.content -->
</div>
