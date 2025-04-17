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
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/bower_components/morris.js/morris.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/plugins/timepicker/bootstrap-timepicker.min.css">
	<link rel="stylesheet"
		  href="<?= base_url() ?>assets/lte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
	<link rel="stylesheet"
		  href="<?= base_url() ?>assets/lte/bower_components/bootstrap-daterangepicker/daterangepicker.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

	<link href="<?= base_url() ?>assets/lte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css"
		  rel="stylesheet" type="text/css"/>
	<link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
	<link href="https://cdn.datatables.net/buttons/1.6.0/css/buttons.dataTables.min.css" rel="stylesheet"
		  type="text/css"/>
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
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/lte/dist/css/skins/_all-skins.min.css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" rel="stylesheet">
	<script src="<?= base_url() ?>assets/lte/bower_components/jquery/dist/jquery.min.js"></script>
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

		ul.bootstrap-autocomplete {
			left: 0.1rem !important;
			top: 3.3rem !important;
			position: absolute;
			z-index: 1000;
			box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06) !important;
			border: 1px solid #e2e8f0 !important;
			-webkit-border-radius: 0;
			-moz-border-radius: 0;
			border-radius: 0;
			background: #f7fafc !important;
			max-height: 300px;
			overflow-y: auto;
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
		<a href="<?= base_url('doctor/dashboard') ?>" class="logo">
			<span class="logo-mini"><b>C</b>H</span>
			<span class="logo-lg"><b><?= SITE_TITLE ?></b></span>
		</a>
		<nav class="navbar navbar-static-top">
			<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
				<span class="sr-only">Toggle navigation</span>
			</a>

			<div class="navbar-custom-menu">

				<ul class="nav navbar-nav">
					<li class="dropdown notifications-menu">
						<a href="<?= base_url("doctor/notifications") ?>" >
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
											<a href="<?= base_url("doctor/notifications") ?>">
												<i class="fa fa-flag-o text-warning"></i> <?= $noti->title ?>
											</a>
										</li>
									<?php } ?>
								</ul>
							</li>
							<li class="footer"><a href="<?= base_url("doctor/notifications") ?>">View all</a></li>
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
									<a href="<?= base_url("doctor/profile") ?>" class="btn btn-default btn-flat">Profile
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
						 alt="User Image" style="width: 38px; height: 38px;">
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
					<a href="<?= base_url("doctor/dashboard") ?>">
						<i class="fa fa-dashboard"></i> <span>Dashboard</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("doctor/appointment") ?>">
						<i class="fa fa-check-circle"></i> <span>Appointments</span>
					</a>
				</li>

				<li>
					<a href="<?= base_url("doctor/appointment/history") ?>">
						<i class="fa fa-file-text"></i> <span>Appointment History</span>
					</a>
				</li>

				<li>
					<a href="<?= base_url("doctor/profile") ?>">
						<i class="fa fa-user-md"></i> <span>My Profile</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("doctor/schedule") ?>">
						<i class="fa fa-clock-o"></i> <span>Manage Schedule</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("doctor/gallery") ?>">
						<i class="fa fa-photo"></i> <span>Gallery</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("doctor/post") ?>">
						<i class="fa fa-rss"></i> <span>Blog</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("doctor/receptionist") ?>">
						<i class="fa fa-user-o"></i> <span>Receptionist</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("doctor/assistant") ?>">
						<i class="fa fa-user-o"></i> <span>Assistant</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("doctor/pharmacist/") ?>">
						<i class="fa fa-user-o"></i> <span>Pharmacist</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("doctor/report") ?>">
						<i class="fa fa-file"></i> <span>Reports</span>
					</a>
				</li>

				<li class="treeview <?php if ($this->uri->segment(2) == "co" || $this->uri->segment(2) == "questions" || $this->uri->segment(2) == "suggestions" || $this->uri->segment(2) == "label" || $this->uri->segment(2) == "table_master" ||  $this->uri->segment(2) == "p_other_setting") {
					echo " menu-open";
				} ?>" style="height: auto;">
					<a href="#">
						<i class="fa fa-file-text-o"></i> <span>Prescription Settings</span>
						<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
					</a>
					<ul class="treeview-menu" <?php if ($this->uri->segment(2) == "co" || $this->uri->segment(2) == "questions" || $this->uri->segment(2) == "suggestions" || $this->uri->segment(2) == "label" || $this->uri->segment(2) == "table_master" || $this->uri->segment(2) == "p_other_setting") {
						echo 'style="display: block;"';
					} else {
						echo 'style="display: none;"';
					} ?> >
						<li class="<?php if ($this->uri->segment(2) == "co") {
							echo "active";
						} ?>">
							<a href="<?= base_url("doctor/co") ?>">
								<i class="fa  fa-plus-square"></i> <span>C/O - Category </span>
							</a>
						</li>

						<li class="<?php if ($this->uri->segment(2) == "questions") {
							echo "active";
						} ?>">
							<a href="<?= base_url("doctor/questions") ?>">
								<i class="fa fa-question-circle"></i> <span>Complains</span>
							</a>
						</li>
						<li class="<?php if ($this->uri->segment(2) == "suggestions") {
							echo "active";
						} ?>">
							<a href="<?= base_url("doctor/suggestions") ?>">
								<i class="fa fa-check-circle"></i> <span>Suggestions</span>
							</a>
						</li>
						<li class="<?php if ($this->uri->segment(2) == "label") {
							echo "active";
						} ?>">
							<a href="<?= base_url("doctor/label") ?>">
								<i class="fa fa-tag"></i> <span>Labels</span>
							</a>
						</li>
						<li class="<?php if ($this->uri->segment(2) == "table_master") {
							echo "active";
						} ?>">
							<a href="<?= base_url("doctor/table_master") ?>">
								<i class="fa fa-table"></i> <span>Table</span>
							</a>
						</li>
						<li class="<?php if ($this->uri->segment(2) == "p_other_setting") {
							echo "active";
						} ?>">
							<a href="<?= base_url("doctor/p_other_setting") ?>">
								<i class="fa fa-cog"></i> <span>Other Settings</span>
							</a>
						</li>
					</ul>
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
<script src="<?= base_url() ?>assets/lte/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/moment/min/moment.min.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script
	src="<?= base_url() ?>assets/lte/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?= base_url() ?>assets/lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="<?= base_url() ?>assets/lte/plugins/timepicker/bootstrap-timepicker.min.js"></script>
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

<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-171698773-1"></script>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>

<script>
	window.dataLayer = window.dataLayer || [];

	function gtag() {
		dataLayer.push(arguments);
	}

	gtag('js', new Date());

	gtag('config', 'UA-171698773-1');
</script>
<?php
if (isset($_javascript) && $_javascript)
	$this->load->view($_javascript);
?>
<script>
    $("body").on("submit", "form", function() {
        $(this).submit(function() {
            return false;
        });
        return true;
    });

	$(document).ready(function () {
		$('[data-toggle="tooltip"]').tooltip();
		$('.select2').select2();


	});

	$(function () {
		$('.dttable').DataTable();
	});


	$('#example').DataTable({
		dom: 'Bfrtip',
		buttons: [
			'copyHtml5',
			'excelHtml5',
			'csvHtml5',
			'pdfHtml5'
		]
	});


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
