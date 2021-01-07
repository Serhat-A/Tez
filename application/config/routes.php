<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'home/index';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['kahvaltilik-listesi'] = 'home/portfolio_list';
$route['kahvaltilik-detay/(:any)'] = 'home/portfolio_detail/$1';
$route['hakkimizda'] = 'home/about_us';
$route['misyon'] = 'home/mission';
$route['meze-listesi'] = 'home/product_list';
$route['meze-detay/(:any)'] = 'home/product_detail/$1';
$route['teknokent-yonetim'] = 'home/team';
$route['yonetim'] = 'home/manage';
$route['iletisim'] = 'home/contact';
$route['mesaj-gonder'] = 'home/send_contact_message';
$route['abone-ol'] = 'home/make_me_member';
$route['haberler'] = 'home/news_list';
$route['haber/(:any)'] = 'home/news/$1';
$route['firma-haberleri'] = 'home/firmnews_list';
$route['firma-haberleri/(:any)'] = 'home/firmnews/$1';
$route['firmalar'] = 'home/firm_list';
$route['proje-hazirlama'] = 'home/projehazirlama';
$route['organizasyon-seması'] = 'home/organization_scheme';
$route['yonetmelik'] = 'home/yonetmelik';
$route['kanunbilgi'] = 'home/kanunbilgi';
$route['sss'] = 'home/sss';
$route['kanunlar'] = 'home/kanunlar';
$route['ogrenci'] = 'home/student';
$route['akademisyen'] = 'home/akademi';
$route['girisimci'] = 'home/girisimci';
$route['tgb-yonetmelik'] = 'home/tgbyonetmelik';
$route['basvuru-belgeleri'] = 'home/basvuru_belge';
$route['basvuru_akis_semasi'] = 'home/basvuru_akis_scheme';
$route['basvuru-formu'] = 'home/basvuru';
$route['basvuru-gonder'] = 'home/send_basvuru_formu';
$route['basvuru-gonder'] = 'home/send_basvuru_formu';

$route["fotograf-galerisi"]        = "home/image_gallery_list";
$route["fotograf-galerisi/(:any)"] = "home/image_gallery/$1";

$route["video-galerisi"]        = "home/video_gallery_list";
$route["video-galerisi/(:any)"] = "home/video_gallery/$1";

$route["dosya-galerisi"]        = "home/file_gallery_list";
$route["dosya-galerisi/(:any)"] = "home/file_gallery/$1";
