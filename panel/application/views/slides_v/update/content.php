<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            <?php echo "<b>".strip_tags($item->title)."</b> kaydını düzenliyorsunuz"; ?>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="<?php echo base_url("slides/update/$item->id"); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <p>1. Kısım</p>
                        <label>Başlık</label>
                        <input class="form-control" placeholder="Başlık" name="title" value="<?php echo $item->title; ?>">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("title"); ?> </small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Açıklama</label>
                        <input class="form-control" placeholder="Açıklama" name="description" value="<?php echo $item->description; ?>">
                    </div>
                   

                    <div class="row">

                        <div class="col-md-1 image_upload_container">
                            <img src="<?php echo get_picture($viewFolder, $item->img_url,"350x263"); ?>" alt="" class="img-responsive">
                        </div>

                        <div class="col-md-9 form-group image_upload_container">
                            <label>Görsel Seçiniz</label>
                            <input type="file" name="img_url" class="form-control">
                        </div>

                    </div>
                    <p>1. Kısım</p>

                    <div class="form-group">
                        <label>Buton Kullanımı on/off</label><br>
                        <input
                                class="form-control button_usage_btn"
                                type="checkbox"
                                data-switchery
                                name="allowButton"
                                <?php echo ($item->allowButton) ? "checked" : ""; ?>
                                data-color="#10c469"/>
                    </div>

                    <div class="button-information-container" style="display : <?php echo ($item->allowButton) ? "block" : "none"; ?>">
                    <div class="form-group">
                        <label>Başlık</label>
                        <input class="form-control" placeholder="Başlık" name="button_caption" value="<?php echo $item->button_caption; ?>">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("button_caption"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Buton Url</label>
                        <input class="form-control" placeholder="Açıklama" name="button_url" value="<?php echo $item->button_url; ?>">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("button_url"); ?></small>
                        <?php } ?>
                    </div>
                        </div>
              </div>

                    <button type="submit" class="btn btn-primary btn-md btn-outline">Güncelle</button>
                    <a href="<?php echo base_url("slides"); ?>" class="btn btn-md btn-danger btn-outline">İptal</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>