<?php $settings= get_settings() ?>
<div class="page-wrapper">

		<!-- Preloader -->
	

		<!-- Header Style Two -->
		<header class="main-header header-style-two">

			<!-- Header Upper -->
			<div class="header-upper">

				<div class="auto-container" id="logo-container" >
					<div class="inner-container clearfix">
						<!--Info-->
						<div class="logo-outer">
							<div class="logo"><a href="<?php echo base_url() ?>"><img id="logo" src="<?php echo base_url("panel/uploads/settings_v/$settings->logo") ?>" alt="" title=""></a></div>
						</div>

						<!--Nav Box-->
						<div class="nav-outer clearfix">
							<!-- Main Menu -->
							<nav class="main-menu navbar-expand-md navbar-light">
							

							<?php include "aside.php" ?>
							</nav>
							<!-- Main Menu End-->

							<div class="outer-box">
								<div class="order">
									Telefon
									<span><a href="tel:<?php echo $settings->phone_1?>"><?php echo $settings->phone_1?></a></span>
								</div>
							</div>

						</div>
					</div>

				</div>
			</div>
			<!--End Header Upper-->

			<!--Sticky Header-->
			<div class="sticky-header">
				<div class="auto-container clearfix">
					<!--Logo--><a href="<?php echo base_url()?>">
					<div class="logo pull-left">
						<a href="<?php echo base_url()?>" class="img-responsive"><img src="<?php echo base_url("panel/uploads/settings_v/$settings->logo") ?>" alt="<?php echo $settings->company_name ?>" title="" style="width:50%"></a>
					</div></a>

					<!--Right Col-->
					<div class="right-col pull-right">
						<!-- Main Menu -->
					
						

							<?php include "aside.php" ?>
					</div>

				</div>
			</div>
			<!--End Sticky Header-->

		</header>
		<!-- End Main Header -->
