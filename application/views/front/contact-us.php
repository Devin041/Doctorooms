<div class="my-3 my-md-5">
    <div class="container">
        <?php
        if ($feedback = $this->session->flashdata('feedback')) {
            $class = $this->session->flashdata('feedback_class');
            ?>
            <div class="alert alert-<?= ($class == 'alert') ? "danger" : $class ?>" role="alert">
                <?= $feedback ?>
            </div>
        <?php } ?>
        <div class="row">
            <div class="col-md-4 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Office</h3>
                    </div>
                    <div class="card-body">
                        <div class="media mb-5">
                            <img class="d-flex mr-5 rounded"
                                 src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_15ec911398e%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_15ec911398e%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2213.84375%22%20y%3D%2236.65%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
                                 alt="Generic placeholder image">
                            <div class="media-body">
                                <h5>Axa Global Group</h5>
                                <address class="text-muted small">
                                    1290 Avenua of The Americas<br>
                                    New York, NY 101040105
                                </address>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="h6">Relationship</div>
                                <p>Client</p>
                            </div>
                            <div class="col-6">
                                <div class="h6">Business Type</div>
                                <p>Insurance Company</p>
                            </div>
                            <div class="col-6">
                                <div class="h6">Website</div>
                                <p><a href="javascript:void(0)">http://www.axa.com</a></p>
                            </div>
                            <div class="col-6">
                                <div class="h6">Office Phone</div>
                                <p>+123456789</p>
                            </div>
                        </div>
                        <div class="h6">Description</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit consectetur adipisicing elit.
                            Consectetur dignissimos doloribus eum fugiat itaque laboriosam maiores nisi nostrum
                            perspiciatis vero.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-8 col-sm-12">
                <?= form_open("contactus/send", ["class" => "card"]) ?>
                    <div class="card-header">
                        <h3 class="card-title">Contact Us</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Name</label>
                                    <input type="text"
                                           class="form-control <?= (form_error("name")) ? "is-invalid" : "" ?>"
                                           placeholder="Enter Your Full Name"
                                           name="name" value="<?= set_value("name"); ?>">
                                    <?php echo form_error('name'); ?>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Email address</label>
                                    <input type="email"
                                           class="form-control <?= (form_error("email")) ? "is-invalid" : "" ?>"
                                           placeholder="Enter Your Email address"
                                           name="email" value="<?= set_value("email"); ?>">
                                    <?php echo form_error('email'); ?>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-12">
                                <div class="form-group">
                                    <label class="form-label">Subject</label>
                                    <input type="text"
                                           class="form-control <?= (form_error("subject")) ? "is-invalid" : "" ?>"
                                           placeholder="Enter Subject" name="subject"
                                           value="<?= set_value("subject"); ?>">
                                    <?php echo form_error('subject'); ?>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group mb-0">
                                    <label class="form-label">Message</label>
                                    <textarea rows="3"
                                              class="form-control <?= (form_error("message")) ? "is-invalid" : "" ?>"
                                              placeholder="Here can be your description"
                                              name="message"><?= set_value("message"); ?></textarea>
                                    <?php echo form_error('message'); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary">Send</button>
                    </div>
                <?= form_close() ?>
            </div>
        </div>
    </div>
</div>

