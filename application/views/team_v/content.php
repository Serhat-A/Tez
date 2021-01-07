<div role="main" class="main">

    <div role="main" class="main">
        <section class="page-header page-header-classic page-header-sm">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                        <h1 data-title-border>Teknokent Yönetimi
                        </h1>
                    </div>
                    <div class="col-md-4 order-1 order-md-2 align-self-center">
                        <ul class="breadcrumb d-block text-md-right">
                            <li><a href="<?php echo base_url() ?>">Ana Sayfa</a></li>
                            <li class="active">Teknokent Yönetimi</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

    <div class="container py-4">

        <ul class="nav nav-pills sort-source sort-source-style-3 justify-content-center" data-sort-id="team" data-option-key="filter">
            <li class="nav-item active" data-option-value="*"><a class="nav-link text-1 text-uppercase active" href="#">Yönetim</a></li>
            <?php foreach($teamdist as $item){?>
                <li class="nav-item" data-option-value=".<?php echo clear_space($item->category) ?>"><a class="nav-link text-1 text-uppercase " href="#"><?php echo $item->category ?></a></li>
            <?php } ?>

        </ul>

        <div class="sort-destination-loader sort-destination-loader-showing mt-4 pt-2">
            <div class="row team-list sort-destination" data-sort-id="team">

                <?php foreach($teams as $item) { ?>
                <div class="col-12 col-sm-6 col-lg-3 isotope-item <?php echo clear_space($item->category) ?>">
                    <span class="thumb-info thumb-info-hide-wrapper-bg mb-4">
                        <span class="thumb-info-wrapper">
                            
                                <img src="<?php echo base_url("panel/uploads/teams_v/$item->img_url") ?>" class="img-fluid" alt="">
                                <span class="thumb-info-title">
                                    <span class="thumb-info-inner"><?php echo $item->title ?></span>
                                    <span class="thumb-info-type"><?php echo $item->description ?></span>
                                </span>
                            </a>
                        </span>


                </div><?php }?>

            </div>

        </div>

    </div>

