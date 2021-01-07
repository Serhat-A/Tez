-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 26 Ağu 2020, 23:50:29
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `panel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basvurubelge`
--

DROP TABLE IF EXISTS `basvurubelge`;
CREATE TABLE IF NOT EXISTS `basvurubelge` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `basvurubelge`
--

INSERT INTO `basvurubelge` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(24, 'asdasd', 'asdasd', '', 'image', 'cv1.pdf', '#', NULL, 1, 1, '2020-08-26 20:18:21'),
(25, 'sdaasdasds', 'sdaasdasds', '', 'image', 'sicilfisi-1-.pdf', '#', NULL, 0, 1, '2020-08-26 21:06:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT '',
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT '',
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `brands`
--

INSERT INTO `brands` (`id`, `title`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(4, '<p>a<span style=\"background-color: rgb(255, 255, 0);\"><b>naysaslkdfhsldkfhdflkj lkasj</b></span>dflksasjdlk alk lkasdalksjd</p>', '<p>iletimsisdmidsmf sidmfisdmsdifms imsdfisdmismd </p>', 0, 1, '2017-12-29 08:04:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `company_news`
--

DROP TABLE IF EXISTS `company_news`;
CREATE TABLE IF NOT EXISTS `company_news` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `company_news`
--

INSERT INTO `company_news` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'iphonex-satislari-beklenilenin-altindaaaaaa', 'iphoneX Satışları Beklenilenin altındaaaaaa', '<p>iphoneX Satışları <b>Beklenilenin altındaaaaaaaa</b><br></p>', 'image', 'blog-11-400x2671.jpg', '#', NULL, 1, 1, '2017-12-25 22:59:32'),
(3, 'deneme', 'Deneme', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum justo eget condimentum luctus. Integer tempor enim euismod ligula ultrices convallis. Etiam convallis blandit dolor in vestibulum. Cras convallis cursus velit vel blandit. Duis sit amet quam sed ligula tristique porta dapibus in tellus. Suspendisse potenti. Quisque consectetur at est sed egestas. Sed semper libero et efficitur vulputate.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Morbi facilisis sollicitudin ipsum, et tempus diam rhoncus vestibulum. Vestibulum at rhoncus erat. Sed nec bibendum neque, et condimentum felis. Etiam hendrerit odio eu bibendum pellentesque. Suspendisse ex lorem, cursus at fringilla eget, ultricies nec ipsum. Sed condimentum ac lectus vitae fermentum. Suspendisse potenti. Phasellus sapien nibh, consequat vitae lacus eu, scelerisque tempor quam. Suspendisse quam nisi, dapibus vel auctor ut, laoreet vitae lectus. Aliquam erat volutpat. Praesent lacinia, arcu in molestie viverra, purus erat semper nisl, et hendrerit velit turpis sit amet mauris. Nunc a dignissim risus. Nullam hendrerit pretium eros.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Duis feugiat libero ut consequat pretium. Nulla sed odio id lorem convallis sollicitudin quis at lacus. Pellentesque ultrices vitae odio eget efficitur. Curabitur a metus velit. Nunc egestas ex quis orci dictum, ut mollis tellus viverra. Suspendisse placerat enim eu fringilla gravida. Duis facilisis erat sit amet enim pretium tincidunt.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nulla nibh tellus, faucibus vitae lorem eu, condimentum posuere orci. Donec at dui neque. Etiam maximus convallis vulputate. Ut eleifend nisi vitae felis gravida, id tempus erat scelerisque. Quisque vestibulum justo libero, sed maximus arcu sodales a. Pellentesque ut nisl sapien. Integer imperdiet at tortor eget auctor. Nulla maximus ex ipsum, ac pellentesque nulla ullamcorper sollicitudin. In at augue ac arcu fermentum efficitur in in erat. Nunc nisi tortor, pretium quis tristique sed, aliquam id tortor. Morbi porttitor libero eu vehicula imperdiet.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nunc pellentesque vitae erat sit amet accumsan. Fusce convallis odio sit amet magna lacinia tempor. Nam id aliquet neque. Curabitur posuere sagittis odio porta convallis. Fusce a ex id odio sagittis viverra sit amet rhoncus ex. Sed augue tellus, efficitur vel risus eget, elementum fringilla risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 'image', 'blog-11-400x267.jpg', '#', 1, 0, 1, '2017-12-25 23:02:02'),
(4, 'deneme-video-yazisi', 'Deneme Video Yazısı', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum justo eget condimentum luctus. Integer tempor enim euismod ligula ultrices convallis. Etiam convallis blandit dolor in vestibulum. Cras convallis cursus velit vel blandit. Duis sit amet quam sed ligula tristique porta dapibus in tellus. Suspendisse potenti. Quisque consectetur at est sed egestas. Sed semper libero et efficitur vulputate.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Morbi facilisis sollicitudin ipsum, et tempus diam rhoncus vestibulum. Vestibulum at rhoncus erat. Sed nec bibendum neque, et condimentum felis. Etiam hendrerit odio eu bibendum pellentesque. Suspendisse ex lorem, cursus at fringilla eget, ultricies nec ipsum. Sed condimentum ac lectus vitae fermentum. Suspendisse potenti. Phasellus sapien nibh, consequat vitae lacus eu, scelerisque tempor quam. Suspendisse quam nisi, dapibus vel auctor ut, laoreet vitae lectus. Aliquam erat volutpat. Praesent lacinia, arcu in molestie viverra, purus erat semper nisl, et hendrerit velit turpis sit amet mauris. Nunc a dignissim risus. Nullam hendrerit pretium eros.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Duis feugiat libero ut consequat pretium. Nulla sed odio id lorem convallis sollicitudin quis at lacus. Pellentesque ultrices vitae odio eget efficitur. Curabitur a metus velit. Nunc egestas ex quis orci dictum, ut mollis tellus viverra. Suspendisse placerat enim eu fringilla gravida. Duis facilisis erat sit amet enim pretium tincidunt.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nulla nibh tellus, faucibus vitae lorem eu, condimentum posuere orci. Donec at dui neque. Etiam maximus convallis vulputate. Ut eleifend nisi vitae felis gravida, id tempus erat scelerisque. Quisque vestibulum justo libero, sed maximus arcu sodales a. Pellentesque ut nisl sapien. Integer imperdiet at tortor eget auctor. Nulla maximus ex ipsum, ac pellentesque nulla ullamcorper sollicitudin. In at augue ac arcu fermentum efficitur in in erat. Nunc nisi tortor, pretium quis tristique sed, aliquam id tortor. Morbi porttitor libero eu vehicula imperdiet.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nunc pellentesque vitae erat sit amet accumsan. Fusce convallis odio sit amet magna lacinia tempor. Nam id aliquet neque. Curabitur posuere sagittis odio porta convallis. Fusce a ex id odio sagittis viverra sit amet rhoncus ex. Sed augue tellus, efficitur vel risus eget, elementum fringilla risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 'video', '#', 'https://www.youtube.com/watch?v=MbynufJDv1s', 7, 0, 1, '2020-08-18 13:40:25'),
(5, 'video-deneme', 'Video deneme', '<p>asdasdasd</p>', 'video', '#', 'https://www.youtube.com/watch?v=wBpVQln4MIU', 2, 0, 1, '2020-08-22 23:01:14'),
(7, 'videos', 'Videos', '<p>asdasd</p>', 'video', '#', 'https://www.youtube.com/watch?v=6oTurM7gESE', 1, 0, 1, '2020-08-22 23:04:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `courses`
--

INSERT INTO `courses` (`id`, `url`, `title`, `description`, `img_url`, `event_date`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'codeigniter-4-egitimi', 'Codeigniter 4 Eğitimi', '<p>Bu eğitimde codeigniter ile ilgili birçok kavramı elden geçireceğiz..</p>', 'videosinif-proje.png', '2018-02-24 12:00:00', 0, 1, '2017-12-29 00:41:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dtgb`
--

DROP TABLE IF EXISTS `dtgb`;
CREATE TABLE IF NOT EXISTS `dtgb` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dtgb`
--

INSERT INTO `dtgb` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(23, 'deneme-2', 'Deneme 2', '', 'image', 'cevaplar-yarim1.pdf', '#', NULL, 1, 1, '2020-08-26 20:08:06'),
(24, 'asdasd', 'asdasd', '', 'image', 'cv1.pdf', '#', NULL, 0, 1, '2020-08-26 20:18:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `email_settings`
--

DROP TABLE IF EXISTS `email_settings`;
CREATE TABLE IF NOT EXISTS `email_settings` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `protocol` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `host` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `port` varchar(10) COLLATE utf8_turkish_ci DEFAULT '',
  `user` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `from` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `to` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `user_name` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `email_settings`
--

INSERT INTO `email_settings` (`id`, `protocol`, `host`, `port`, `user`, `password`, `from`, `to`, `user_name`, `isActive`, `createdAt`) VALUES
(2, 'smtp', 'mail.oguzhanfiliz.com.tr', '587', 'info@oguzhanfiliz.com.tr', 'HAYRET1sey2', 'info@oguzhanfiliz.com.tr', 'info@oguzhanfiliz.com.tr', 'only', 1, '2020-08-08');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `files`
--

INSERT INTO `files` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 11, 'uploads/galleries_v/files/kataloglarimiz/web-tasarim-fiyat-teklifi.pdf', 1, 0, '2018-01-06 21:38:13'),
(4, 11, 'uploads/galleries_v/files/kataloglarimiz/nodejs-icerik.docx', 0, 1, '2018-01-06 22:05:25'),
(5, 20, 'uploads/galleries_v/files/file/cvt.pdf', 0, 1, '2020-08-26 15:23:27'),
(6, 21, 'uploads/galleries_v/files/files/cv.pdf', 0, 1, '2020-08-26 15:25:10'),
(7, 21, 'uploads/galleries_v/files/files/cvt-pdf.docx', 0, 1, '2020-08-26 15:25:14'),
(8, 21, 'uploads/galleries_v/files/files/13194249-ucretli-uzman-ve-usta-oyretici-bayvuru-formu.docx', 0, 1, '2020-08-26 15:25:20'),
(12, 30, 'uploads/galleries_v/files/asdasdasda/cevaplar-yarim.pdf', 0, 1, '2020-08-26 16:59:22'),
(15, 35, 'uploads/galleries_v/files/asdasd/cv.pdf', 0, 1, '2020-08-26 19:27:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firm`
--

DROP TABLE IF EXISTS `firm`;
CREATE TABLE IF NOT EXISTS `firm` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `category` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `kurucu` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kurulus` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `webpage` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `alan` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `firm`
--

INSERT INTO `firm` (`id`, `url`, `title`, `description`, `category`, `kurucu`, `kurulus`, `phone`, `webpage`, `mail`, `alan`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(10, 'srg-teknoloji', 'SRG TEKNOLOJİ', '<p>ASDASD</p>', 'yazilim', 'İsmail Yoşumaz', '2020-08-06', '05444355071', 'www.kuvarssoft.com', 'omer.savas@hotmail.com.tr', 'web,yazılım,sunucu,vs...', 'project-short-31.jpg', 2, 1, '2020-08-25 17:38:13'),
(12, 'srg-teknoloji', 'SRG TEKNOLOJİ', '<p>ASDASD</p>', 'urungelistirme', 'İsmail Yoşumaz', '2020-08-06', '05444355071', 'www.kuvarssoft.com', 'omer.savas@hotmail.com.tr', 'web,yazılım,sunucu,vs...', 'project-short-31.jpg', 2, 1, '2020-08-25 17:38:13'),
(13, 'srg-teknoloji', 'SRG TEKNOLOJİ', '<p>ASDASD</p>', 'yazilim', 'İsmail Yoşumaz', '2020-08-06', '05444355071', 'www.kuvarssoft.com', 'omer.savas@hotmail.com.tr', 'web,yazılım,sunucu,vs...', 'project-short-31.jpg', 2, 1, '2020-08-25 17:38:13'),
(14, 'srg-teknoloji', 'SRG TEKNOLOJİ', '<p>ASDASD</p>', 'urungelistirme', 'İsmail Yoşumaz', '2020-08-06', '05444355071', 'www.kuvarssoft.com', 'omer.savas@hotmail.com.tr', 'web,yazılım,sunucu,vs...', 'project-short-31.jpg', 2, 1, '2020-08-25 17:38:13'),
(15, 'srg-teknoloji', 'SRG TEKNOLOJİ', '<p>ASDASD</p>', 'enerji', 'İsmail Yoşumaz', '2020-08-06', '05444355071', 'www.kuvarssoft.com', 'omer.savas@hotmail.com.tr', 'web,yazılım,sunucu,vs...', 'project-short-31.jpg', 2, 1, '2020-08-25 17:38:13'),
(16, 'srg-teknoloji', 'SRG TEKNOLOJİ', '<p>ASDASD</p>', 'saglik', 'İsmail Yoşumaz', '2020-08-06', '05444355071', 'www.kuvarssoft.com', 'omer.savas@hotmail.com.tr', 'web,yazılım,sunucu,vs...', 'project-short-31.jpg', 2, 1, '2020-08-25 17:38:13'),
(17, 'srg-teknoloji', 'SRG TEKNOLOJİ', '<p>ASDASD</p>', 'yazilim', 'İsmail Yoşumaz', '2020-08-06', '05444355071', 'www.kuvarssoft.com', 'omer.savas@hotmail.com.tr', 'web,yazılım,sunucu,vs...', 'project-short-31.jpg', 2, 1, '2020-08-25 17:38:13'),
(18, 'srg-teknoloji', 'SRG TEKNOLOJİ', '<p>ASDASD</p>', 'yazilim', 'İsmail Yoşumaz', '2020-08-06', '05444355071', 'www.kuvarssoft.com', 'omer.savas@hotmail.com.tr', 'web,yazılım,sunucu,vs...', 'project-short-31.jpg', 2, 1, '2020-08-25 17:38:13');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firms`
--

DROP TABLE IF EXISTS `firms`;
CREATE TABLE IF NOT EXISTS `firms` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `firms`
--

INSERT INTO `firms` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(11, 'asdas', 'asdas', '<p>dasdasdasqweqweqw</p>', 'image', 'img-20200723-171201.jpg', '#', NULL, 0, 1, '2020-08-25 14:28:51'),
(12, 'sdasd', 'sdasd', '<p>asdasdasdasd</p>', 'image', 'natro2.png', '#', NULL, 0, 1, '2020-08-26 23:11:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `gallery_type` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `folder_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galleries`
--

INSERT INTO `galleries` (`id`, `url`, `title`, `gallery_type`, `folder_name`, `isActive`, `createdAt`, `rank`) VALUES
(34, 'asdasdasd', 'asdasdasd', 'image', 'asdasdasd', 1, '2020-08-26 18:06:04', 0),
(35, 'asdasd', 'asdasd', 'file', 'asdasd', 1, '2020-08-26 19:27:25', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(35, 29, 'uploads/galleries_v/images/file/cv.pdf', 0, 1, '2020-08-26 16:19:51'),
(36, 29, 'uploads/galleries_v/images/file/cevaplar-yarim.pdf', 0, 1, '2020-08-26 16:19:51'),
(37, 29, 'uploads/galleries_v/images/file/cvt.pdf', 0, 1, '2020-08-26 16:19:51'),
(38, 34, 'uploads/galleries_v/images/asdasdasd/117818554-357774718549274-1677691899070992976-n.png', 0, 1, '2020-08-26 18:22:56'),
(39, 34, 'uploads/galleries_v/images/asdasdasd/117907006-242018330185643-819239255261906529-n.png', 0, 1, '2020-08-26 18:22:56'),
(40, 34, 'uploads/galleries_v/images/asdasdasd/cv.pdf', 0, 1, '2020-08-26 18:22:56'),
(41, 34, 'uploads/galleries_v/images/asdasdasd/cevaplar-yarim.pdf', 0, 1, '2020-08-26 18:22:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `manages`
--

DROP TABLE IF EXISTS `manages`;
CREATE TABLE IF NOT EXISTS `manages` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `unvan` text COLLATE utf8_turkish_ci NOT NULL,
  `category` text COLLATE utf8_turkish_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `manages`
--

INSERT INTO `manages` (`id`, `url`, `title`, `description`, `unvan`, `category`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(8, 'prof-dr--k', 'Prof Dr. Kâzım Uysal', 'DPÜ TEMSILEN ÜYE YÖNETIM KURULU BAŞKANI', '', 'Yönetim Kurulu Başkanı', 'kazimuysal.png', 0, 1, '2020-08-21 09:39:40'),
(9, 'prof--dr--hasan-gocmez', 'Prof. Dr. HASAN GÖÇMEZ', 'Üye', 'Kütahya Dumlupınar Üniversitesi Rektörü', 'Yönetim Kurulu Başkan Vekili', 'hasangocmez.png', 0, 1, '2020-08-21 12:03:31'),
(10, 'murat-koyak', 'MURAT KOYAK', 'Üye', 'Kütahya Dumlupınar Üniversitesi Rektörü', 'Yönetim Kurulu Başkanı', 'resim3.jpg', 0, 1, '2020-08-21 12:04:04'),
(11, 'ali-ihsan-ertas', 'Ali İhsan Ertaş', 'Üye', 'Kütahya Dumlupınar Üniversitesi Rektörü', 'Üye', 'resim3.jpg', 0, 1, '2020-08-21 13:01:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(50) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `ip_address` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `members`
--

INSERT INTO `members` (`id`, `email`, `isActive`, `createdAt`, `ip_address`) VALUES
(1, 'oguzhanfiliz@outlook.com', 1, '2020-08-21 16:38:14', '0'),
(2, 'oguzhanfiliz@outlook.com', 1, '2020-08-21 16:40:25', '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(19, 'video', 'Video', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend mi augue, vitae consectetur mi venenatis in. Donec consequat venenatis tortor vitae cursus. Phasellus laoreet vulputate risus eu tempus. Mauris faucibus nunc mauris, id scelerisque tortor vehicula ut. Etiam posuere diam vel ipsum blandit ultricies. Integer consectetur arcu id mi consequat ornare. In tempor eros ut justo ornare, et ullamcorper justo ultrices. Morbi ligula nulla, convallis sed purus eu, placerat eleifend dui. Mauris vel augue mi. Nam sollicitudin euismod dui, sed ullamcorper metus consectetur nec.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec a nisi lobortis, cursus turpis eu, dignissim elit. Cras molestie eu metus nec pulvinar. Nam ut felis sed lacus sagittis aliquet. Duis bibendum a dui vel pellentesque. Fusce sollicitudin dapibus lectus, eget vestibulum erat lacinia id. Fusce eu aliquet arcu, ac consequat dolor. Pellentesque condimentum sit amet elit interdum fermentum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Ut ut pellentesque tortor. Curabitur tincidunt pharetra tempor. Curabitur eget convallis felis, nec vehicula mi. Donec et ipsum lectus. Pellentesque dignissim venenatis magna, blandit ultrices dui lacinia et. Nam at urna sit amet mauris vestibulum pulvinar. Mauris dictum augue at mi semper, et hendrerit nibh cursus. Pellentesque et varius turpis. Nam maximus eros ut erat tempus auctor. Nulla convallis lacus tellus, ut mattis elit finibus eget.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce molestie arcu et viverra imperdiet. Etiam interdum condimentum sem vitae aliquet. Sed sed nunc finibus, dictum nisl vel, finibus felis. Sed tincidunt nibh sapien, accumsan tempor turpis sodales quis. Nunc tincidunt suscipit arcu, vitae aliquam turpis fermentum id. Aliquam erat volutpat. Fusce bibendum blandit odio, sit amet porttitor velit feugiat at. Nulla sit amet urna aliquam sem euismod luctus non vitae felis. Duis non tempor sem, eget bibendum odio. Nam facilisis pharetra purus. Pellentesque consequat diam sed finibus ullamcorper. Nam porttitor, ipsum eget lobortis ornare, diam justo auctor orci, ultrices commodo arcu leo interdum ipsum. Nunc a neque ultricies, cursus massa eu, viverra erat.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Suspendisse elit nisl, faucibus quis est sed, scelerisque hendrerit lorem. Etiam volutpat magna quis mi volutpat fermentum. Donec faucibus semper ex, eu posuere urna convallis at. Nullam in semper enim, quis mattis nibh. Duis porttitor vel nisi a maximus. Donec mi orci, dignissim in egestas ac, tempus et sem. Vivamus non diam ut nunc tempus feugiat mollis et sem. Vivamus sagittis mi et faucibus vulputate. Etiam pulvinar nisi nibh, at ultrices sapien tempor ornare. Praesent porta, lectus ac congue efficitur, mauris mi bibendum dolor, eget dignissim odio purus vel nisi. Aliquam euismod lacinia hendrerit. Morbi ac feugiat nibh.</p>', 'video', '#', 'https://www.youtube.com/watch?v=wBpVQln4MIU', NULL, 0, 1, '2020-08-26 19:40:26'),
(20, 'resim', 'Resim', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend mi augue, vitae consectetur mi venenatis in. Donec consequat venenatis tortor vitae cursus. Phasellus laoreet vulputate risus eu tempus. Mauris faucibus nunc mauris, id scelerisque tortor vehicula ut. Etiam posuere diam vel ipsum blandit ultricies. Integer consectetur arcu id mi consequat ornare. In tempor eros ut justo ornare, et ullamcorper justo ultrices. Morbi ligula nulla, convallis sed purus eu, placerat eleifend dui. Mauris vel augue mi. Nam sollicitudin euismod dui, sed ullamcorper metus consectetur nec.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec a nisi lobortis, cursus turpis eu, dignissim elit. Cras molestie eu metus nec pulvinar. Nam ut felis sed lacus sagittis aliquet. Duis bibendum a dui vel pellentesque. Fusce sollicitudin dapibus lectus, eget vestibulum erat lacinia id. Fusce eu aliquet arcu, ac consequat dolor. Pellentesque condimentum sit amet elit interdum fermentum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Ut ut pellentesque tortor. Curabitur tincidunt pharetra tempor. Curabitur eget convallis felis, nec vehicula mi. Donec et ipsum lectus. Pellentesque dignissim venenatis magna, blandit ultrices dui lacinia et. Nam at urna sit amet mauris vestibulum pulvinar. Mauris dictum augue at mi semper, et hendrerit nibh cursus. Pellentesque et varius turpis. Nam maximus eros ut erat tempus auctor. Nulla convallis lacus tellus, ut mattis elit finibus eget.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce molestie arcu et viverra imperdiet. Etiam interdum condimentum sem vitae aliquet. Sed sed nunc finibus, dictum nisl vel, finibus felis. Sed tincidunt nibh sapien, accumsan tempor turpis sodales quis. Nunc tincidunt suscipit arcu, vitae aliquam turpis fermentum id. Aliquam erat volutpat. Fusce bibendum blandit odio, sit amet porttitor velit feugiat at. Nulla sit amet urna aliquam sem euismod luctus non vitae felis. Duis non tempor sem, eget bibendum odio. Nam facilisis pharetra purus. Pellentesque consequat diam sed finibus ullamcorper. Nam porttitor, ipsum eget lobortis ornare, diam justo auctor orci, ultrices commodo arcu leo interdum ipsum. Nunc a neque ultricies, cursus massa eu, viverra erat.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Suspendisse elit nisl, faucibus quis est sed, scelerisque hendrerit lorem. Etiam volutpat magna quis mi volutpat fermentum. Donec faucibus semper ex, eu posuere urna convallis at. Nullam in semper enim, quis mattis nibh. Duis porttitor vel nisi a maximus. Donec mi orci, dignissim in egestas ac, tempus et sem. Vivamus non diam ut nunc tempus feugiat mollis et sem. Vivamus sagittis mi et faucibus vulputate. Etiam pulvinar nisi nibh, at ultrices sapien tempor ornare. Praesent porta, lectus ac congue efficitur, mauris mi bibendum dolor, eget dignissim odio purus vel nisi. Aliquam euismod lacinia hendrerit. Morbi ac feugiat nibh.</p>', 'image', 'natro2.png', '#', 1, 0, 1, '2020-08-26 19:40:36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `popups`
--

DROP TABLE IF EXISTS `popups`;
CREATE TABLE IF NOT EXISTS `popups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `page` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `finishedAt` datetime DEFAULT NULL,
  `client` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `place` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `portfolio_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `portfolios`
--

INSERT INTO `portfolios` (`id`, `url`, `title`, `description`, `finishedAt`, `client`, `category_id`, `place`, `portfolio_url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'sadasd', 'sadasdsa', 'asdads', '2020-08-14 00:00:00', 'asddas', 1, 'sdasda', 'asdasd', 3, 1, '2020-08-14 00:00:00'),
(2, 'web-tasarim-hizmeti', 'Web Tasarım Hizmeti', '                            <p><span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<br></p>                        ', '2020-08-21 00:00:00', 'asdas', 1, 'adssad', 'asdsad', 1, 1, '2020-08-14 13:47:33'),
(3, 'asdasd', 'ASDASD', '                                                        <p>Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.<br></p>                                                ', '2020-08-14 00:00:00', 'ASDAD', 1, 'Kütahya', 'ADSAD', 0, 1, '2020-08-14 13:50:24'),
(4, 'asdsad', 'asdsad', '                            <p>asdsad</p>                        ', '2020-08-14 00:00:00', 'adsssdasd', 3, 'asdadsasd', '', 2, 1, '2020-08-14 14:05:43'),
(5, 'srg-teknoloji', 'Srg Teknoloji', '<p>Srg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg Teknoloji<br></p>', '2020-09-04 00:00:00', 'Kimya', 3, 'Kütahya', 'www.kuvarssoft.com', 0, 1, '2020-08-19 16:12:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolio_categories`
--

DROP TABLE IF EXISTS `portfolio_categories`;
CREATE TABLE IF NOT EXISTS `portfolio_categories` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `title`, `isActive`, `createdAt`) VALUES
(1, 'Videoasda', 1, '2020-08-14 11:53:48'),
(3, 'Resim', 1, '2020-08-14 12:10:32'),
(6, 'DUMLUPINAR TEKNOKENT\'e başvuru ne şekilde yapılmalıdır?', 1, '2020-08-26 21:57:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolio_images`
--

DROP TABLE IF EXISTS `portfolio_images`;
CREATE TABLE IF NOT EXISTS `portfolio_images` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(11) DEFAULT NULL,
  `isCover` tinyint(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(18, 2, 'project-short22.jpg', 0, 1, 1, '2020-08-19 15:23:57'),
(20, 4, 'project-short23.jpg', 0, 1, 0, '2020-08-19 15:24:02'),
(21, 4, 'project-short15.jpg', 0, 1, 0, '2020-08-19 15:24:02'),
(22, 4, 'project-short6.jpg', 0, 1, 0, '2020-08-19 15:24:02'),
(23, 1, 'project-short24.jpg', 0, 1, 0, '2020-08-19 15:24:06'),
(24, 1, 'project-short16.jpg', 0, 1, 0, '2020-08-19 15:24:06'),
(25, 1, 'project-short7.jpg', 0, 1, 0, '2020-08-19 15:24:06'),
(35, 3, 'slide-bg-2.jpg', 0, 1, 0, '2020-08-25 16:17:29'),
(36, 3, 'slide-bg.jpg', 0, 1, 0, '2020-08-25 16:17:31'),
(37, 3, 'slide-bg-6.jpg', 0, 1, 0, '2020-08-25 16:17:33'),
(38, 3, 'slide-bg-7.jpg', 0, 1, 0, '2020-08-25 16:17:36'),
(39, 3, 'slide-bg-8.jpg', 0, 1, 0, '2020-08-25 16:17:37'),
(40, 3, 'slide-bg-light.jpg', 0, 1, 0, '2020-08-25 16:17:39'),
(41, 5, 'project-short22.jpg', 0, 1, 1, '2020-08-25 16:23:44'),
(42, 5, 'project-short-22.jpg', 0, 1, 0, '2020-08-25 16:23:46'),
(43, 5, 'project-short23.jpg', 0, 1, 0, '2020-08-25 16:23:47'),
(44, 5, 'project-short-23.jpg', 0, 1, 0, '2020-08-25 16:23:49'),
(45, 5, 'project-short24.jpg', 0, 1, 0, '2020-08-25 16:23:50'),
(46, 5, 'project-short-31.jpg', 0, 1, 0, '2020-08-25 16:23:52');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `url`, `title`, `description`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'deneme-url-2', 'Deneme Ürünü 2', 'Bu bir deneme ürünü aciklamasidir 2', 4, 1, NULL),
(6, 'monitor-askisi-50-45-cm-buyuklugundedir', 'Monitör Askısı 50.45 cm büyüklüğündedir', '<p>test amacli üretildi..</p>', 1, 1, '2017-12-14 00:43:46'),
(9, 'testt-testt', 'testt testt', '<p>alert denemesidier..</p>', 2, 1, '2017-12-20 01:22:10'),
(11, 'asda', 'asda', '<p>sdsdsds</p>', 3, 1, '2017-12-20 01:24:32'),
(12, 'mantar-tablo', 'Mantar Tablo', '                                                                                    Bu tablo o kadar güzel bir tablodur ki!!!asdsaBu <span style=\"background-color: rgb(255, 255, 0);\">tablo </span>o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o <span style=\"background-color: rgb(255, 255, 0);\">kadar </span>güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsa                        ', 0, 1, '2018-01-11 13:39:23'),
(13, 'dasd', 'dasd', '<p>adasdad</p>', 0, 1, '2020-08-25 14:07:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(11) DEFAULT NULL,
  `isCover` tinyint(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(44, NULL, 'kablosuzkedi-2-768x858.png', 15, 0, 0, '2017-12-29 08:22:07'),
(45, NULL, 'videosinif-proje.png', 14, 0, 0, '2017-12-29 08:22:07'),
(46, NULL, 'ipphone8.jpeg', 0, 1, 0, '2017-12-29 08:25:35'),
(56, 9, 'unnamed.jpg', 0, 1, 0, '2020-08-12 14:43:43'),
(57, 12, 'unnamed1.jpg', 0, 1, 0, '2020-08-12 14:44:02'),
(58, 12, '117818554-357774718549274-1677691899070992976-n.png', 0, 1, 0, '2020-08-25 14:07:10'),
(59, 12, '117907006-242018330185643-819239255261906529-n.png', 0, 1, 0, '2020-08-25 14:07:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `references`
--

DROP TABLE IF EXISTS `references`;
CREATE TABLE IF NOT EXISTS `references` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `references`
--

INSERT INTO `references` (`id`, `url`, `title`, `description`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'bu-bir-deneme-referans-bilgisidir---2', 'bu bir deneme referans bilgisidir.. 2', '<p>asdasdasd bu refransimiza cok güveniyoruz.. 2</p>', 'videosinif-proje.png', 1, 1, '2017-12-27 00:18:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `url`, `title`, `description`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'asdad', 'asdad', '<p>asdasdas</p>', '117907006-242018330185643-819239255261906529-n.png', 0, 1, '2020-08-25 08:47:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `address` text COLLATE utf8_turkish_ci NOT NULL,
  `about_us` longtext COLLATE utf8_turkish_ci,
  `mission` longtext COLLATE utf8_turkish_ci,
  `vision` longtext COLLATE utf8_turkish_ci,
  `logo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phone_1` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phone_2` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax_1` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax_2` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `slogan`, `address`, `about_us`, `mission`, `vision`, `logo`, `phone_1`, `phone_2`, `fax_1`, `fax_2`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `createdAt`, `updatedAt`) VALUES
(2, 'KuvarSSoft', 'Teknokent', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <p>Teknokent<br></p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', '                                                                                                                                                                                                                                                                                                                                                                                                                  <div class=\"col-md-6\">\r\n                    <div class=\"overflow-hidden mb-2\">\r\n                        <h2 class=\"text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1200\">Dumlupınar <strong class=\"font-weight-extra-bold\">TGB\'nin Vizyonu</strong></h2>\r\n                    </div>\r\n                    <p class=\"appear-animation\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"1400\">Ülkemizin gelişmişlik seviyesine katkı sağlamak amacıyla\r\n                        yüksek/ileri teknolojiler alanında inovasyon kültürünün gelişmesini teşvik edici,\r\n                        yaratıcılık ve girişimcilik alanında önemli projelerin ekonomiye kazandırılması ve\r\n                        ticarileştirilmesi, üniversite-sanayi işbirliğinin gelişimine katkı sağlamak amacıyla ortak\r\n                        proje geliştirmek ve firmalar arasında sinerji oluşturmak üzere\r\n                        eşleştirme ve kümeleme çalışmalarıyla sürdürülebilir Ar-Ge ve inovasyon ekosistemi içerisinde,\r\n                        akademik ve endüstriyel girişimciliği destekleyerek, bölgesel ve ulusal düzeyde en yüksek katma\r\n                        değeri yaratmaktır.\r\n                </p></div>\r\n\r\n\r\n                <h2 class=\"text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1200\">Dumlupınar TGB\'nin Vizyonu <strong class=\"font-weight-extra-bold\"> Amaçları / Misyonu</strong></h2>\r\n            \r\n            <p class=\"appear-animation\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"1400\">\r\n            </p><ul><b>\r\n                    <li>Türkiye\'de Teknoloji geliştiricisi Ar-Ge kurum ve kuruluşları ile teknoloji kullanıcısı sanayi\r\n                        şirketleri veya diğer teknoloji ya da Ar-Ge kurum ve kuruluşları\r\n                        arasında bilgilendirme, koordinasyon, araştırmayı yönlendirme, yeni Ar-Ge şirketlerinin\r\n                        oluşturulmasını teşvik etme, iş birliği geliştirme, fikri mülkiyet haklarının\r\n                        korunması, pazarlanması, satılması, fikri mülkiyetin satışından elde edilen gelirlerin\r\n                        yönetilmesi konularında destek vermek,\r\n                    </li>\r\n                    <li>Kütahya’da girişimcilik ekosistemini güçlendirmek ve bilişim, medikal, biyomedikal,\r\n                        elektrik-elektronik, savunma sanayi, maden, tarım ve diğer sektörlerin potansiyellerini\r\n                        değerlendirmek bölgenin güç çeşitliliğini öne çıkaracak yeni projeler ile bölgesel gelişmeyi\r\n                        hedeflemek ve ulusal ve uluslararası arenada söz sahibi olmak,\r\n                    </li>\r\n                    <li>Girişimciliği ve yenilikçiliği teşvik etmek ve desteklemek.</li>\r\n                    <li>Seçilmiş sektörlerde küresel ölçekte rekabet edebilir nitelikte şirketler yaratmak, öncelikli\r\n                        sektörlerden yeteri başvuru alınamaması halinde medikal,\r\n                        biyomedikal gibi yüksek katma değerli ürünler üretilen alanlarda verimliliği arttırmaya yönelik\r\n                        yöntem, teknik, teknoloji ve ürünlerin geliştirilmesini ve bunların uygulanmasını sağlamak.\r\n                    </li>\r\n                    <li> Ar-Ge yeteneği ve geleneğine sahip ulusal ve uluslararası şirketlerin faaliyetlerini\r\n                        sürdürebilmeleri için gerekli teknolojik alt yapıyı temin etmek.\r\n                    </li>\r\n                    <li>Yerel, ulusal ve uluslararası stratejik iş birlikleri ve üniversite-sanayi iş birliğinde\r\n                        sistematik ve doğru yöntemlerle mevcut zenginlik ve birikimi kullanılabilir hale getirmek,\r\n                        teknoloji transferine uygun ortam oluşturmak.\r\n                    </li>\r\n                    <li> İşleyişi ve yönetimi bakımından her yönüyle hesap verebilir ve izlenebilir olmak.</li>\r\n                    <li> Kümelenme odaklı bir yapı ile bölgenin potansiyeli dikkate alınarak, güçlü yanlar ve ihtiyaçlar\r\n                        doğrultusunda yüksek katma değerli ürünler geliştirmek.\r\n                    </li>\r\n                    <li> Bölge şirketlerinin kendi aralarında ve küme grupları/oluşumları arasında sinerji\r\n                        yaratmaktır.\r\n                    </li>\r\n            </b></ul><b>\r\n            </b>                                                                                                                                                                                                                                                                                                                                                                        ', '                                                                                                                                                                                                                                                                                                                                                                                                                                                         <div class=\"overflow-hidden mb-2\">\r\n                        <h2 class=\"text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1200\">Dumlupınar <strong class=\"font-weight-extra-bold\">TGB\'nin Vizyonu</strong></h2>\r\n                    </div>\r\n                    <p class=\"appear-animation\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"1400\">Ülkemizin gelişmişlik seviyesine katkı sağlamak amacıyla\r\n                        yüksek/ileri teknolojiler alanında inovasyon kültürünün gelişmesini teşvik edici,\r\n                        yaratıcılık ve girişimcilik alanında önemli projelerin ekonomiye kazandırılması ve\r\n                        ticarileştirilmesi, üniversite-sanayi işbirliğinin gelişimine katkı sağlamak amacıyla ortak\r\n                        proje geliştirmek ve firmalar arasında sinerji oluşturmak üzere\r\n                        eşleştirme ve kümeleme çalışmalarıyla sürdürülebilir Ar-Ge ve inovasyon ekosistemi içerisinde,\r\n                        akademik ve endüstriyel girişimciliği destekleyerek, bölgesel ve ulusal düzeyde en yüksek katma\r\n                        değeri yaratmaktır.\r\n                \r\n\r\n\r\n                </p><h2 class=\"text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1200\">Dumlupınar TGB\'nin Vizyonu <strong class=\"font-weight-extra-bold\"> Amaçları / Misyonu</strong></h2>\r\n            \r\n            <p class=\"appear-animation\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"1400\">\r\n            </p><ul><b>\r\n                    <li>Türkiye\'de Teknoloji geliştiricisi Ar-Ge kurum ve kuruluşları ile teknoloji kullanıcısı sanayi\r\n                        şirketleri veya diğer teknoloji ya da Ar-Ge kurum ve kuruluşları\r\n                        arasında bilgilendirme, koordinasyon, araştırmayı yönlendirme, yeni Ar-Ge şirketlerinin\r\n                        oluşturulmasını teşvik etme, iş birliği geliştirme, fikri mülkiyet haklarının\r\n                        korunması, pazarlanması, satılması, fikri mülkiyetin satışından elde edilen gelirlerin\r\n                        yönetilmesi konularında destek vermek,\r\n                    </li>\r\n                    <li>Kütahya’da girişimcilik ekosistemini güçlendirmek ve bilişim, medikal, biyomedikal,\r\n                        elektrik-elektronik, savunma sanayi, maden, tarım ve diğer sektörlerin potansiyellerini\r\n                        değerlendirmek bölgenin güç çeşitliliğini öne çıkaracak yeni projeler ile bölgesel gelişmeyi\r\n                        hedeflemek ve ulusal ve uluslararası arenada söz sahibi olmak,\r\n                    </li>\r\n                    <li>Girişimciliği ve yenilikçiliği teşvik etmek ve desteklemek.</li>\r\n                    <li>Seçilmiş sektörlerde küresel ölçekte rekabet edebilir nitelikte şirketler yaratmak, öncelikli\r\n                        sektörlerden yeteri başvuru alınamaması halinde medikal,\r\n                        biyomedikal gibi yüksek katma değerli ürünler üretilen alanlarda verimliliği arttırmaya yönelik\r\n                        yöntem, teknik, teknoloji ve ürünlerin geliştirilmesini ve bunların uygulanmasını sağlamak.\r\n                    </li>\r\n                    <li> Ar-Ge yeteneği ve geleneğine sahip ulusal ve uluslararası şirketlerin faaliyetlerini\r\n                        sürdürebilmeleri için gerekli teknolojik alt yapıyı temin etmek.\r\n                    </li>\r\n                    <li>Yerel, ulusal ve uluslararası stratejik iş birlikleri ve üniversite-sanayi iş birliğinde\r\n                        sistematik ve doğru yöntemlerle mevcut zenginlik ve birikimi kullanılabilir hale getirmek,\r\n                        teknoloji transferine uygun ortam oluşturmak.\r\n                    </li>\r\n                    <li> İşleyişi ve yönetimi bakımından her yönüyle hesap verebilir ve izlenebilir olmak.</li>\r\n                    <li> Kümelenme odaklı bir yapı ile bölgenin potansiyeli dikkate alınarak, güçlü yanlar ve ihtiyaçlar\r\n                        doğrultusunda yüksek katma değerli ürünler geliştirmek.\r\n                    </li>\r\n                    <li> Bölge şirketlerinin kendi aralarında ve küme grupları/oluşumları arasında sinerji\r\n                        yaratmaktır.\r\n                    </li>\r\n            </b></ul><b>\r\n            </b>                                                                                                                                                                                                                                                                                                                                                                                                            ', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <p>Teknokent<br></p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 'kuvarssoftt.png', '05444355071', '05444355071', '05444355071', '05444355071', 'oguzhanfiliz@outlook.com', 'http://facebook.com/onlyfryou', 'http://twitter.com/onlyfryouu1', 'http://instagram.com/busraoguzhan_', 'linedk.com/kasdasdk', '2020-08-12 16:18:32', '2020-08-21 11:53:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `allowButton` tinyint(4) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `button_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `button_caption` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `animation_type` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `animation_time` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `allowButton`, `img_url`, `button_url`, `button_caption`, `animation_type`, `animation_time`, `rank`, `isActive`, `createdAt`) VALUES
(3, 'fgfhgh', '<p>fhfhfhf</p>', 0, 'project-short3.jpg', '', '', NULL, NULL, 1, 1, '2020-08-25 20:50:34'),
(4, 'asdas', '<p>dasdasdasdas</p>', 0, 'resim3.jpg', '', '', NULL, NULL, 0, 1, '2020-08-25 20:53:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sss`
--

DROP TABLE IF EXISTS `sss`;
CREATE TABLE IF NOT EXISTS `sss` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `description` varchar(900) COLLATE utf8_turkish_ci NOT NULL,
  `rank` int(11) NOT NULL,
  `isActive` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sss`
--

INSERT INTO `sss` (`id`, `title`, `subtitle`, `description`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'Başvuru', 'DUMLUPINAR TEKNOKENT\'e başvurular ücretli midir?', 'DUMLUPINAR TEKNOKENT için aday başvurularından proje başına 750.00 TL başvuru ücreti alınmaktadır. (Bu ücret her yıl başında veya gerekli görüldüğü takdirde Yönetim Kurulu kararı ile güncellenmektedir)<br><p></p>', 0, 1, '2020-08-14 11:53:48'),
(10, 'Faaliyete Başlamak İçin Ne Yapılmalı ?', 'DUMLUPINAR TEKNOKENT\'e kabul sonrasında, faaliyete başlamak için yapılması gerekenler nelerdir?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">DUMLUPINAR TEKNOKENT’e kabul edilmiş firmalar, 4691 Sayılı Teknoloji Geliştirme Bölgeleri Yasası kapsamında faaliyet gösterebilmeleri için kendilerine tahsis edilen ofis alanına taşındıktan itibaren 10 gün içinde Bölge Çalışma İşyeri Sicil Kaydını, SSK İşyeri Sicil Kaydını, yoklama fişinin ve vergi dairesinin mükellefiyetinin tesciline ilişkin belgesinin kopyalarını, 4691 Sayılı Yasa kapsamında sağlanan muafiyetlerden yaralanan personelin bilgilerini (özgeçmişleri, görev tanımları, işe başlama tarihleri, 4691 sayılı yasa kapsamında muafiyetlerden toplam yaralanma süresi, SSK işe giriş bildirgeleri) ve 4691 Sayılı Yasa kapsamı dışında kalan personelin bilgilerini bilgileri (adı soyadı, işe başlama tarihi, işyerindeki görevi içeren bir yazı ve yazı ekinde o kişiye ait SSK işe giriş bildirgesi', 0, 1, '2020-08-26 22:43:36'),
(11, 'Başvuru Şartları', 'DUMLUPINAR TEKNOKENT\'e kabul sonrasında, faaliyete başlamak için yapılması gerekenler nelerdir?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">DUMLUPINAR TEKNOKENT’i yöneten Dumlupınar Teknokent Yönetici A.Ş., Teknokentte yer almak isteyen firma ve girişimcilerin başvurularını almadan önce bir ön başvuru almak suretiyle firma veya girişimcilerin DUMLUPINAR TEKNOKENT’e gelme talebi ve projeleri hakkında bilgi alır ve ön değerlendirme yapar. Ön değerlendirme sonunda olumlu bulunan başvurular için DUMLUPINAR TEKNOKENT Başvuru Formu ve ekinde istenilen diğer bilgilerle birlikte DUMLUPINAR TEKNOKENT Yönetimine başvuru yapılır.</span><br></p>', 0, 1, '2020-08-26 22:45:14'),
(12, 'Hakem Heyeti', 'Hakem Heyeti', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Hakem heyeti firmanın faaliyet alanında ve özellikle önerilen araştırma ve yazılım geliştirme projeleri konusunda uzman kişilerden oluşur. Hakem heyetinin atanmasında KDPÜ öğretim üyelerine öncelik verilir. Firmalara hakem heyeti üyeleri hakkında bilgi verilmez, firmalar heyeti ancak değerlendirme toplantısında veya değerlendirme sonunda öğrenirler.</span><br></p>', 0, 1, '2020-08-26 22:45:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `category` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `teams`
--

INSERT INTO `teams` (`id`, `url`, `title`, `description`, `category`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(4, 'prof--dr--ersan-oz', 'Prof. Dr. Ersan ÖZ', 'GENEL MÜDÜR', 'Genel Müdür', 'ersanoz.png', 0, 1, '2020-08-20 14:32:08'),
(5, 'doc--dr--fatih-sen', 'Doç. Dr. Fatih ŞEN', 'GENEL MÜDÜR YARDIMCISI', 'GENEL MÜDÜR YARDIMCISI', 'fatihsen1.png', 0, 1, '2020-08-20 14:33:12'),
(6, 'fatih-emre', 'Fatih Emre', 'İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI', 'İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI', 'resim31.jpg', 0, 1, '2020-08-20 14:39:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tgb`
--

DROP TABLE IF EXISTS `tgb`;
CREATE TABLE IF NOT EXISTS `tgb` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tgb`
--

INSERT INTO `tgb` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(18, 'asdadass', 'asdadass', '', 'image', 'cvt.pdf', '#', NULL, 0, 1, '2020-08-26 19:25:12'),
(19, 'sdadasd', 'sdadasd', '', 'image', 'cv1.pdf', '#', NULL, 0, 1, '2020-08-26 19:44:46'),
(20, '12312312312', '12312312312', '', 'image', 'cevaplar-yarim.pdf', '#', NULL, 0, 1, '2020-08-26 19:44:52'),
(21, 'asdasdasd', 'asdasdasd', '', 'image', 'cvt.docx', '#', NULL, 0, 1, '2020-08-26 19:55:01'),
(22, '332141', '332141', '', 'image', 'staj-kabul-belgesi.pdf', '#', NULL, 0, 1, '2020-08-26 20:05:12');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tgb4691`
--

DROP TABLE IF EXISTS `tgb4691`;
CREATE TABLE IF NOT EXISTS `tgb4691` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tgb4691`
--

INSERT INTO `tgb4691` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(23, 'deneme-2', 'Deneme 2', '', 'image', 'cvt.pdf', '#', NULL, 1, 1, '2020-08-26 20:08:06'),
(24, 'asdasd', 'asdasd', '', 'image', 'cevaplar-yarim.pdf', '#', NULL, 0, 1, '2020-08-26 20:18:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tgbkanun`
--

DROP TABLE IF EXISTS `tgbkanun`;
CREATE TABLE IF NOT EXISTS `tgbkanun` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tgbkanun`
--

INSERT INTO `tgbkanun` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(23, 'deneme-2', 'Deneme 2', '', 'image', 'cv.pdf', '#', NULL, 1, 1, '2020-08-26 20:08:06'),
(24, 'asdasd', 'asdasd', '', 'image', 'cevaplar-yarim.pdf', '#', NULL, 0, 1, '2020-08-26 20:18:21'),
(25, 'asdasd', 'asdasd', '', 'image', 'oguzhan-filiz-cv.pdf', '#', NULL, 2, 1, '2020-08-26 20:46:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `full_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `password`, `isActive`, `createdAt`) VALUES
(1, 'only', 'Oğuzhan Filiz', 'onlyfryou@icloud.com', '96e79218965eb72c92a549dd5a330112', 1, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
