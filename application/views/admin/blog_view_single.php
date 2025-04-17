<div class="content-wrapper" style="min-height: 960px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Posts
			<small>Blog Posts Detail</small>
		</h1>

	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<!-- /.box-header -->
					<div class="box-body">
						<div class="col-md-12">
							<div class="card">
								<div class="card-body">
									<div class="text-wrap p-lg-6">
										<h1><?= $single_blog->title ?></h1>
										<?php if (!is_null($single_blog->blog_img) || !empty($single_blog->blog_img)) { ?>
											<img class="d-block w-100" alt=""
												 src="<?= base_url() ?>/upload/blog/<?= $single_blog->blog_img ?>"
												 data-holder-rendered="true" draggable="false">
										<?php } ?>
										<?php if ($single_blog->video_link) { ?>
											<iframe style="margin-top: 20px;" id="player" type="text/html" width="640" height="390"
													src="<?= $single_blog->video_link ?>"
													frameborder="0"></iframe>
										<?php } ?>
										<div style="margin-top: 25px;">
											<?= $single_blog->content ?>
										</div>
										<hr>
										<div class="pull-right">

											<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
												<a class="a2a_dd" href="https://www.addtoany.com/share"></a>
												<a class="a2a_button_facebook"></a>
												<a class="a2a_button_twitter"></a>
												<a class="a2a_button_google_plus"></a>
												<a class="a2a_button_whatsapp"></a>
												<a class="a2a_button_copy_link"></a>
											</div>
											<script async src="https://static.addtoany.com/menu/page.js"></script>

										</div>
									</div>
								</div>
								<div class="card-footer">
									<ul class="social-links list-inline">
										<li class="list-inline-item">
											<a href="#" title="" data-toggle="tooltip"><i
													class="fa fa-calendar"></i></a>  <?= date("M d, Y", strtotime($single_blog->created_at)) ?>
										</li>
										<li class="list-inline-item">
											<a href="#" title="" data-toggle="tooltip"><i
													class="fa fa-user"></i></a>  <?= $single_blog->name ?>
										</li>
									</ul>
								</div>
							</div>
							<div class="card">
								<div class="card-body">
									<div id="disqus_thread"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
	</section>
	<!-- /.content -->
</div>
