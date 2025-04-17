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
    <link rel="shortcut icon" type="image/x-icon" href="<?= base_url() ?>brand/favicon-16x16.png"/>
    <title><?= (isset($_title)) ? $_title . " | " : "" ?><?= SITE_TITLE ?></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
    <script src="<?= base_url() ?>assets/js/require.min.js"></script>
    <script>
        requirejs.config({
            baseUrl: '<?= base_url() ?>'
        });
    </script>
    <!-- Dashboard Core -->
    <link href="<?= base_url() ?>assets/css/dashboard.css" rel="stylesheet"/>
    <script src="<?= base_url() ?>assets/js/dashboard.js"></script>
    <!-- c3.js Charts Plugin -->
    <link href="<?= base_url() ?>assets/plugins/charts-c3/plugin.css" rel="stylesheet"/>
    <script src="<?= base_url() ?>assets/plugins/charts-c3/plugin.js"></script>
    <!-- Google Maps Plugin -->
    <link href="<?= base_url() ?>assets/plugins/maps-google/plugin.css" rel="stylesheet"/>
    <script src="<?= base_url() ?>assets/plugins/maps-google/plugin.js"></script>
    <!-- Input Mask Plugin -->
    <script src="<?= base_url() ?>assets/plugins/input-mask/plugin.js"></script>

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
    </style>

</head>
<body>

<div class="page">
    <div class="page-single">
        <div class="container">
            <div class="row">
                <div class="col col-login mx-auto">
                    <div class="text-center mb-6">
                        <a href="<?= base_url() ?>"><img src="<?= base_url() ?>/assets/brand/LOGO-CIRCLE.png"
                                                         class="h-9" alt="Logo"></a>
                    </div>
                    <?php if ($this->session->flashdata('alert_msg')) { ?>
                        <div class="card-alert alert <?= $this->session->flashdata('alert_class') ?> mb-0">
                            <?= $this->session->flashdata('alert_msg') ?>
                        </div>
                    <?php } ?>
                    <?= form_open('auth/forgot_submit', array("class" => "card")); ?>
                    <div class="card-body p-6">
                        <div class="card-title">Forgot password to your account</div>
                        <div class="form-group">
                            <label class="form-label">Mobile</label>
                            <input type="text" class="form-control" maxlength="10" name="mobile" id="mobile" placeholder="Enter mobile"
                                   value="<?php echo set_value("mobile"); ?>" autofocus>
                            <?php echo form_error('mobile'); ?>
                        </div>
                        <div style="color: red; font-size: 10px; text-align: center;"><?php if ($feedback = $this->session->flashdata('log_error')) echo $feedback; ?></div>
                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary btn-block">Find Account</button>
                        </div>
                    </div>
                    <?= form_close() ?>
                    <div class="text-center text-muted">
                        <a href="<?= base_url("auth/login") ?>">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>