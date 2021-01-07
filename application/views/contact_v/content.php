<?php $settings = get_settings(); ?>

		<!-- Contact Page Title -->
		<section class="contact-page-title" style="background-image: url(assets/images/background/17.jpg)">
			<div class="auto-container"><br>
				<h1> İletişim  <br> </h1>
			</div>
		</section>
		<!-- End Contact Page Title -->

		<!-- Contact Page Section -->
		<section class="contact-page-section">
			<div class="auto-container">
				<div class="row clearfix">

					<!-- Form Column -->
					<div class="form-column col-lg-8 col-md-12 col-sm-12">
						<div class="inner-column">
							<div class="title-box">
								<h3>İletişim Formu</h3>
								<div class="text">Her türlü sorunuz ve siparişiniz için buradayız</div>
							</div>

							<!-- Contact Form -->
							<div class="contact-form">
                            <form id="contact_form" class="contact_form" action="<?php echo base_url("mesaj-gonder")?>"
                        method="post">
									<div class="row clearfix">

										<div class="form-group col-lg-6 col-md-12 col-sm-12">
											<input type="text" name="name" value="" placeholder="Ad" required="">
                                        </div>
                                        <div class="form-group col-lg-6 col-md-12 col-sm-12">
											<input type="text" name="subject" value="" placeholder="Soyad" required="">
										</div>

										<div class="form-group col-lg-6 col-md-12 col-sm-12">
											<input type="email" name="email" value="" placeholder="E posta adresiniz" required="">
										</div>

										<div class="form-group col-lg-6 col-md-12 col-sm-12">
											<input type="text" name="phone" value="" placeholder="Telefon" required="">
										</div>

										<div class="form-group col-lg-12 col-md-12 col-sm-12">
											<textarea name="message" placeholder="Mesajınız"></textarea>
                                        </div>
                               
                                    <div class="form-group">
                                        <div class="form-group col-sm-12">
                                            <?php echo $captcha["image"]?>
                                        </div>
                                        <div class="form-group col-sm-12 ">
                                            <input type="text" class="form-control" name="captcha"
                                                placeholder="Doğrulama Kodu" style="text-align:left;">
                                        </div>
                                    </div>
                                
                                        <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>"
                                        value="<?php echo $this->security->get_csrf_hash(); ?>">
										<div class="form-group col-lg-12 col-md-12 col-sm-12">
                                            <button name="submit" type="submit"  class="theme-btn btn-style-five ">
                                        <span>Gönder</span> </button>
										</div>
									</div>
								</form>
							</div>

						</div>
					</div>

					<!-- Info Column -->
					<div class="info-column col-lg-4 col-md-12 col-sm-12">
						<div class="inner-column">
							<h3>Adresimiz</h3>
							<ul>
								<li><strong>Adresimiz:</strong><?php echo $settings->address ?></li>
								
								<a href="tel://<?php  echo $settings->phone_1 ?>"><li><strong>Bizi Arayın:</strong>  <?php echo $settings->phone_1 ?></li></a>			
								<a href="mailto://<?php  echo $settings->email ?>"><li><strong>Mail Adresimiz:</strong>  <?php echo $settings->email ?></li></a>
							</ul>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!--End Faq Section-->

		<!-- Map Section -->
		<section class="map-section">
			<!-- Map Boxed -->
			<div class="map-boxed">
				<!--Map Outer-->
				<div class="map-outer">
                <iframe
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3066.6991270560043!2d30.538078515692508!3d39.76886320270853!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cc3de2c52da417%3A0x7ee6194d5acd45a9!2zR8O2a21leWRhbiwgU2Fsa8SxbSBTw7bEn8O8dCBTay4gTm86NTIsIDI2MTAwIE9kdW5wYXphcsSxL0Vza2nFn2VoaXI!5e0!3m2!1str!2str!4v1606069577146!5m2!1str!2str"
        width="100%" height="300" frameborder="0" style="border:0" allowfullscreen=""></iframe>	</div>
			</div>
		</section>