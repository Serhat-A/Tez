<div role="main" class="main">
    <section class="page-header page-header-classic page-header-sm">
        <div class="container">
            <div class="row">
                <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                    <h1 data-title-border>TGB KANUNLARI
                    </h1>
                </div>
                <div class="col-md-4 order-1 order-md-2 align-self-center">
                    <ul class="breadcrumb d-block text-md-right">
                        <li><a href="<?php echo base_url()?>">Ana Sayfa</a></li>
                        <li class="active">TGB KANUNLARI</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>





    <div class="container py-2">
        <h3><strong class="font-weight-extra-bold">TGB Kanunları</strong></h3>


        <?php foreach ($tgb4691 as $item) {?>
            <hr class="solid my-5">
            <section class="call-to-action featured featured-tertiary mb-5">
                <div class="col-sm-9 col-lg-9">
                    <div class="call-to-action-content">

                        <p class="mb-0"><strong class="font-weight-extra-bold"><?php echo $item->title?></strong>
                    </div>
                </div>
                <div class="col-sm-3 col-lg-3">
                    <div class="call-to-action-btn">
                        <a href="<?php echo base_url("panel/uploads/tgb_v/$item->img_url")?>" target="_blank" class="btn btn-modern text-2 btn-tertiary"><img src="<?php echo base_url("assets/")?>img/download.png"/></a>
                    </div>

            </section>
        <?php } ?>
    </div>


