<?php $settings= get_settings() ?>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-DNJ6L09C5Q"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-DNJ6L09C5Q');
</script>
<meta charset="utf-8">
<title><?php echo $settings->company_name ?> | <?php echo $settings->number1 ?> </title>
<!-- Stylesheets -->
<meta name="keywords" content="<?php echo replaceSpacex(strip_tags($settings->keywords))?>">
<meta name="author" content="Serhat Aşkın">
<meta name="robots" content="">
<meta name="description" content="<?php echo replaceSpacex(strip_tags($settings->description))?>">
<meta property="og:title" content="<?php echo $settings->company_name?>">
<meta property="og:description" content="<?php echo replaceSpacex(strip_tags($settings->description))?>">
<meta property="og:image" content="">
<link href="<?php echo base_url("assets") ?>/css/bootstrap.css" rel="stylesheet">
<meta name="google-site-verification" content="5H6OZwvC4eQUwEjK2QcUmkqruQ5rNoCEkxJItH7B6JE" />
<link href="<?php echo base_url("assets") ?>/vendors/flat-icon/flaticon.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@500&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@500&family=Titillium+Web:wght@600&display=swap"
	rel="stylesheet">
<!-- Rev slider css -->
<link href="<?php echo base_url("assets") ?>/vendors/revolution/css/settings.css" rel="stylesheet">
<link href="<?php echo base_url("assets") ?>/vendors/revolution/css/layers.css" rel="stylesheet">
<link href="<?php echo base_url("assets") ?>/vendors/revolution/css/navigation.css" rel="stylesheet">

<link href="<?php echo base_url("assets") ?>/css/style.css" rel="stylesheet">
<link href="<?php echo base_url("assets") ?>/css/responsive.css" rel="stylesheet">

<link rel="shortcut icon" href="<?php echo base_url("assets") ?>/favicon.ico" type="image/x-icon">
<link rel="icon" href="<?php echo base_url("assets") ?>/favicon.ico" type="image/x-icon">

<link
	href="<?php echo base_url("assets/css/") ?>css2.css?family=Dancing+Script:wght@400;600;700&family=Open+Sans:wght@400;600;700;800&family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;0,800;0,900;1,700&family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="<?php echo base_url("assets") ?>/js/respond.js"></script><![endif]-->