<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?= (isset($_title)) ? $_title . " | " : "" ?><?= SITE_TITLE ?></title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/bower_components/Ionicons/css/ionicons.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/dist/css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/bower_components/morris.js/morris.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/bower_components/jvectormap/jquery-jvectormap.css">
	<link rel="stylesheet"
		  href="<?= base_url() ?>assets/lte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
	<link rel="stylesheet"
		  href="<?= base_url() ?>assets/lte/bower_components/bootstrap-daterangepicker/daterangepicker.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
	<link href="<?= base_url() ?>assets/lte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css"
		  rel="stylesheet" type="text/css"/>
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet"
		  href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	<link href="<?= base_url() ?>assets/lte/bower_components/pnotify/pnotify.custom.min.css" rel="stylesheet"
		  type="text/css"/>
	<link href="<?= base_url() ?>assets/lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet"
		  type="text/css"/>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" rel="stylesheet">
	<link rel="stylesheet"
		  href="<?= base_url() ?>assets/plugins/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css">

	<script src="<?= base_url() ?>assets/lte/bower_components/jquery/dist/jquery.min.js"></script>
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-171698773-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];

		function gtag() {
			dataLayer.push(arguments);
		}

		gtag('js', new Date());

		gtag('config', 'UA-171698773-1');
	</script>

	<style>
		@media print {
			.d-n {
				display: none;
			}

			.box {
				border-top: 0px solid #d2d6de;
			}

			a[href]:after {
				display: none;
				visibility: hidden;
			}

			span.fa {
				display: none;
				visibility: hidden;
			}

		}

		.datepicker-days table .disabled-date.day {
			background-color: #e0e0e0;
			color: #fff;
		}

		.datepicker table tr td.disabled,
		.datepicker table tr td.disabled:hover {
			background: #e0e0e0;
			color: #fff;
		}

		.chat {
			list-style: none;
			margin: 0;
			padding: 0px 10px 0px 4px;
		}

		.chat li {
			margin-bottom: 10px;
			padding-bottom: 5px;
			border-bottom: 2px solid #B3A9A9;
		}

		.chat li.left .chat-body {
			margin-left: 60px;
		}

		.chat li.right .chat-body {
			margin-right: 60px;
		}


		.chat li .chat-body p {
			margin: 0;
			color: #777777;
		}

		.panel .slidedown .glyphicon, .chat .glyphicon {
			margin-right: 5px;
		}

		.panel-body {
			overflow-y: scroll;
			height: 250px;
		}

		::-webkit-scrollbar-track {
			-webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
			background-color: #F5F5F5;
		}

		::-webkit-scrollbar {
			width: 5px;
			background-color: #F5F5F5;
		}

		::-webkit-scrollbar-thumb {
			-webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, .3);
			background-color: #555;
		}
	</style>
	<?php
	if (isset($_css) && $_css)
		$this->load->view($_css);
	?>
</head>
<body class="sidebar-mini skin-black-light">
<div class="wrapper">

	<header class="main-header">
		<a href="<?= base_url('pharmacist/pharmacist/dashboard') ?>" class="logo">
			<span class="logo-mini"><b>D</b>R</span>
			<span class="logo-lg"><b><?= SITE_TITLE ?></b></span>
		</a>
		<nav class="navbar navbar-static-top">
			<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
				<span class="sr-only">Toggle navigation</span>
			</a>

			<div class="navbar-custom-menu">

				<ul class="nav navbar-nav">
					<li class="dropdown notifications-menu">
						<a href="<?= base_url("pharmacist/notifications") ?>" >
							<i class="fa fa-bell-o"></i>
							<?php if ($notificationsCount) { ?>
								<span class="label label-warning"><?= $notificationsCount ?></span>
							<?php } ?>
						</a>
						<ul class="dropdown-menu">
							<li class="header">You have <?= $notificationsCount ?> new notifications</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<ul class="menu">
									<?php foreach ($notifications as $noti) { ?>
										<li>
											<a href="<?= base_url("pharmacist/notifications") ?>">
												<i class="fa fa-flag-o text-warning"></i> <?= $noti->title ?>
											</a>
										</li>
									<?php } ?>
								</ul>
							</li>
							<li class="footer"><a href="<?= base_url("pharmacist/notifications") ?>">View all</a></li>
						</ul>
					</li>

					<li class="dropdown user user-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<?= base_url() ?>upload/profile/<?= $user->profile_img ?>" class="user-image"
								 alt="User Image">
							<span class="hidden-xs"><?= $user->name ?></span>
						</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header">
								<img src="<?= base_url() ?>upload/profile/<?= $user->profile_img ?>" class="img-circle"
									 alt="User Image">

								<p>
									<?= $user->name ?><br>
									<small><?= strtoupper($user->role) ?></small>
								</p>
							</li>
							<li class="user-footer">
								<div class="pull-left">
									<a href="<?= base_url("pharmacist/profile") ?>" class="btn btn-default btn-flat">Profile
										Settings</a>
								</div>
								<div class="pull-right">
									<a href="<?= base_url("auth/logout") ?>" class="btn btn-default btn-flat">Sign
										out</a>
								</div>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
	</header>
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="<?= base_url() ?>upload/profile/<?= $user->profile_img ?>" class="img-circle"
						 alt="User Image" style="width: 45px; height: 45px;">
				</div>
				<div class="pull-left info">
					<p><?= $user->name ?></p>
					<a href="#">
						<i class="fa fa-circle text-success"></i>
						Active
					</a>
				</div>
			</div>

			<!-- sidebar menu: : style can be found in sidebar.less -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">MAIN NAVIGATION</li>
				<li>
					<a href="<?= base_url("pharmacist/pharmacist/dashboard") ?>">
						<i class="fa fa-dashboard"></i> <span>Dashboard</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url('pharmacist/pharmacist/listPrescriptions') ?>">
						<i class="fa fa-file-text"></i> <span>Prescriptions</span>
					</a>
				</li>
			</ul>
		</section>
	</aside>
	<?php
	if (isset($_view) && $_view)
		$this->load->view($_view);
	?>
	<footer class="main-footer d-n">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.4.0
		</div>
		<strong>Copyright © 2019 <a href="#">Bracesoft Solution</a>.</strong> All rights
		reserved.
	</footer>
