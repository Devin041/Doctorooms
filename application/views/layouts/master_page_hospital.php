
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
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet"
		  href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	<link href="<?= base_url() ?>assets/lte/bower_components/pnotify/pnotify.custom.min.css" rel="stylesheet"
		  type="text/css"/>
	<link rel="stylesheet"
		  href="<?= base_url() ?>assets/plugins/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css">

	<link href="<?= base_url() ?>assets/lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet"
		  type="text/css"/>
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
		<a href="<?=base_url('hospital/dashboard')?>" class="logo">
			<span class="logo-mini"><b>D</b>R</span>
			<span class="logo-lg"><b><?= SITE_TITLE ?></b></span>
		</a>
		<nav class="navbar navbar-static-top">
			<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
				<span class="sr-only">Toggle navigation</span>
			</a>

			<div class="navbar-custom-menu">

				<ul class="nav navbar-nav">
					<li class="dropdown user user-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<?= base_url() ?>upload/profile/<?= $a->profile_img ?>" class="user-image"
								 alt="User Image">
							<span class="hidden-xs">   <?= $a->name ?></span>
						</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header">
								<img src="<?= base_url() ?>upload/profile/<?= $a->profile_img ?>" class="img-circle"
									 alt="User Image">
								<p>
									<?= $a->name ?><br>
									<small><?= strtoupper($user->role) ?></small>
								</p>
							</li>
							<li class="user-footer">
								<div class="pull-left">
									<a href="<?= base_url("hospital/profile/update_profile") ?>"
									   class="btn btn-default btn-flat">Profile Settings</a>
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
					<img src="<?= base_url() ?>upload/profile/<?= $a->profile_img ?>" class="img-circle"
						 alt="User Image" style="width: 38px; height: 38px;">
				</div>
				<div class="pull-left info">
					<p><?= $a->name ?></p>
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
					<a href="<?= base_url("hospital/doctor/schedule") ?>">
						<i class="fa fa-calendar"></i> <span>Upload Schedule</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("hospital/doctor") ?>">
						<i class="fa fa-user-md"></i> <span>Doctors</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("hospital/appoinment") ?>">
						<i class="fa fa-book"></i> <span>Appointment</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url("hospital/blog") ?>">
						<i class="fa fa-file"></i> <span>Blog</span>
					</a>
				</li>

				<li>
					<a href="<?= base_url("hospital/income") ?>">
						<i class="fa fa-file-o"></i> <span>Income Summary</span>
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
<!--<script src="--><? //= base_url() ?><!--assets/lte/bower_components/jquery/dist/jquery.min.js"></script>-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
<script src="<?= base_url() ?>assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-171698773-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-171698773-1');
</script>

<script>
	$('document').ready(function(){
        CreateRandomNumber();
    });
    
	$(document).ready(function () {
		$('[data-toggle="tooltip"]').tooltip();
	});
	$(function () {
		CKEDITOR.replace('editor1')
		extraPlugins: 'abbr';
		$('.textarea').wysihtml5()
	})


	//Date picker
	$('#booking_date').datepicker({
		autoclose: true
	})
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

	$("#date_of_birth").change(function () {
		var date_of_birth = $("#date_of_birth").val();
		date_of_birth = new Date(date_of_birth);
		var today = new Date();
		if (date_of_birth >= today) {
			$('#date_of_birth').val("");
			$('#age').val("");
		} else {
			var age = Math.floor((today - date_of_birth) / (365.25 * 24 * 60 * 60 * 1000));
			$('#age').val(age);
		}
	});

</script>
<?php if ($chartdata) { ?>
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
					a: <?=($chartdata[$i][0]['totalcollection']) ? $chartdata[$i][0]['totalcollection'] : '0'?>},

				<?php } ?>
			],
			barColors: ['#00a65a'],
			xkey: 'y',
			ykeys: ['a'],
			labels: ['Income'],
			hideHover: 'auto',
			resize: true
		});
	});
</script>
<?php } ?>



<?php if ($appointment->status != VISITED && $appointment->status != REJECTED) { ?>
	<script>
		$(document).ready(function () {
			loadChat();
			setInterval(function () {
				loadChat();
			}, 5000);

			function loadChat() {
				var aptid =<?=$appointment->id?>;
				$.post("<?=base_url('hospital/appoinment/get_all_chat_message')?>", {appointid: aptid}, function (result) {
					var my =<?=$user->id?>;
					var chatMsg = "<li><div class='text-center'> Start Conversation</div></li>";
					result.forEach(function (chat) {
						if (chat.from_id == my) {
							chatMsg += "<li class=\"right clearfix\">\n" +
								"                                <span class=\"chat-img pull-right\">\n" +
								"                                    <img src=\"https://placehold.it/50/FA6F57/fff&text=ME\" alt=\"User Avatar\"\n" +
								"                                         class=\"image\"/>\n" +
								"                                </span>\n" +
								"                                    <div class=\"chat-body clearfix\">\n" +
								"                                        <div class=\"header\">\n" +
								"                                            <small class=\" text-muted\"><span class=\"glyphicon glyphicon-time\"></span>" +
								"                                               " + chat.created_at +
								"                                            </small>\n" +
								"                                            <strong class=\"pull-right primary-font\">" + chat.from_name + "</strong>\n" +
								"                                        </div>\n" +
								"                                        <p>" + chat.message + "</p>\n" +
								"                                    </div>\n" +
								"                                </li>";
						} else {
							chatMsg += "<li class=\"left clearfix\">\n" +
								"                                <span class=\"chat-img pull-left\">\n" +
								"                                    <img src=\"https://placehold.it/50/55C1E7/fff&text=" + chat.from_name.charAt(0) + "\" alt=\"User Avatar\"\n" +
								"                                         class=\"img-circle\"/>\n" +
								"                                </span>\n" +
								"                                    <div class=\"chat-body clearfix\">\n" +
								"                                        <div class=\"header\">\n" +
								"                                            <strong class=\"primary-font\">" + chat.from_name + "</strong>\n" +
								"                                            <small class=\"pull-right text-muted\">\n" +
								"                                                <span class=\"glyphicon glyphicon-time\"></span>" + chat.created_at +
								"                                            </small>\n" +
								"                                        </div>\n" +
								"                                        <p>" + chat.message + "</p>\n" +
								"                                    </div>\n" +
								"                                </li>";
						}
					});
					$('#chat').html(chatMsg);

					var objDiv = document.getElementById("chat-box");
					objDiv.scrollTop = objDiv.scrollHeight;
				});
			}

			$('#btn-send').click(function () {
				var aptid =<?=$appointment->id?>;
				var msg = $('#text-msg').val();
				msg = msg.trim();
				if (msg != "") {
					$.post("<?=base_url('hospital/appoinment/send_chat_msg')?>", {
						appointId: aptid,
						msg: msg
					}, function (result) {
						console.log(result);
						loadChat();
						$('#text-msg').val("");
					});
				}
			});
		});

	</script>

<?php } ?>
<script>
    $(document).ready(function () {
        loadCity();
        $("#state").change(function () {
            loadCity();
        });
    });

    function loadCity() {
        var state = $("#state").val();
        $('#city').find('option:not(:first)').remove();
        $.post("<?=base_url('hospital/profile/city_by_state')?>", {state_name: state}, function (result) {
            result.forEach(function (city) {
                var profileCity = "<?=$hospitaldetil->city?>";
                var isSelected = profileCity == city.city_name ? "selected" : "";
                var elem = $("<option value='" + city.city_name + "' " + isSelected + ">" + city.city_name + "</option>");
                $("#city").append(elem);
            });
        });
    }
</script>

</body>
</html>
