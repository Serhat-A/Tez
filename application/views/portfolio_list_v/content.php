	<!-- Page Title -->
		<section class="page-title" style="background-image: url(assets/images/background/11.jpg)">
			<div class="auto-container">
                <br>
				<h1>Kahvaltılık Soslar</h1>
				<ul class="bread-crumb clearfix">
					<li><a href="<?php echo base_url() ?>">Ana Sayfa</a></li>
					<li>Kahvaltılık Soslar</li>
				</ul>
			</div>
		</section>
		<!-- End Page Title -->

		<!-- Shop Page Section -->
		<section class="shop-page-section">
			<div class="auto-container">
				<!-- Sec Title -->
				<div class="sec-title centered">
					<h2>Kahvaltılık Soslar</h2>
				</div>

				<div class="row clearfix">

		
<?php foreach($portfolios as $item){ ?> 
					<!-- Products Block -->
					<div class="product-block col-lg-3 col-md-6 col-sm-12">
						<div class="inner-box">
							<figure class="image-box">
								<img src="<?php
										$image = get_portfolio_cover_image($item->id);
										$image = ($image) ? base_url("panel/uploads/portfolio_v/1170x540/$image"): base_url("assets/img/projects/project-short.jpg");
										 echo $image;?>" alt="<?php echo $item->title ?>" alt="">
							</figure>
							<div class="lower-content">
								<h4><a href="<?php echo base_url("kahvaltilik-detay/$item->url") ?> "><?php echo $item->title ?> </a></h4>
								<div class="text"><?php echo character_limiter(strip_tags($item->description),85) ?></div>
								<div class="lower-box">
									<a href="<?php echo base_url("kahvaltilik-detay/$item->url") ?>" class="theme-btn btn-style-five"><span class="txt">Detayını Gör</span></a>
								</div>
							</div>
						</div>
					</div>

<?php } ?> 

			
				</div>

			</div>
		</section>
		<!-- End Shop Page Section -->