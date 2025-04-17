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
    <link rel="stylesheet" href="<?= base_url() ?>assets/css/point.css">
    <link href="<?= base_url() ?>assets/lte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css" rel="stylesheet">
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
	<link href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css" type="text/css"/>
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
	</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <a href="<?=base_url().'admin/dashboard'?>" class="logo">
            <span class="logo-mini"><b>D</b>R</span>
            <span class="logo-lg"><b><?=SITE_TITLE?></b></span>
        </a>
        <nav class="navbar navbar-static-top">
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">

                <ul class="nav navbar-nav">
					<li class="dropdown user user-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<?= base_url() ?>upload/profile/<?=$a->profile_img?>" class="user-image" alt="User Image">
							<span class="hidden-xs"><?=$a->name?></span>
						</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header">
								<img src="<?= base_url() ?>upload/profile/<?=$a->profile_img?>" class="img-circle" alt="User Image">

								<p>
									<?=$a->name?><br>
                                    <small><?= strtoupper($user->role) ?></small>
								</p>
							</li>
							<li class="user-footer">
								<div class="pull-left">
									<a href="<?= base_url("admin/dashboard/update_admin_profile") ?>" class="btn btn-default btn-flat">Profile Settings</a>
								</div>
								<div class="pull-right">
									<a href="<?= base_url("auth/logout") ?>" class="btn btn-default btn-flat">Sign out</a>
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
                    <img src="<?= base_url() ?>upload/profile/<?=$a->profile_img?>" class="img-circle" alt="User Image" style="width: 45px; height: 45px;">
                </div>
                <div class="pull-left info">
                    <p>Admin</p>
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
                    <a href="<?= base_url("admin/dashboard") ?>">
                        <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="<?= base_url("admin/appointment") ?>">
                        <i class="fa fa-check-circle-o "></i> <span>Appointment</span>
                    </a>
                </li>

				<li>
					<a href="<?= base_url("admin/appointment/charges_income") ?>">
						<i class="fa fa-money"></i> <span>Income</span>
					</a>
				</li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-users   "></i>
                        <span>User List</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="<?= base_url("admin/dashboard/user_view") ?>">
                                <i class="fa fa-users"></i> <span>All Users</span>
                            </a>
                        </li>
                        <li>
                            <a href="<?= base_url("admin/doctor") ?>">
                                <i class="fa fa-user-md"></i> <span>Doctors</span>
                            </a>
                        </li>

                        <li>
                            <a href="<?= base_url("admin/assistant") ?>">
                                <i class="fa fa-user-md"></i> <span>Assistant</span>
                            </a>
                        </li>

                        <li>
                            <a href="<?= base_url("admin/patient") ?>">
                                <i class="fa fa-user-circle-o"></i> <span>Patient</span></span>
                            </a>
                        </li>

<!--                        <li>-->
<!--                            <a href="--><?//= base_url("admin/receptionist") ?><!--">-->
<!--                                <i class="fa fa-user"></i> <span>Receptionist</span>-->
<!--                            </a>-->
<!--                        </li>-->
                        <li>
                            <a href="<?= base_url("admin/hospital") ?>">
                                <i class="fa fa-hospital-o"></i> <span>Hospital</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="<?= base_url("admin/blog") ?>">
                        <i class="fa fa-rss-square "></i> <span>Blog</span>
                    </a>
                </li>

				<li>
					<a href="<?= base_url("admin/inquiry") ?>">
						<i class="fa fa-bell-o "></i> <span>Hospital Inquiry</span>
					</a>
				</li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cog"></i>
                        <span>Localization</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<?= base_url("admin/localization/country_view") ?>"><i class="fa fa-circle-o"></i>
                                Country</a></li>
                        <li><a href="<?= base_url("admin/localization/state_view") ?>"><i class="fa fa-circle-o"></i> State</a>
                        </li>
                        <li><a href="<?= base_url("admin/localization/city_view") ?>"><i class="fa fa-circle-o"></i>
                                City</a></li>
                    </ul>
                </li>

				<li class="treeview">
					<a href="#">
						<i class="fa fa-list-ol"></i>
						<span>Masters</span>
						<span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
					</a>
					<ul class="treeview-menu">
						<li><a href="<?= base_url("admin/type_master") ?>"><i class="fa fa-circle-o"></i>
								Doctor Type</a></li>
						<li><a href="<?= base_url("admin/disease_master") ?>"><i class="fa fa-circle-o"></i>
								Disease Type</a></li>
					</ul>
				</li>
				<li>
					<a href="<?= base_url("admin/config") ?>">
						<i class="fa fa-money"></i> <span>Admin Charges</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("admin/slider") ?>">
						<i class="fa fa-check-circle-o "></i> <span>Slider</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("admin/report") ?>">
						<i class="fa fa-file-o"></i> <span>Reports</span>
					</a>
				</li>
            </ul>
        </section>
    </aside>
    <?php
    if (isset($_view) && $_view)
        $this->load->view($_view);
    ?>
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.4.0
        </div>
        <strong>Copyright © 2019 <a href="#">Bracesoft Solution</a>.</strong> All rights
        reserved.
    </footer>
