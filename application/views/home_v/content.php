		<!--================Slider Area =================-->
		<section class="main_slider_area">
			<div id="main_slider3" class="rev_slider" data-version="5.3.1.6">
				<ul>
					<?php foreach($slides as $item){?>
					<li data-index="rs-<?php echo $item->rank ?>" data-transition="fade" data-slotamount="default"
						data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default"
						data-masterspeed="300"
						data-thumb="<?php echo base_url("panel/uploads/slides_v/1191x731/$item->img_url") ?>" data-rotate="0"
						data-saveperformance="off" data-title="Creative" data-param1="01" data-param2="" data-param3=""
						data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9=""
						data-param10="" data-description="">
						<!-- MAIN IMAGE -->
						<img src="<?php echo base_url("panel/uploads/slides_v/1191x731/$item->img_url") ?>" alt=""
							data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5"
							class="rev-slidebg" data-no-retina="">

						<!-- LAYER NR. 1 -->
						<div class="slider_text_box">
							<div class="tp-caption tp-resizeme food_text" data-x="['right','right','right','15','15']"
								data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']"
								data-voffset="['260','200','140','160','160']" data-fontsize="['50','50','50','50','50']"
								data-lineheight="['75','75','75','50','50']" data-width="['410','410','410','260','260']"
								data-height="none" data-whitespace="normal" data-type="text" data-responsive_offset="on"
								data-frames='[{"delay":10,"speed":999,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":900,"frame":"999","to":"y:[175%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]'
								data-textalign="['left','left','left','left']">
								<span></span> <br> <?php echo strip_tags($item->description) ?>
							</div>

							<div style="display:<?php echo ($item->allowButton==1) ?"hidden!important" : "none!important"  ?>"
								class="tp-caption tp-resizeme tasty_text" data-x="['right','right','right','15','15']"
								data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']"
								data-voffset="['460','400','340','310','325']" data-fontsize="['161','161','161','100']"
								data-lineheight="['200','200','200','100','100']" data-width="['410','410','410','260','260']"
								data-height="none" data-whitespace="normal" data-type="text" data-responsive_offset="on"
								data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
								data-textalign="['right','right','right','right']">
								<span><?php echo strip_tags($item->button_url) ?></span>
								<?php echo strip_tags($item->button_caption) ?>
							</div>
						</div>
					</li>
					<?php } ?>
				</ul>
			</div>
		</section>
		<!--================End Slider Area =================-->


		<!-- Products Section Two -->
		<section class="products-section">

			<div class="auto-container">

				<!-- Sec Title -->
				<div class="sec-title centered">
					<h2>Ürün Çeşitlerimiz</h2>
				</div>

				<!-- MixitUp Galery -->
				<div class="mixitup-gallery">

					<!--Filter-->
					<div class="filters clearfix">
						<ul class="filter-tabs filter-btns clearfix">
							<li class="active filter" data-role="button" data-filter="all">Hepsi</li>
							<?php  foreach($portfolio_category as $item ){ ?>
							<li class="filter" data-role="button"
								data-filter=".<?php echo replaceSpace(strtolower($item->title)) ?>"><?php echo $item->title ?>
							</li>
							<?php } ?>
						</ul>
					</div>

					<div class="filter-list row clearfix">

						<!-- Products Block -->
						<?php foreach($portfolio as $item){  ?>
						<div
							class="product-block all mix <?php echo replaceSpace(strtolower(get_portfolio_category_title($item->category_id))) ?> col-lg-3 col-md-6 col-sm-12">
							<div class="inner-box">
								<figure class="image-box">
									<img src="<?php echo base_url("panel/uploads/portfolio_v/1170x540/"); echo get_portfolio_cover_image($item->id) ?>"
										alt="<?php echo $item->title ?> ">
								</figure>
								<div class="lower-content">
									<br>
									<h4><a
											href="<?php echo base_url(); if($item->category_id==1){echo "meze-detay/".$item->url;}else {echo "kahvaltilik-detay/".$item->url;}?>"><?php echo $item->title ?>
										</a></h4>
									<div class="text"><?php echo character_limiter(strip_tags($item->description),85) ?>
									</div>
									<div class="lower-box">
										<a href="<?php echo base_url(); if($item->category_id==1){echo "meze-detay/".$item->url;}else {echo "kahvaltilik-detay/".$item->url;}?>"
											class="theme-btn btn-style-five"><span class="txt">Detaylı Bilgi</span></a>
									</div>
								</div>
							</div>
						</div>
						<?php } ?>
					</div>

				</div>

			</div>
		</section>
		<!-- End Products Section -->

		<!-- End Products Section -->

		<!-- Order Section -->

		<!-- End Order Section -->


		<!-- Call To Action Section -->
		<section class="call-to-action-section"
			style="background-image: url(<?php echo base_url("assets") ?>/images/background/o2.jpg)">
			<div class="auto-container">
				<h1>Mezeler ve Kahvaltılık Soslar </h1>
			</div>
		</section>
		<!-- End Call To Action Section -->

		<!-- Products Section Three -->
		<section class="products-section-three">
			<div class="auto-container">
				<div class="row clearfix">

					<!-- Product Block Two -->
					<div class="product-block-two col-lg-6 col-md-12 col-sm-12">
						<div class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
							<div class="image">
								<div class="new"><span>Sos </span></div>
								<img src="<?php echo base_url("assets") ?>/images/resource/sos.jpg" alt="">
								<div class="overlay-box">
									<div class="content">
										<h2><a href="#">Kahvaltılık Soslar<br> </a></h2>
										<div class="text">Sabahvaların vazgeçilmezi kahvaltılık soslarımıza göz atmanızı
											tavsiye ederiz
										</div>
										<br>

										<div class="price"></div>
										<a href="<?php echo base_url("kahvaltilik-listesi") ?>"
											class="theme-btn btn-style-three"><span class="txt">Görüntüle</span></a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Product Block Two -->
					<div class="product-block-two col-lg-6 col-md-12 col-sm-12">
						<div class="inner-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
							<div class="image">
								<div class="new"><span>Meze</span></div>
								<img src="<?php echo base_url("assets") ?>/images/resource/meze.jpg" alt="">
								<div class="overlay-box">
									<div class="content">
										<h2><a href="#"> Mezeler <br></a></h2>
										<div class="text">Lezzeti ve kullanılan ürünlerin tazeliğiyle öne mezelerimize göz
											atmanızı tavsiye ederiz
										</div>
										<br>
										<div class="price"></div>
										<a href="<?php echo base_url("meze-listesi") ?>"
											class="theme-btn btn-style-three"><span class="txt">Görüntüle
											</span></a>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</section>
		<!-- End Products Section Three -->

		<!-- Testimonial Section -->
		<section class="testimonial-section" style="background-image: url(assets/images/background/o8.png)">
			<div class="auto-container">
				<div class="side-image">
				</div>
				<div class="inner-container">
					<div class="single-item-carousel owl-carousel owl-theme ">

						<!--Testimonial Block-->
						<div class="testimonial-block">
							<div class="inner-box">

								<div class="text">Sizlere daha iyi hizmet verebilmek için kurumsal web sitemiz
									yayındadır.<br>Bizlere toptan ve perakende verebileceğiniz siparişler için iletişim <br>
									formu üzerinden
									7/24 ulaşabilirsiniz</div>
							</div>
						</div>



					</div>
				</div>
			</div>
		</section>
		<!--Testimonial Section-->


		<!-- Services Section -->
		<section class="services-section" style="padding-bottom:0px;">
			<!-- Side Image -->
			<div class="auto-container">
				<div class="row clearfix">

					<!-- Service Block -->
					<div class="service-block col-lg-3 col-md-6 col-sm-12">
						<div class="inner-box">
							<div class="icon-box">
								<img src="assets/images/resource/service-4.png" alt="">
							</div>
							<h6>7/24 <br> Hizmet</h6>
						</div>
					</div>

					<!-- Service Block -->
					<div class="service-block col-lg-3 col-md-6 col-sm-12">
						<div class="inner-box">
							<div class="icon-box">
								<img src="assets/images/resource/dogal.png" alt="">
							</div>
							<h6>Doğal ve Hijyenik<br> Ürünler
							</h6>
						</div>
					</div>

					<!-- Service Block -->
					<div class="service-block col-lg-3 col-md-6 col-sm-12">
						<div class="inner-box">
							<div class="icon-box">
								<img src="assets/images/resource/cargo.jpg" alt="">
							</div>
							<h6>Zamanında <br> Teslimat </h6>
						</div>
					</div>

					<!-- Service Block -->
					<div class="service-block col-lg-3 col-md-6 col-sm-12">
						<div class="inner-box">
							<div class="icon-box">
								<img src="assets/images/resource/sale.png" alt="">
							</div>
							<h6>Toptan ve<br> Perakende Satış</h6>
						</div>
					</div>

				</div>
			</div>

			<!-- Newsletter Section --
			<div class="newsletter-section">
				<div class="auto-container">
					<div class="inner-container">

						<div class="row clearfix">

							<!-- Title Column --
							<div class="title-column col-lg-6 col-md-12 col-sm-12">
								<div class="inner-column">
									<h2>Bizden Haberdar Olun</h2>
								</div>
							</div>

							<!-- Form Column --
							<div class="form-column col-lg-6 col-md-12 col-sm-12">
								<div class="inner-column">
									<!--Emailed Form--
									<div class="emailed-form">
										<form method="post" action="<?php //echo base_url("abone-ol")?>">
											<div class="form-group">
												<input type="email" name="subscribe_email" value=""
													placeholder="Email Adresinizi girin" required="">
												<input type="hidden"
													name="<?php //echo $this->security->get_csrf_token_name(); ?>"
													value="<?php //echo $this->security->get_csrf_hash(); ?>">
												<button type="submit" class="theme-btn">Abone Ol</button>
											</div>
										</form>
									</div>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>


		</section>
	
    <!-- Modal -->
    <div class="modal fade" id="popup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color:#a41a13;">
                <div class="modal-header modal-header-primary">
                    <button type="button" class="closeBtn" data-dismiss="modal" aria-hidden="true">x</button>
                    <h1 style="font-family:'Sansita Swashed', cursive; color: white;"><i class="fa fa-bar-chart-o"></i> Türkiye Geneli Bayilikler Verilmektedir.</h1>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" id ="closeBtn" data-dismiss="modal">Kapat</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->