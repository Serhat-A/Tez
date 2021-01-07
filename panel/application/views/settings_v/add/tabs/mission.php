<div role="tabpanel" class="tab-pane fade" id="tab-3">
    <div class="row">
    <div class="form-group col-md-4">
            <label>Anahtar Kelimeler</label>
            <input class="form-control" placeholder="Aralarına virgüllerle giriniz..."
                   name="keywords"
                   value="<?php echo isset($form_error) ? set_value("keywords") : $item->keywords; ?>">
        </div>

        <div class="form-group col-md-4">
            <label>Alt bilgi</label>
            <textarea name="description" class="m-0" data-plugin="summernote" data-options="{height: 250}"></textarea>
        </div>

    </div>
</div><!-- .tab-pane  -->