</div>
<script src="<?= base_url() ?>assets/lte/bower_components/jquery/dist/jquery.min.js"></script>
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
<script src="<?= base_url() ?>assets/lte/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?= base_url() ?>assets/lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="<?= base_url() ?>assets/lte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
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
<script src="https://cdn.ckeditor.com/4.11.1/standard/ckeditor.js"></script>
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
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-171698773-1');
</script>



<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
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
<script>
    $(function () {
        $('#example1').DataTable({
            'paging': true,
            'lengthChange': true,
            'searching': true,
            'ordering': true,
            'info': true,
            'autoWidth': true,
			dom: 'Bfrtip',
			buttons: [
				 'csv', 'excel', 'pdf', 'print'
			]


        })
    })
</script>
<script>
	$(function () {
		CKEDITOR.replace('editor1')
		extraPlugins: 'abbr';
		$('.textarea').wysihtml5()
	})
	$(function () {
		CKEDITOR.replace('editor2')
		$('.textarea').wysihtml5()
	})
	$(function () {
		CKEDITOR.replace('editor3')
		$('.textarea').wysihtml5()
	})
	$(function () {
		CKEDITOR.replace('editor4')
		$('.textarea').wysihtml5()
	})
	$(function () {
		CKEDITOR.replace('editor5')
		$('.textarea').wysihtml5()
	})
	$(function () {
		CKEDITOR.replace('editor6')
		$('.textarea').wysihtml5()
	})
</script>

<script>

	$(function () {
		//BAR CHART
		var bar = new Morris.Bar({
			element: 'bar-chart',
			resize: true,
			data: [
				<?php
				$m = array('', 'jan', 'Feb', 'March', 'April', 'May', 'June', 'July', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
				for ($i = 1;$i <= 12;$i++) { ?>
				{
					y: '<?=$m[$i]?>',
					a: <?= ($chartdata[$i][0]['totalcollection'])?$chartdata[$i][0]['totalcollection'] : '0'?>},

				<?php  } ?>
			],
			barColors: ['skyblue'],
			xkey: 'y',
			ykeys: ['a'],
			labels: ['Income'],
			hideHover: 'auto',
			resize: true
		});
	});
</script>



<script>

	$(function () {
		//BAR CHART
		var bar = new Morris.Bar({
			element: 'bar-chart-doc',
			resize: true,
			data: [
				<?php
				$m = array('', 'jan', 'Feb', 'March', 'April', 'May', 'June', 'July', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
				for ($i = 1;$i <= 12;$i++) { ?>
				{
					y: '<?=$m[$i]?>',
					a: <?= ($chartdatadoctor[$i][0]['totalcollection'])?$chartdatadoctor[$i][0]['totalcollection'] : '0'?>},

				<?php } ?>
			],
			barColors: ['orange'],
			xkey: 'y',
			ykeys: ['a'],
			labels: ['Income'],
			hideHover: 'auto',
			resize: true,

		});
	});
</script>
</body>
</html>
