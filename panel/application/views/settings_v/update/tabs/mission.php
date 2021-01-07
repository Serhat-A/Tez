<div role="tabpanel" class="tab-pane fade" id="tab-3">
    <div class="row">
    <div class="form-group col-md-12">
            <label>Anahtar Kelimeler</label> <br>
            <textarea name="keywords" class="m-0" cols="50" rows="5"  placeholder="Lütfen sitenizin anahtar kelimelerini giriniz.Her birinin arasına virgül koyunuz."> <?php echo isset($form_error) ? set_value("keywords") : $item->keywords; ?></textarea>
        </div>

        <div class="form-group col-md-12">
            <label>Alt bilgi</label><br>
            <textarea name="description" class="m-0" cols="50" rows="5" placeholder="Sitenizin alt bilgi kısmını giriniz. Max 250 karakter önerilir"> <?php echo isset($form_error) ? set_value("description") : $item->description; ?></textarea>
        </div>
    
    </div>
</div><!-- .tab-pane  -->