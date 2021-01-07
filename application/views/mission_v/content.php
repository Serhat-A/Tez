<?php $settings=get_settings(); ?>
<div role="main" class="main">
    <section class="page-header page-header-classic page-header-sm">
        <div class="container">
            <div class="row">
                <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                    <h1 data-title-border>Misyon – Vizyon
                    </h1>
                </div>
                <div class="col-md-4 order-1 order-md-2 align-self-center">
                    <ul class="breadcrumb d-block text-md-right">
                        <li><a href="<?php echo base_url() ?>">Ana Sayfa</a></li>
                        <li class="active">Misyon-Vizyon</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container pb-1">

        <div class="row pt-4">
            <div class="col">
                <div class="overflow-hidden mb-3">
                    <h2 class="word-rotator slide font-weight-bold text-8 mb-0 appear-animation"
                        data-appear-animation="maskUp">
                        <span> </span>
                        <span class="word-rotator-words bg-primary">
										<b class="is-visible">Kütahya</b>
										<b>Tasarım</b>
										<b>Teknokent</b>
									</span>
                    </h2>
                </div>
            </div>
        </div>

        <div class="row mb-2">
            <div class="col-lg-10">
                <div class="overflow-hidden">
                    <p class="lead mb-0 appear-animation" data-appear-animation="maskUp"
                       data-appear-animation-delay="250">SizdNe Kütahya Tasarım Tekno Kent'in ayrıcalıklarını keşfedin..
                        <span class="alternative-font">şimdi</span> bize ulaşarak ayrıcalıklar dünyasına katılın..
                    </p>
                </div>
            </div>
            <div class="col-lg-2 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="450">
                <a href="<?php echo base_url("iletisim") ?> " class="btn btn-modern btn-primary mt-1">Başvuru Formu!</a>
            </div>
        </div>
    </div>
    <section class="section section-default border-0 my-5 appear-animation" data-appear-animation="fadeIn"
             data-appear-animation-delay="750">
        <div class="container py-4">

            <div class="row align-items-center">
                <div class="col-md-6 appear-animation" data-appear-animation="fadeInLeftShorter"
                     data-appear-animation-delay="1000">
                    <div class="owl-carousel owl-theme nav-inside mb-0"
                         data-plugin-options="{'items': 1, 'margin': 10, 'animateOut': 'fadeOut', 'autoplay': true, 'autoplayTimeout': 6000, 'loop': true}">
                        <div>
                            <img alt="" class="img-fluid" src="<?php echo base_url("assets")?>/img/generic/slider1.jpg">
                        </div>
                        <div>
                            <img alt="" class="img-fluid" src="<?php echo base_url("assets")?>/img/generic/slider2.jpg">
                        </div>
                    </div>
                </div>
              <?php echo $settings->mission ?>
        </div>
</div>
</div>
</section>

