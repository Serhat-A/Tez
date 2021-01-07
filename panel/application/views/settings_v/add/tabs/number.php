<div role="tabpanel" class="tab-pane fade" id="tab-8">
  <div class="row">

    <div class="form-group col-md-4">
    <label>Üst Başlık Yazısı</label>
      <input class="form-control" placeholder="Üst Başlıkta |'dan sonrasındaki yazıyı giriniz" name="number1"
        value="<?php echo isset($form_error) ? set_value("number1") : $item->number1; ?>">
    </div>
    <div class="form-group col-md-4">
      <label>Yazı 1</label>
      <input class="form-control" placeholder="Alt Kısımdaki 1. yazı" name="text1"
        value="<?php echo isset($form_error) ? set_value("text1") : $item->text1; ?>">
    </div>
  </div>
  <div class="row">
    <div class="form-group col-md-4">
      <label>Sayı 2</label>
      <input class="form-control" placeholder="Alt Kısımdaki 2. sayı" name="number2"
        value="<?php echo isset($form_error) ? set_value("number2") : $item->number2; ?>">
    </div>
    <div class="form-group col-md-4">
      <label>Yazı 2</label>
      <input class="form-control" placeholder="Alt Kısımdaki 2. yazı" name="text2"
        value="<?php echo isset($form_error) ? set_value("text2") : $item->text2; ?>">
    </div>
  </div>
  <div class="row">
    <div class="form-group col-md-4">
      <label>Sayı 3</label>
      <input class="form-control" placeholder="Alt Kısımdaki 3. sayı" name="number3"
        value="<?php echo isset($form_error) ? set_value("number3") : $item->number3; ?>">
    </div>
    <div class="form-group col-md-4">
      <label>Yazı 3</label>
      <input class="form-control" placeholder="Alt Kısımdaki 3. yazı" name="text3"
        value="<?php echo isset($form_error) ? set_value("text3") : $item->text3; ?>">
    </div>
  </div>
  <div class="row">
    <div class="form-group col-md-4">
      <label>Sayı 4</label>
      <input class="form-control" placeholder="Alt Kısımdaki 4. sayı" name="number4"
        value="<?php echo isset($form_error) ? set_value("number4") : $item->number4; ?>">
    </div>
    <div class="form-group col-md-4">
      <label>Yazı 4</label>
      <input class="form-control" placeholder="Alt kısımdaki 4. yazı" name="text4"
        value="<?php echo isset($form_error) ? set_value("text4") : $item->text4; ?>">
    </div>
  </div>



</div>



</div><!-- .tab-pane  -->