<?php $settings= get_settings() ?>
<nav class="main-menu navbar-expand-md">
							<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation" style="float:right">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon flaticon-menu"></span>
							</button>

							<div class="navbar-collapse collapse clearfix" id="navbarSupportedContent1">
								<ul class="navigation clearfix">
									<li class=" <?php echo active_menu('home');if(active_menu('')){echo "current";}?>"><a href="<?php echo base_url() ?>">Ana Sayfa</a>
									
									</li>
									<li class = "<?php echo active_menu('hakkimizda');?>"><a href="<?php echo  base_url("hakkimizda") ?>">Hakkımızda</a>
									</li>
									<li class="dropdown <?php echo active_menu('meze-listesi'); echo active_menu('kahvaltilik-listesi'); echo active_menu('kahvaltilik-detay'); echo active_menu('meze-detay');?>"><a href="<?php echo base_url("urun-listesi") ?>">Ürünlerimiz</a>
										<ul>
											<li><a href="<?php echo base_url("meze-listesi") ?>">Mezeler</a></li>
											<li><a href="<?php echo base_url("kahvaltilik-listesi") ?>">Kahvaltılık Soslar</a></li>
										</ul>
									</li>
									<li class="<?php echo active_menu('fotograf-galerisi');?>"><a href="<?php echo base_url("fotograf-galerisi") ?>">Referanslarımız</a></li>
									<li class="<?php echo active_menu('iletisim');?>"><a href="<?php echo base_url("iletisim") ?>">İletişim</a></li>
								</ul>
							</div>
						</nav><!-- Main Menu End-->