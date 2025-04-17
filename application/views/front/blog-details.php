<div class="my-3 my-md-5">
    <div class="container">
        <div class="row row-cards row-deck">
            <div class="col-md-8">
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
                            <div class="pull-left">

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
                                            class="fa fa-calendar"></i></a><?= date("M d, Y", strtotime($single_blog->created_at)) ?>
                            </li>
                            <li class="list-inline-item">
                                <a href="#" title="" data-toggle="tooltip"><i
                                            class="fa fa-user"></i></a><?= $single_blog->name ?>
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
            <div class="col-md-4">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="table-responsive">
                                <table class="table table-hover table-outline table-vcenter text-nowrap card-table">
                                    <thead>
                                    <tr>
                                        <th class="text-center w-1"><i class="fa fa-list"></i></th>
                                        <th>Latest posts</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php if (!empty($latest_post)) { ?>
                                        <?php foreach ($latest_post as $lb) { ?>
                                            <tr>
                                                <td class="text-center">
                                                    <?php if ($lb->blog_img) { ?>
                                                        <div class="avatar-thumb d-block"
                                                             style="background-image: url(<?= base_url() ?>/upload/blog/<?= $lb->blog_img ?>)">
                                                        </div>
                                                    <?php } else { ?>
                                                        <div class="avatar-thumb d-block"
                                                             style="background-image: url(<?= base_url() ?>assets/images/no_img.png)">
                                                        </div>
                                                    <?php } ?>
                                                </td>
                                                <td>
                                                    <div>
                                                        <a href="<?= base_url("blog/view/$lb->paramalink") ?>"><?= substr(strip_tags($lb->title), 0, 32) . ".." ?></a>
                                                    </div>
                                                    <div class="small text-muted">
                                                        <?= substr(strip_tags($lb->content), 0, 35) . "..." ?>
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php } ?>
                                    <?php } else { ?>
                                        <tr>
                                            <td class="text-center">
                                                <div class="avatar-thumb" style="background-image: url()">
                                                </div>
                                            </td>
                                            <td>
                                                <p style="opacity: 0.7">
                                                    <i class="fa fa-exclamation-circle"></i> Ops! Data not found
                                                </p>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
/*
var disqus_config = function () {
this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
*/
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://https-doctorooms-com.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>