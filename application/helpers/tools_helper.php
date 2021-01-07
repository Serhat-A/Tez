<?php

function get_product_cover_image($id)
{

    $t = &get_instance();

    $t->load->model("product_image_model");

    $cover_image = $t->product_image_model->get(
        array(
            "isCover" => 1,
            "product_id" => $id
        )
    );

    if (empty($cover_image)) {

        $cover_image = $t->product_image_model->get(
            array(
                "product_id" => $id
            )
        );

    }

    return !empty($cover_image) ? $cover_image->img_url : "";

}



function get_portfolio_category_title($id)
{

    $t = &get_instance();

    $t->load->model("portfolio_category_model");

    $portfolio = $t->portfolio_category_model->get(
        array(
            "id" => $id

        )
    );

    return (empty($portfolio)) ? false : $portfolio->title;


}

function get_portfolio_cover_image($id)
{

    $t = &get_instance();

    $t->load->model("portfolio_image_model");

    $cover_image = $t->portfolio_image_model->get(
        array(
            "isCover" => 1,
            "portfolio_id" => $id
        )
    );

    if (empty($cover_image)) {

        $cover_image = $t->portfolio_image_model->get(
            array(
                "portfolio_id" => $id
            )
        );

    }

    return !empty($cover_image) ? $cover_image->img_url : "";

}

function clear_space($veri)
{
    $veri = str_replace("/s+/", "", $veri);
    $veri = str_replace(" ", "", $veri);
    $veri = str_replace(" ", "", $veri);
    $veri = str_replace(" ", "", $veri);
    $veri = str_replace("/s/g", "", $veri);
    $veri = str_replace("/s+/g", "", $veri);
    $veri = trim($veri);
    return $veri;
}

;

function get_settings()
{

    $t = &get_instance();


    //  $settings = $t->session->userdata("settings");

    // if(empty($settings)){

    $t->load->model("settings_model");

    $settings = $t->settings_model->get();

    $t->session->set_userdata("settings", $settings);
    // }

    return $settings;
}
//footer'da hizmetleri listelemek için session'da çektim
function get_settings_product()
{

    $t = &get_instance();


    //  $settings = $t->session->userdata("settings");

    // if(empty($settings)){

    $t->load->model("product_model");

    $product = $t->product_model->get_all(
        array(

            "isActive" => 1,

        ),"rank ASC", array("start" => 0, "count" => 6)
    );

    $t->session->set_userdata("product", $product);
    // }

    return $product;
}

//footer'da blogları listelemek için session'da çektim
function get_settings_blog()
{

    $t = &get_instance();


    //  $settings = $t->session->userdata("settings");

    // if(empty($settings)){

    $t->load->model("portfolio_model");

    $portfolio = $t->portfolio_model->get_all(
        array(

            "isActive" => 1,

        ),"rank ASC", array("start" => 0, "count" => 4)
    );

    $t->session->set_userdata("portfolio", $portfolio);
    // }

    return $portfolio;
}

function send_email($toEmail = "", $subject = "", $message = "")
{

    $t = &get_instance();

    $t->load->model("emailsettings_model");

    $email_settings = $t->emailsettings_model->get(
        array(
            "isActive" => 1
        )
    );

    if (empty($toEmail))
        $toEmail = $email_settings->to;

    $config = array(

        "protocol" => $email_settings->protocol,
        "smtp_host" => $email_settings->host,
        "smtp_port" => $email_settings->port,
        "smtp_user" => $email_settings->user,
        "smtp_pass" => $email_settings->password,
        "starttls" => true,
        "charset" => "utf-8",
        "mailtype" => "html",
        "wordwrap" => true,
        "newline" => "\r\n"
    );

    $t->load->library("email", $config);

    $t->email->from($email_settings->from, $email_settings->user_name);
    $t->email->to($toEmail);
    $t->email->subject($subject);
    $t->email->message($message);

    return $t->email->send();

}

function get_readable_date($date)
{

    setlocale(LC_TIME, 'turkish');
    return iconv('latin5', 'utf-8', strftime('%e %B %Y', strtotime($date)));
}

function get_readable_date_month($date)
{

    setlocale(LC_TIME, 'turkish');
    return iconv('latin5', 'utf-8', strftime('%B', strtotime($date)));
}

function get_readable_date_day($date)
{

    setlocale(LC_TIME, 'turkish');
    return iconv('latin5', 'utf-8', strftime('%e', strtotime($date)));
}
function get_readable_date_year($date)
{

    setlocale(LC_TIME, 'turkish');
    return iconv('latin5', 'utf-8', strftime('%Y', strtotime($date)));
}

function get_readable_date_month2($date)
{

    setlocale(LC_TIME, 'turkish');
    return iconv('latin5', 'utf-8', strftime('%B %Y', strtotime($date)));
}

function convertToTurkce($text)
{

    $turkce = array("ç", "Ç", "ğ", "Ğ", "ü", "Ü", "ö", "Ö", "ı", "İ", "ş", "Ş", ".", ",", "!", "'", "\"", "/", " ", "?", "*", "_", "|", "=", "(", ")", "[", "]", "{", "}");
    $convert = array("c", "c", "g", "g", "u", "u", "o", "o", "i", "i", "s", "s", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-");

    return strtolower(str_replace($turkce, $convert, $text));

}

function get_youtube_id($url)
{

    $video_id = explode("=", $url);
    return $video_id[1];
}

function get_gallery_by_url($url = "")
{

    $t = &get_instance();
    $t->load->model("gallery_model");

    $gallery = $t->gallery_model->get(
        array(
            "isActive" => 1,
            "url" => $url
        )
    );

    return ($gallery) ? $gallery : false;

}

function active_menu($path, $className = 'current')
{
    $CI         =& get_instance();
    $uri_string = $CI->uri->uri_string();

    // Home is usually at / && has 0 total segments
    if ($path === '/' && ($CI->uri->total_segments() === 0))  {
        $ret_val = 'current';
    } else {
        $ret_val = ($uri_string === $path) ? $className : '';
    }

    return $ret_val;

}
function replaceSpace($veri)
{
    
    $veri = str_replace("/s+/","",$veri);
    $veri = str_replace(" ","",$veri);
    $veri = str_replace(" ","",$veri);
    $veri = str_replace(" ","",$veri);
    $veri = str_replace("/s/g","",$veri);
    $veri = str_replace("/s+/g","",$veri);		
    $veri = trim($veri);
    return $veri; 
}
function replaceSpacex($string)
{
	$string = preg_replace("/\s+/", " ", $string);
	$string = trim($string);
	return $string;
}