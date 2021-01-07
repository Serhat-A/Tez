<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            Yeni Firma Ekle
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="<?php echo base_url("firms/save"); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Firma</label>
                        <input class="form-control" placeholder="Başlık" name="title">
                        <?php if (isset($form_error)) { ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Firma Hakkında Küçük Bir Yazı</label>
                        <textarea name="description" class="m-0" data-plugin="summernote"
                                  data-options="{height: 250}"></textarea>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label for="datetimepicker1">Firmanın Kuruluş Tarihi</label>
                            <input type="hidden" name="kurulus" id="datetimepicker1" data-plugin="datetimepicker"
                                   data-options="{inline: true, viewMode: 'days', format : 'YYYY-MM-DD HH:mm:ss'}"
                                   value="<?php echo isset($form_error) ? set_value("kurulus") : ""; ?>"/>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Kategori</label>

                                <select name="category" class="form-control">
                                    <option value="yazilim">Yazılım</option>
                                    <option value="robotik">Robotik</option>
                                    <option value="urungelistirme">Ürün Geliştirme</option>
                                    <option value="enerji">Enerji</option>
                                    <option value="saglik">Sağlık</option>
                                </select>

                                <?php if (isset($form_error)) { ?>
                                    <small class="pull-right input-form-error"> <?php echo form_error("category"); ?></small>
                                <?php } ?>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Firmanın Sahibi</label>
                                    <input class="form-control" placeholder="Firmanın Sahibini giriniz" name="kurucu"
                                           value="<?php echo isset($form_error) ? set_value("kurucu") : ""; ?>">
                                    <?php if (isset($form_error)) { ?>
                                        <small class="pull-right input-form-error"> <?php echo form_error("kurucu"); ?></small>
                                    <?php } ?>
                                </div>
                                <div class="form-group">
                                    <label>Firmanın Telefon Numarası</label>
                                    <input class="form-control" placeholder="Firmanın Telefon Numarası" name="phone"
                                           value="<?php echo isset($form_error) ? set_value("phone") : ""; ?>">
                                    <?php if (isset($form_error)) { ?>
                                        <small class="pull-right input-form-error"> <?php echo form_error("phone"); ?></small>
                                    <?php } ?>
                                </div>
                                <div class="form-group">
                                    <label>Firmanın Web Sayfası</label>
                                    <input class="form-control" placeholder="Firmanın Web Sayfası" name="webpage"
                                           value="<?php echo isset($form_error) ? set_value("webpage") : ""; ?>">
                                    <?php if (isset($form_error)) { ?>
                                        <small class="pull-right input-form-error"> <?php echo form_error("webpage"); ?></small>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            <div class="form-group">
                <label>Firmanın Mail Adresi</label>
                <input class="form-control" placeholder="Firmanın Mail Adresi" name="mail"
                       value="<?php echo isset($form_error) ? set_value("mail") : ""; ?>">
                <?php if (isset($form_error)) { ?>
                    <small class="pull-right input-form-error"> <?php echo form_error("mail"); ?></small>
                <?php } ?>
            </div>
            <div class="form-group">
                <label>Firmanın Hizmet Alanları</label>
                <input class="form-control" placeholder="Birden fazlaysa arasına virgül koyarak yazınız" name="alan"
                       value="<?php echo isset($form_error) ? set_value("alan") : ""; ?>">
                <?php if (isset($form_error)) { ?>
                    <small class="pull-right input-form-error"> <?php echo form_error("alan"); ?></small>
                <?php } ?>
            </div>

            <div class="form-group image_upload_container">
                <label>Görsel Seçiniz</label>
                <input type="file" name="img_url" class="form-control">
            </div>

            <button type="submit" class="btn btn-primary btn-md btn-outline">Kaydet</button>
            <a href="<?php echo base_url("firms"); ?>" class="btn btn-md btn-danger btn-outline">İptal</a>
            </form>
        </div><!-- .widget-body -->
    </div><!-- .widget -->
</div><!-- END column -->
</div>