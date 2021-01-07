 <section class="page-title" style="background-image: url(<?php echo base_url("assets/images/background/11.jpg") ?>)">
            <div class="auto-container"><br>
                <h1><?php echo $portfolio->title ?> </h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="index.html">Ana Sayfa</a></li>
                    <li><a href="shop.html">Kahvaltılık Soslar</a></li>
                    <li><?php echo $portfolio->title ?> </li>
                </ul>
            </div>
        </section>
        <!-- End Page Title -->

        <!--Shop Single Section-->
        <section class="shop-single-section">
            <div class="auto-container">

                <div class="shop-single">
                    <div class="product-details">

                        <!--Basic Details-->
                        <div class="basic-details">
                            <div class="row clearfix">
                            <?php foreach ($portfolio_images as $image) { ?>

                                <div class="image-column col-lg-6 col-md-12 col-sm-12">
                                    <figure class="image-box"><a href="<?php echo base_url("panel/uploads/portfolio_v/750x750/"); echo get_portfolio_cover_image($item->id) ?>" class="lightbox-image" title="Image Caption Here"><img src="<?php echo base_url("panel/uploads/portfolio_v/1170x540/$image->img_url");?>" alt=""></a></figure>
                                </div>
                            <?php } ?>
                                <div class="info-column col-lg-6 col-md-12 col-sm-12">
                                    <div class="inner-column">
                                        <h2><?php echo $portfolio->title; ?></h2>
                                        <div class="text"><?php echo $portfolio->description; ?></div>

                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Basic Details-->

             
                        <!--End Product Info Tabs-->

                    </div>
                </div>

            </div>
        </section>
        <!--End Shop Single Section-->

        <!-- Similar Products Section -->
        <section class="similar-products-section">
            <div class="auto-container">
                <!-- Sec Title -->
                <div class="sec-title centered">
                    <h2>Diğer Ürünler</h2>
                </div>
                <div class="row clearfix">

                   <?php foreach($other_portfolios as $item){ ?> 
                    <div class="product-block col-lg-3 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <figure class="image-box">
                                <img src=" <?php
										$image = get_portfolio_cover_image($item->id);
										$image = ($image) ? base_url("panel/uploads/portfolio_v/270x230/$image"): base_url("assets/img/projects/project-short.jpg");
										 echo $image;?>" alt="<?php echo $item->title ?>" alt="">
                            </figure>
                            <div class="lower-content">
                                <h4><a href="<?php echo base_url(); if($item->category_id==1){echo "meze-detay/".$item->url;}else {echo "kahvaltilik-detay/".$item->url;}?>"><?php echo $item->title ?></a></h4>
                                <div class="text"><?php echo $item->description ?></div>
                                <div class="lower-box">
                                    <a href="<?php echo base_url(); if($item->category_id==1){echo "meze-detay/".$item->url;}else {echo "kahvaltilik-detay/".$item->url;}?>" class="theme-btn btn-style-five"><span class="txt">Detayını Gör</span></a>
                                </div>
                            </div>
                        </div>
                    </div>

<?php }?>

         


                </div>
            </div>
        </section>
        <!-- End Similar Products Section -->
