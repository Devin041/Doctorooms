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
    <title><?= (isset($_title)) ? $_title . " | " : "" ?><?= SITE_TITLE ?> | forgot password</title>
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
                        <div class="alert alert-<?= $this->session->flashdata('alert_class') ?> mb-0">
                            <?= $this->session->flashdata('alert_msg') ?>
                        </div>
                    <?php } ?>
                    <?= form_open('auth/forgot_password_mobile_verification_submit', array("class" => "card")); ?>
                    <div class="card-body p-6">
                        <div class="card-title">Verify your
                            mobile <?= $this->session->userdata('forgot_data')['mobile'] ?> to forgot your password.
                        </div>
                        <div class="form-group">
                            <label class="form-label">Enter OTP</label>
                            <input type="number" class="form-control" name="otp" id="otp" placeholder="Enter otp"
                                   autofocus <?= ($this->session->userdata('forgot_password_verification_data')) ? "" : "disabled" ?>>
                            <?php echo form_error('otp'); ?>
                        </div>
                        <div style="color: red; font-size: 10px; text-align: center;">
                            <?php if ($feedback = $this->session->flashdata('log_error')) echo $feedback; ?>
                        </div>
                        <div class="form-footer pull-right">.
                            <?php if (!$this->session->userdata('forgot_password_verification_data')) { ?>
                                <a href="<?= base_url('auth/forgot_password_send_otp') ?>"
                                   class="btn btn-default" <?= ($this->session->userdata('forgot_password_verification_data')) ? "disabled" : "" ?>>
                                    Send OTP
                                </a>
                            <?php } else { ?>
                                <a href="<?= base_url('auth/forgot_password_send_otp') ?>" id="resend-otp"
                                   class="btn btn-default" <?= ($this->session->userdata('forgot_password_verification_data')) ? "disabled" : "" ?>>
                                    Resend OTP
                                </a>
                            <?php } ?>
                            <button type="submit"
                                    class="btn btn-primary" <?= ($this->session->userdata('forgot_password_verification_data')) ? "" : "disabled" ?>>
                                Submit
                            </button>
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
<script>
    requirejs(['jquery'], function ($) {
        $("#resend-otp").click(function (event) {
            event.preventDefault();
        });
        var countDownDate = new Date(new Date().getTime() + 1 * 60000).getTime();
        var x = setInterval(function () {

            // Get today's date and time
            var now = new Date().getTime();

            // Find the distance between now and the count down date
            var distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Output the result in an element with id="demo"
            document.getElementById("resend-otp").innerHTML = "Resend in " + seconds + "s ";

            // If the count down is over, write some text
            if (distance < 0) {
                $("#resend-otp").unbind();
                clearInterval(x);
                document.getElementById("resend-otp").innerHTML = "Resend OTP";
            }
        }, 1000);
    });
</script>
</body>
</html>