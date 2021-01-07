<?php $settings= get_settings() ?>
	<!-- Page Title -->
    <section class="page-title" style="background-image: url(assets/images/background/11.jpg)">
			<div class="auto-container">
                <br>
                <br>
				<h1>Hakkımızda</h1>
				<ul class="bread-crumb clearfix">
					<li><a href="<?php echo base_url() ?>">Ana Sayfa</a></li>
					<li>Hakkımızda</li>
				</ul>
			</div>
		</section>
		<!-- End Page Title -->

		<!-- About Section Two -->
		<section class="about-section-two">
			<div class="auto-container">
				<div class="row clearfix">

					<!-- Content Column -->
					<div class="content-column col-lg-7 col-md-12 col-sm-12">
						<div class="inner-column">
							<h2><?php echo $settings->t_about?></h2>
							<div class="text">
							<?php echo $settings->about_us?>
							</div>
						</div>
					</div>

					<!-- Images Column -->
					<div class="images-column col-lg-5 col-md-12 col-sm-12">
						<div class="inner-column">
							<div class="image">
								<img src="assets/images/gallery/galeri/16.jpg" alt="">
							</div>
							<div class="image">
								<img src="assets/images/gallery/galeri/17.jpg" alt="">
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- End About Section Two -->