<!doctype html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Language" content="en"/>
    <meta name="msapplication-TileColor" content="#2d89ef">
    <meta name="theme-color" content="#4188c9">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <link rel="icon" href="" type="image/x-icon"/>
    <link rel="shortcut icon" type="image/x-icon" href="<?= base_url() ?>assets/brand/favicon-16x16.png"/>
    <title><?= (isset($_title)) ? $_title . " | " : "" ?><?= SITE_TITLE ?></title>
    <style>
		@media print {
			#pos {
				display: none;
				visibility: hidden;
			}
		}
        #map {
            height: 100% !important;
        }

        .rating {
            float: left;
        }

        /* :not(:checked) is a filter, so that browsers that don’t support :checked don’t
          follow these rules. Every browser that supports :checked also supports :not(), so
          it doesn’t make the test unnecessarily selective */
        .rating:not(:checked) > input {
            position: absolute;
            top: -9999px;
            clip: rect(0, 0, 0, 0);
        }

        .rating:not(:checked) > label {
            float: right;
            width: 43px;
            /* padding:0 .1em; */
            overflow: hidden;
            white-space: nowrap;
            cursor: pointer;
            font-size: 300%;
            line-height: 1.2;
            color: #ddd;
        }

        .rating:not(:checked) > label:before {
            content: '★ ';
        }

        .rating > input:checked ~ label {
            color: dodgerblue;

        }

        .rating:not(:checked) > label:hover,
        .rating:not(:checked) > label:hover ~ label {
            color: dodgerblue;

        }

        .rating > input:checked + label:hover,
        .rating > input:checked + label:hover ~ label,
        .rating > input:checked ~ label:hover,
        .rating > input:checked ~ label:hover ~ label,
        .rating > label:hover ~ input:checked ~ label {
            color: dodgerblue;

        }

        .rating > label:active {
            position: relative;
            top: 2px;
            left: 2px;
        }

        .dataTables_length, .dataTables_filter, .dataTables_info, .dataTables_paginate {
            padding: 10px;
        }
    </style>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdn.ckeditor.com/4.11.1/standard/ckeditor.js"></script>
    <link rel="stylesheet"
          href="<?= base_url() ?>assets/plugins/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
    <script src="<?= base_url() ?>assets/js/require.min.js"></script>
    <script>
        requirejs.config({
            baseUrl: '<?= base_url() ?>',
            waitSeconds: 200,
            paths: {
                'datatables.net': '<?= base_url() ?>assets/plugins/datatable/jquery.dataTables.min',
                'datatables': '<?= base_url() ?>assets/plugins/datatable/dataTables.bootstrap4.min',
                'datepicker': '<?= base_url() ?>assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min'
            },
        });
    </script>
    <!-- Dashboard Core -->
    <link href="<?= base_url() ?>assets/css/dashboard.css" rel="stylesheet"/>
    <script src="<?= base_url() ?>assets/js/dashboard.js"></script>
    <link href="<?= base_url() ?>assets/plugins/datatable/dataTables.bootstrap4.min.css" rel="stylesheet"/>

    <!-- c3.js Charts Plugin -->
    <link href="<?= base_url() ?>assets/plugins/charts-c3/plugin.css" rel="stylesheet"/>
    <script src="<?= base_url() ?>assets/plugins/charts-c3/plugin.js"></script>
    <!-- Google Maps Plugin -->
    <link href="<?= base_url() ?>assets/plugins/maps-google/plugin.css" rel="stylesheet"/>
    <script src="<?= base_url() ?>assets/plugins/maps-google/plugin.js"></script>
    <!-- Input Mask Plugin -->
    <script src="<?= base_url() ?>assets/plugins/input-mask/plugin.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-171698773-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-171698773-1');
    </script>

    <script>
        requirejs(['jquery', 'datatables'], function ($) {
            $('.dttable').DataTable();
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
    <style type="text/css">
        blockquote {
            background: #f9f9f9;
            border-left: 6px solid #ccc;
            margin: 1.5em 10px;
            padding: 0.5em 10px;
            quotes: "\201C" "\201D" "\2018" "\2019";
        }

        blockquote:before {
            color: #ccc;
            content: open-quote;
            font-size: 4em;
            line-height: 0.1em;
            margin-right: 0.25em;
            vertical-align: -0.4em;
        }

        .avatar-thumb {
            width: 4rem;
            height: 3rem;
            line-height: 2rem;
            border-radius: 5%;
            display: inline-block;
            background: #ced4da no-repeat center/cover;
            position: relative;
            text-align: center;
            color: #868e96;
            font-weight: 600;
            vertical-align: bottom;
            font-size: .875rem;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        .social {
            font-size: 30px;
            padding: 10px;
            color: #9F0053;
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

        .chat
        {
            list-style: none;
            margin: 0;
            padding: 0px 4px 0px 4px;
        }

        .chat li
        {
            margin-bottom: 10px;
            padding-bottom: 5px;
            border-bottom: 2px solid #B3A9A9;
        }

        .chat li.left .chat-body
        {
            margin-left: 60px;
        }

        .chat li.right .chat-body
        {
            margin-right: 60px;
        }


        .chat li .chat-body p
        {
            margin: 0;
            color: #777777;
        }

        .panel .slidedown .glyphicon, .chat .glyphicon
        {
            margin-right: 5px;
        }

        .panel-body
        {
            overflow-y: scroll;
            height: 250px;
        }

        ::-webkit-scrollbar-track
        {
            -webkit-box-shadow: inset 0 0 3px rgba(0,0,0,0.3);
            background-color: #F5F5F5;
        }

        ::-webkit-scrollbar
        {
            width: 12px;
            background-color: #F5F5F5;
        }

        ::-webkit-scrollbar-thumb
        {
            -webkit-box-shadow: inset 0 0 3px rgba(0,0,0,.3);
            background-color: #555;
        }
    </style>
</head>
<body class="">
<div class="page">
    <div class="page-main">
        <div class="header py-4">
            <div class="container">
                <div class="d-flex">
                    <a class="header-brand" href="<?= base_url() ?>">
                        <img src="<?=base_url('assets/brand/')?>LOGO-CIRCLE.png" style="width:8rem;height: 4rem;" class="header-brand-img" alt="doctorooms logo">
<!--                        <h2>--><?//= SITE_TITLE ?><!--</h2>-->
                    </a>
                    <?php //if() {?>
                    <div class="d-flex order-lg-2 ml-auto">
                        <?php if ($user) { ?>
                            <?php if ($user->role == DOCTOR || $user->role == RECEPTIONIST || $user->role == PATIENT) { ?>
                                <div class="dropdown d-none d-md-flex">
									<?php if ($user->role == DOCTOR) { ?>

										<a href="<?= base_url() ?>doctor/notifications" class="nav-link icon" >
											<i class="fe fe-bell"></i>
											<?php if ($notificationsCount) { ?>
												<span class="nav-unread"></span>
											<?php } ?>
										</a>
									<?php } elseif ($user->role == RECEPTIONIST) { ?>

										<a href="<?= base_url() ?>receptionist/notifications" class="nav-link icon" >
											<i class="fe fe-bell"></i>
											<?php if ($notificationsCount) { ?>
												<span class="nav-unread"></span>
											<?php } ?>
										</a>
									<?php } elseif ($user->role == PATIENT) { ?>

										<a href="<?= base_url() ?>notifications" class="nav-link icon" >
											<i class="fe fe-bell"></i>
											<?php if ($notificationsCount) { ?>
												<span class="nav-unread"></span>
											<?php } ?>
										</a>
									<?php } ?>



                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                        <a class="dropdown-item" style="padding-top: 0px; padding-bottom: 0px;">
                                            <div>
                                                You have <?= $notificationsCount ?> new notifications
                                            </div>
                                        </a>
                                        <?php foreach ($notifications as $noti) { ?>
                                            <div class="dropdown-divider"></div>
                                            <a href="#" class="dropdown-item d-flex">
                                                <span class="mr-3 align-self-center fa fa-flag"></span>
                                                <div>
                                                    <?= $noti->title ?>
                                                    <!--                                                <div class="small text-muted">2 hours ago</div>-->
                                                </div>
                                            </a>
                                        <?php } ?>
                                        <div class="dropdown-divider"></div>
                                        <?php if ($user->role == DOCTOR) { ?>
                                            <a href="<?= base_url() ?>doctor/notifications"
                                               class="dropdown-item text-center text-muted-dark">Read All</a>
                                        <?php } elseif ($user->role == RECEPTIONIST) { ?>
                                            <a href="<?= base_url() ?>receptionist/notifications"
                                               class="dropdown-item text-center text-muted-dark">Read All</a>
                                        <?php } elseif ($user->role == PATIENT) { ?>
                                            <a href="<?= base_url() ?>notifications"
                                               class="dropdown-item text-center text-muted-dark">Read All</a>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                            <div class="dropdown">
                                <a href="#" class="nav-link pr-0 leading-none" data-toggle="dropdown">
                                    <span class="avatar"
                                          style="background-image: url(<?= base_url() ?>upload/profile/<?= $user->profile_img ?>)"></span>
                                    <span class="ml-2 d-none d-lg-block">
                                    <span class="text-default"><?= $user->name ?></span>
                                    <small class="text-muted d-block mt-1"><?= strtoupper($user->role) ?></small>
                                </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <?php if ($user->role == ADMIN) { ?>
                                        <a class="dropdown-item" href="<?= base_url("admin/dashboard") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> Dashboard
                                        </a>
                                        <a class="dropdown-item"
                                           href="<?= base_url("admin/dashboard/update_admin_profile") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> Profile
                                        </a>
                                    <?php } ?>
                                    <?php if ($user->role == HOSPITAL) { ?>
                                        <a class="dropdown-item" href="<?= base_url("hospital/dashboard") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> Dashboard
                                        </a>
                                        <a class="dropdown-item"
                                           href="<?= base_url("hospital/profile/update_profile") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> Profile
                                        </a>
                                    <?php } ?>
                                    <?php if ($user->role == DOCTOR) { ?>
                                        <a class="dropdown-item" href="<?= base_url("doctor/dashboard") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> Dashboard
                                        </a>
                                        <a class="dropdown-item" href="<?= base_url("doctor/profile") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> Profile
                                        </a>
                                    <?php } ?>
                                    <?php if ($user->role == PATIENT) { ?>
                                        <a class="dropdown-item" href="<?= base_url("appointment") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> My Appointment
                                        </a>
                                        <a class="dropdown-item" href="<?= base_url("post") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> My Blog
                                        </a>
                                        <a class="dropdown-item" href="<?= base_url("profile") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> Profile
                                        </a>
                                    <?php } ?>
                                    <?php if ($user->role == RECEPTIONIST) { ?>
                                        <a class="dropdown-item" href="<?= base_url("receptionist/dashboard") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> Dashboard
                                        </a>
                                        <a class="dropdown-item" href="<?= base_url("receptionist/profile") ?>">
                                            <i class="dropdown-icon fe fe-user"></i> Profile
                                        </a>
                                    <?php } ?>
                                    <a class="dropdown-item" href="<?= base_url("auth/logout") ?>">
                                        <i class="dropdown-icon fe fe-log-out"></i> Sign out
                                    </a>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                    <a href="#" class="header-toggler d-lg-none ml-3 ml-lg-0" data-toggle="collapse"
                       data-target="#headerMenuCollapse">
                        <span class="header-toggler-icon"></span>
                    </a>
                </div>
            </div>
        </div>
        <div class="header collapse d-lg-flex p-0" id="headerMenuCollapse">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 ml-auto">
                        <form class="input-icon my-3 my-lg-0" method="GET" action="<?= base_url("search") ?>">
                            <input type="search" value="<?= $this->input->get('q') ?>"
                                   class="form-control header-search" name="q" placeholder="Search…"
                                   tabindex="1">
                            <div class="input-icon-addon">
                                <i class="fe fe-search"></i>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg order-lg-first">
                        <ul class="nav nav-tabs border-0 flex-column flex-lg-row">
                            <li class="nav-item">
                                <a href="<?= base_url() . 'home' ?>" class="nav-link"><i class="fe fe-home"></i>
                                    Home</a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url() . 'blog' ?>" class="nav-link "><i class="fe fe-book-open"></i>
                                    Blog</a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url() . 'doctors' ?>" class="nav-link "><i
                                            class="fa fa-file-text-o"></i> Find Doctor</a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url() . 'hospitals' ?>" class="nav-link "><i
                                            class="fa fa-file-text-o"></i> Find Hospital</a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url() . 'about' ?>" class="nav-link "><i
                                            class="fa fa-file-text-o"></i> About Us</a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url() . 'contactus' ?>" class="nav-link "><i
                                            class="fe fe-mail"></i>Contact Us</a>
                            </li>
                            <?php if (!$user) { ?>
                                <li class="nav-item">
                                    <a href="<?= base_url() . 'auth/register_for' ?>" class="nav-link "><i
                                                class="fe fe-user"></i> Register</a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?= base_url() . 'auth/login' ?>" class="nav-link "><i
                                                class="fa fa-key"></i> Login</a>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <?php
        if (isset($_view) && $_view)
            $this->load->view($_view);
        ?>
    </div>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-6 col-md-3">
                            <ul class="list-unstyled mb-0">
                                <li><a href="<?= base_url() . 'about' ?>">About us</a></li>

                            </ul>
                        </div>
                        <div class="col-6 col-md-3">
                            <ul class="list-unstyled mb-0">
                                <li><a href="<?= base_url() . 'contactus' ?>">Contact Us</a></li>

                            </ul>
                        </div>
                        <div class="col-6 col-md-3">
                            <ul class="list-unstyled mb-0">
                                <li><a href="<?= base_url() . 'terms' ?>">Terms & Conditions</a></li>

                            </ul>
                        </div>
                        <div class="col-6 col-md-3">
                            <ul class="list-unstyled mb-0">
                                <li><a href="<?= base_url() . 'privacy' ?>">Privacy Policy</a></li>

                            </ul>
                        </div>
                        <div class="col-6 col-md-3">
                            <ul class="list-unstyled mb-0">
                                <li><a href="<?= base_url() . 'inquiry' ?>">Hospital Inquiry</a></li>

                            </ul>
                        </div>
                        <div class="col-sm-12">
                            <ul class="social-links list-inline mb-0 mt-5 ps">
                                <li class="list-inline-item">
                                    <a href="javascript:void(0)" style="color: red;" title="" data-toggle="tooltip"
                                       data-original-title="Facebook"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="javascript:void(0)" style="color: red;" title="" data-toggle="tooltip"
                                       data-original-title="Twitter"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="javascript:void(0)" style="color: red;" title="" data-toggle="tooltip"
                                       data-original-title="1234567890"><i class="fa fa-phone"></i></a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="javascript:void(0)" style="color: red;" title="" data-toggle="tooltip"
                                       data-original-title="@skypename"><i class="fa fa-skype"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mt-4 mt-lg-0">
                    <b>About Us</b><br>
                    Premium and Open Source dashboard template with responsive and high quality UI. For Free! Source
                    dashboard.
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        <div class="container">
            <div class="row align-items-center flex-row-reverse">

                <div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
                    Copyright © 2018 <a href=".">Bracesoft Solution</a>
                    All rights reserved.
                </div>
            </div>
        </div>
    </footer>
</div>
</body>
</html>
