<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            TGB  Listesi
            <a href="<?php echo base_url("tgb/new_form"); ?>" class="btn btn-outline btn-primary btn-xs pull-right"> <i class="fa fa-plus"></i> Yeni Ekle</a>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget p-lg">

            <?php if(empty($items)) { ?>

                <div class="alert alert-info text-center">
                    <p>Burada herhangi bir veri bulunmamaktadır. Eklemek için lütfen <a href="<?php echo base_url("tgb/new_form"); ?>">tıklayınız</a></p>
                </div>

            <?php } else { ?>

                <table class="table table-hover table-striped table-bordered content-container">
                    <thead>
                        <th class="order"><i class="fa fa-reorder"></i></th>
                        <th class="w50">#id</th>
                        <th>Başlık</th>
                        <th>url</th>
                        <th>Haber Türü</th>
                        <th>Görsel</th>
                        <th>Durumu</th>
                        <th>İşlem</th>
                    </thead>
                    <tbody class="sortable" data-url="<?php echo base_url("tgb/rankSetter"); ?>">

                        <?php foreach($items as $item) { ?>

                            <tr id="ord-<?php echo $item->id; ?>">
                                <td class="order"><i class="fa fa-reorder"></i></td>
                                <td class="w50 text-center">#<?php echo $item->id; ?></td>
                                <td><?php echo $item->title; ?></td>
                                <td><?php echo $item->url; ?></td>
                                <td class="text-center"><?php echo $item->news_type; ?></td>
                                <td class="text-center w100">
                                    <?php if($item->news_type == "image") { ?>

                                            <p><?php echo $item->img_url ?></p>
                                    <?php } else if($item->news_type == "video") { ?>

                                        <img width="75" 
                                        src="<?php 
                                                    	 $y_img=$item->video_url;
														 $video_th=explode("=",$y_img);
														 echo "https://img.youtube.com/vi/$video_th[1]/sddefault.jpg";?>" 
                                             alt=""
                                             class="img-rounded">


                                    <?php } ?>
                                </td>
                                <td class="text-center w100">
                                    <input
                                        data-url="<?php echo base_url("tgb/isActiveSetter/$item->id"); ?>"
                                        class="isActive"
                                        type="checkbox"
                                        data-switchery
                                        data-color="#10c469"
                                        <?php echo ($item->isActive) ? "checked" : ""; ?>
                                    />
                                </td>
                                <td class="text-center w200">
                                    <button
                                        data-url="<?php echo base_url("tgb/delete/$item->id"); ?>"
                                        class="btn btn-sm btn-danger btn-outline remove-btn">
                                        <i class="fa fa-trash"></i> Sil
                                    </button>
                                    <a href="<?php echo base_url("tgb/update_form/$item->id"); ?>" class="btn btn-sm btn-info btn-outline"><i class="fa fa-pencil-square-o"></i> Düzenle</a>
                                </td>
                            </tr>

                        <?php } ?>

                    </tbody>

                </table>

            <?php } ?>

        </div><!-- .widget -->
    </div><!-- END column -->
</div>