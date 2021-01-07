
    <div role="main" class="main">

        <section class="page-header page-header-modern bg-color-light-scale-1 page-header-md ">
            <div class="container-fluid">
                <div class="row align-items-center">

                    <div class="col">
                        <div class="row">
                            <div class="col-md-12 align-self-center p-static order-2 text-center">
                                <div class="overflow-hidden pb-2">
                                    <h1 class="text-dark font-weight-bold text-9 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="100">Teknokent'de Bulunan Firmalar Listesi</h2>
                                </div>
                            </div>
                            <div class="col-md-12 align-self-center order-1">
                                <ul class="breadcrumb d-block text-center appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="300">
                                    <li><a href="<?php echo base_url()?>">Ana sayfa</a></li>
                                    <li><a href="<?php echo base_url("firmalar")?>">Firmalar</a></li>
                                    <li class="active">Firma Listesi</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <div class="container py-2">

            <ul class="nav nav-pills sort-source sort-source-style-3 justify-content-center" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
                <li class="nav-item active" data-option-value="*"><a class="nav-link text-1 text-uppercase active" href="#">Tümü</a></li>
                <?php foreach($firmdist as $item){?>

                <li class="nav-item" data-option-value=".<?php echo clear_space($item->category) ?>"><a class="nav-link text-1 text-uppercase" href="#"><?php echo $item->category ?></a></li>
                <?php }?>
            </ul>

            <div class="sort-destination-loader sort-destination-loader-showing mt-3">
                <div class="row portfolio-list sort-destination" data-sort-id="portfolio">

                    <?php foreach ($firms as $item) {?>
                    <div class="col-lg-6 isotope-item mt-4 <?php echo $item->category?>">
                        <div class="row">

                            <div class="col-lg-6">
                                <div class="portfolio-item">

												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten border-radius-0 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="100">
													<span class="thumb-info-wrapper border-radius-0">
                                                    <img src="<?php echo base_url("panel/uploads/firms_v/255x150/$item->img_url");?>" width="" height="auto" alt="<?php echo $item->title?>">


													</span>
												</span>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-6">

                                <div class="overflow-hidden">
                                    <h2 class="text-color-dark font-weight-bold text-5 mb-2 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="600"> <?php echo $item->title?></h2>
                                </div>

                                <p class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="800"> <?php echo  character_limiter($item->description,"500"); ?></p>

                                <ul class="list list-icons list-primary list-borders text-2 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1200">
                                    <li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Kurucu</strong> <?php echo $item->kurucu ;  ?> </li>
                                    <li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Kuruluş:</strong> <?php echo get_readable_date_month2($item->kurulus)?></li>
                                    <li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">İletişim :</strong>  <?php echo $item->phone ?></li>
                                    <li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Web Sayfası :</strong>  <?php echo $item->webpage ?></li>
                                    <li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">E-Mail :</strong> <?php echo $item->mail ?></li>
                                    <li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Alan:</strong>
                                        <?php $alan=explode(",",$item->alan); $alanCount=count($alan); $i=0; ?>
                                   <?php for ($i; $i < $alanCount; $i++){ ?>

                                        <a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1"><?php print_r($alan[$i]); ?></a>
                                   <?php }?>
                                    </li>

                                </ul>

                            </div>

                        </div>
                    </div>

                    <?php } ?>











                </div>

            </div>


        </div>

    </div>
