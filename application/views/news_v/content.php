<div role="main" class="main">

    <section class="page-header page-header-modern bg-color-light-scale-1 page-header-md">
        <div class="container">
            <div class="row">

                <div class="col-md-12 align-self-center p-static order-2 text-center">

                    <h1 class="text-dark font-weight-bold text-8"><?php $news->title?></h1>
                    <span class="sub-title text-dark"><?php  character_limiter($news->description,200)?></span>
                </div>

                <div class="col-md-12 align-self-center order-1">

                    <ul class="breadcrumb d-block text-center">
                        <li><a href="<?php  echo base_url()?>">Ana Sayfa</a></li>
                        <li class="active"><?=$news->title?></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container py-4">

        <div class="row">
            <div class="col">
                <div class="blog-posts single-post">

                    <article class="post post-large blog-single-post border-0 m-0 p-0">
                        <div class="post-image ml-0" <?php
                                    if($news->news_type =="video"){
                                        echo  'style="display:none"';
                                    }
                                    ?> >
                            <a href="<?php  echo base_url("haber/$news->url")?>">
                                    <img src="<?php echo  base_url("panel/uploads/news_v/1140x445/$news->img_url") ?>"
                                        class="img-fluid img-thumbnail img-thumbnail-no-borders rounded-0"
                                        alt="<?=$news->title?>" />
                            </a>
                        </div>
                
                        <div class="post-image ml-0" <?php
                                    if($news->news_type !=="video"){
                                        echo  'style="display:none"';
                                    }
                                    ?> >
										<div class="embed-responsive embed-responsive-16by9">
											<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/<?=get_youtube_id($news->video_url)?>?controls=0" width="640" height="360"  frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"  allowfullscreen></iframe>
										</div>
									</div>
                        <div class="post-date ml-0">
                            <span class="day"><?php 
                            $explodeday = explode(" ",$news->createdAt);
                            $explodeday1 = explode("-",$explodeday[0]);
                             echo $explodeday1[2]; ?> </span>
                            <span class="month"><?php echo get_readable_date_month($news->createdAt)?> </span>
                        </div>

                        <div class="post-content ml-0">

                            <h2 class="font-weight-bold"><a
                                    href="<?php  echo base_url("haber/$news->url")?>"><?php $news->title ?></a></h2>

                            <div class="post-meta">
                                <span><i class="far fa-user"></i> Yazar <a href="#">Teknokent Yönetimi</a> </span>
                                <span><i class="far fa-comments"></i> <a href="#"><?php echo $news->viewCount; ?> Görüntülenme</a></span>
                            </div>
                            <p><?php echo  $news->description ?></p>
                            <div class="post-block mt-5 post-share">
                                <h4 class="mb-3">Haberi Paylaş</h4>

                                <!-- AddThis Button BEGIN -->
                                <div class="addthis_toolbox addthis_default_style ">
                                    <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                                    <a class="addthis_button_tweet"></a>
                                    <a class="addthis_button_pinterest_pinit"></a>
                                    <a class="addthis_counter addthis_pill_style"></a>
                                </div>
                                <script type="text/javascript"
                                    src="//s7.addthis.com/js/300/addthis_widget.js#pubid=xa-50faf75173aadc53"></script>
                                <!-- AddThis Button END -->

                            </div>



                        </div>
                    </article>

                </div>
            </div>
        </div>

    </div>

</div>      