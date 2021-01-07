<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            Yeni Slayt Ekle
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="<?php echo base_url("slides/save"); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <p>1. Kısım</p>
                        <label>Başlık</label>
                        <input class="form-control" placeholder="Başlık" name="title" value="">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Açıklama</label>
                        <input class="form-control" placeholder="2. başlık" name="description" value="">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("description"); ?></small>
                        <?php } ?>
                    </div>
                   

                    <div class="form-group image_upload_container">
                        <label>Görsel Seçiniz</label>
                        <input type="file" name="img_url" class="form-control">
                    </div>
                    <p>2. Kısım</p>

                    <div class="form-group">
                        <label>Ekstra Yazı Kullanımı</label><br>
                        <input
                                class="form-control button_usage_btn"
                                type="checkbox"
                                data-switchery
                                name="allowButton"
                                data-color="#10c469"/>
                    </div>

                    <div class="button-information-container">
                        <div class="form-group">
                            <label>Başlık</label>
                            <input class="form-control" placeholder="Butonun gideceği url'i yapıştırın" name="button_caption" value="">
                            <?php if(isset($form_error)){ ?>
                                <small class="pull-right input-form-error"> <?php echo form_error("button_caption"); ?></small>
                            <?php } ?>
                        </div>
                        <div class="form-group">
                        <label>Açıklama</label>
                        <input class="form-control" placeholder="Butonun gideceği url'i yapıştırın" name="button_url" value="">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("button_url"); ?></small>
                        <?php } ?>
                    </div>
                    </div>
                 

                    <button type="submit" class="btn btn-primary btn-md btn-outline">Kaydet</button>
                    <a href="<?php echo base_url("slides"); ?>" class="btn btn-md btn-danger btn-outline">İptal</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>