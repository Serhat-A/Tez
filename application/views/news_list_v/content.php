		<div role="main" class="main">

				<section class="page-header page-header-modern bg-color-light-scale-1 page-header-md">
					<div class="container">
						<div class="row">

							<div class="col-md-12 align-self-center p-static order-2 text-center">

								<h1 class="text-dark font-weight-bold text-8">Teknokent Haberleri</h1>
							</div>

							<div class="col-md-12 align-self-center order-1">

								<ul class="breadcrumb d-block tifxt-center">
									<li><a href="<?php echo base_url()?>">Ana Sayfa</a></li>
									<li class="active">Blog</li>
								</ul>
							</div>
						</div>
					</div>
				</section>


				<div class="container py-4">

<div class="row">
	<div class="col">
		<div class="blog-posts">

			<div class="row">
			<?php foreach ($news_list as $news) { ?>
				<div class="col-md-4">
					<article class="post post-medium border-0 pb-0 mb-5">
						<div class="post-image">
						<a href="<?php echo base_url("haber/$news->url")?>">
													<img src="<?php if($news->news_type == "video"){
														 $y_img=$news->video_url;
														 $video_th=explode("=",$y_img);
														 echo "https://img.youtube.com/vi/$video_th[1]/sddefault.jpg";
														}else{
															echo 
															base_url("panel/uploads/news_v/350x263/".$news->img_url);
														}
														?>" class="img-fluid img-thumbnail img-thumbnail-no-borders rounded-0" alt="<?=$news->url?>" />
												</a>
						</div>

						<div class="post-content">

							<h2 class="font-weight-semibold text-5 line-height-6 mt-3 mb-2"><a href="<?php echo base_url("haber/$news->url")?>"><?=$news->title?></a></h2>
<p><?php echo character_limiter($news->description,300)?></p>
							<div class="post-meta">
								<span><i class="far fa-user"></i><a href="#">Teknokent Yönetimi</a> </span>
								<span><i class="far fa-eye"></i> <a href="#"><?php echo ($news->viewCount == "") ? "Görüntülenme Yok" : "$news->viewCount Görüntülenme"; ?></a></span>
								<span class="d-block mt-2"><a href="<?php echo base_url("haber/$news->url")?>" class="btn btn-xs btn-light text-1 text-uppercase">Devamını gör</a></span>
							</div>

						</div>
					</article>
				</div>
			<?php } ?> 
			</div>

			<div class="row">
				<div class="col">
					<ul class="pagination float-right">
						<li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-left"></i></a></li>
						<li class="page-item active"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<a class="page-link" href="#"><i class="fas fa-angle-right"></i></a>
					</ul>
				</div>
			</div>

		</div>
	</div>

</div>

</div>