</div>
<script src="<?= base_url() ?>assets/lte/bower_components/jquery-ui/jquery-ui.min.js"></script>
<script>
	$.widget.bridge('uibutton', $.ui.button);
</script>
<script src="<?= base_url() ?>assets/lte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/raphael/raphael.min.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/morris.js/morris.min.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<script src="<?= base_url() ?>assets/lte/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?= base_url() ?>assets/lte/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/moment/min/moment.min.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script
	src="<?= base_url() ?>assets/lte/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?= base_url() ?>assets/lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!--<script src="<? /*= base_url() */ ?>assets/lte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>-->
<script src="<?= base_url() ?>assets/lte/bower_components/fastclick/lib/fastclick.js"></script>
<script src="<?= base_url() ?>assets/lte/dist/js/adminlte.min.js"></script>
<script src="<?= base_url() ?>assets/lte/dist/js/pages/dashboard.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/datatables.net/js/jquery.dataTables.min.js"
		type="text/javascript"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"
		type="text/javascript"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/pnotify/pnotify.custom.min.js"
		type="text/javascript"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/image-preview/jquery.uploadPreview.js"
		type="text/javascript"></script>
<script src="<?= base_url() ?>assets/lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"
		type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<?php
if (isset($_javascript) && $_javascript)
	$this->load->view($_javascript);
?>
<script>
	$(document).ready(function () {
		$('[data-toggle="tooltip"]').tooltip();
	});

	$(function () {
		$('.dttable').DataTable();
	});

	function conformFormDel(aa, event) {
		event.preventDefault();
		swal({
			title: "Are you sure?",
			text: "Once deleted, you will not be able to recover this file!",
			icon: "error",
			buttons: true,
			dangerMode: true,
		}).then((willDelete) => {
			if (willDelete) {
				//window.location = $(aa).attr('href');
				aa.form.submit();
			} else {
				//swal("Your imaginary file is safe!");
			}
		});
		return false;
	}

	function conformDel(aa, event) {
		event.preventDefault();
		swal({
			title: "Are you sure?",
			text: "Once deleted, you will not be able to recover this file!",
			icon: "error",
			buttons: true,
			dangerMode: true,
		})
			.then((willDelete) => {
				if (willDelete) {
					window.location = $(aa).attr('href');
				} else {
					//swal("Your imaginary file is safe!");
				}
			});
		return false;
	}

	function conformCancel(aa, event) {
		event.preventDefault();
		swal({
			title: "Are you sure?",
			text: "Once Cancelled, you will not be able to recover this!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		})
			.then((willDelete) => {
				if (willDelete) {
					window.location = $(aa).attr('href');
				} else {
					//swal("Your imaginary file is safe!");
				}
			});
		return false;
	}
</script>
<?php
if ($feedback = $this->session->flashdata('feedback')) {
	$class = $this->session->flashdata('feedback_class');
	?>
	<script>
		new PNotify({
			title: '<?= strtoupper($class) ?>',
			text: '<?= $feedback ?>',
			type: '<?= $class ?>',
			styling: 'bootstrap3'
		});
	</script>
<?php } ?>
</body>
</html>
