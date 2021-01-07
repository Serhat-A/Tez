<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            <?php echo "<b>$item->title</b> kaydını düzenliyorsunuz"; ?>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="<?php echo base_url("firms/update/$item->id"); ?>" method="post"
                      enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Başlık</label>
                        <input class="form-control" placeholder="Başlık" name="title"
                               value="<?php echo $item->title; ?>">
                        <?php if (isset($form_error)) { ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Açıklama</label>
                        <textarea name="description" class="m-0" data-plugin="summernote"
                                  data-options="{height: 250}"><?php echo $item->description; ?></textarea>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label for="datetimepicker1">Firmanın Kuruluş Tarihi</label>
                            <input
                                    type="hidden"
                                    name="kurulus"
                                    id="datetimepicker1"
                                    data-plugin="datetimepicker"
                                    data-options="{inline: true, viewMode: 'days', format : 'YYYY-MM-DD HH:mm:ss'}"
                                    value="<?php echo (isset($form_error)) ? set_value("kurulus") : $item->kurulus; ?>"
                            />
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Kategori</label>

                                <select name="category" class="form-control">
                                    <option <?php echo $item->category === "yazilim" ? "selected" : ""; ?>
                                            value="yazilim">Yazılım
                                    </option><option <?php echo $item->category === "robotik" ? "selected" : ""; ?>
                                            value="robotik">Robotik
                                    </option><option <?php echo $item->category === "urungelistirme" ? "selected" : ""; ?>
                                            value="urungelistirme">Ürün Geliştirme
                                    </option><option <?php echo $item->category === "enerji" ? "selected" : ""; ?>
                                            value="enerji">Enerji
                                    </option>
                                    <option <?php echo $item->category === "saglik" ? "selected" : ""; ?>
                                            value="saglik">Sağlık
                                    </option>

                                </select>

                                <?php if (isset($form_error)) { ?>
                                    <small class="pull-right input-form-error"> <?php echo form_error("category"); ?></small>
                                <?php } ?>
                            </div>
                            <div class="form-group">
                                <label>Firmanın Kurucusu</label>
                                <input
                                        class="form-control"
                                        placeholder="Yapılan işin internet üzerindeki bağlantısı"
                                        name="kurucu"
                                        value="<?php echo (isset($form_error)) ? set_value("kurucu") : $item->kurucu; ?>"
                                >
                                <?php if (isset($form_error)) { ?>
                                    <small class="pull-right input-form-error"> <?php echo form_error("kurucu"); ?></small>
                                <?php } ?>
                            </div>

                            <div class="form-group">
                                <label>Firmanın Telefonu</label>
                                <input
                                        class="form-control"
                                        placeholder="Yapılan işin internet üzerindeki bağlantısı"
                                        name="phone"
                                        value="<?php echo (isset($form_error)) ? set_value("phone") : $item->phone; ?>"
                                >
                                <?php if (isset($form_error)) { ?>
                                    <small class="pull-right input-form-error"> <?php echo form_error("phone"); ?></small>
                                <?php } ?>
                            </div>
                            <div class="form-group">
                                <label>Firmanın Web Sayfası</label>
                                <input
                                        class="form-control"
                                        placeholder="Yapılan işin internet üzerindeki bağlantısı"
                                        name="webpage"
                                        value="<?php echo (isset($form_error)) ? set_value("webpage") : $item->webpage; ?>"
                                >
                                <?php if (isset($form_error)) { ?>
                                    <small class="pull-right input-form-error"> <?php echo form_error("webpage"); ?></small>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Firmanın Mail Adresi</label>
                        <input
                                class="form-control"
                                placeholder="Yapılan işin internet üzerindeki bağlantısı"
                                name="mail"
                                value="<?php echo (isset($form_error)) ? set_value("mail") : $item->mail; ?>"
                        >
                        <?php if (isset($form_error)) { ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("mail"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Alanlar</label>
                        <input
                                class="form-control"
                                placeholder="Yapılan işin internet üzerindeki bağlantısı"
                                name="alan"
                                value="<?php echo (isset($form_error)) ? set_value("alan") : $item->alan; ?>"
                        >
                        <?php if (isset($form_error)) { ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("alan"); ?></small>
                        <?php } ?>
                    </div>


                    <div class="row">

                        <div class="col-md-1 image_upload_container">
                            <img src="<?php echo get_picture($viewFolder, $item->img_url, "350x217"); ?>" alt=""
                                 class="img-responsive">
                        </div>

                        <div class="col-md-9 form-group image_upload_container">
                            <label>Görsel Seçiniz</label>
                            <input type="file" name="img_url" class="form-control">
                        </div>

                    </div>

                    <button type="submit" class="btn btn-primary btn-md btn-outline">Güncelle</button>
                    <a href="<?php echo base_url("firms"); ?>" class="btn btn-md btn-danger btn-outline">İptal</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>