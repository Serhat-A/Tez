<?php $settings= get_settings(); $product=get_settings_product(); $blog=get_settings_blog();?>
<footer class="main-footer" style="background-image: url(<?php echo base_url("assets") ?>/images/background/4.png)">
			<div class="auto-container">

				<!-- Widgets Section -->
				<div class="widgets-section">
					<div class="row clearfix">

						<!-- Footer Column -->
						<div class="footer-column col-lg-5 col-md-6 col-sm-12">
							<!-- Info Widget -->
							<div class="footer-widget info-widget">
								<h4>İletişim</h4>
								<a class="number" href="tel:<?php echo $settings->phone_1 ?>"><?php echo $settings->phone_1 ?></a>
								<ul class="email-list">
									<li><a href="mailto:<?php echo $settings->email ?>"><?php echo $settings->email ?></a></li>
									<li><a href="#"><?php echo $settings->address ?></a></li>
								</ul>
							</div>
						</div>

						<!-- Footer Column -->
						<div class="footer-column col-lg-4 col-md-12 col-sm-12">
							<!-- Logo Widget -->
							<div class="footer-widget logo-widget">
								<div class="logo" style="    height: 200px;
    width: 200px;
    padding: 0;
    border-top-right-radius: 100px;
    border-bottom-left-radius: 100px;
    background: #ffffff;
    white-space: pre-line;
    border-bottom-right-radius: 100px;
    border-top-left-radius: 100px;">
									<a href="<?php echo base_url() ?>"><img src="<?php echo base_url("panel/uploads/settings_v/footer-logo.png") ?>" alt=""></a>
								</div>
							
							</div>
						</div>

						<!-- Footer Column -->
						<div class="footer-column col-lg-3 col-md-6 col-sm-12">
							<!-- Info Widget -->
							<div class="footer-widget timing-widget">
								<h4>Çalışma Saatlerimiz</h4>
								<ul class="timing-list">
									<li>Hafta İçi <span>08:00  – 17:00</span></li>
									<li>Cumartesi <span>08:00  – 17:00</span></li>
									<li>Pazar <span>Kapalı</span></li>
								</ul>
							</div>
						</div>

					</div>
				</div>

				<!-- Footer Bottom -->
				<div class="footer-bottom">
					<div class="clearfix">
						<div class="pull-left">
							<div class="copyright">&copy; Copyright 2020</div>
						</div>
						<div class="pull-right">
						<a href="https://forse.web.tr" target="_blank">	<img src="<?php echo base_url("assets/forse.png") ?>"></a>
						</div>
					</div>
				</div>

			</div>
		</footer>

	</div>
	<!--End pagewrapper-->

	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-angle-up"></span></div>


