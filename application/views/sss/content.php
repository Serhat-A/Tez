<div role="main" class="main">
    <section class="page-header page-header-classic page-header-sm">
        <div class="container">
            <div class="row">
                <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                    <h1 data-title-border>S.S.S
                    </h1>
                </div>
                <div class="col-md-4 order-1 order-md-2 align-self-center">
                    <ul class="breadcrumb d-block text-md-right">
                        <li><a href="<?php echo base_url()?>">Ana Sayfa</a></li>
                        <li class="active">S.S.S</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="row">

            <div class="row mt-5">
                <div class="col">
                    <h4 class="mb-4">Sıkça Sorulan Sorular</h4>

                    <div class="row">
                        <div class="col-lg-4">
                            <div class="tabs tabs-vertical tabs-right tabs-navigation tabs-navigation-simple">
                                <ul class="nav nav-tabs col-sm-3">
                                    <?php $i=1;?>
<?php foreach ($sss as $item) {?>

                                    <li class="nav-item <?php echo ($i ==1) ? "active" : ""; ?>">
                                        <a class="nav-link" href="#tabsNavigationVertSimple<?php echo $i; $i++?>" data-toggle="tab"><?=$item->title?></a>
                                    </li>

<?php  }?>

                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <?php $b=1;?>
                            <?php foreach ($sss as $item) {?>
                            <div class="tab-pane tab-pane-navigation <?php echo ($b ==1) ? "active" : ""; ?>" id="tabsNavigationVertSimple<?php echo $b; $b++?>">
                                <h4><?=$item->subtitle?></h4>
                                <p><?=$item->description?></p>
                            </div>
                            <?php  }?>



                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

