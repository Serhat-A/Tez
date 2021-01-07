<div class="container py-2">

    <ul class="nav nav-pills sort-source sort-source-style-3 justify-content-center" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
        <li class="nav-item active" data-option-value="*"><a class="nav-link text-1 text-uppercase active" href="#">Show All</a></li>
        <li class="nav-item" data-option-value=".websites"><a class="nav-link text-1 text-uppercase" href="#">Websites</a></li>
        <li class="nav-item" data-option-value=".logos"><a class="nav-link text-1 text-uppercase" href="#">Logos</a></li>
        <li class="nav-item" data-option-value=".brands"><a class="nav-link text-1 text-uppercase" href="#">Brands</a></li>
        <li class="nav-item" data-option-value=".medias"><a class="nav-link text-1 text-uppercase" href="#">Medias</a></li>
    </ul>

    <div class="sort-destination-loader sort-destination-loader-showing mt-4 pt-2">
        <div class="row portfolio-list sort-destination" data-sort-id="portfolio">

            <?php foreach ($galleries as $gallery){?>
            <div class="col-sm-6 col-lg-3 isotope-item brands">
                <div class="portfolio-item">
                    <a href="portfolio-single-wide-slider.html">
										<span class="thumb-info thumb-info-lighten border-radius-0">
											<span class="thumb-info-wrapper border-radius-0">
												<img src="img/projects/project.jpg" class="img-fluid border-radius-0" alt="">

												<span class="thumb-info-title">
													<span class="thumb-info-inner">Presentation</span>
													<span class="thumb-info-type">Brand</span>
												</span>
												<span class="thumb-info-action">
													<span class="thumb-info-action-icon bg-dark opacity-8"><i class="fas fa-plus"></i></span>
												</span>
											</span>
										</span>
                    </a>
                </div>
            </div>
            <?php }?>


        </div>
    </div>

</div>