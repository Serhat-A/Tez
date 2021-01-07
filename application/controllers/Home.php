<?php


class Home extends CI_Controller

{


    public $viewFolder = "";


    public function __construct()

    {

        parent::__construct();

        $this->load->model("product_model");
       

        $this->load->helper("text");


    }


    public function index()

    {


        // Anasayfa...

        $viewData = new stdClass();


        $this->load->model("slide_model");
        $this->load->model("news_model");
        $this->load->model("testmonial_model");
        $this->load->model("portfolio_category_model");
        $this->load->model("portfolio_model");


        $slides = $this->slide_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );  
        $portfolio_category = $this->portfolio_category_model->get_all(

            array(

                "isActive" => 1

            ), 

        ); 
        $portfolio = $this->portfolio_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );
        $aside_product = $this->product_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );  



        $viewData->slides = $slides;
        $viewData->testmonial = $testmonial;
        $viewData->portfolio_category = $portfolio_category;
        $viewData->portfolio = $portfolio;
        $viewData->viewFolder = "home_v";


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function product_list()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "product_list_v";


        $this->load->model("portfolio_model");

        $this->load->model("portfolio_category_model");

        $this->load->helper("text");


        $viewData->portfolios = $this->portfolio_model->get_all(

            array(

                "isActive" => 1,
                "category_id" => 1

            ), "rank ASC"

        );

        $viewData->category_portfolio = $this->portfolio_category_model->get_all(

            array(

                "isActive" => 1

            )

        );
        
        $viewData->other_portfolios = $this->portfolio_model->get_all(

            array(

                "isActive" => 1,

                "id !=" => $viewData->portfolio->id

            ), "rank ASC", array("start" => 0, "count" => 3)

        );
        $aside_product = $this->product_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );  
        $viewData->aside_product = $aside_product;
        $this->load->view($viewData->viewFolder, $viewData);



    }


    public function product_detail($url)

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "product_v";

        $this->load->model("portfolio_model");

        $this->load->model("portfolio_image_model");
        $this->load->model("portfolio_category_model");

        $this->load->helper("text");


        $viewData->portfolio = $this->portfolio_model->get(

            array(

                "isActive" => 1,

                "url" => $url

            )

        );
  


        $viewData->portfolio_images = $this->portfolio_image_model->get_all(

            array(

                "isActive" => 1,

                "portfolio_id" => $viewData->portfolio->id,

            ), "rank ASC"

        );

        $viewData->category_portfolio = $this->portfolio_category_model->get_all(

            array(

                "isActive" => 1

            )

        );

        $viewData->other_portfolios = $this->portfolio_model->get_all(

            array(

                "isActive" => 1,
            

                "id !=" => $viewData->portfolio->id

            ), "rand()", array("start" => 0, "count" => 4)

        );


        $viewData->next_portfolios = $this->portfolio_model->get_all(

            array(

                "isActive" => 1,

                "id !=" => $viewData->portfolio->id

            ), "rand()", array("start" => 0, "count" => 1)

        );
       

        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function portfolio_list()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "portfolio_list_v";


        $this->load->model("portfolio_model");

        $this->load->model("portfolio_category_model");

        $this->load->helper("text");


        $viewData->portfolios = $this->portfolio_model->get_all(

            array(

                "isActive" => 1,
                "category_id" => 3

            ), "rank ASC"

        );

        $viewData->category_portfolio = $this->portfolio_category_model->get_all(

            array(

                "isActive" => 1

            )

        );
        
        $viewData->other_portfolios = $this->portfolio_model->get_all(

            array(

                "isActive" => 1,

                "id !=" => $viewData->portfolio->id

            ), "rank ASC", array("start" => 0, "count" => 3)

        );
        $aside_product = $this->product_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );  
        $viewData->aside_product = $aside_product;
        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function portfolio_detail($url)

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "portfolio_v";


        $this->load->model("portfolio_model");

        $this->load->model("portfolio_image_model");
        $this->load->model("portfolio_category_model");

        $this->load->helper("text");


        $viewData->portfolio = $this->portfolio_model->get(

            array(

                "isActive" => 1,
                "category_id" => 3,

                "url" => $url

            )

        );
  


        $viewData->portfolio_images = $this->portfolio_image_model->get_all(

            array(

                "isActive" => 1,

                "portfolio_id" => $viewData->portfolio->id,

            ), "rank ASC"

        );

        $viewData->category_portfolio = $this->portfolio_category_model->get_all(

            array(

                "isActive" => 1

            )

        );

        $viewData->other_portfolios = $this->portfolio_model->get_all(

            array(

                "isActive" => 1,

                "id !=" => $viewData->portfolio->id

            ), "rand()", array("start" => 0, "count" => 4)

        );


        $viewData->next_portfolios = $this->portfolio_model->get_all(

            array(

                "isActive" => 1,

                "id !=" => $viewData->portfolio->id

            ), "rand()", array("start" => 0, "count" => 1)

        );
       
       /******* Görüntülenme Sayısının Arttırılması *********/
        $viewCount = $portfolio->viewCount + 1;

        $this->portfolio_model->update(

            array(

                "id" => $portfolio->id

            ),

            array(

                "viewCount" => $viewCount

            )

        );


        $viewData->portfolio->viewCount = $viewCount;


        $this->load->view($viewData->viewFolder, $viewData);


    }

    

    public function about_us()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "about_v";


        $this->load->model("settings_model");
        $aside_product = $this->product_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );  
        $viewData->aside_product = $aside_product;
        $viewData->settings = $this->settings_model->get();

        $this->load->view($viewData->viewFolder, $viewData);

    }


    public function mission()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "mission_v";


        $this->load->model("settings_model");

        $viewData->settings = $this->settings_model->get();

        $this->load->view($viewData->viewFolder, $viewData);

    }


    public function team()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "team_v";


        $this->load->model("team_model");


        $viewData->teams = $this->team_model->get_all(

            array(

                "isActive" => 1,

            ), "rank ASC"

        );

        $viewData->teamdist = $this->team_model->get_dist(

            array(

                "isActive" => 1,

            ), "category"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function manage()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "manage_v";


        $this->load->model("manage_model");


        $viewData->manages = $this->manage_model->get_all(

            array(

                "isActive" => 1,

            ), "rank ASC"

        );


        $viewData->managesdist = $this->manage_model->get_dist(

            array(

                "isActive" => 1,

            ), "category"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function contact()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "contact_v";


        $this->load->helper("captcha");


        $config = array(

            "word" => '',

            "img_path" => 'captcha/',

            "img_url" => base_url("captcha"),

            "img_width" => 150,

            "img_height" => 50,

            "expiration" => 7200,

            "word_length" => 5,

            "font_size" => 20,

            "img_id" => "captcha_img",

            "pool" => "0123456789abcdefghijklmnpqrstuvwxyz",

            "colors" => array(

                'background' => array(56, 255, 45),

                'border' => array(255, 255, 255),

                'text' => array(0, 0, 0),

                'grid' => array(255, 40, 40)

            )


        );   
        $aside_product = $this->product_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );  



        $viewData->captcha = create_captcha($config);


        $this->session->set_userdata("captcha", $viewData->captcha["word"]);

        $viewData->aside_product = $aside_product;
        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function send_contact_message()

    {


        $this->load->library("form_validation");


        $this->form_validation->set_rules("name", "Ad", "trim|required");

        $this->form_validation->set_rules("email", "E-posta", "trim|required|valid_email");

        $this->form_validation->set_rules("subject", "Konu", "trim|required");

        $this->form_validation->set_rules("message", "Mesaj", "trim|required");

        $this->form_validation->set_rules("captcha", "Doğrulama Kodu", "trim|required");


        if ($this->form_validation->run() === FALSE) {


            // TODO Alert Sistemi yapılacak


            redirect(base_url("iletisim?durum=no"));


        } else {


            if ($this->session->userdata("captcha") == $this->input->post("captcha")) {


                // Email Gonderme süreci...


                $name = $this->input->post("name");

                $email = $this->input->post("email");

                $subject = $this->input->post("subject");

                $message = $this->input->post("message");


                $email_message = "{$name} {$subject} isimli ziyaretçi. Mesaj Bıraktı <br> <b>E-Posta</b> {$email}<br><b>Mesaj: </b> {$message}   ";

                if (send_email("", "Site İletişim Mesajı | $name  $subject", $email_message)) {

                    redirect(base_url("iletisim?status=ok"));

                } else {

                    redirect(base_url("iletisim?status=no"));

                }

            } else {


                // TOdO Alert..


                redirect(base_url("iletisim"));


            }


        }


    }


    public function make_me_member()

    {


        $this->load->library("form_validation");


        $this->form_validation->set_rules("subscribe_email", "E-posta Adresi", "trim|required|valid_email");


        if ($this->form_validation->run() === FALSE) {


            // TODO Alert...


        } else {


            $this->load->model("member_model");


            $insert = $this->member_model->add(

                array(

                    "email" => $this->input->post("subscribe_email"),

                    "ip_address" => $this->input->ip_address(),

                    "isActive" => 1,

                    "createdAt" => date("Y-m-d H:i:s")

                )

            );


            if ($insert) {


                // TODO Alert

                redirect(base_url("iletisim?status=ok"));


            } else {


                // TODO Alert

                redirect(base_url("iletisim?status=no"));


            }


        }


        redirect(base_url("iletisim"));


    }


    public function news_list()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "news_list_v";


        $this->load->model("news_model");


        $viewData->news_list = $this->news_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function news($url)

    {


        if ($url != "") {


            $viewData = new stdClass();

            $viewData->viewFolder = "news_v";


            $this->load->model("news_model");


            $news = $this->news_model->get(

                array(

                    "isActive" => 1,

                    "url" => $url

                )

            );


            if ($news) {


                $viewData->news = $news;


                $viewData->recent_news_list = $this->news_model->get_all(

                    array(

                        "isActive" => 1,

                        "id !=" => $news->id

                    ), "rank DESC", array("count" => 4, "start" => 0)

                );


                /************** viewCount Değerini Arttırma ***********/


                $viewCount = $news->viewCount + 1;

                $this->news_model->update(

                    array(

                        "id" => $news->id

                    ),

                    array(

                        "viewCount" => $viewCount

                    )

                );


                $viewData->news->viewCount = $viewCount;


                $this->load->view($viewData->viewFolder, $viewData);


            } else {

                // TODO Alert eklenecek

            }


        } else {


            // TODO Alert eklenecek

        }


    }

    public function firmnews_list()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "firmnews_list_v";


        $this->load->model("firmnews_model");


        $viewData->firmnews_list = $this->firmnews_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function firmnews($url)

    {


        if ($url != "") {


            $viewData = new stdClass();

            $viewData->viewFolder = "firmnews_v";


            $this->load->model("firmnews_model");


            $firmnews = $this->firmnews_model->get(

                array(

                    "isActive" => 1,

                    "url" => $url

                )

            );


            if ($firmnews) {


                $viewData->firmnews = $firmnews;


                $viewData->recent_firmnews_list = $this->firmnews_model->get_all(

                    array(

                        "isActive" => 1,

                        "id !=" => $firmnews->id

                    ), "rank DESC", array("count" => 4, "start" => 0)

                );


                /************** viewCount Değerini Arttırma ***********/


                $viewCount = $firmnews->viewCount + 1;

                $this->firmnews_model->update(

                    array(

                        "id" => $firmnews->id

                    ),

                    array(

                        "viewCount" => $viewCount

                    )

                );


                $viewData->firmnews->viewCount = $viewCount;


                $this->load->view($viewData->viewFolder, $viewData);


            } else {

                // TODO Alert eklenecek

            }


        } else {


            // TODO Alert eklenecek

        }


    }


    public function organization_scheme()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "organization_scheme";


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function yonetmelik()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "yonetmelik";


        $this->load->model("dtgb_model");


        $viewData->dtgb = $this->dtgb_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function kanunbilgi()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "kanunbilgi";


        $this->load->model("tgb4691_model");


        $viewData->tgb4691 = $this->tgb4691_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function sss()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "sss";


        $this->load->model("sss_model");


        $viewData->sss = $this->sss_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function kanunlar()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "kanunlar_v";


        $this->load->model("tgbkanun_model");


        $viewData->tgbkanun = $this->tgbkanun_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function projehazirlama()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "projehazirlama_v";


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function tgbyonetmelik()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "tgbyonetmelik_v";


        $this->load->model("tgb_model");


        $viewData->tgb = $this->tgb_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function basvuru_belge()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "basvuru_belge_v";


        $this->load->model("basvurubelge_model");


        $viewData->basvurubelge = $this->basvurubelge_model->get_all(

            array(

                "isActive" => 1

            ), "rank ASC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function basvuru_akis_scheme()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "basvuru_scheme_v";


        $this->load->view($viewData->viewFolder, $viewData);


    }

    public function student()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "student_v";


        $this->load->view($viewData->viewFolder, $viewData);


    }

    public function akademi()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "akademi_v";


        $this->load->view($viewData->viewFolder, $viewData);


    }

    public function girisimci()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "girisimci_v";


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function basvuru()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "basvuru_formu_v";


        $this->load->helper("captcha");


        $config = array(

            "word" => '',

            "img_path" => 'captcha/',

            "img_url" => base_url("captcha"),

            "img_width" => 150,

            "img_height" => 50,

            "expiration" => 7200,

            "word_length" => 5,

            "font_size" => 20,

            "img_id" => "captcha_img",

            "pool" => "0123456789abcdefghijklmnopqrstuvwxyz",

            "colors" => array(

                'background' => array(56, 255, 45),

                'border' => array(255, 255, 255),

                'text' => array(0, 0, 0),

                'grid' => array(255, 40, 40)

            )


        );


        $viewData->captcha = create_captcha($config);


        $this->session->set_userdata("captcha", $viewData->captcha["word"]);


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function send_basvuru_formu()

    {


        $this->load->library("form_validation");


        $this->form_validation->set_rules("name", "Ad", "trim|required");

        $this->form_validation->set_rules("captcha", "Doğrulama Kodu", "trim|required");


        if ($this->form_validation->run() === FALSE) {


            // TODO Alert Sistemi yapılacak


            redirect(base_url("basvuru-formu?durum1=no"));


        } else {


            if ($this->session->userdata("captcha") == $this->input->post("captcha")) {


                // Email Gonderme süreci...


                $name = $this->input->post("name");

                $email = $this->input->post("email");

                $phone = $this->input->post("phone");

                $firmaunvan = $this->input->post("firmaunvan");

                $vergidaire = $this->input->post("vergidaire");

                $verginumara = $this->input->post("verginumara");

                $bolum = $this->input->post("bolum");

                $m2 = $this->input->post("m2");

                $personel = $this->input->post("personel");

                $personel2 = $this->input->post("personel2");

                $personel3 = $this->input->post("personel3");

                $m22 = $this->input->post("m22");

                $personel4 = $this->input->post("personel4");

                $ozet = $this->input->post("ozet");


                $email_message =

                    "<table>
                        <thead>
                     
                        <th>Adı Soyadı</th>
                        <th>Telefonu</th>
                        <th>Eposta</th>
                        <th>Firma Ünvanı</th>
                        <th>Vergi Dairesi</th>
                        <th>Vergi Numarası</th>
                        <th>Teknoparkta yer almak istenilen bölün</th>
                        <th>Kiralamak İstenilen m2</th>
                        <th>İstihdam edilmesi istenen AR-GE Personel sayısı</th>
                        <th>İstihdam edilmesi isttenen Destek Personel Sayısı</th>
                        <th>İstihdam edilmesi isttenen Kapsam Dışı Personel Sayısı</th>
                        <th>Proje adı</th>
                        <th>Proje Kodu</th>
                     
</thead>
    <tbody>
        <tr>
            <td>$name</td>
            <td>$email</td>
            <td>$phone</td>
            <td>$firmaunvan</td>
            <td>$vergidaire</td>
            <td>$verginumara</td>
            <td>$bolum</td>
            <td>$m2</td>
            <td>$personel</td>
            <td>$personel2</td>
            <td>$personel3</td>
            <td>$m22</td>
            <td>$personel4</td>
           
        </tr>
    </tbody>
<table>
<thead>
<th>Proje Özeti</th>
</thead>
<tbody>
<tr>
<td>$ozet</td>
</tr>
</tbody>
</table>
";

/*"{$name} isimli ziyaretçi. Formu Doldurdu <br> <b>E-Posta</b>

 {$email}

 <br><b>Tel: </b> {$phone}

 <br><b>Firma Ünvanı: </b> {$firmaunvan}

 <br><b>Vergi Dairesi: </b> {$vergidaire}

 <br><b>Vergi Numarası: </b> {$verginumara}

 <br><b>Teknopartta yer almak istenilen bölüm: </b> {$bolum}

 <br><b>Kiralanmak istenen m2 </b> {$m2}

 <br><b>İstihdam edilmesi istenen AR-GE Personel sayısı: </b> {$personel}

<br><b>İstihdam edilmesi isttenen Destek Personel Sayısı: </b>  {$personel2}

<br><b>İstihdam edilmesi isttenen Kapsam Dışı Personel Sayısı: </b>  {$personel3}

<br><b>Proje adı: </b>  {$m22}

 <br><b>Proje Kodu: </b> {$personel4}

 <br><b>Projenin özeti: </b> {$ozet}  </table>";*/

                if (send_email("", "Site İletişim Mesajı |", $email_message)) {

                    redirect(base_url("basvuru-formu?durum=ok"));


                } else {

                    redirect(base_url("basvuru-formu?durum=no"));


                }

            } else {


                // TOdO Alert..


                redirect(base_url("basvuru-formu"));


            }


        }


    }


    public function firm_list()

    {


        $viewData = new stdClass();

        $viewData->viewFolder = "firm_v";


        $this->load->model("firm_model");


        $viewData->firms = $this->firm_model->get_all(

            array(

                "isActive" => 1,

            ), "rank ASC"

        );


        $viewData->firmdist = $this->firm_model->get_dist(

            array(

                "isActive" => 1,

            ), "category"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function image_gallery_list()
    {


        $viewData = new stdClass();

        $viewData->viewFolder = "galleries_v";

        $viewData->subViewFolder = "image_galleries";

        $viewData->viewName = "list_content";


        $this->load->model("gallery_model");


        $viewData->galleries = $this->gallery_model->get_all(

            array(

                "isActive" => 1,

                "gallery_type" => "image"

            ), "rank DESC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function image_gallery($gallery_url = "")
    {


        if ($gallery_url) {


            $viewData = new stdClass();

            $viewData->viewFolder = "galleries_v";

            $viewData->subViewFolder = "image_galleries";

            $viewData->viewName = "item_content";

            $viewData->gallery = get_gallery_by_url($gallery_url);


            $this->load->model("image_model");


            $viewData->images = $this->image_model->get_all(

                array(

                    "isActive" => 1,

                    "gallery_id" => $viewData->gallery->id,

                ), "rank DESC"

            );


            $this->load->view($viewData->viewFolder, $viewData);


        }


    }


    public function video_gallery_list()
    {


        $viewData = new stdClass();

        $viewData->viewFolder = "galleries_v";

        $viewData->subViewFolder = "video_galleries";

        $viewData->viewName = "list_content";


        $this->load->model("gallery_model");


        $viewData->galleries = $this->gallery_model->get_all(

            array(

                "isActive" => 1,

                "gallery_type" => "video"

            ), "rank DESC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function video_gallery($gallery_url = "")
    {


        if ($gallery_url) {


            $viewData = new stdClass();

            $viewData->viewFolder = "galleries_v";

            $viewData->subViewFolder = "video_galleries";

            $viewData->viewName = "item_content";

            $viewData->gallery = get_gallery_by_url($gallery_url);


            $this->load->model("video_model");


            $viewData->videos = $this->video_model->get_all(

                array(

                    "isActive" => 1,

                    "gallery_id" => $viewData->gallery->id,

                ), "rank DESC"

            );


            $this->load->view($viewData->viewFolder, $viewData);


        }


    }


    public function file_gallery_list()
    {


        $viewData = new stdClass();

        $viewData->viewFolder = "galleries_v";

        $viewData->subViewFolder = "file_galleries";

        $viewData->viewName = "list_content";


        $this->load->model("gallery_model");


        $viewData->galleries = $this->gallery_model->get_all(

            array(

                "isActive" => 1,

                "gallery_type" => "file"

            ), "rank DESC"

        );


        $this->load->view($viewData->viewFolder, $viewData);


    }


    public function file_gallery($gallery_url = "")
    {


        if ($gallery_url) {


            $viewData = new stdClass();

            $viewData->viewFolder = "galleries_v";


            $viewData->gallery = get_gallery_by_url($gallery_url);


            $this->load->model("file_model");


            $viewData->files = $this->file_model->get_all(

                array(

                    "isActive" => 1,

                    "gallery_id" => $viewData->gallery->id,

                ), "rank DESC"

            );


            $this->load->view($viewData->viewFolder, $viewData);


        }


    }


}