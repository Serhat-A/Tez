-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2021 at 05:14 PM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esmeze_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `basvurubelge`
--

CREATE TABLE `basvurubelge` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `basvurubelge`
--

INSERT INTO `basvurubelge` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(26, 'basvuru-belgeleri-istenecek--', 'BAŞVURU BELGELERİ İSTENECEK!!', '', 'image', '193-sayili-gelir-vergisi-kanunu.pdf', '#', NULL, 0, 1, '2020-08-29 15:28:42'),
(27, 'basvuru-belgeleri-istenecek--', 'BAŞVURU BELGELERİ İSTENECEK!!', '', 'image', '193-sayili-gelir-vergisi-kanunu1.pdf', '#', NULL, 0, 1, '2020-08-29 15:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT '',
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT '',
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(4, '<p>a<span style=\"background-color: rgb(255, 255, 0);\"><b>naysaslkdfhsldkfhdflkj lkasj</b></span>dflksasjdlk alk lkasdalksjd</p>', '<p>iletimsisdmidsmf sidmfisdmsdifms imsdfisdmismd </p>', 0, 1, '2017-12-29 08:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `company_news`
--

CREATE TABLE `company_news` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `company_news`
--

INSERT INTO `company_news` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'iphonex-satislari-beklenilenin-altindaaaaaa', 'iphoneX Satışları Beklenilenin altındaaaaaa', '<p>iphoneX Satışları <b>Beklenilenin altındaaaaaaaa</b><br></p>', 'image', 'blog-11-400x2671.jpg', '#', NULL, 1, 1, '2017-12-25 22:59:32'),
(3, 'deneme', 'Deneme', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum justo eget condimentum luctus. Integer tempor enim euismod ligula ultrices convallis. Etiam convallis blandit dolor in vestibulum. Cras convallis cursus velit vel blandit. Duis sit amet quam sed ligula tristique porta dapibus in tellus. Suspendisse potenti. Quisque consectetur at est sed egestas. Sed semper libero et efficitur vulputate.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Morbi facilisis sollicitudin ipsum, et tempus diam rhoncus vestibulum. Vestibulum at rhoncus erat. Sed nec bibendum neque, et condimentum felis. Etiam hendrerit odio eu bibendum pellentesque. Suspendisse ex lorem, cursus at fringilla eget, ultricies nec ipsum. Sed condimentum ac lectus vitae fermentum. Suspendisse potenti. Phasellus sapien nibh, consequat vitae lacus eu, scelerisque tempor quam. Suspendisse quam nisi, dapibus vel auctor ut, laoreet vitae lectus. Aliquam erat volutpat. Praesent lacinia, arcu in molestie viverra, purus erat semper nisl, et hendrerit velit turpis sit amet mauris. Nunc a dignissim risus. Nullam hendrerit pretium eros.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Duis feugiat libero ut consequat pretium. Nulla sed odio id lorem convallis sollicitudin quis at lacus. Pellentesque ultrices vitae odio eget efficitur. Curabitur a metus velit. Nunc egestas ex quis orci dictum, ut mollis tellus viverra. Suspendisse placerat enim eu fringilla gravida. Duis facilisis erat sit amet enim pretium tincidunt.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nulla nibh tellus, faucibus vitae lorem eu, condimentum posuere orci. Donec at dui neque. Etiam maximus convallis vulputate. Ut eleifend nisi vitae felis gravida, id tempus erat scelerisque. Quisque vestibulum justo libero, sed maximus arcu sodales a. Pellentesque ut nisl sapien. Integer imperdiet at tortor eget auctor. Nulla maximus ex ipsum, ac pellentesque nulla ullamcorper sollicitudin. In at augue ac arcu fermentum efficitur in in erat. Nunc nisi tortor, pretium quis tristique sed, aliquam id tortor. Morbi porttitor libero eu vehicula imperdiet.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nunc pellentesque vitae erat sit amet accumsan. Fusce convallis odio sit amet magna lacinia tempor. Nam id aliquet neque. Curabitur posuere sagittis odio porta convallis. Fusce a ex id odio sagittis viverra sit amet rhoncus ex. Sed augue tellus, efficitur vel risus eget, elementum fringilla risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 'image', 'blog-11-400x267.jpg', '#', 1, 0, 1, '2017-12-25 23:02:02'),
(4, 'deneme-video-yazisi', 'Deneme Video Yazısı', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum justo eget condimentum luctus. Integer tempor enim euismod ligula ultrices convallis. Etiam convallis blandit dolor in vestibulum. Cras convallis cursus velit vel blandit. Duis sit amet quam sed ligula tristique porta dapibus in tellus. Suspendisse potenti. Quisque consectetur at est sed egestas. Sed semper libero et efficitur vulputate.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Morbi facilisis sollicitudin ipsum, et tempus diam rhoncus vestibulum. Vestibulum at rhoncus erat. Sed nec bibendum neque, et condimentum felis. Etiam hendrerit odio eu bibendum pellentesque. Suspendisse ex lorem, cursus at fringilla eget, ultricies nec ipsum. Sed condimentum ac lectus vitae fermentum. Suspendisse potenti. Phasellus sapien nibh, consequat vitae lacus eu, scelerisque tempor quam. Suspendisse quam nisi, dapibus vel auctor ut, laoreet vitae lectus. Aliquam erat volutpat. Praesent lacinia, arcu in molestie viverra, purus erat semper nisl, et hendrerit velit turpis sit amet mauris. Nunc a dignissim risus. Nullam hendrerit pretium eros.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Duis feugiat libero ut consequat pretium. Nulla sed odio id lorem convallis sollicitudin quis at lacus. Pellentesque ultrices vitae odio eget efficitur. Curabitur a metus velit. Nunc egestas ex quis orci dictum, ut mollis tellus viverra. Suspendisse placerat enim eu fringilla gravida. Duis facilisis erat sit amet enim pretium tincidunt.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nulla nibh tellus, faucibus vitae lorem eu, condimentum posuere orci. Donec at dui neque. Etiam maximus convallis vulputate. Ut eleifend nisi vitae felis gravida, id tempus erat scelerisque. Quisque vestibulum justo libero, sed maximus arcu sodales a. Pellentesque ut nisl sapien. Integer imperdiet at tortor eget auctor. Nulla maximus ex ipsum, ac pellentesque nulla ullamcorper sollicitudin. In at augue ac arcu fermentum efficitur in in erat. Nunc nisi tortor, pretium quis tristique sed, aliquam id tortor. Morbi porttitor libero eu vehicula imperdiet.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nunc pellentesque vitae erat sit amet accumsan. Fusce convallis odio sit amet magna lacinia tempor. Nam id aliquet neque. Curabitur posuere sagittis odio porta convallis. Fusce a ex id odio sagittis viverra sit amet rhoncus ex. Sed augue tellus, efficitur vel risus eget, elementum fringilla risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 'video', '#', 'https://www.youtube.com/watch?v=MbynufJDv1s', 7, 0, 1, '2020-08-18 13:40:25'),
(5, 'video-deneme', 'Video deneme', '<p>asdasdasd</p>', 'video', '#', 'https://www.youtube.com/watch?v=wBpVQln4MIU', 2, 0, 1, '2020-08-22 23:01:14'),
(7, 'videos', 'Videos', '<p>asdasd</p>', 'video', '#', 'https://www.youtube.com/watch?v=6oTurM7gESE', 1, 0, 1, '2020-08-22 23:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `url`, `title`, `description`, `img_url`, `event_date`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'codeigniter-4-egitimi', 'Codeigniter 4 Eğitimi', '<p>Bu eğitimde codeigniter ile ilgili birçok kavramı elden geçireceğiz..</p>', 'videosinif-proje.png', '2018-02-24 12:00:00', 0, 1, '2017-12-29 00:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `dtgb`
--

CREATE TABLE `dtgb` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `dtgb`
--

INSERT INTO `dtgb` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(25, '4691-sayili-tgb-kanun-bilgi-notu', '4691 Sayılı TGB Kanun Bilgi Notu', '', 'image', '4691-sayili-tgb-kanun-bilgi-notu-001.pdf', '#', NULL, 0, 1, '2020-08-29 15:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `protocol` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `host` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `port` varchar(10) COLLATE utf8_turkish_ci DEFAULT '',
  `user` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `from` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `to` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `user_name` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `protocol`, `host`, `port`, `user`, `password`, `from`, `to`, `user_name`, `isActive`, `createdAt`) VALUES
(2, 'smtp', 'webmail.esmeze.com', '587', 'info@esmeze.com', '269g^qxE', 'info@esmeze.com', 'info@esmeze.com', 'İletişim formu maili', 1, '2020-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) UNSIGNED NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `files`
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
-- Table structure for table `firm`
--

CREATE TABLE `firm` (
  `id` int(11) UNSIGNED NOT NULL,
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
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `firm`
--

INSERT INTO `firm` (`id`, `url`, `title`, `description`, `category`, `kurucu`, `kurulus`, `phone`, `webpage`, `mail`, `alan`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(18, 'rainbow', 'RAİNBOW', '<p>Yazılım Elektronik Peyzaj A.Ş.</p>', 'yazilim', 'Levent KASA', '2020-08-06', '', 'www.kuvarssoft.com', 'mervepeyzaj@gmail.com', 'web,yazılım,sunucu,vs...', 'resim3.jpg', 5, 1, '2020-08-25 17:38:13'),
(19, 'turkuaz', 'TURKUAZ', '<p>Mühendislik Eğitim Danışmanlık Hizmetleri&nbsp; &nbsp;</p>', 'urungelistirme', 'Önder UYSAL', '2020-09-05', '0506 316 08 06', '', 'onder.uysal@dpu.edu.tr', '', 'resim3.jpg', 2, 1, '2020-09-05 12:39:37'),
(20, 'uzmed', 'UZMED', '', 'robotik', 'Zeki KÖYLÜ', '2020-09-05', '', '', 'istanbulotozeki@gmail.com', '', 'resim3.jpg', 3, 1, '2020-09-05 12:41:38'),
(21, 'cevizsoft', 'CEVİZSOFT', '<p>Teknoloji A.Ş.</p>', 'yazilim', 'Ahmet ÖZRENK', '2020-09-05', '0549 252 19 00', 'www.cevizsoft.com', 'info@cevizsoft.com', 'yazılım, danışmanlık', 'ceviz2.jpg', 1, 1, '2020-09-05 12:43:38'),
(22, 'meren', 'MEREN', '<p>İleri Teknoloji&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'urungelistirme', 'Cem ÖZGÜR', '2020-09-05', '0533 619 30 55', '', 'cem.ozgur@dpu.edu.tr', '', 'resim3.jpg', 4, 1, '2020-09-05 14:14:29'),
(23, 'kuvarssoft', 'KUVARSSOFT', '<p>Teknoloji Bilişim AR-GE İnovasyon LTD.</p>', 'yazilim', 'Dr. İsmail Yoşumaz - Cüneyt CANBEK', '2020-09-05', '0850 471 00 43', 'www.kuvarssoft.com', 'destek@kuvarssoft.com', 'bilişim, arge, inovasyon, teknoloji', 'kuvars2.jpg', 0, 1, '2020-09-05 14:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `firms`
--

CREATE TABLE `firms` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `firms`
--

INSERT INTO `firms` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(14, 'deneme-haber', 'Deneme haber', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus malesuada erat ut nisi cursus, vel tempus dolor posuere. Etiam erat dui, venenatis vel turpis a, varius pretium massa. Praesent in lobortis tellus, sed pretium elit. Ut blandit condimentum mauris eget vestibulum. Sed luctus, nulla ut elementum pellentesque, ex ipsum ullamcorper augue, et porttitor enim orci at sem. Integer convallis, lorem id commodo porttitor, elit massa porttitor dolor, quis pulvinar mauris lorem suscipit libero. Integer malesuada mauris et viverra ullamcorper. Sed dictum, erat et facilisis consequat, nisi nulla accumsan metus, eget semper orci odio blandit dolor. Sed id libero pretium, pulvinar erat ut, condimentum leo. Pellentesque sollicitudin libero eu egestas gravida. Mauris ac arcu rutrum, volutpat elit id, mollis nisi. Maecenas a tellus viverra, vestibulum est sit amet, blandit dui. Etiam ac gravida purus.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nam ut leo metus. Morbi lorem augue, viverra non sodales sed, finibus non turpis. Curabitur ultrices gravida tincidunt. Sed quis nisi vel elit venenatis consequat nec quis tellus. Aenean diam felis, viverra vitae semper quis, tristique quis turpis. Aenean vitae lacus eget ipsum accumsan bibendum eu eu ligula. Aliquam erat volutpat. Vestibulum mollis lectus tortor, eu facilisis eros lobortis eu. Etiam purus tortor, accumsan sit amet libero a, vulputate dignissim mi. Quisque a justo finibus, congue tortor eget, placerat sapien.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean tincidunt ante non laoreet dignissim. Maecenas ullamcorper, odio tempus bibendum faucibus, metus orci facilisis magna, in vulputate ipsum quam vitae justo. Praesent metus quam, eleifend et placerat sagittis, volutpat id nunc. Fusce at hendrerit turpis. Aliquam finibus urna ut quam dictum, tincidunt ullamcorper nunc bibendum. Nulla tempor eros at molestie tempus. Maecenas felis est, posuere quis cursus non, imperdiet eu mauris. Duis nec ex ac dui tristique lacinia. Donec pellentesque placerat vehicula. Fusce congue tortor sit amet eleifend cursus. Mauris feugiat commodo nunc, sed tincidunt orci venenatis id. Quisque luctus semper tristique. Nullam cursus dolor eros, quis dignissim libero scelerisque et. Donec aliquam semper tortor sed pharetra. Praesent posuere mollis sapien ac hendrerit.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aliquam a justo nec tortor aliquam scelerisque ut id nibh. Nulla mollis lacinia placerat. Sed fringilla urna lorem, sed bibendum lacus condimentum ac. Fusce convallis est risus, nec hendrerit lorem tincidunt nec. Curabitur imperdiet, eros eu pretium sagittis, lacus nisi commodo purus, condimentum iaculis erat dui nec lectus. Sed gravida imperdiet malesuada. Praesent nulla eros, porta ac pellentesque at, elementum laoreet magna. Sed lacus neque, lobortis id blandit in, sollicitudin rhoncus purus. Vivamus varius molestie eros ac ornare. Nulla mattis urna nunc, quis fermentum justo fermentum eget. Donec eget sapien urna. Donec vitae tristique nunc, quis pellentesque leo. Pellentesque vitae interdum mi.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Mauris aliquet ac diam a pharetra. Fusce rutrum lobortis orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque imperdiet sem vitae mauris finibus volutpat. Morbi velit eros, iaculis eget ex quis, fermentum sagittis ligula. Nunc laoreet, ex at viverra feugiat, sapien odio tincidunt nunc, vitae cursus augue ipsum vel ipsum. Integer accumsan laoreet aliquam. Ut felis ipsum, imperdiet a commodo non, fermentum et augue. Morbi ultrices ante lectus, vel luctus ligula pulvinar vitae. Proin sodales ex sed dui consectetur hendrerit.</p>', 'image', 'default.png', '#', 4, 0, 1, '2020-08-27 16:41:33'),
(15, 'deneme-2-video-haberi', 'Deneme 2 video haberi', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus malesuada erat ut nisi cursus, vel tempus dolor posuere. Etiam erat dui, venenatis vel turpis a, varius pretium massa. Praesent in lobortis tellus, sed pretium elit. Ut blandit condimentum mauris eget vestibulum. Sed luctus, nulla ut elementum pellentesque, ex ipsum ullamcorper augue, et porttitor enim orci at sem. Integer convallis, lorem id commodo porttitor, elit massa porttitor dolor, quis pulvinar mauris lorem suscipit libero. Integer malesuada mauris et viverra ullamcorper. Sed dictum, erat et facilisis consequat, nisi nulla accumsan metus, eget semper orci odio blandit dolor. Sed id libero pretium, pulvinar erat ut, condimentum leo. Pellentesque sollicitudin libero eu egestas gravida. Mauris ac arcu rutrum, volutpat elit id, mollis nisi. Maecenas a tellus viverra, vestibulum est sit amet, blandit dui. Etiam ac gravida purus.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nam ut leo metus. Morbi lorem augue, viverra non sodales sed, finibus non turpis. Curabitur ultrices gravida tincidunt. Sed quis nisi vel elit venenatis consequat nec quis tellus. Aenean diam felis, viverra vitae semper quis, tristique quis turpis. Aenean vitae lacus eget ipsum accumsan bibendum eu eu ligula. Aliquam erat volutpat. Vestibulum mollis lectus tortor, eu facilisis eros lobortis eu. Etiam purus tortor, accumsan sit amet libero a, vulputate dignissim mi. Quisque a justo finibus, congue tortor eget, placerat sapien.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean tincidunt ante non laoreet dignissim. Maecenas ullamcorper, odio tempus bibendum faucibus, metus orci facilisis magna, in vulputate ipsum quam vitae justo. Praesent metus quam, eleifend et placerat sagittis, volutpat id nunc. Fusce at hendrerit turpis. Aliquam finibus urna ut quam dictum, tincidunt ullamcorper nunc bibendum. Nulla tempor eros at molestie tempus. Maecenas felis est, posuere quis cursus non, imperdiet eu mauris. Duis nec ex ac dui tristique lacinia. Donec pellentesque placerat vehicula. Fusce congue tortor sit amet eleifend cursus. Mauris feugiat commodo nunc, sed tincidunt orci venenatis id. Quisque luctus semper tristique. Nullam cursus dolor eros, quis dignissim libero scelerisque et. Donec aliquam semper tortor sed pharetra. Praesent posuere mollis sapien ac hendrerit.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aliquam a justo nec tortor aliquam scelerisque ut id nibh. Nulla mollis lacinia placerat. Sed fringilla urna lorem, sed bibendum lacus condimentum ac. Fusce convallis est risus, nec hendrerit lorem tincidunt nec. Curabitur imperdiet, eros eu pretium sagittis, lacus nisi commodo purus, condimentum iaculis erat dui nec lectus. Sed gravida imperdiet malesuada. Praesent nulla eros, porta ac pellentesque at, elementum laoreet magna. Sed lacus neque, lobortis id blandit in, sollicitudin rhoncus purus. Vivamus varius molestie eros ac ornare. Nulla mattis urna nunc, quis fermentum justo fermentum eget. Donec eget sapien urna. Donec vitae tristique nunc, quis pellentesque leo. Pellentesque vitae interdum mi.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Mauris aliquet ac diam a pharetra. Fusce rutrum lobortis orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque imperdiet sem vitae mauris finibus volutpat. Morbi velit eros, iaculis eget ex quis, fermentum sagittis ligula. Nunc laoreet, ex at viverra feugiat, sapien odio tincidunt nunc, vitae cursus augue ipsum vel ipsum. Integer accumsan laoreet aliquam. Ut felis ipsum, imperdiet a commodo non, fermentum et augue. Morbi ultrices ante lectus, vel luctus ligula pulvinar vitae. Proin sodales ex sed dui consectetur hendrerit.</p>', 'video', '#', 'https://www.youtube.com/watch?v=ZXZMIC-Z-XA', 11, 0, 1, '2020-08-27 16:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `gallery_type` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `folder_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) UNSIGNED NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(35, 29, 'uploads/galleries_v/images/file/cv.pdf', 0, 1, '2020-08-26 16:19:51'),
(36, 29, 'uploads/galleries_v/images/file/cevaplar-yarim.pdf', 0, 1, '2020-08-26 16:19:51'),
(37, 29, 'uploads/galleries_v/images/file/cvt.pdf', 0, 1, '2020-08-26 16:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `unvan` text COLLATE utf8_turkish_ci NOT NULL,
  `category` text COLLATE utf8_turkish_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`id`, `url`, `title`, `description`, `unvan`, `category`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(8, 'prof-dr--kâzim-uysal', 'Prof Dr. Kâzım Uysal', 'DPÜ TEMSILEN ÜYE YÖNETIM KURULU BAŞKANI', 'Kütahya Dumlupınar Üniversitesi Rektörü', 'Yönetim Kurulu Başkanı', 'kazimuysal.png', 0, 1, '2020-08-21 09:39:40'),
(9, 'prof--dr--hasan-gocmez', 'Prof. Dr. HASAN GÖÇMEZ', 'Yönetim Kurulu Başkan Vekili', 'Kütahya Dumlupınar Üniversitesi ', 'Yönetim Kurulu Başkan Vekili', 'hasan-goecmez.jpg', 1, 1, '2020-08-21 12:03:31'),
(10, 'murat-koyak', 'MURAT KOYAK', 'Üye', 'Kütahya İl Özel İdaresini Temsilen Üye', 'Üye', 'murat-koyak.jpg', 3, 1, '2020-08-21 12:04:04'),
(11, 'prof--dr--alim-isik', 'Prof. Dr. Alim IŞIK', 'Üye', 'Kütahya Belediye Başkanı', 'Üye', '75853561-620x410.jpg', 2, 1, '2020-08-21 13:01:35'),
(13, 'mustafa-selman-hatipoglu', 'Mustafa Selman HATİPOĞLU', 'Üye', 'Kütahya Sanayi ve Ticaret Odası Temsilen Üye', 'Üye', 'selman-haipoglu.jpg', 5, 1, '2020-08-29 14:55:08'),
(14, 'veli-yilmaz', 'Veli YILMAZ', 'Üye', 'Kütahya Organize Sanayi Bölgesini Temsilen Üye', 'Üye', 'resim3.jpg', 4, 1, '2020-08-29 14:58:23'),
(15, 'mustafa-yenipazar', 'Mustafa YENİPAZAR', 'Üye', 'Kütahya 2. Organize Sanayi Bölgesini Temsilen Üye', 'Üye', 'musafa-yenipazar.jpg', 6, 1, '2020-08-29 14:59:12'),
(16, 'hasan-ozyasar', 'Hasan ÖZYAŞAR', 'Üye', 'Tavşanlı Sanayi ve Ticaret Odasının Temsilen Üye', 'Üye', 'hasan-ozyasar.jpg', 7, 1, '2020-08-29 14:59:56'),
(17, 'yilmaz-ozen', 'Yılmaz ÖZEN', 'Üye', 'Gediz Sanayi ve Ticaret Odasını Temsilen Üye', 'Üye', 'resim3.jpg', 8, 1, '2020-08-29 15:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(50) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `ip_address` varchar(25) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `email`, `isActive`, `createdAt`, `ip_address`) VALUES
(6, 'oguzhanfiliz@outlook.com', 1, '2020-11-23 13:07:36', '85.102.48.232'),
(7, 'gonengbahadir@gmail.com', 1, '2020-11-23 21:15:21', '81.213.255.90');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(22, 'rektor-uysal-dan-teknokent-e-ve-gural-a-ziyaret', 'Rektör Uysal\'dan Teknokent\'e ve Güral\'a ziyaret', '<header style=\"margin-top: 10px; font-family: Roboto, sans-serif; font-size: 18px;\"><h3 class=\"summary\" style=\"margin-top: 0px; margin-bottom: 1.5em; line-height: 1.55em; font-size: 1.5625rem;\"><span style=\"color: rgb(121, 121, 121); font-size: 14px;\"><b>Kütahya Dumlupınar Üniversitesi Rektörü Prof. Dr. Kazım Uysal, açılışı için çalışmaların hızla sürdüğü Dumlupınar Teknokent\'e ve Kütahya Ticaret ve Sanayi Odası (KUTSO) Meclis Başkanı Nafi Güral\'a ziyaretlerde bulundu</b></span></h3></header><div class=\"content\" style=\"transition: all 0.3s ease-out 0s; line-height: 1.55em; font-family: Roboto, sans-serif; font-size: 18px;\"><p style=\"margin-bottom: 1.5em;\">Dumlupınar Teknokent\'te son haftalarda hızlanan çalışmaları yerinde görmek isteyen Rektör Kazım Uysal, burada Dumlupınar Teknokent Genel Müdürü Prof. Dr. Ersan Öz ve Müdür Yardımcısı Doç. Dr. Fatih Şen tarafından karşılandı.</p><br><p style=\"margin-bottom: 1.5em;\">Ziyarette devam eden çalışmalar hakkında Prof. Dr. Ersan Öz\'den bilgiler alan ve Teknokent firmalarından bazılarını da ziyaret eden Rektör Uysal, Ar-Ge ve proje çalışmalarıyla ülke ekonomisine hep birlikte katkıda bulunacaklarını, Teknokentin hızla yükselerek hak ettiği noktaya geleceğini söyledi.</p><br><p style=\"margin-bottom: 1.5em;\">Uysal, ziyaret ettiği firmaların yetkililerinden de bu amaç için çok çalışacakları konusunda söz aldı.</p><br><p style=\"margin-bottom: 1.5em;\">Rektör Kazım Uysal, Teknokent ziyaretinin ardından Prof. Dr. Ersan Öz ile birlikte Kütahya Ticaret ve Sanayi Odası Meclis Başkanı ve NG Topluluğu Yönetim Kurulu Başkanı Nafi Güral\'a bir ziyarette bulundu.</p><br><p style=\"margin-bottom: 1.5em;\">Şehir, bölge ve ülke ekonomisinin yanında Dumlupınar Teknokent\'in de konuşulduğu sohbette, Teknokentle ilgili görüşlerini ifade eden Nafi Güral, eğitime yönelik her konuda üniversitenin yanında olduklarını belirterek, Dumlupınar Teknokent konusunda da üniversiteye destek olacaklarını söyledi.</p><p style=\"margin-bottom: 1.5em;\">Kaynak :&nbsp;<a href=\"https://www.iha.com.tr/kutahya-haberleri/rektor-uysaldan-teknokente-ve-gurala-ziyaret-2662788/\">https://www.iha.com.tr/kutahya-haberleri/rektor-uysaldan-teknokente-ve-gurala-ziyaret-2662788/</a></p></div>', 'image', '3379338.jpg', '#', 6, 6, 1, '2020-09-13 22:03:29'),
(23, 'dumlupinar-teknokent-ve-kutahya-2--osb-is-birligi', 'Dumlupınar Teknokent ve Kütahya 2. OSB iş birliği', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, serif; font-size: 18px;\"><b>Dumlupınar Teknokent\'in Kütahya\'da bulunan kurumlar ile iş birliği çalışmalarında Dumlupınar Üniversitesi Rektörü Prof. Dr. Kazım Uysal ve Prof. Dr. Ersan Öz, Kütahya 2. Organize Sanayi\'ye ziyarette bulundu.</b></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, serif; font-size: 18px;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, serif; font-size: 18px;\">Dumlupınar Teknokent’in Kütahya’da bulunan kurumlar ile iş birliği çalışmalarında Dumlupınar Üniversitesi Rektörü Prof. Dr. Kazım Uysal ve Prof. Dr. Ersan Öz, Kütahya 2. Organize Sanayi’ye ziyarette bulundu.</span><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, serif; font-size: 18px;\">Kütahya 2. Organize Sanayi Bölgesi\'ne (OSB) bir ziyaret gerçekleştiren Rektör Kazım Uysal ve Dumlupınar Tasarım Teknokent Genel Müdürü Ersan Öz, Kütahya 2. OSB Yönetim Kurulu Başkanı Salih Çetiner ve OSB Müdürü Murat Demir ile bir araya geldi. Görüşmede Türkiye ve Kütahya ekonomisinin yanında Dumlupınar Teknokent\'te yapılabilecek yeni projeler ve Kütahya ile üniversite sanayi iş birliğine Teknokent katkısının nasıl artırılabileceği konusunda görüş alışverişinde bulunuldu.</span><br style=\"color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, serif; font-size: 18px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, serif; font-size: 18px;\">Yönetim Kurulu Başkanı Çetiner’in, OSB faaliyetleri hakkında ayrıntılı bilgiler verdiği görüşmede. Rektör Uysal ve Genel Müdür Öz de Teknokentte yapmak istedikleri çalışmalar ve Teknokenti ulaştırmak istedikleri noktaya ilişkin dair planlarından söz ettiler.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, serif; font-size: 18px;\"><br></span></p><p><font color=\"#333333\" face=\"Source Sans Pro, serif\"><span style=\"font-size: 18px;\">Kaynak : <a href=\"https://www.haberturk.com/kutahya-haberleri/80220826-dumlupinar-teknokent-ve-kutahya-2-osb-is-birligi\">https://www.haberturk.com/kutahya-haberleri/80220826-dumlupinar-teknokent-ve-kutahya-2-osb-is-birligi</a></span></font><br></p>', 'image', '1.jpg', '#', 5, 5, 1, '2020-09-13 22:07:28'),
(24, 'dumlupinar-teknokent-e-bir-destek-daha', 'Dumlupınar Teknokent\'e bir destek daha', '<p><b>Dumlupınar Teknokent\'in Kütahya\'da bulunan kurumlar ile arası iş birliği çalışmaları kapsamında Prof. Dr. Kazım Uysal ve Prof. Dr. Ersan Öz, Nursan Kablo\'ya ziyarette bulundular ve şirketten destek sözü aldılar.</b></p><p><span style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 16px;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 16px;\">Dumlupınar Teknokent\'in&nbsp;</span><a class=\"keyword\" href=\"https://www.haberler.com/kutahya/\" title=\"Kütahya Haberleri, Kütahya Haberi, Kütahya Haber\" style=\"font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; border: 0px; list-style: none; color: inherit;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\">Kütahya</strong></a><span style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 16px;\">\'da bulunan kurumlar ile arası iş birliği çalışmaları kapsamında Prof. Dr.</span><span style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 16px;\">&nbsp;</span><a class=\"keyword\" href=\"https://www.haberler.com/kazim-uysal/\" title=\"Kazım Uysal Haberleri, Kazım Uysal Haberi, Kazım Uysal Haber\" style=\"font-family: Poppins, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; border: 0px; list-style: none; color: inherit;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\">Kazım Uysal</strong></a><span style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 16px;\">&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 16px;\">ve Prof. Dr. Ersan Öz, Nursan Kablo\'ya ziyarette bulundular ve şirketten destek sözü aldılar.</span><br></p><p class=\"selectionShareable\" style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; border: 0px; list-style: none; width: 656px; position: relative; float: left; word-break: break-word; color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 16px;\">Nursan Kablo Donanımları A.Ş.\'ye bir ziyaret gerçekleştiren Rektör Kazım Uysal ve Dumlupınar Tasarım Teknokent Genel Müdür Prof. Dr. Ersan Öz, Genel Müdür Yardımcısı Göksel Onuş ve Ar-Ge müdürü Selma Yurt Yıldırım ile bir araya geldi. Nursan\'ın fabrikasında yürütülen etkinlikler hakkında bilgiler alan Rektör Uysal ve Genel Müdür Öz, şirket yetkilileriyle yaptıkları görüşmede Türkiye ve Kütahya ekonomisinin yanında Dumlupınar Teknokent\'te yapılabilecek yeni projeler ve Kütahya ile üniversite sanayi iş birliğine Teknokent katkısının nasıl artırılabileceği konusunda bilgiler verdi.</p><p class=\"selectionShareable\" style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; border: 0px; list-style: none; width: 656px; position: relative; float: left; word-break: break-word; color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 16px;\">Görüşmede Nursan\'dan destek sözü alan Uysal ve Öz, iki kurum arasında ortak projelerin yürütülmesi konusunda da şirket yöneticileriyle fikir birliğine vardılar. - KÜTAHYA</p><p class=\"selectionShareable\" style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; border: 0px; list-style: none; width: 656px; position: relative; float: left; word-break: break-word; color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 16px;\">Kaynak :&nbsp;<a href=\"https://www.haberler.com/dumlupinar-teknokent-e-bir-destek-daha-13563075-haberi/\">https://www.haberler.com/dumlupinar-teknokent-e-bir-destek-daha-13563075-haberi/</a></p>', 'image', '2.jpg', '#', 5, 4, 1, '2020-09-13 22:09:32'),
(25, 'dumlupinar-teknokent-e-kutso-dan-destek', 'Dumlupınar Teknokent\'e KUTSO\'dan Destek', '<p><b>Kütahya Dumlupınar Üniversitesi Rektörü Prof. Dr. Kazım Uysal ve Dumlupınar Tasarım Teknokent Genel Müdürü Prof. Dr. Ersan Öz, Kütahya Ticaret ve Sanayi Odası Başkanı İsmet Özotraç’ı ziyaret etti.</b></p><p><br></p><p><span style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\">KUTSO Genel Merkezi’nde Başkan İsmet Özotraç ve KUTSO Yönetim Kurulu Üyesi Mustafa Selman Hatipoğlu tarafından karşılanan Rektör Kazım Uysal’a, Dumlupınar Tasarım Teknokent Genel Müdürü Prof. Dr. Ersan Öz eşlik etti. Görüşmede Dumlupınar Tasarım Teknokent’te yürütülen çalışmalar ele alındı.</span><br style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\"><br style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\"><span style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\">Aynı zamanda Dumlupınar Tasarım Teknokent Yönetici A.Ş. ortaklarından olan KUTSO adına açıklamalarda bulunan Başkan Özotraç, Dumlupınar Üniversitesine ve Teknokent’e tüm olanaklarıyla destek olmaya devam edeceklerini söyleyerek, Üniversite heyetinin gerçekleştirdiği ziyaretten duydukları memnuniyeti ifade etti.</span><br style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\"><br style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\"><span style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\">Rektör Uysal, salgın sürecinin normalleşmesiyle birlikte üniversitelerindeki çalışmaların hızlandığını, bunun yanında Dumlupınar Teknokent’in de KUTSO’nun verdiği önemli desteklerle Kütahya ve ülkeye Ar-Ge üretmeye devam ettiğini kaydetti.</span><br style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\"><br style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\"><span style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\">Genel müdür Prof. Dr. Ersan Öz ise yaptığı açıklamada, Teknokent’te toplam 37 ofise sahip olduklarını, şu an itibariyle yüzde 70 doluluğa ulaşıldığını ve hedefin en kısa sürede yüzde100’ü yakalamak olduğunu, uluslararası patentlere sahip firmaların da yer aldığı Teknokent’te birçok Ar-Ge projesinin yürütüldüğünü belirtti.</span><br style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\"><br style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\"><span style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\">Görüşmenin sonunda heyetlerin ilk KUTSO meclis toplantısında bir araya gelmeleri üzerinde fikir birliğine varıldı.</span></p><p><span style=\"color: rgb(72, 65, 65); font-family: Arial; font-size: 15px;\"><br></span></p><p><font color=\"#484141\" face=\"Arial\"><span style=\"font-size: 15px;\">Kaynak : <a href=\"http://beyazgazete.com/haber/2020/8/15/dumlupinar-teknokent-e-kutso-dan-destek-5691995.html\">http://beyazgazete.com/haber/2020/8/15/dumlupinar-teknokent-e-kutso-dan-destek-5691995.html</a></span></font><br></p>', 'image', '3.jpg', '#', 5, 3, 1, '2020-09-13 22:11:03'),
(26, 'bakanliktan-dumlupinar-tasarim-teknokent-e-destek-sozu', 'Bakanlıktan Dumlupınar Tasarım Teknokent\'e destek sözü', '<p>Kütahya Dumlupınar Üniversitesi (DPÜ) ile Sanayi ve Teknoloji Bakanlığı arasında Dumlupınar Tasarım Teknokent\'in bugünü ve geleceğinin konuşulduğu video konferans gerçekleştirildi.</p><p><br></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: Calibri; color: rgb(0, 0, 0);\">Kütahya&nbsp;Dumlupınar Üniversitesi&nbsp;(DPÜ) ile Sanayi ve Teknoloji Bakanlığı arasında Dumlupınar Tasarım Teknokent\'in bugünü ve geleceğinin konuşulduğu video konferans gerçekleştirildi.<span style=\"font-family: \" ms=\"\" mincho\";\"=\"\"> </span>Video konferans yöntemiyle yapılan görüşmede Dumlupınar Üniversitesini&nbsp;Rektör&nbsp;ve aynı zamanda Dumlupınar Tasarım Teknokent A.Ş. Yönetim Kurulu Başkanı Prof. Dr.&nbsp;Kazım Uysal&nbsp;ile birlikte Rektör Yardımcısı Prof. Dr. Hasan Göçmez, Dumlupınar Teknokent Müdürü Prof. Dr. Ersan Öz temsil etti. Bakanlık tarafında ise toplantıya Sanayi ve Teknoloji Bakanlığı Ar-Ge Teşvikler Genel Müdür&nbsp;Bilal Macit&nbsp;başkanlığındaki heyet katıldı.<span style=\"font-family: \" ms=\"\" mincho\";\"=\"\"> </span>Rektör Kazım Uysal ve Genel Müdür Bilal Macit\'in karşılıklı iyi niyet açıklamalarıyla başlayan görüşmede Dumlupınar Teknokent\'in geçmişi Prof. Dr. Hasan Göçmez tarafından özetlendi. Göçmez\'in ardından söz alan Prof. Dr. Ersan Öz ise Teknokent\'in şu anki durumu ile gelecekte hayata geçirilmesi düşünülen planları ayrıntılarıyla anlattı.<span style=\"font-family: \" ms=\"\" mincho\";\"=\"\"> </span>Bakanlık tarafından Dumlupınar Üniversitesine ve Teknokente yönelik olumlu dönüşler yapılan görüşmede Bilal Macit, Dumlupınar Teknokent\'in bu gayretle devam etmesi halinde her konuda yanında olacaklarının sözünü verdi. Görüşme sonunda heyetler en kısa sürede&nbsp;Ankara\'da bir araya gelme konusunda uzlaştılar. - KÜTAHYA<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: Calibri; color: rgb(0, 0, 0);\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: Calibri; color: rgb(0, 0, 0);\"><o:p>Kaynak :&nbsp;<a href=\"https://www.sondakika.com/haber/haber-bakanliktan-dumlupinar-tasarim-teknokent-e-destek-13520455/\">https://www.sondakika.com/haber/haber-bakanliktan-dumlupinar-tasarim-teknokent-e-destek-13520455/</a></o:p></p>', 'image', '4.jpg', '#', 5, 2, 1, '2020-09-13 22:16:36'),
(27, 'dumlupinar-tasarim-teknokent-personeline-bursa-da-egitim', 'Dumlupınar Tasarım Teknokent personeline Bursa\'da eğitim', '<p>Dumlupınar Tasarım Teknokent\'in idarecileri ve personelleri, Bursa\'da aldıkları eğitimlerini tamamladı.</p><p><br></p><p class=\"selectionshareable\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(51, 51, 51); font-family: Helvetica;\">Dumlupınar Tasarım Teknokent\'in idarecileri ve personelleri,&nbsp;</span><span style=\"font-family: Helvetica; border: 1pt none windowtext; padding: 0cm;\"><font color=\"#000000\">Bursa</font></span><span style=\"color: rgb(51, 51, 51); font-family: Helvetica;\">\'da aldıkları eğitimlerini tamamladı.<o:p></o:p></span></p><p class=\"selectionshareable\" style=\"margin: 7.5pt 0cm; font-size: 12pt; font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: break-word; float: left;\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51);\">Bursa Ulutek Teknopark\'ta düzenlenen eğitime Dumlupınar Tasarım Teknokent Müdürü Prof. Dr. Ersan Öz ile Teknokent idari personelleri katıldı.<o:p></o:p></span></p><p class=\"selectionshareable\" style=\"margin: 7.5pt 0cm; font-size: 12pt; font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: break-word; float: left;\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51);\">Tasarım Teknokent Genel Müdürü Prof. Dr. Ersan Öz ve personeli Sanayi ve Teknoloji Bakanlığı Ar-Ge Teşvikler Genel Müdürlüğü tarafından mentör eşleşmesi kapsamında Bursa Uludağ Teknoparkta gerçekleşen 1 günlük eğitime katıldı. Personellerin Ar-Ge Portal, mali işler, firma ilişkileri konularında aldıkları eğitimin yanında çeşitli alanlarda yeni proje fikirleri de ortaya çıktı.<o:p></o:p></span></p><p class=\"selectionshareable\" style=\"margin: 7.5pt 0cm; font-size: 12pt; font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: break-word; float: left;\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51);\">Bursa Ulutek Genel Müdürü Prof. Dr. İrfan Karagöz hem eğitim hem tanışma anlamında çok verimli geçen eğitim sonrası Genel Müdür Prof. Dr. Öz\'e ve personele teşekkür ederek, Dumlupınar Tasarım Teknokent\'in her zaman yanında olacaklarını belirtti.<o:p></o:p></span></p><p class=\"selectionshareable\" style=\"margin: 7.5pt 0cm; font-size: 12pt; font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: break-word; float: left;\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51);\">Eğitimin ardından Prof. Dr. Ersan Öz\'den kendisi ve heyeti için Dumlupınar Tasarım Teknokent\'e davet alan Prof. Dr. Karagöz, en kısa sürede Teknokent\'i ziyaret edeceğini belirtti. - KÜTAHYA</span></p><p class=\"selectionshareable\" style=\"margin: 7.5pt 0cm; font-size: 12pt; font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: break-word; float: left;\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51);\"><o:p><br></o:p></span></p><p class=\"selectionshareable\" style=\"margin: 7.5pt 0cm; font-size: 12pt; font-family: &quot;Times New Roman&quot;; color: rgb(0, 0, 0); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: break-word; float: left;\"><span style=\"font-family: Helvetica; color: rgb(51, 51, 51);\"><o:p><br></o:p></span></p><p class=\"selectionshareable\" style=\"margin: 7.5pt 0cm; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; word-break: break-word; float: left;\"><font color=\"#333333\" face=\"Helvetica\" style=\"font-size: 12pt;\">Kaynak :&nbsp;</font><font color=\"#333333\" face=\"Helvetica\"><span style=\"font-size: 16px;\"><a href=\"https://www.haberler.com/dumlupinar-tasarim-teknokent-personeline-bursa-da-13566485-haberi/\">https://www.haberler.com/dumlupinar-tasarim-teknokent-personeline-bursa-da-13566485-haberi/</a></span></font></p>', 'image', '5.jpg', '#', 4, 1, 1, '2020-09-13 22:21:44'),
(28, 'dpu-tto-ve-teknokent-genel-mudurlugu-ne-ersan-oz-atandi', 'DPÜ TTO ve Teknokent Genel Müdürlüğü\'ne Ersan Öz atandı', '<header style=\"margin-top: 10px; font-family: Roboto, sans-serif; font-size: 18px;\"><h3 class=\"summary\" style=\"margin-top: 0px; margin-bottom: 1.5em; line-height: 1.55em; font-size: 1.5625rem;\"><span style=\"color: rgb(121, 121, 121); font-size: 14px;\"><b>Kütahya Dumlupınar Üniversitesi Rekörü Prof. Dr. Kazım Uysal, Kütahya Dumlupınar Tasarım Teknokent Yönetici A.Ş ile Kütahya Dumlupınar Üniversitesi (DPÜ) Kütahya Teknoloji Transfer Ofisine (DPÜ TTO) Genel Müdürlüğü görevine Prof. Dr. Ersan Öz\'ü atadı.</b></span><br></h3></header><div class=\"content\" style=\"transition: all 0.3s ease-out 0s; line-height: 1.55em; font-family: Roboto, sans-serif; font-size: 18px;\"><br><p style=\"margin-bottom: 1.5em;\">Yapılan atamayla görevi Prof. Dr. Mehmet Tevfik Bayer\'den devralan Kütahya Dumlupınar Tasarım Teknokent Yönetici A.Ş. ile DPÜ Kütahya Teknoloji Transfer Ofisi Genel Müdürü Prof. Dr. Ersan Öz, Rektör Kazım Uysal\'a ziyarette bulundu.</p><br><p style=\"margin-bottom: 1.5em;\">Rektörlük makamında sohbet şeklinde gerçekleşen görüşmede, Rektör Uysal, Ersan Öz\'e yeni görevinde ve çalışmalarında başarılar diledi ve kendisine çiçek sundu. Öz de, Rektör Uysal\'a, iyi dileklerinden dolayı teşekkür ederek görevinde başarılar diledi.</p><br><p style=\"margin-bottom: 1.5em;\">Prof. Dr. Ersan Öz, 1975 yılında Manisa\'nın Akhisar ilçesinde doğdu. İlk, orta ve lise öğrenimini Gölmarmara\'da tamamlayan Öz, 1997 yılında Karadeniz Teknik Üniversitesi İktisadi ve İdari Bilimler Fakültesi Maliye Bölümünden mezun oldu. Doktorasını 2000-2004 yılları arasında Dokuz Eylül Üniversitesi Sosyal Bilimler Enstitüsü Maliye Programında \'Vergilendirmede Kanunilik İlkesine Göre Türk Vergi Sisteminin Değerlendirilmesi\' teziyle tamamladı. 2006\'da yardımcı doçent, 2009\'da doçent, 2014\'te Profesör unvanını aldı. Ulusal ve uluslararası 84 makalesi, 6 kitabı, 15 tebliği bulunan Öz, 100\'e yakın konferans verdi. Akademik çalışma amaçlı Amerika Birleşik Devletleri, İngiltere, Almanya, Hollanda, İtalya, İspanya, Bosna Hersek, Birleşik Arap Emirlikleri, Çekya, Azerbaycan, Kazakistan, Kırgızistan, Portekiz, Ürdün, Fransa ve Kuzey Makedonya gibi ülkelerde bulunan Prof. Öz\'ün çalışma alanı ulusal ve uluslararası vergi sistemleri, vergi hukuku ve vergi yargısı konularında yoğunlaşmaktadır.</p><p style=\"margin-bottom: 1.5em;\">Kaynak :&nbsp;<a href=\"https://www.iha.com.tr/kutahya-haberleri/dpu-tto-ve-teknokent-genel-mudurlugune-ersan-oz-atandi-2657378/\">https://www.iha.com.tr/kutahya-haberleri/dpu-tto-ve-teknokent-genel-mudurlugune-ersan-oz-atandi-2657378/</a></p></div>', 'image', '6.jpg', '#', 4, 0, 1, '2020-09-13 22:24:00'),
(29, 'teknokent’e-destek', 'Teknokent’e Destek', '<p style=\"margin-bottom: 20px; color: rgb(85, 85, 85); font-family: roboto, sans-serif; font-size: 15px;\"><b>Kütahya Dumlupınar Üniversitesi Rektörü Prof. Dr. Kâzım Uysal ve Dumlupınar Tasarım Teknokent Genel Müdürü Prof. Dr. Ersan Öz, teknokent gündemiyle Zafer Kalkınma Ajansı, KOSGEB Kütahya Müdürlüğü ve Kütahya İl Özel İdaresine bir dizi ziyaret gerçekleştirdi.</b></p><p style=\"margin-bottom: 20px; color: rgb(85, 85, 85); font-family: roboto, sans-serif; font-size: 15px;\">Dumlupınar Tasarım Teknokent’e Kütahya’nın kamu kuruluşlarının desteği giderek artıyor.</p><p style=\"margin-bottom: 20px; color: rgb(85, 85, 85); font-family: roboto, sans-serif; font-size: 15px;\">Teknokent gündemiyle bir dizi ziyaret gerçekleştiren DPÜ Rektörü Prof. Dr. Kazım Uysal,&nbsp; Dumlupınar Tasarım Teknokent Genel Müdürü Prof. Dr. Ersan Öz eşlik etti. Prof. Dr. Kâzım Uysal ve Prof. Dr. Ersan Öz, ilk olarak Zafer Kalkınma Ajansına (ZAFER) ziyarette bulundu ve burada ZAFER Genel Sekreteri Veli Oğuz’la bir araya geldi.</p><p style=\"margin-bottom: 20px; color: rgb(85, 85, 85); font-family: roboto, sans-serif; font-size: 15px;\">Görüşmede teknokentin Kütahya için büyük kazanç olduğunu, teknoloji üretiminde bölgeye ve ülkeye hizmet ettiğini ifade eden Veli Oğuz, ziyaretten duyduğu memnuniyeti dile getirdi.</p><p style=\"margin-bottom: 20px; color: rgb(85, 85, 85); font-family: roboto, sans-serif; font-size: 15px;\">ZAFER’in ardından Küçük ve Orta Ölçekli İşletmeleri Geliştirme ve Destekleme İdaresi Başkanlığının (KOSGEB) Kütahya Müdürü Yaşar Yıldırım’la bir araya gelen heyetimiz, burada KOSGEB’in teknokente desteğini masaya yatırdı. Görüşmede teknokent firmaları ile çok yakın çalıştıklarını, birçok Ar-Ge projesine destek vererek teknoloji üretimine ve bilgi ekonomisine hep beraber katkı sunacaklarını ifade eden Yaşar Yıldırım, Rektör Uysal ve Müdür Öz’e ziyaretlerinden dolayı teşekkür etti.</p><p style=\"margin-bottom: 20px; color: rgb(85, 85, 85); font-family: roboto, sans-serif; font-size: 15px;\">Son olarak Kütahya İl Özel İdaresi Genel Sekreteri Murat Oymak’ı makamında ziyaret eden Rektörümüz ve Müdürümüz burada Oymak’la Kütahya İl Özel İdaresinin de ortağı olduğu Dumlupınar Tasarım Teknokent’i görüştü. Görüşmede Koyak, şehrin ve mücavir alan sınırları içerisindeki birçok altyapı çalışmasını tamamladıklarını söyledi ve her projede maddi ve fiziki olarak teknokentin yanında olacaklarının sözünü verdi.</p><p style=\"margin-bottom: 20px; color: rgb(85, 85, 85); font-family: roboto, sans-serif; font-size: 15px;\">Üç kurumun temsilcilerinden de Dumlupınar Tasarım Teknokent ile ilgili açık destek alan Uysal ve Öz, teknokente gösterilen ilgiden memnuniyet duyduklarını ifade ettiler ve Teknokent gündemli ziyaretlerin önümüzdeki günlerde de süreceğini belirttiler.</p><p style=\"margin-bottom: 20px; color: rgb(85, 85, 85); font-family: roboto, sans-serif; font-size: 15px;\">Kaynak :&nbsp;<a href=\"https://www.kutahyapostasigazetesi.com.tr/teknokente-destek/\">https://www.kutahyapostasigazetesi.com.tr/teknokente-destek/</a></p>', 'image', '7.jpeg', '#', NULL, 0, 1, '2020-09-13 22:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `page` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `finishedAt` datetime DEFAULT NULL,
  `client` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `place` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `portfolio_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `url`, `title`, `description`, `finishedAt`, `client`, `category_id`, `place`, `portfolio_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(13, 'rus-salatasi', 'Rus Salatası', '<p>Küp şeklinde doğranmış patates, havuç ve salatalık turşusunun, bezelye ve mayonezle muhteşem uyumunda buluştuğu o eşsiz lezzeti bir de bizden deneyin.</p>', '2020-11-22 00:00:00', '', 1, '', '', NULL, 2, 1, '2020-11-22 20:16:10'),
(14, 'acuka', 'Acuka', 'Yöresel lezzetlerimizden, kahvaltı sofralarının vazgeçilmezi, içerisindeki iştah açan baharatları Acuka\'yı lezzetli kılan özelliklerinden olsa gerek. Bir de bizden denemelisiniz.', '2020-11-23 00:00:00', '', 3, '', '', NULL, 9, 1, '2020-11-23 09:40:59'),
(15, 'yogurtlu-koz-patlican', 'Yoğurtlu Köz Patlıcan', '<p>Vakit harcamayın, boşa zahmete girmeyin diye organik patlıcanları özenle közleyip, yoğurtla birleştirerek paketin içerisine sığdırdık.</p>', '2020-11-23 00:00:00', '', 1, '', '', NULL, 7, 1, '2020-11-23 09:43:11'),
(16, 'yaprak-sarma', 'Yaprak Sarma', '<p>Türk mutfağımızın asırlık lezzetlerinden olan, hazırlanışı bir hayli zahmetli Yaprak Sarma\'yı özenle seçtiğimiz yapraklarla anne eli değmiş gibi üretiyoruz.</p>', '2020-11-23 00:00:00', '', 1, '', '', NULL, 1, 1, '2020-11-23 09:43:43'),
(17, 'dortlu-meze', 'Dörtlü Meze', '<p>Bir kap, dört tat... En sevilen mezeleri tek ambalaj içerisinde ürettik.</p>', '2020-11-23 00:00:00', '', 1, '', '', NULL, 8, 1, '2020-11-23 09:44:59'),
(18, 'etsiz-cigkofte', 'Etsiz Çiğköfte', '<p>Son dönemlerin en popüler atıştırmalıklarından biri olan Etsiz Çiğköfte\'yi sizler için kullandığımız özel malzemelerle el değmeden üretiyoruz.</p>', '2020-11-23 00:00:00', '', 1, '', '', NULL, 0, 1, '2020-11-23 09:46:53'),
(19, 'saksuka', 'Şakşuka', '<p>Patlıcan severlerin vazgeçemediği, olmazsa olmazı Şakşuka... Dilerseniz mezelik, dilerseniz karın doyurmak için bir aperatif olan Şakşuka\'yı özenle kızarttığımız organik sebzelerden üretiyoruz.</p>', '2020-11-23 00:00:00', '', 1, '', '', NULL, 6, 1, '2020-11-23 09:47:31'),
(20, 'haydari', 'Haydari', '<p>Yoğurtlu mezelerin başında gelen Haydari\'nin ferahlatıcı ve iştah açıcı etkisini de unutmamak gerek. En doğal malzemelerden üretiyoruz.</p>', '2020-11-23 00:00:00', '', 1, '', '', NULL, 3, 1, '2020-11-23 09:48:12'),
(21, 'havuclu-tarator', 'Havuçlu Tarator', '<p>Havuç severlerin favorisi... Sizler için rendeledik, süzme yoğurt ve sarımsak ile birleştirerek enfes bir lezzet ürettik.</p>', '2020-11-23 00:00:00', '', 1, '', '', NULL, 5, 1, '2020-11-23 09:48:56'),
(23, 'acili-ezme', 'Acılı Ezme', '<p>Adından da anlaşılacağı gibi başrolde acının olduğu, organik domates, salça ve çeşitli baharatların karışımından ürettiğimiz Acılı Ezme ile tüketicilerimize acıyı en sevilir hale getirdik.</p>', '2020-11-23 00:00:00', '', 1, '', '', NULL, 4, 1, '2020-11-23 09:51:00'),
(24, 'cemen', 'Çemen', '<p>Enfes kokusuyla ön plana çıkan, özellikle kış mevsimi kahvaltı sofralarının vazgeçilmezi Çemen\'e dair tüm bildiklerinizi unutun. Özellikle kıvamıyla fark yarattığımıza eminiz.</p>', '2020-11-23 00:00:00', '', 3, '', '', NULL, 11, 1, '2020-11-23 13:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_categories`
--

CREATE TABLE `portfolio_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `title`, `isActive`, `createdAt`) VALUES
(1, 'Mezeler', 1, '2020-08-14 11:53:48'),
(3, 'Kahvaltılık Soslar', 1, '2020-08-14 12:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `portfolio_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(11) DEFAULT NULL,
  `isCover` tinyint(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(18, 2, 'project-short22.jpg', 0, 1, 1, '2020-08-19 15:23:57'),
(20, 4, 'project-short23.jpg', 0, 1, 0, '2020-08-19 15:24:02'),
(21, 4, 'project-short15.jpg', 0, 1, 0, '2020-08-19 15:24:02'),
(22, 4, 'project-short6.jpg', 0, 1, 0, '2020-08-19 15:24:02'),
(23, 1, 'project-short24.jpg', 0, 1, 0, '2020-08-19 15:24:06'),
(24, 1, 'project-short16.jpg', 0, 1, 0, '2020-08-19 15:24:06'),
(25, 1, 'project-short7.jpg', 0, 1, 0, '2020-08-19 15:24:06'),
(41, 5, 'project-short22.jpg', 0, 1, 1, '2020-08-25 16:23:44'),
(42, 5, 'project-short-22.jpg', 0, 1, 0, '2020-08-25 16:23:46'),
(43, 5, 'project-short23.jpg', 0, 1, 0, '2020-08-25 16:23:47'),
(44, 5, 'project-short-23.jpg', 0, 1, 0, '2020-08-25 16:23:49'),
(45, 5, 'project-short24.jpg', 0, 1, 0, '2020-08-25 16:23:50'),
(46, 5, 'project-short-31.jpg', 0, 1, 0, '2020-08-25 16:23:52'),
(50, 8, 'antimiceldezenfektani.png', 0, 1, 0, '2020-11-19 06:43:53'),
(51, 8, 'antimiceldezenfektani1920x.png', 0, 1, 0, '2020-11-19 06:43:57'),
(52, 8, 'antimiceldezenfektani1920xr.png', 0, 1, 0, '2020-11-19 06:44:02'),
(53, 8, 'officedisinfection.png', 0, 1, 0, '2020-11-19 06:44:12'),
(54, 8, 'officedisinfection1920x1080.png', 0, 1, 0, '2020-11-19 06:44:17'),
(55, 9, 'antimiceldezenfektani1920x.png', 0, 1, 0, '2020-11-19 06:47:05'),
(56, 9, 'antimiceldezenfektani.png', 0, 1, 0, '2020-11-19 06:47:14'),
(57, 9, 'antimiceldezenfektani1920xr.png', 0, 1, 0, '2020-11-19 06:47:19'),
(58, 9, 'officedisinfection.png', 0, 1, 0, '2020-11-19 06:47:29'),
(59, 9, 'officedisinfection1920x1080.png', 0, 1, 0, '2020-11-19 06:47:34'),
(60, 10, 'antimiceldezenfektani.png', 0, 1, 0, '2020-11-19 08:58:34'),
(61, 10, 'antimiceldezenfektani1920x.png', 0, 1, 0, '2020-11-19 08:58:38'),
(62, 10, 'antimiceldezenfektani1920xr.png', 0, 1, 0, '2020-11-19 08:58:43'),
(63, 10, 'officedisinfection.png', 0, 1, 0, '2020-11-19 08:58:53'),
(64, 10, 'officedisinfection1920x1080.png', 0, 1, 0, '2020-11-19 08:58:59'),
(65, 3, 'gorsel-v15.jpg', 0, 1, 0, '2020-11-22 11:44:44'),
(66, 7, 'img-20201120-wa0001.jpg', 0, 1, 0, '2020-11-22 11:47:33'),
(71, 12, 'img-20201120-wa0012.jpg', 0, 0, 0, '2020-11-22 20:12:38'),
(75, 14, 'img-20201120-wa0001.jpg', 0, 0, 0, '2020-11-23 09:41:10'),
(76, 15, 'img-20201120-wa0002.jpg', 0, 0, 0, '2020-11-23 09:43:22'),
(77, 16, 'img-20201120-wa0004.jpg', 0, 0, 0, '2020-11-23 09:43:52'),
(80, 18, 'img-20201120-wa0007.jpg', 0, 0, 0, '2020-11-23 09:47:02'),
(81, 19, 'img-20201120-wa0008.jpg', 0, 0, 0, '2020-11-23 09:47:41'),
(82, 20, 'img-20201120-wa0010.jpg', 0, 0, 0, '2020-11-23 09:48:24'),
(83, 21, 'img-20201120-wa0011.jpg', 0, 0, 0, '2020-11-23 09:49:06'),
(84, 22, 'img-20201120-wa0014.jpg', 0, 0, 0, '2020-11-23 09:50:16'),
(85, 23, 'img-20201120-wa0015.jpg', 0, 0, 0, '2020-11-23 09:51:14'),
(86, 24, 'img-20201120-wa0013.jpg', 0, 0, 0, '2020-11-23 13:52:19'),
(87, 13, 'img-20201120-wa0009.jpg', 1, 0, 0, '2020-11-23 14:15:40'),
(93, 16, '1-12-yaprak-sarma-v1.jpg', 0, 1, 1, '2020-11-24 08:01:19'),
(95, 20, '1-8-haydari-v1.jpg', 0, 1, 1, '2020-11-24 08:02:41'),
(96, 23, '1-1-aci-ezme-v1-kopya.jpg', 0, 1, 1, '2020-11-24 08:03:35'),
(97, 21, '1-7-havuc-tarator-v1.jpg', 0, 1, 1, '2020-11-24 08:04:41'),
(98, 19, '1-11-saksuka-v1.jpg', 0, 1, 1, '2020-11-24 08:05:16'),
(99, 15, '1-13-yogurtlu-koz-patlican-v1.jpg', 0, 1, 1, '2020-11-24 08:06:05'),
(100, 17, 'img-20201120-wa0006.jpg', 0, 0, 0, '2020-11-24 08:07:43'),
(101, 17, 'img-20201120-wa0005.jpg', 0, 0, 0, '2020-11-24 08:08:00'),
(103, 14, '1-2-acuka-200-v1.jpg', 0, 1, 1, '2020-11-24 08:11:08'),
(104, 22, '1-3-acuka-350-v1.jpg', 0, 1, 1, '2020-11-24 08:11:51'),
(105, 24, '1-4-cemen-200-v1.jpg', 0, 1, 1, '2020-11-24 08:13:45'),
(106, 12, '1-5-cemen-350-v1.jpg', 0, 1, 1, '2020-11-24 08:14:17'),
(107, 17, '1-9-karisik-4-v1.jpg', 0, 1, 1, '2020-11-24 08:14:47'),
(110, 13, '1-10-rus-salat-v1.jpg', 0, 1, 1, '2020-11-24 14:58:07'),
(111, 18, '1-6-etsiz-cig-kofte-v1.jpg', 0, 1, 1, '2020-11-24 15:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `url`, `title`, `description`, `rank`, `isActive`, `createdAt`) VALUES
(14, 'deneme', 'Deneme', '                                                                                                                <h1 style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \">ANTİMİC</h1><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sagittis sapien et diam fringilla, blandit faucibus nisi posuere. Ut efficitur tempus mollis. Nunc nec tempor tellus. Etiam sit amet fermentum elit. Praesent facilisis enim eu nisi euismod pulvinar. Morbi et lorem in dolor laoreet vulputate. Proin vitae dolor eros. Aliquam vitae lacus posuere, hendrerit urna eu, convallis odio. Nullam ut turpis fringilla nibh convallis tempor aliquet quis est. Aliquam erat volutpat. Suspendisse potenti. Proin bibendum, lacus at commodo elementum, urna leo dignissim lorem, non tincidunt nisi tortor vel lectus. Nullam nec tempor metus. Praesent ut scelerisque ipsum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Quisque sit amet suscipit sem, at vehicula nulla. Fusce efficitur nunc nec mattis finibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc vehicula efficitur massa vitae pretium. Morbi porta ornare posuere. Pellentesque lacinia urna nulla, nec euismod quam laoreet sit amet. Praesent mi ligula, dignissim et nibh sit amet, euismod porta elit. Donec non vestibulum felis. In non eros nulla. Curabitur cursus lacinia purus, ut congue lorem aliquet ac. Pellentesque euismod pretium enim, non pulvinar ipsum varius ut. Vivamus pellentesque risus nec nisi aliquet laoreet. Duis eu placerat orci.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Nunc sed faucibus ante. Ut aliquam lorem eget massa pulvinar, et rhoncus dui fringilla. Ut a elementum tortor. Etiam sollicitudin vestibulum dictum. Nam a porttitor lacus. Sed sagittis nibh lacus, ut fermentum arcu lobortis eget. Aliquam aliquam turpis et lorem volutpat malesuada. Mauris turpis eros, consectetur non vehicula id, congue at mauris. Aliquam in mattis purus. Donec in metus vitae diam gravida iaculis. Donec ut orci vitae orci blandit scelerisque in quis neque. Sed ligula orci, posuere sed iaculis id, ultrices ut orci. Aliquam pretium tempor dui ac euismod. Nam scelerisque sed ex vel lobortis.</p>                                                                                                ', 2, 1, '2020-11-16 22:34:23'),
(15, 'deneme-2', 'Deneme 2', '                                                                                    <p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sagittis sapien et diam fringilla, blandit faucibus nisi posuere. Ut efficitur tempus mollis. Nunc nec tempor tellus. Etiam sit amet fermentum elit. Praesent facilisis enim eu nisi euismod pulvinar. Morbi et lorem in dolor laoreet vulputate. Proin vitae dolor eros. Aliquam vitae lacus posuere, hendrerit urna eu, convallis odio. Nullam ut turpis fringilla nibh convallis tempor aliquet quis est. Aliquam erat volutpat. Suspendisse potenti. Proin bibendum, lacus at commodo elementum, urna leo dignissim lorem, non tincidunt nisi tortor vel lectus. Nullam nec tempor metus. Praesent ut scelerisque ipsum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Quisque sit amet suscipit sem, at vehicula nulla. Fusce efficitur nunc nec mattis finibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc vehicula efficitur massa vitae pretium. Morbi porta ornare posuere. Pellentesque lacinia urna nulla, nec euismod quam laoreet sit amet. Praesent mi ligula, dignissim et nibh sit amet, euismod porta elit. Donec non vestibulum felis. In non eros nulla. Curabitur cursus lacinia purus, ut congue lorem aliquet ac. Pellentesque euismod pretium enim, non pulvinar ipsum varius ut. Vivamus pellentesque risus nec nisi aliquet laoreet. Duis eu placerat orci.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Nunc sed faucibus ante. Ut aliquam lorem eget massa pulvinar, et rhoncus dui fringilla. Ut a elementum tortor. Etiam sollicitudin vestibulum dictum. Nam a porttitor lacus. Sed sagittis nibh lacus, ut fermentum arcu lobortis eget. Aliquam aliquam turpis et lorem volutpat malesuada. Mauris turpis eros, consectetur non vehicula id, congue at mauris. Aliquam in mattis purus. Donec in metus vitae diam gravida iaculis. Donec ut orci vitae orci blandit scelerisque in quis neque. Sed ligula orci, posuere sed iaculis id, ultrices ut orci. Aliquam pretium tempor dui ac euismod. Nam scelerisque sed ex vel lobortis.</p>                                                                        ', 0, 1, '2020-11-16 22:34:23'),
(16, 'deneme-3', 'Deneme 3', '                                                                                    <p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sagittis sapien et diam fringilla, blandit faucibus nisi posuere. Ut efficitur tempus mollis. Nunc nec tempor tellus. Etiam sit amet fermentum elit. Praesent facilisis enim eu nisi euismod pulvinar. Morbi et lorem in dolor laoreet vulputate. Proin vitae dolor eros. Aliquam vitae lacus posuere, hendrerit urna eu, convallis odio. Nullam ut turpis fringilla nibh convallis tempor aliquet quis est. Aliquam erat volutpat. Suspendisse potenti. Proin bibendum, lacus at commodo elementum, urna leo dignissim lorem, non tincidunt nisi tortor vel lectus. Nullam nec tempor metus. Praesent ut scelerisque ipsum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Quisque sit amet suscipit sem, at vehicula nulla. Fusce efficitur nunc nec mattis finibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc vehicula efficitur massa vitae pretium. Morbi porta ornare posuere. Pellentesque lacinia urna nulla, nec euismod quam laoreet sit amet. Praesent mi ligula, dignissim et nibh sit amet, euismod porta elit. Donec non vestibulum felis. In non eros nulla. Curabitur cursus lacinia purus, ut congue lorem aliquet ac. Pellentesque euismod pretium enim, non pulvinar ipsum varius ut. Vivamus pellentesque risus nec nisi aliquet laoreet. Duis eu placerat orci.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Nunc sed faucibus ante. Ut aliquam lorem eget massa pulvinar, et rhoncus dui fringilla. Ut a elementum tortor. Etiam sollicitudin vestibulum dictum. Nam a porttitor lacus. Sed sagittis nibh lacus, ut fermentum arcu lobortis eget. Aliquam aliquam turpis et lorem volutpat malesuada. Mauris turpis eros, consectetur non vehicula id, congue at mauris. Aliquam in mattis purus. Donec in metus vitae diam gravida iaculis. Donec ut orci vitae orci blandit scelerisque in quis neque. Sed ligula orci, posuere sed iaculis id, ultrices ut orci. Aliquam pretium tempor dui ac euismod. Nam scelerisque sed ex vel lobortis.</p>                                                                        ', 1, 1, '2020-11-16 22:34:23'),
(17, 'deneme-4', 'Deneme 4', '                                                                                    <p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sagittis sapien et diam fringilla, blandit faucibus nisi posuere. Ut efficitur tempus mollis. Nunc nec tempor tellus. Etiam sit amet fermentum elit. Praesent facilisis enim eu nisi euismod pulvinar. Morbi et lorem in dolor laoreet vulputate. Proin vitae dolor eros. Aliquam vitae lacus posuere, hendrerit urna eu, convallis odio. Nullam ut turpis fringilla nibh convallis tempor aliquet quis est. Aliquam erat volutpat. Suspendisse potenti. Proin bibendum, lacus at commodo elementum, urna leo dignissim lorem, non tincidunt nisi tortor vel lectus. Nullam nec tempor metus. Praesent ut scelerisque ipsum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Quisque sit amet suscipit sem, at vehicula nulla. Fusce efficitur nunc nec mattis finibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc vehicula efficitur massa vitae pretium. Morbi porta ornare posuere. Pellentesque lacinia urna nulla, nec euismod quam laoreet sit amet. Praesent mi ligula, dignissim et nibh sit amet, euismod porta elit. Donec non vestibulum felis. In non eros nulla. Curabitur cursus lacinia purus, ut congue lorem aliquet ac. Pellentesque euismod pretium enim, non pulvinar ipsum varius ut. Vivamus pellentesque risus nec nisi aliquet laoreet. Duis eu placerat orci.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Nunc sed faucibus ante. Ut aliquam lorem eget massa pulvinar, et rhoncus dui fringilla. Ut a elementum tortor. Etiam sollicitudin vestibulum dictum. Nam a porttitor lacus. Sed sagittis nibh lacus, ut fermentum arcu lobortis eget. Aliquam aliquam turpis et lorem volutpat malesuada. Mauris turpis eros, consectetur non vehicula id, congue at mauris. Aliquam in mattis purus. Donec in metus vitae diam gravida iaculis. Donec ut orci vitae orci blandit scelerisque in quis neque. Sed ligula orci, posuere sed iaculis id, ultrices ut orci. Aliquam pretium tempor dui ac euismod. Nam scelerisque sed ex vel lobortis.</p>                                                                        ', 3, 1, '2020-11-16 22:34:23'),
(18, 'deneme-5', 'Deneme 5', '                                                                                    <p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sagittis sapien et diam fringilla, blandit faucibus nisi posuere. Ut efficitur tempus mollis. Nunc nec tempor tellus. Etiam sit amet fermentum elit. Praesent facilisis enim eu nisi euismod pulvinar. Morbi et lorem in dolor laoreet vulputate. Proin vitae dolor eros. Aliquam vitae lacus posuere, hendrerit urna eu, convallis odio. Nullam ut turpis fringilla nibh convallis tempor aliquet quis est. Aliquam erat volutpat. Suspendisse potenti. Proin bibendum, lacus at commodo elementum, urna leo dignissim lorem, non tincidunt nisi tortor vel lectus. Nullam nec tempor metus. Praesent ut scelerisque ipsum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Quisque sit amet suscipit sem, at vehicula nulla. Fusce efficitur nunc nec mattis finibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc vehicula efficitur massa vitae pretium. Morbi porta ornare posuere. Pellentesque lacinia urna nulla, nec euismod quam laoreet sit amet. Praesent mi ligula, dignissim et nibh sit amet, euismod porta elit. Donec non vestibulum felis. In non eros nulla. Curabitur cursus lacinia purus, ut congue lorem aliquet ac. Pellentesque euismod pretium enim, non pulvinar ipsum varius ut. Vivamus pellentesque risus nec nisi aliquet laoreet. Duis eu placerat orci.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Nunc sed faucibus ante. Ut aliquam lorem eget massa pulvinar, et rhoncus dui fringilla. Ut a elementum tortor. Etiam sollicitudin vestibulum dictum. Nam a porttitor lacus. Sed sagittis nibh lacus, ut fermentum arcu lobortis eget. Aliquam aliquam turpis et lorem volutpat malesuada. Mauris turpis eros, consectetur non vehicula id, congue at mauris. Aliquam in mattis purus. Donec in metus vitae diam gravida iaculis. Donec ut orci vitae orci blandit scelerisque in quis neque. Sed ligula orci, posuere sed iaculis id, ultrices ut orci. Aliquam pretium tempor dui ac euismod. Nam scelerisque sed ex vel lobortis.</p>                                                                        ', 4, 1, '2020-11-16 22:34:23'),
(19, 'deneme-6', 'Deneme 6', '                                                                                    <p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sagittis sapien et diam fringilla, blandit faucibus nisi posuere. Ut efficitur tempus mollis. Nunc nec tempor tellus. Etiam sit amet fermentum elit. Praesent facilisis enim eu nisi euismod pulvinar. Morbi et lorem in dolor laoreet vulputate. Proin vitae dolor eros. Aliquam vitae lacus posuere, hendrerit urna eu, convallis odio. Nullam ut turpis fringilla nibh convallis tempor aliquet quis est. Aliquam erat volutpat. Suspendisse potenti. Proin bibendum, lacus at commodo elementum, urna leo dignissim lorem, non tincidunt nisi tortor vel lectus. Nullam nec tempor metus. Praesent ut scelerisque ipsum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Quisque sit amet suscipit sem, at vehicula nulla. Fusce efficitur nunc nec mattis finibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc vehicula efficitur massa vitae pretium. Morbi porta ornare posuere. Pellentesque lacinia urna nulla, nec euismod quam laoreet sit amet. Praesent mi ligula, dignissim et nibh sit amet, euismod porta elit. Donec non vestibulum felis. In non eros nulla. Curabitur cursus lacinia purus, ut congue lorem aliquet ac. Pellentesque euismod pretium enim, non pulvinar ipsum varius ut. Vivamus pellentesque risus nec nisi aliquet laoreet. Duis eu placerat orci.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">Nunc sed faucibus ante. Ut aliquam lorem eget massa pulvinar, et rhoncus dui fringilla. Ut a elementum tortor. Etiam sollicitudin vestibulum dictum. Nam a porttitor lacus. Sed sagittis nibh lacus, ut fermentum arcu lobortis eget. Aliquam aliquam turpis et lorem volutpat malesuada. Mauris turpis eros, consectetur non vehicula id, congue at mauris. Aliquam in mattis purus. Donec in metus vitae diam gravida iaculis. Donec ut orci vitae orci blandit scelerisque in quis neque. Sed ligula orci, posuere sed iaculis id, ultrices ut orci. Aliquam pretium tempor dui ac euismod. Nam scelerisque sed ex vel lobortis.</p>                                                                        ', 5, 1, '2020-11-16 22:34:23'),
(20, 'deneme-1', 'Deneme 1', '                                                        <p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sagittis sapien et diam fringilla, blandit faucibus nisi posuere. Ut efficitur tempus mollis. Nunc nec tempor tellus. Etiam sit amet fermentum elit. Praesent facilisis enim eu nisi euismod pulvinar. Morbi et lorem in dolor laoreet vulputate. Proin vitae dolor eros. Aliquam vitae lacus posuere, hendrerit urna eu, convallis odio. Nullam ut turpis fringilla nibh convallis tempor aliquet quis est. Aliquam erat volutpat. Suspendisse potenti. Proin bibendum, lacus at commodo elementum, urna leo dignissim lorem, non tincidunt nisi tortor vel lectus. Nullam nec tempor metus. Praesent ut scelerisque ipsum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Quisque sit amet suscipit sem, at vehicula nulla. Fusce efficitur nunc nec mattis finibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc vehicula efficitur massa vitae pretium. Morbi porta ornare posuere. Pellentesque lacinia urna nulla, nec euismod quam laoreet sit amet. Praesent mi ligula, dignissim et nibh sit amet, euismod porta elit. Donec non vestibulum felis. In non eros nulla. Curabitur cursus lacinia purus, ut congue lorem aliquet ac. Pellentesque euismod pretium enim, non pulvinar ipsum varius ut. Vivamus pellentesque risus nec nisi aliquet laoreet. Duis eu placerat orci.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nunc sed faucibus ante. Ut aliquam lorem eget massa pulvinar, et rhoncus dui fringilla. Ut a elementum tortor. Etiam sollicitudin vestibulum dictum. Nam a porttitor lacus. Sed sagittis nibh lacus, ut fermentum arcu lobortis eget. Aliquam aliquam turpis et lorem volutpat malesuada. Mauris turpis eros, consectetur non vehicula id, congue at mauris. Aliquam in mattis purus. Donec in metus vitae diam gravida iaculis. Donec ut orci vitae orci blandit scelerisque in quis neque. Sed ligula orci, posuere sed iaculis id, ultrices ut orci. Aliquam pretium tempor dui ac euismod. Nam scelerisque sed ex vel lobortis.</p>                                                ', 6, 0, '2020-11-16 22:34:23'),
(21, 'deneme-1', 'Deneme 1', '                                                        <p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sagittis sapien et diam fringilla, blandit faucibus nisi posuere. Ut efficitur tempus mollis. Nunc nec tempor tellus. Etiam sit amet fermentum elit. Praesent facilisis enim eu nisi euismod pulvinar. Morbi et lorem in dolor laoreet vulputate. Proin vitae dolor eros. Aliquam vitae lacus posuere, hendrerit urna eu, convallis odio. Nullam ut turpis fringilla nibh convallis tempor aliquet quis est. Aliquam erat volutpat. Suspendisse potenti. Proin bibendum, lacus at commodo elementum, urna leo dignissim lorem, non tincidunt nisi tortor vel lectus. Nullam nec tempor metus. Praesent ut scelerisque ipsum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Quisque sit amet suscipit sem, at vehicula nulla. Fusce efficitur nunc nec mattis finibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc vehicula efficitur massa vitae pretium. Morbi porta ornare posuere. Pellentesque lacinia urna nulla, nec euismod quam laoreet sit amet. Praesent mi ligula, dignissim et nibh sit amet, euismod porta elit. Donec non vestibulum felis. In non eros nulla. Curabitur cursus lacinia purus, ut congue lorem aliquet ac. Pellentesque euismod pretium enim, non pulvinar ipsum varius ut. Vivamus pellentesque risus nec nisi aliquet laoreet. Duis eu placerat orci.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nunc sed faucibus ante. Ut aliquam lorem eget massa pulvinar, et rhoncus dui fringilla. Ut a elementum tortor. Etiam sollicitudin vestibulum dictum. Nam a porttitor lacus. Sed sagittis nibh lacus, ut fermentum arcu lobortis eget. Aliquam aliquam turpis et lorem volutpat malesuada. Mauris turpis eros, consectetur non vehicula id, congue at mauris. Aliquam in mattis purus. Donec in metus vitae diam gravida iaculis. Donec ut orci vitae orci blandit scelerisque in quis neque. Sed ligula orci, posuere sed iaculis id, ultrices ut orci. Aliquam pretium tempor dui ac euismod. Nam scelerisque sed ex vel lobortis.</p>                                                ', 7, 0, '2020-11-16 22:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(11) DEFAULT NULL,
  `isCover` tinyint(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(73, 16, 'bah-jpg-6401.jpg', 0, 1, 0, '2020-11-17 00:47:26'),
(74, 17, 'bah-jpg-6401.jpg', 0, 1, 0, '2020-11-17 00:47:35'),
(75, 18, 'bah-jpg-6401.jpg', 0, 1, 1, '2020-11-17 00:47:44'),
(76, 19, 'bah-jpg-6401.jpg', 0, 1, 1, '2020-11-17 00:47:53'),
(80, 14, 'bah-jpg-6401.jpg', 0, 1, 0, '2020-11-17 01:54:58'),
(81, 14, 'er-diagram.png', 0, 1, 0, '2020-11-17 01:55:07'),
(82, 14, '171012-better-stock-house-cleaner-ew-531p-524663bd13e994184485cf04bf4a26e0.jpg', 0, 1, 0, '2020-11-17 02:31:35'),
(83, 15, '171012-better-stock-house-cleaner-ew-531p-524663bd13e994184485cf04bf4a26e0.jpg', 0, 1, 1, '2020-11-17 02:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `url`, `title`, `description`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'bu-bir-deneme-referans-bilgisidir---2', 'bu bir deneme referans bilgisidir.. 2', '<p>asdasdasd bu refransimiza cok güveniyoruz.. 2</p>', 'videosinif-proje.png', 1, 1, '2017-12-27 00:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `url`, `title`, `description`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'asdad', 'asdad', '<p>asdasdas</p>', '117907006-242018330185643-819239255261906529-n.png', 0, 1, '2020-08-25 08:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `address` text COLLATE utf8_turkish_ci NOT NULL,
  `about_us` longtext COLLATE utf8_turkish_ci,
  `t_about` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mission` longtext COLLATE utf8_turkish_ci,
  `keywords` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
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
  `number1` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `number2` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `number3` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `number4` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `text1` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `text2` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `text3` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `text4` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `slogan`, `address`, `about_us`, `t_about`, `mission`, `keywords`, `description`, `vision`, `logo`, `phone_1`, `phone_2`, `fax_1`, `fax_2`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `number1`, `number2`, `number3`, `number4`, `text1`, `text2`, `text3`, `text4`, `createdAt`, `updatedAt`) VALUES
(2, 'Es Meze', 'Teknokent', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <div style=\"\">Gökmeydan Mahallesi Salkım Söğüt Sokak No:52</div><div style=\"\">Odunpazarı / ESKİŞEHİR</div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <div>2014 yılında Eskişehir\'de üretim hayatına başlayan Es Meze, bugün başta Eskişehir olmak üzere çevre illerde de hazır yiyecek sektöründe<b> paket ve dökme meze ve kahvaltılık sos </b>grubunda faaliyetini sürdürmektedir. Yıllar geçtikçe biriken tecrübesiyle, kaliteli, hijyenik ve sağlıklı ürünler üretmeye devam etmektedir. Es Meze markası; Kalite, hijyen, istikrar ve süreklilik parolasıyla çıktığı bu yolda emeğinin karşılığını Eskişehir ve çevre illerde yerel zincir marketler başta olmak üzere birçok noktada reyonlarda yerini alarak kanıtlamıştır. Es Meze markasında üretilen ürünler üretildiği andan, tüketicisine ulaştığı ana kadar soğuk zincir ilkesinden asla taviz vermeden tüketicisine sağlıklı bir şekilde ulaştırılmaktadır. Ürünlerimiz Gıda, Tarım ve Hayvancılık Bakanlığı izin belgeli olarak üretilmektedir. Ayrıca ürettiğimiz ürünlerde kullandığımız hammaddelerde de Gıda, Tarım ve Hayvancılık Bakanlığı izin belgelerine sahip ürünleri tercih etmekteyiz.</div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 'Hakkımızda', NULL, '       Eskişehir meze, es meze, meze firmaları, eskişehir kahvaltılık sos, toptan meze, paket meze, hazır meze, vakumlu meze, soğuk meze, meze firmaları, paket acuka, acuka firmaları', '                  Eskişehir soğuk meze ve kahvaltılık sos çeşitleri üretiyoruz. Eskişehir meze üretimi ve Eskişehir kahvaltılık sos üretiyoruz', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 'es-meze3.png', '0222 240 10 99', '', '', '', 'info@esmeze.com', 'https://www.facebook.com/esmeze', 'http://twitter.com/esmeze', 'http://instagram.com/esmeze', 'linedk.com/esmeze', 'Eskişehir Meze', '', '', '', '', '', '', '', '2020-08-12 16:18:32', '2020-12-30 17:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `allowButton` tinyint(4) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `button_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `button_caption` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `animation_type` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `animation_time` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `allowButton`, `img_url`, `button_url`, `button_caption`, `animation_type`, `animation_time`, `rank`, `isActive`, `createdAt`) VALUES
(20, 'Esmeze', 'Yaşam Hazır Yiyecek Üretim ve Pazarlama', 0, 'slider-1080-v01.jpg', 'Esmeze', 'Esmeze', NULL, NULL, 1, 1, '2020-11-22 10:34:19'),
(21, 'Esmeze', 'Yaşam Hazır Yiyecek Üretim ve Pazarlama', 0, 'slider-1080-v02.jpg', '#', '', NULL, NULL, 2, 1, '2020-11-22 10:50:51'),
(22, 'Esmeze', 'Yaşam Hazır Yiyecek Üretim ve Pazarlama', 0, 'slider-1080-v03.jpg', '#', '', NULL, NULL, 3, 1, '2020-11-22 10:51:01'),
(23, 'Esmeze', 'Yaşam Hazır Yiyecek Üretim ve Pazarlama', 0, 'slider-1080-v04.jpg', '#', '', NULL, NULL, 4, 1, '2020-11-22 10:51:10'),
(24, 'Esmeze', 'Yaşam Hazır Yiyecek Üretim ve Pazarlama', 0, 'slider-1080-v04.jpg', 've Pazarlama', 'Yaşam Hazır Yiyecek Üretim ve Pazarlama', NULL, NULL, 0, 1, '2020-11-22 11:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `sss`
--

CREATE TABLE `sss` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `description` mediumtext COLLATE utf8_turkish_ci NOT NULL,
  `rank` int(11) NOT NULL,
  `isActive` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `sss`
--

INSERT INTO `sss` (`id`, `title`, `subtitle`, `description`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'Başvuru', 'DUMLUPINAR TEKNOKENT\'e kimler başvurabilir?', '<span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">DUMLUPINAR TEKNOKENT’e başta öncelikli sektörler olmak üzere Ar-Ge ve yazılım projeleri geliştiren firmalar başvurabilir.</span><br><p></p>', 1, 1, '2020-08-14 11:53:48'),
(10, 'Başvuru Şartları', 'DUMLUPINAR TEKNOKENT\'e başvuru ne şekilde yapılmalıdır?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">DUMLUPINAR TEKNOKENT’i yöneten Dumlupınar Teknokent Yönetici A.Ş., Teknokentte yer almak isteyen firma ve girişimcilerin başvurularını almadan önce bir ön başvuru almak suretiyle firma veya girişimcilerin DUMLUPINAR TEKNOKENT’e gelme talebi ve projeleri hakkında bilgi alır ve ön değerlendirme yapar. Ön değerlendirme sonunda olumlu bulunan başvurular için DUMLUPINAR TEKNOKENT Başvuru Formu ve ekinde istenilen diğer bilgilerle birlikte DUMLUPINAR TEKNOKENT Yönetimine başvuru yapılır.</span><br></p>', 0, 1, '2020-08-26 22:43:36'),
(13, 'Başvuru Ücreti', 'DUMLUPINAR TEKNOKENT\'e başvurular ücretli midir?', '<span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">DUMLUPINAR TEKNOKENT için aday başvurularından proje başına 750.00 TL başvuru ücreti alınmaktadır. (Bu ücret her yıl başında veya gerekli görüldüğü takdirde Yönetim Kurulu kararı ile güncellenmektedir)</span>', 2, 1, '2020-08-29 15:31:01'),
(14, 'Değerlendirme ve Kabul', 'Başvuruların değerlendirilmesi ve kabulü ne şekilde yapılmaktadır?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Başvurular firma faaliyet alanında ve DUMLUPINAR TEKNOKENT içerisinde gerçekleştirilecek projelerde uzman üç kişilik hakem heyeti tarafından değerlendirilir. Hakemler değerlendirme süresinde başvuru sahibi firma ile gerekirse yüz yüze görüşme yapar ve gerekli görülürse mevcut ofislerini veya tesislerini ziyaret eder. Hakem görüşleri Dumlupınar Teknokent Yönetici A.Ş. Yönetim Kurulu onayına sunulur. Hakemlerin görüşü çerçevesinde firma Teknokent’e kabul edilebilir, koşullu kabul edilebilir ya da firmanın Teknokent başvurusu reddedilebilir. Firmaların Teknokent’e kabulünde projelerin Ar-Ge niteliği ve üniversite-sanayi işbirliği boyutu öncelikli tercih nedenidir.</span><br></p>', 3, 1, '2020-08-29 15:31:34'),
(15, 'Hakem Heyeti', 'Hakem heyeti kimlerden oluşmaktadır?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Hakem heyeti firmanın faaliyet alanında ve özellikle önerilen araştırma ve yazılım geliştirme projeleri konusunda uzman kişilerden oluşur. Hakem heyetinin atanmasında KDPÜ öğretim üyelerine öncelik verilir. Firmalara hakem heyeti üyeleri hakkında bilgi verilmez, firmalar heyeti ancak değerlendirme toplantısında veya değerlendirme sonunda öğrenirler.</span><br></p>', 4, 1, '2020-08-29 15:31:49'),
(16, 'Değerlendirme Süreci', 'Başvurular ne kadarlık bir sürede değerlendirilmektedir?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Başvuruların değerlendirilmesi formların tesliminden itibaren en fazla bir aylık bir süreçtir. Bu süre içinde tüm süreç tamamlanarak Dumlupınar Teknokent Yönetici A.Ş. Yönetim Kurulu kararı firmalara bildirilir.</span><br></p>', 5, 1, '2020-08-29 15:32:02'),
(17, 'Ofis Rezervasyonu', 'Ofis alanları için önceden rezervasyon yapılması söz konusu mudur?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Başvuru öncesinde ofis alanları için rezervasyon yapılması söz konusu değildir. Ancak değerlendirme ve kabul süreci tamamlanarak başvurusu kabul edilmiş olanlara yer tahsisi yapılır.</span><br></p>', 6, 1, '2020-08-29 15:33:09'),
(18, 'Ofis Tahsisi', 'Kabul edilen firmalar için yer tahsisi ne şekilde yapılmaktadır?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Firmalara yer tahsisi, projenin Ar-Ge niteliği, sağladığı katma değeri ve üniversite ile işbirliği boyutu gibi kriterlere göre yapılmaktadır. Bunun yanı sıra firmanın DUMLUPINAR TEKNOKENT’te gerçekleştireceği projelerin gerçekleştirilmesinde kullanılacak ekipman ve projenin yürütülebilmesi için gerekli koşullar da yer tahsisi sırasında önemlidir.</span><br></p>', 7, 1, '2020-08-29 15:33:25'),
(19, 'Ofis Özellikleri', 'Tahsis edilen ofislerin özellikleri nelerdir?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">DUMLUPINAR TEKNOKENT’e kabul edilen firmalara, tüm iletişim, internet ve elektrik altyapıları tamamlanmış faaliyet gösterilmesine hazır ofis alanları tahsis edilir. Firma arzu ettiği takdirde, gerekli izinlerin alınmasından sonra, ayrıldığında teslim aldığı şekilde teslim etmeyi taahhüt ederek ofis alanının kendi kullanımına göre iç tefrişatını yaptırabilir. Yapılacak değişikliklerin Dumlupınar Teknokent Yönetici Şirketi’ne proje olarak sunulması ve onay alınması gerekmektedir.</span><br></p>', 8, 1, '2020-08-29 15:33:45'),
(20, 'Ofis Maliyetleri', 'Tahsis edilen ofislerin maliyetleri ne kadardır?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">DUMLUPINAR TEKNOKENT Ar-Ge ofis alanı kira ücretleri 14.00 TL/m2’dir. İşletme giderleri bedeli aylık 5.50 TL/m2 civarındadır. Bu bedellere %18 KDV dahil değildir. Bu ücretler her yıl başında veya gerekli görüldüğü takdirde maliyetlerdeki değişikliklere göre Yönetim Kurulu kararı ile güncellenmektedir. Bölgede ofis alanı kiralayan firma ve girişimcilerin ayrıca ilave işletme giderlerine katılması gerekmektedir. İşletme giderleri ofis alanı iklimlendirmesi (bina koşullarına bağlı olarak), çevre düzenlemesi, ortak alan iklimlendirmesi ve temizliği, bina güvenliği, ortak alan elektrik ve su giderlerini kapsamaktadır. Ofis alanının elektrik ve –varsa- su tüketimi ile telefon ve data gibi diğer hizmetler ise işletme bedeline dahil değildir.</span><br></p>', 9, 1, '2020-08-29 15:34:07'),
(21, 'Ofis Alanı Tahsili', 'Başvuru sonuçlandıktan sonra hemen bir ofis alanı tahsis edilemezse ne yapılmalıdır?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Başvuru sonuçlandıktan sonra, firmanın talepleri doğrultusunda bir ofis alanı tahsisinin hemen yapılamadığı durumlarda, firmanın talebi yine DUMLUPINAR TEKNOKENT değerlendirme kriterlerine göre sıralamaya alınır, uygun bir ofis alanı seçeneği olması halinde ilgili firmaya yer tahsisi yapılır. Öncelik sırasında esas alınan kriterler önem sırasına göre projenin Ar-Ge niteliği, proje yürütülürken kullanılan üniversite-sanayi işbirliği, uluslararası işbirlikleri ve DUMLUPINAR TEKNOKENT firmalar arası işbirlikleridir.</span><br></p>', 10, 1, '2020-08-29 15:34:59'),
(22, 'Kira Sözleşmesi', 'Ne kadarlık bir süre ile kira sözleşmeleri yapılmaktadır?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Firmaların sözleşmeleri başvuru formlarında belirtilen projelerin sürelerine bağlı olarak 1 yıldan 3 yıla kadar yapılmaktadır.</span><br></p>', 11, 1, '2020-08-29 15:35:13'),
(23, 'Teknokent Avantajları', 'Teknoloji Geliştirme Bölgeleri Yasası kapsamında sağlanan avantajlar nelerdir?', '<ul><li style=\"margin-bottom: 20px; line-height: 26px;\" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><p style=\"margin-bottom: 20px; line-height: 26px;\">Bölgede faaliyet göstermesine izin verilen firmalara Teknoloji Geliştirme Bölgeleri Yasası kapsamında bazı vergi muafiyetleri ve avantajlar sağlanmaktadır.</p><p style=\"margin-bottom: 20px; line-height: 26px;\">(i) Bölgede çalışan Ar-Ge personeli, araştırmacı personel ve yazılım personelinin ücretleri 31.12.2023 tarihine kadar gelir vergisinden muaftır.</p><p style=\"margin-bottom: 20px; line-height: 26px;\">(ii) Münhasıran bölgede yürütülen Ar-Ge ve yazılım geliştirme faaliyetlerinden elde edilen gelirler, bölgede 31.12.2023 tarihine kadar kurumlar vergisinden (gerçek kişiler de gelir vergisinden) muaftır.</p><p style=\"margin-bottom: 20px; line-height: 26px;\">(iii) Bölgede faaliyette bulunan girişimcilerin kazançlarının gelir veya kurumlar vergisinden istisna bulunduğu süre içinde bu bölgelerde ürettikleri ve sistem yönetimi, veri yönetimi, iş uygulamaları, sektörel, internet, mobil ve askeri komuta kontrol uygulama yazılımı şeklindeki teslim ve hizmetleri de katma değer vergisinden muaftır.</p><p style=\"margin-bottom: 20px; line-height: 26px;\">(iv) Bölgede, temel bilimler alanlarından en az lisans derecesi sahibi Ar-Ge personeli istihdam eden firmalara, Yönetmeliğinin 35/A Maddesine göre ücret desteği sağlanır.</p></li></ul>', 12, 1, '2020-08-29 15:35:39'),
(24, 'Vergi Muafiyetleri', 'Vergi muafiyetleri ne şekilde denetlenmektedir?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Bölgede faaliyet gösteren firmaların vergi muafiyetlerine yönelik beyanlarının denetim sorumlusu Maliye Bakanlığı Gelirler Genel Müdürlüğü ve ilgili Vergi Dairesi’dir. Vergi denetimine ilişkin genel hususlar bölgedeki etkinlikler için de geçerlidir.</span><br></p>', 13, 1, '2020-08-29 15:36:01'),
(25, 'Çalışma Şartları', 'Firmaların KDPÜ ile işbirliği yapması, öğretim elemanları ya da öğrencilerle projelerde ortak çalışması zorunlu mudur?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Bölgenin kurulmasının asıl amacının araştırma ve teknoloji geliştirmeye yönelik projelerde üniversite sanayi işbirliğini güçlendirmek olması sebebiyle, firmalardan üniversite ile işbirliği yapmaları beklenmektedir</span><br></p>', 14, 1, '2020-08-29 15:36:22'),
(26, 'Laboratuvar ve Araştırma Merk.', 'Üniversite laboratuvar ve araştırma merkezlerinden ne şekilde yararlanılabilir?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">KDPÜ Laboratuvar ve/veya araştırma merkezlerinden yararlanmayı arzu eden firmaların ilgili bölüm başkanlığı ya da araştırma merkezi müdürlüğü ile irtibata geçmesi gerekmektedir. Süreçte firma tarafından talep edilmesi halinde DUMLUPINAR TEKNOKENT Yönetimi de yardımcı olmaktadır.</span><br></p>', 15, 1, '2020-08-29 15:36:57'),
(27, 'Akademik Çalışma Elemanları', 'Öğretim elemanlarıi ile beraber çalışmayı arzu eden firmalar ne yapmalıdırlar?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Üniversite öğretim elemanları ile projelerde işbirliği yapmayı arzu eden firmalar, ilgili bölüm başkanlığı ile irtibata geçerek kendi konularında çalışan öğretim elemanlarını belirlemelidirler. Öğretim elemanları ile DUMLUPINAR TEKNOKENT firmalarının projelerde ortak çalışması ancak üniversite yönetiminin onayının alınmasından sonra mümkün olmaktadır. Üniversitenin onayına sunulmak üzere üniversite personel görevlendirilmesi ile ilgili formların doldurulması ve firma ile öğretim elemanı arasında yapılmış sözleşmenin bir kopyasının da eklenerek üniversite yönetimine teslim edilmesi gerekmektedir. Üniversite onayının gerçekleşmesi sonrasında öğretim elemanının projede görevlendirilmesi konusunda DUMLUPINAR TEKNOKENT Yönetimi tarafından firmaya bilgi verilmektedir. Tüm bu süreç içerisinde Duml', 16, 1, '2020-08-29 15:37:26'),
(28, 'Firma Merkezi Taşıma Zorunluluğu', 'DUMLUPINAR TEKNOKENT\'te faaliyete başlamak için firma merkezini bölgeye taşımak gerekli midir?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Firma merkezinin bölgede olması zorunlu değildir. Ancak bölgedeki Ar-Ge ve yazılım ofisinin Türk Ticaret Kanunu’na göre “işyeri” niteliğinde olması gereklidir. Merkezleri Kütahya ili sınırlarında olmayan şirketlerin bu koşulu yerine getirmesi için bölge ofislerinin şube olması zorunluluğu vardır.</span><br></p>', 17, 1, '2020-08-29 15:37:51'),
(29, 'Faaliyete Başlamak İçin Ne Yapmalı', 'DUMLUPINAR TEKNOKENT\'e kabul sonrasında, faaliyete başlamak için yapılması gerekenler nelerdir?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">DUMLUPINAR TEKNOKENT’e kabul edilmiş firmalar, 4691 Sayılı Teknoloji Geliştirme Bölgeleri Yasası kapsamında faaliyet gösterebilmeleri için kendilerine tahsis edilen ofis alanına taşındıktan itibaren 10 gün içinde Bölge Çalışma İşyeri Sicil Kaydını, SSK İşyeri Sicil Kaydını, yoklama fişinin ve vergi dairesinin mükellefiyetinin tesciline ilişkin belgesinin kopyalarını, 4691 Sayılı Yasa kapsamında sağlanan muafiyetlerden yaralanan personelin bilgilerini (özgeçmişleri, görev tanımları, işe başlama tarihleri, 4691 sayılı yasa kapsamında muafiyetlerden toplam yaralanma süresi, SSK işe giriş bildirgeleri) ve 4691 Sayılı Yasa kapsamı dışında kalan personelin bilgilerini bilgileri (adı soyadı, işe başlama tarihi, işyerindeki görevi içeren bir yazı ve yazı ekinde o kişiye ait SSK işe giriş bildirgesi', 18, 1, '2020-08-29 15:38:20'),
(30, 'Firma Yükümlülükleri', 'DUMLUPINAR TEKNOKENT\'te faaliyet gösteren firmaların yükümlülükleri nelerdir?', '<p style=\"margin-bottom: 20px; color: rgb(119, 119, 119); line-height: 26px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">4691 Sayılı Yasa kapsamında sağlanan muafiyetlerden yararlandırılan yeni işe başlayan personelin bilgileri (özgeçmişleri, görev tanımları, işe başlama tarihleri, 4691 Sayılı Yasa kapsamında muafiyetlerden toplam yararlanma süresi, SSK işe giriş bildirgeleri) ve 4691 Sayılı Yasa kapsamı dışında kalan yeni işe başlayan personel bilgileri (adı soyadı, işe başlama tarihi, işyerindeki görevi içeren bir yazı ve yazı ekinde o kişiye ait SSK işe giriş bildirgesi) on gün içerisinde bildirilmelidir.</p><p style=\"margin-bottom: 20px; color: rgb(119, 119, 119); line-height: 26px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Yeni başlayan personel için giriş kartı düzenlenir. İşten çıkma/çıkarılma veya mevcut personel için görev tanımındaki değişiklik de dahi', 19, 1, '2020-08-29 15:38:37'),
(31, 'Personel Sosyal İmkanlar', 'DUMLUPINAR TEKNOKENT\'te çalışan personel için ne gibi sosyal imkanlar bulunmaktadır?', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">DUMLUPINAR TEKNOKENT çalışanları üniversitenin sunduğu pek çok sosyal imkandan yararlanabilmektedirler.</span><br></p>', 20, 1, '2020-08-29 15:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `category` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `url`, `title`, `description`, `category`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(4, 'prof--dr--ersan-oz', 'Prof. Dr. Ersan ÖZ', 'GENEL MÜDÜR', 'Genel Müdür', 'ersanoz.png', 0, 1, '2020-08-20 14:32:08'),
(5, 'dr--ismail-yosumaz', 'Dr. İsmail YOŞUMAZ', 'GENEL MÜDÜR YARDIMCISI', 'GENEL MÜDÜR YARDIMCISI', 'resim31.jpg', 1, 1, '2020-08-20 14:33:12'),
(6, 'fatih-emre', 'Fatih EMRE', 'İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI', 'İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI', 'e118faad-1067-4834-b334-46a3f575870a.jpg', 5, 1, '2020-08-20 14:39:34'),
(7, 'tulay-gules', 'Tülay GÜLEŞ', 'Özel Kalem', 'İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI', 'resim31.jpg', 2, 1, '2020-09-13 22:43:37'),
(8, 'idris-gules', 'İdris GÜLEŞ', 'Teknik ve İdari Personel', 'İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI', 'resim31.jpg', 3, 1, '2020-09-13 22:44:26'),
(9, 'sercan-ozgur', 'Sercan ÖZGÜR', 'Mali İşler', 'İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI', 'resim31.jpg', 4, 1, '2020-09-13 22:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `testmonial`
--

CREATE TABLE `testmonial` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(900) COLLATE utf8_turkish_ci NOT NULL,
  `rank` int(11) NOT NULL,
  `isActive` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `testmonial`
--

INSERT INTO `testmonial` (`id`, `title`, `description`, `rank`, `isActive`, `createdAt`) VALUES
(10, 'Faaliyete Başlamak İçin Ne Yapılmalı ?', '<p><span style=\"\" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><font color=\"#000000\">DUMLUPINAR TEKNOKENT’e kabul edilmiş firmalar, 4691 Sayılı Teknoloji Geliştirme Bölgeleri Yasası kapsamında faaliyet gösterebilmeleri için kendilerine tahsis edilen ofis alanına taşındıktan itibaren 10 gün içinde Bölge Çalışma İşyeri Sicil Kaydını, SSK İşyeri Sicil Kaydını, yoklama fişinin ve vergi dairesinin mükellefiyetinin tesciline ilişkin belgesinin kopyalarını, 4691 Sayılı Yasa kapsamında sağlanan muafiyetlerden yaralanan personelin bilgilerini (özgeçmişleri, görev tanımları, işe başlama tarihleri, 4691 sayılı yasa kapsamında muafiyetlerden toplam yaralanma süresi, SSK işe giriş bildirgeleri) ve 4691 Sayılı Yasa kapsamı dışında kalan personelin bilgilerini bilgileri (adı soyadı, işe başlama tarihi, işyerindeki görevi içeren bir yazı ve yazı ekinde o kişiye ait SSK işe giriş bildirgesi               ', 1, 1, '2020-08-26 22:43:36'),
(12, 'Hakem Heyeti', '<p><span style=\"\" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><font color=\"#ffffff\">Hakem heyeti firmanın faaliyet alanında ve özellikle önerilen araştırma ve yazılım geliştirme projeleri konusunda uzman kişilerden oluşur. Hakem heyetinin atanmasında KDPÜ öğretim üyelerine öncelik verilir. Firmalara hakem heyeti üyeleri hakkında bilgi verilmez, firmalar heyeti ancak değerlendirme toplantısında veya değerlendirme sonunda öğrenirler.</font></span><br></p>', 0, 1, '2020-08-26 22:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `tgb`
--

CREATE TABLE `tgb` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `tgb`
--

INSERT INTO `tgb` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(23, 'dumlupinar-teknoloji-gelistirme-bolgesi-yonetmeligi', 'Dumlupınar Teknoloji Geliştirme Bölgesi Yönetmeliği', '', 'image', '1-tgb-yonetmeligi.pdf', '#', NULL, 0, 1, '2020-08-29 15:05:53'),
(24, 'arastirma--gelistirme-ve-tasarim-faaliyetlerinin-desteklenmesine-iliskin-uygulama-ve-denetim-yonetmeliginde-degisiklik-yapilmasina-dair-yonetmelik--14-02-2017-', 'ARAŞTIRMA, GELİŞTİRME VE TASARIM FAALİYETLERİNİN DESTEKLENMESİNE İLİŞKİN UYGULAMA VE DENETİM YÖNETMELİĞİNDE DEĞİŞİKLİK YAPILMASINA DAİR YÖNETMELİK [14.02.2017]', '', 'image', '1-14subat-arge.pdf', '#', NULL, 0, 1, '2020-08-29 15:06:15'),
(25, 'gelir-idaresi-baskanligi-5746-–-6-nolu-tebligi-2016--ar-ge-ve-tasarim-vergi-indirimleri-ve-teknogirisim---30-09-2016-', 'GELİR İDARESİ BAŞKANLIĞI 5746 – 6 NOLU TEBLİĞİ 2016 (AR-GE VE TASARIM VERGİ İNDİRİMLERİ VE TEKNOGİRİŞİM) [30/09/2016]', '', 'image', '6-nolu-gib-tebligi-ar-ge-ve-tasarim-vergi-indirimleri-ve-teknogirisim.pdf', '#', NULL, 0, 1, '2020-08-29 15:06:32'),
(26, 'gelir-idaresi-baskanligi-5746--5-nolu-tebligi-2016--damga-vergisi-ve-harc---30-09-2016-', 'GELİR İDARESİ BAŞKANLIĞI 5746 -5 NOLU TEBLİGİ 2016 (DAMGA VERGİSİ VE HARÇ) [30/09/2016]', '', 'image', '5-nolu-gib-tebligi-damga-vergisi-ve-harc.pdf', '#', NULL, 0, 1, '2020-08-29 15:06:46'),
(27, 'gelir-idaresi-baskanligi-5746--4-nolu-tebligi--gelir-vergisi-stopaji---30-09-2016-', 'GELİR İDARESİ BAŞKANLIĞI 5746- 4 NOLU TEBLİGİ (GELİR VERGİSİ STOPAJI) [30/09/2016]', '', 'image', '4-nolu-gib-tebligi-gelir-vergisi-stopaji.pdf', '#', NULL, 0, 1, '2020-08-29 15:07:06'),
(28, 'teknoloji-gelistirme-bolgeleri-uygulama-yonetmeligi--10-8-2016-', 'TEKNOLOJİ GELİŞTİRME BÖLGELERİ UYGULAMA YÖNETMELİĞİ [10/8/2016]', '', 'image', 'teknoloji-gelistirme-bolg-1082016104944.pdf', '#', NULL, 0, 1, '2020-08-29 15:07:31'),
(29, '10-agustos-2016-tarih-ve-29797-sayili-resmÎ-gazete’de-yayimlanan-ar-ge-ve-tasarim-faaliyetleri-yonetmeligi--5035-sayili-kanun---10-agustos-2016-', '10 AĞUSTOS 2016 TARİH VE 29797 SAYILI RESMÎ GAZETE’DE YAYIMLANAN AR-GE VE TASARIM FAALİYETLERİ YÖNETMELİĞİ (5035 SAYILI KANUN) [10 AĞUSTOS 2016]', '', 'image', '5035-sayili-kanun-08-2016-29797.pdf', '#', NULL, 0, 1, '2020-08-29 15:07:44'),
(30, '10-agustos-2016-tarih-ve-29797-sayili-resmÎ-gazete’de-yayimlanan-teknoloji-gelistirme-bolgeleri-uygulama-yonetmeligi--10-08-2016-', '10 AĞUSTOS 2016 TARİH VE 29797 SAYILI RESMÎ GAZETE’DE YAYIMLANAN TEKNOLOJİ GELİŞTİRME BÖLGELERİ UYGULAMA YÖNETMELİĞİ [10/08/2016]', '', 'image', 'yonetmelik-resmigazete-10-2016-29797.pdf', '#', NULL, 0, 1, '2020-08-29 15:08:01'),
(31, '05-05-2012-tarih-ve-28283-sayili-resmi-gazetede-yayimlanan-6-seri-nolu-kurumlar-vergisi-genel-tebligi--05-05-2012-', '05.05.2012 TARİH VE 28283 SAYILI RESMİ GAZETEDE YAYIMLANAN 6 SERİ NOLU KURUMLAR VERGİSİ GENEL TEBLİĞİ [05/05/2012]', '', 'image', 'kurumlar-vergisi-genel-teblig-05-2012-28283.docx', '#', NULL, 0, 1, '2020-08-29 15:08:29'),
(32, 'sosyal-guvenlik-kurumu-baskanliginin-25-09-2008-tarih-ve-2008-85-nolu-arastirma-ve-gelistirme-faaliyetlerinin-desteklenmesi-konulu-genelgesi--2008-85-genelge---25-09-2008-', 'SOSYAL GÜVENLİK KURUMU BAŞKANLIĞININ 25.09.2008 TARİH VE 2008-85 NOLU ARAŞTIRMA VE GELİŞTİRME FAALİYETLERİNİN DESTEKLENMESİ KONULU GENELGESİ (2008-85 GENELGE) [25/09/2008]', '', 'image', 'sgk-genelge-09-2008-2008-85.pdf', '#', NULL, 0, 1, '2020-08-29 15:08:48'),
(33, '1-seri-no’lu-5746-sayili-kanun-genel-tebligi--06-08-2008-', '1 SERİ NO’LU 5746 SAYILI KANUN GENEL TEBLİĞİ [06/08/2008]', '', 'image', '1-seri-nolu-5746-sayili-kanun-genel-tebligi.pdf', '#', NULL, 0, 1, '2020-08-29 15:09:07'),
(34, '1-seri-no’lu-kurumlar-vergisi-genel-tebligi--06-08-2008-', '1 SERİ NO’LU KURUMLAR VERGİSİ GENEL TEBLİĞİ [06/08/2008]', '', 'image', '1-seri-nolu-kurumlar-vergisi-genel-tebligi.pdf', '#', NULL, 0, 1, '2020-08-29 15:09:35'),
(35, '2-seri-no’lu-5746-sayili-kanun-genel-tebligi--24-03-2008-', '2 SERİ NO’LU 5746 SAYILI KANUN GENEL TEBLİĞİ [24/03/2008]', '', 'image', '2-seri-nolu-5746-sayili-kanun-genel-tebligi.pdf', '#', NULL, 0, 1, '2020-08-29 15:10:14'),
(36, '22-subat-2018-persembe-sayi-:-30340-teknoloji-gelistirme-bolgeleri-uygulama-yonetmeliginde-degisiklik-yapilmasina-dair-yonetmelik--22-02-2008-', '22 ŞUBAT 2018 PERŞEMBE SAYI : 30340 TEKNOLOJİ GELİŞTİRME BÖLGELERİ UYGULAMA YÖNETMELİĞİNDE DEĞİŞİKLİK YAPILMASINA DAİR YÖNETMELİK [22/02/2008]', '', 'image', '22-subat-2018-tgb-uygulama-yonetmeliginde-degisiklik.pdf', '#', NULL, 0, 1, '2020-08-29 15:10:34'),
(37, 'kurumlar-vergisi-6-no’lu-sirkuler--15-03-2004-', 'KURUMLAR VERGİSİ 6 NO’LU SİRKÜLER [15/03/2004]', '', 'image', 'kurumlar-vergisi-6-nolu-sirkuler.pdf', '#', NULL, 0, 1, '2020-08-29 15:11:19'),
(38, 'kurumlar-vergisi-1-no’lu-sirkuler--28-10-2003-', 'KURUMLAR VERGİSİ 1 NO’LU SİRKÜLER [28/10/2003]', '', 'image', 'kurumlar-vergisi-1-nolu-sirkuler.pdf', '#', NULL, 0, 1, '2020-08-29 15:11:43'),
(39, 'arastirma--gelistirme-ve-tasarim-faaliyetlerinin-desteklenmesine-iliskin-uygulama-ve-denetim-yonetmeligi--10-8-2016-', 'ARAŞTIRMA, GELİŞTİRME VE TASARIM FAALİYETLERİNİN DESTEKLENMESİNE İLİŞKİN UYGULAMA VE DENETİM YÖNETMELİĞİ [10/8/2016]', '', 'image', 'arastirma-gelistirme-ve-t-1082016103219.pdf', '#', NULL, 0, 1, '2020-08-29 15:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `tgb4691`
--

CREATE TABLE `tgb4691` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `tgb4691`
--

INSERT INTO `tgb4691` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(26, '4691-sayili-tgb-kanun-bilgi-notu', '4691 Sayılı TGB Kanun Bilgi Notu', '', 'image', '4691-sayili-tgb-kanun-bilgi-notu-001.pdf', '#', NULL, 0, 1, '2020-08-29 15:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `tgbkanun`
--

CREATE TABLE `tgbkanun` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `tgbkanun`
--

INSERT INTO `tgbkanun` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(26, '1-temmuz-2017-cumartesi-sayi-:-30111-sanayinin-gelistirilmesi-ve-uretimin-desteklenmesi', '1 TEMMUZ 2017 CUMARTESİ SAYI : 30111 SANAYİNİN GELİŞTİRİLMESİ VE ÜRETİMİN DESTEKLENMESİ', '', 'image', '1-temmuz-2017-sayi-30111.pdf', '#', NULL, 0, 1, '2020-08-29 15:13:23'),
(27, '6676-sayili-kanun--ar-ge-faaliyetlerinin-desteklenmesi-hakkinda-kanun-ile-bazi-kanun-ve-kanun-hukmunde-kararnamelerde-degisiklik-yapilmasina-dair-kanun', '6676 SAYILI KANUN (AR-GE FAALİYETLERİNİN DESTEKLENMESİ HAKKINDA KANUN İLE BAZI KANUN VE KANUN HÜKMÜNDE KARARNAMELERDE DEĞİŞİKLİK YAPILMASINA DAİR KANUN', '', 'image', '6676-sayili-kanun-2016.pdf', '#', NULL, 0, 1, '2020-08-29 15:13:37'),
(28, '6170-sayili-tgb-kanununda-degisiklik-yapilmasina-dair-kanun--2-3-2011-', '6170 SAYILI TGB KANUNUNDA DEĞİŞİKLİK YAPILMASINA DAİR KANUN [2/3/2011]', '', 'image', '6170-sayili-teknoloji-gelistirme-bolgeleri-kanununda-degisiklik-yapilmasina-dair-kanun.pdf', '#', NULL, 0, 1, '2020-08-29 15:13:52'),
(29, 'turkiye-teknoloji-gelistirme-vakfi--ttgv---2009-', 'TÜRKİYE TEKNOLOJİ GELİŞTİRME VAKFI (TTGV) [2009]', '', 'image', 'turkiye-teknoloji-gelistirme-vakfi-ttgv.pdf', '#', NULL, 0, 1, '2020-08-29 15:14:07'),
(30, '5502-sayili-sosyal-guvenlik-kurumu-kanunu--16-05-2006-', '5502 SAYILI SOSYAL GÜVENLİK KURUMU KANUNU [16/05/2006]', '', 'image', '5502-sayili-sosyal-guvenlik-kurumu-kanunu.pdf', '#', NULL, 0, 1, '2020-08-29 15:14:21'),
(31, '5746-sayili-ar-ge-ve-tasarim-faaliyetlerinin-desteklenmesi-hakkinda-kanun', '5746 SAYILI AR-GE VE TASARIM FAALİYETLERİNİN DESTEKLENMESİ HAKKINDA KANUN', '', 'image', '5746-sayili-ar-ge-kanunu-6676-sayili-kanunun-degisiklikleri-islenmis-hali.pdf', '#', NULL, 0, 1, '2020-08-29 15:14:36'),
(32, '4691-sayili-teknoloji-gelistirme-bolgeleri-kanunu-–--6170-ve-6676-sayili-kanunlarin-degisiklikleri-islenmis-hali', '4691 SAYILI TEKNOLOJİ GELİŞTİRME BÖLGELERİ KANUNU – (6170 VE 6676 SAYILI KANUNLARIN DEĞİŞİKLİKLERİ İŞLENMİŞ HALİ', '', 'image', '488-sayili-damga-vergisi-kanunu.doc', '#', NULL, 0, 1, '2020-08-29 15:15:06'),
(33, 'teknoloji-gelistirme-bolgeleri-kanunu--6170-sayili-kanunla-degisen-sekli---26-6-2001-', 'TEKNOLOJİ GELİŞTİRME BÖLGELERİ KANUNU (6170 SAYILI KANUNLA DEĞİŞEN ŞEKLİ) [26.6.2001]', '', 'image', '4691-sayili-tgb-kanunu-6676-ve-6170-sayili-kanunlarin-degisiklikleri-islenmis-hali.pdf', '#', NULL, 0, 1, '2020-08-29 15:15:31'),
(34, '635-sayili-bilim-sanayi-ve-teknoloji-bakanliginin-teskilat-ve-gorevleri-hakkinda-kanun-hukmunde-kararname', '635 SAYILI BİLİM SANAYİ VE TEKNOLOJİ BAKANLIĞININ TEŞKİLAT VE GÖREVLERİ HAKKINDA KANUN HÜKMÜNDE KARARNAME', '', 'image', '4691-sayili-tgb-kanunu-6170-sayili-yasa-eklenmis-hali.pdf', '#', NULL, 0, 1, '2020-08-29 15:15:47'),
(35, '3624-sayili-kosgeb-kurulmasi-hakkinda-kanun--12-4-1990-', '3624 SAYILI KOSGEB KURULMASI HAKKINDA KANUN [12.4.1990]', '', 'image', '635-sayili-bilim-sanayi-ve-teknoloji-bakanliginin-teskilat-ve-gorevleri-hakkinda-kanun-hukmunde-kararname.pdf', '#', NULL, 0, 1, '2020-08-29 15:16:36'),
(36, '488-sayili-damga-vergisi-kanunu--1964-', '488 SAYILI DAMGA VERGİSİ KANUNU [1964]', '', 'image', '3624-sayili-kucuk-ve-orta-olcekli-isletmeleri-gelistirme-ve-destekleme-idaresi-baskanligi-kurulmasi-hakkinda-kanun-kosgeb.pdf', '#', NULL, 0, 1, '2020-08-29 15:16:53'),
(37, '278-sayili-tubitak-kurulmasi-hakkinda-kanun--17-7-1963-', '278 SAYILI TÜBİTAK KURULMASI HAKKINDA KANUN [17/7/1963]', '', 'image', '278-sayili-turkiye-bilimsel-ve-teknolojik-arastirma-kurumu-kurulmasi-hakkinda-kanun-tubitak.pdf', '#', NULL, 0, 1, '2020-08-29 15:17:08'),
(38, '193-sayili-gelir-vergisi-kanunu--31-12-1960-', '193 SAYILI GELİR VERGİSİ KANUNU [31/12/1960]', '', 'image', '193-sayili-gelir-vergisi-kanunu.pdf', '#', NULL, 0, 1, '2020-08-29 15:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `full_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `password`, `isActive`, `createdAt`) VALUES
(1, 'Teknik Destek', 'Teknik Destek', 'onlyfryou@icloud.com', '78a0de1af308f602de1c5a73fe540b7a', 1, NULL),
(6, 'Esmeze', 'Es Meze', 'info@esmeze.com', 'e1ad4e2fa748e9c2fa94ca4c38f13037', 1, '2020-11-23 12:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) UNSIGNED NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basvurubelge`
--
ALTER TABLE `basvurubelge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_news`
--
ALTER TABLE `company_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dtgb`
--
ALTER TABLE `dtgb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firm`
--
ALTER TABLE `firm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firms`
--
ALTER TABLE `firms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manages`
--
ALTER TABLE `manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testmonial`
--
ALTER TABLE `testmonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tgb`
--
ALTER TABLE `tgb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tgb4691`
--
ALTER TABLE `tgb4691`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tgbkanun`
--
ALTER TABLE `tgbkanun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basvurubelge`
--
ALTER TABLE `basvurubelge`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_news`
--
ALTER TABLE `company_news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dtgb`
--
ALTER TABLE `dtgb`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `firm`
--
ALTER TABLE `firm`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `firms`
--
ALTER TABLE `firms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `manages`
--
ALTER TABLE `manages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testmonial`
--
ALTER TABLE `testmonial`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tgb`
--
ALTER TABLE `tgb`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tgb4691`
--
ALTER TABLE `tgb4691`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tgbkanun`
--
ALTER TABLE `tgbkanun`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
