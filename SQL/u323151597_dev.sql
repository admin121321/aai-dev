-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2023 at 02:54 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u323151597_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_useri` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `id_useri`, `nama`, `created_at`, `updated_at`) VALUES
(1, 99, 'KEARSIPAN', '2023-04-12 16:47:00', '2023-05-23 06:00:28'),
(2, 88, 'HUKUM', '2023-04-12 16:44:58', '2023-05-23 05:58:26'),
(5, 36, 'KESEHATAN', '2023-05-20 20:05:01', '2023-05-23 06:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `ticket_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(8, 7, 12, 'Ok', '2023-04-27 00:02:06', '2023-04-27 00:02:06'),
(9, 7, 13, 'Sip', '2023-04-27 00:02:53', '2023-04-27 00:02:53'),
(10, 8, 66, 'Ok', '2023-05-21 08:24:30', '2023-05-21 08:24:30'),
(11, 8, 13, 'Siap', '2023-05-21 08:25:26', '2023-05-21 08:25:26'),
(12, 18, 99, 'Lanjut', '2023-05-24 04:11:44', '2023-05-24 04:11:44'),
(13, 18, 101, 'Tks', '2023-05-24 04:12:34', '2023-05-24 04:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `created_at`, `updated_at`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, '2023-05-20 11:07:58', '2023-05-20 11:07:58', 'sudiman', 'dodosudi@yahoo.co.id', '085233354265', 'Penambahan Memory Pada Server JakEvo App', '213123'),
(2, '2023-05-20 11:11:13', '2023-05-20 11:11:13', 'sudiman', 'dodosudi@yahoo.co.id', '085233354265', 'Penambahan Memory Pada Server JakEvo App', '213123'),
(3, '2023-05-20 11:11:50', '2023-05-20 11:11:50', 'sudiman', 'dodosudi@yahoo.co.id', '085233354265', 'Penambahan Memory Pada Server JakEvo App', 'wqeqwe'),
(4, '2023-05-20 11:18:57', '2023-05-20 11:18:57', 'sudiman', 'dodosudi@yahoo.co.id', '085233354265', 'ODDD', 'asdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `halamans`
--

CREATE TABLE `halamans` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `halamans`
--

INSERT INTO `halamans` (`id`, `id_user`, `judul`, `gambar`, `deskripsi`, `created_at`, `updated_at`) VALUES
(8, 66, 'BERANDA', '20230420054709.png', '<p>Beranda</p>', '2023-04-12 04:02:50', '2023-04-20 05:47:09'),
(10, 66, 'KONTAK', '20230412105521.png', '<section id=\"section-43249bbb-c273-48b1-b939-cf451c70bcd7\" class=\"wp-block-gutentor-content-box gutentor-section gutentor-content-box-wrapper content-template1\">\r\n<div class=\"grid-container gutentor-rm-ct-space\">\r\n<div class=\"grid-row gutentor-grid-item-wrap\">\r\n<div class=\"gutentor-grid-column grid-lg-12 grid-md-12 grid-12\">\r\n<div class=\"gutentor-single-item gutentor-single-item-0\">\r\n<div class=\"gutentor-single-item-wrap\">\r\n<div class=\"gutentor-single-item-content\">\r\n<p class=\"gutentor-single-item-desc\" style=\"text-align: justify;\">Silahkan Hubungi kami untuk informasi lebih lanjut didalam Forum AAI ( Asosiasi Arsiparis Indonesia ) DKI Jakarta</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<div id=\"wpcf7-f104-p118-o1\" class=\"wpcf7 js\" dir=\"ltr\" lang=\"en-US\"></div>', '2023-04-12 10:55:22', '2023-04-20 05:50:15'),
(11, 66, 'AD / ART', '20230412105743.png', '<div id=\"section-g49607b\" class=\"wp-block-gutentor-e1 section-g49607b gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h3 class=\"gutentor-text\" style=\"text-align: center;\"><strong>MUKADIMAH</strong></h3>\r\n</div>\r\n</div>\r\n<div class=\"gutentor-text\" style=\"text-align: justify;\">Sadar bahwa arsip adalah merupakan salah satu simpul pemersatu bangsa, maka pengelolaan arsip harus diupayakan secara seragam, sehingga bermuara pada suatu titik temu yang sama yaitu jati diri bangsa Indonesia<br><br></div>\r\n<div id=\"section-g94e415\" class=\"wp-block-gutentor-e1 section-g94e415 gutentor-element gutentor-element-advanced-text gutentor-drop-cap-enable text-align-justify-desktop text-align-justify-tablet text-align-justify-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<p class=\"gutentor-text\" style=\"text-align: justify;\">Sampai saat ini keseragaman tersebut belum mencapai kepada tahap yang ideal. Hal ini dikarenakan belum tercapainya keseragaman persepsi mengenai arsip dan dunia kearsipan dari pengelolanya, yaitu Arsiparis. Untuk terwujudnya keseragaman persepsi, ilmu, pengetahuan, ketrampilan dan orientasi mengenai arsip dan kearsipan serta hubungan nasional dan internasional, dibutuhkan suatu wadah profesi, komunikasi, dan kajian ilmiah yang dapat mengantarkan Sumber Daya Manusia kearsipan ke arah tujuan yang dicita-citakan. Maka berkat rahmat Tuhan Yang Maha Esa dibentuklah sebuah wadah dengan nama Asosiasi Arsiparis Indonesia yang disingkat AAI.</p>\r\n</div>\r\n</div>\r\n<div id=\"section-g55a632\" class=\"wp-block-gutentor-e1 section-g55a632 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB I</strong><br><strong>&nbsp;NAMA DAN BENTUK</strong></h5>\r\n</div>\r\n</div>\r\n<div id=\"section-g9ab04b\" class=\"wp-block-gutentor-e1 section-g9ab04b gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 1</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-gac5498\" class=\"wp-block-gutentor-e1 section-gac5498 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Organisasi yang mewadahi komunitas professional kearsipan ini dinamakan Asosiasi Arsiparis Indonesia yang disingkat AAI.</div>\r\n</div>\r\n<div id=\"section-g6619e2\" class=\"wp-block-gutentor-e1 section-g6619e2 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\">Pasal 2</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-gfeb172\" class=\"wp-block-gutentor-e1 section-gfeb172 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Kantor Pusat AAI berkedudukan di Ibukota Negara Republik Indonesia, Jakarta.</div>\r\n</div>\r\n<div id=\"section-g7a47b0\" class=\"wp-block-gutentor-e1 section-g7a47b0 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB II<br>&nbsp;SIFAT, ASAS, DAN TUJUAN</strong></h5>\r\n</div>\r\n</div>\r\n<div id=\"section-gcf04a7\" class=\"wp-block-gutentor-e1 section-gcf04a7 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 3</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-gabcdb5\" class=\"wp-block-gutentor-e1 section-gabcdb5 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">AAI bersifat kekeluargaan, forum komunikasi, professional, dan ilmiah</div>\r\n</div>\r\n<div id=\"section-g135caa\" class=\"wp-block-gutentor-e1 section-g135caa gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\">Pasal 4</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-ge673bf\" class=\"wp-block-gutentor-e1 section-ge673bf gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">AAI berasaskan Pancasila.</div>\r\n</div>\r\n<div id=\"section-gf00fc4\" class=\"wp-block-gutentor-e1 section-gf00fc4 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\">Pasal 5</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-gaa4eb8\" class=\"wp-block-gutentor-e1 section-gaa4eb8 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">AAI bertujuan :<br>1. Mempertinggi mutu SDM bidang kearsipan sehingga tercipta tenaga kearsipan yang handal dan mandiri.<br>2. Mempertinggi mutu penyelenggaraan dan pemanfaatan&nbsp; kearsipan.</div>\r\n</div>\r\n<div id=\"section-g4ff39f\" class=\"wp-block-gutentor-e1 section-g4ff39f gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB III<br>&nbsp;USAHA</strong></h5>\r\n</div>\r\n</div>\r\n<div id=\"section-g2d565c\" class=\"wp-block-gutentor-e1 section-g2d565c gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 6</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g95245a\" class=\"wp-block-gutentor-e1 section-g95245a gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Untuk mencapai tujuan sebagaimana disebut pada pasal 5, AAI berusaha antara lain :<br>1.&nbsp; Melakukan kajian dan publikasi ilmiah di bidang kearsipan.<br>2.&nbsp;Meningkatkan kesadaran masyarakat dalam pemanfaatan arsip sebagai sumber informasi.<br>3.&nbsp;Mempertinggi mutu hasil kegiatan Arsiparis dan tenaga kearsipan.<br>4.&nbsp;Melakukan kerjasama dengan Pemerintah dan organisasi lainnya dalam mempertinggi mutu profesi Arsiparis dan kearsipan.<br>5.&nbsp;Melakukan kerjasama dengan Pemerintah dalam mensosialisasikan arsip dan kearsipan kepada seluruh lembaga Pemerintah, lembaga swasta dan masyarakat luas.<br>6.&nbsp;Menyelenggarakan forum komunikasi antar Arsiparis untuk pengembangan profesionalisme.</div>\r\n</div>\r\n<div id=\"section-g1429f1\" class=\"wp-block-gutentor-e1 section-g1429f1 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB&nbsp;IV<br>&nbsp;KEANGGOTAAN</strong></h5>\r\n</div>\r\n</div>\r\n<div id=\"section-g2879c9\" class=\"wp-block-gutentor-e1 section-g2879c9 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 7</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g1ac009\" class=\"wp-block-gutentor-e1 section-g1ac009 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Keanggotaan AAI terdiri dari :<br>1. Arsiparis dan tenaga kearsipan yang bekerja pada instansi pemerintah.<br>2.&nbsp;Pejabat struktural yang masih aktif di bidang pembinaan kearsipan.<br>3.&nbsp;Arsiparis dan tenaga kearsipan yang bekerja pada BUMN, BUMD, dan lembaga swasta.<br>4. Masyarakat pencinta arsip, pemerhati arsip, dan kaum professional kearsipan.<br>5. Anggota kehormatan.\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<div id=\"section-gaa42a1\" class=\"wp-block-gutentor-e1 section-gaa42a1 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 8</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g5aaf26\" class=\"wp-block-gutentor-e1 section-g5aaf26 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">1. Keanggotaan Arsiparis yang Pegawai Negeri Sipil dan pejabat struktural bidang kearsipan bersifat pasif (otomatis menjadi anggota).<br>2. Keanggotaan sebagaimana dimaksud Pasal 7, ayat 3, 4, dan 5, pejabat struktural non kearsipan, PNS tenaga kearsipan dan pensiunan Arsiparis bersifat aktif dengan cara mendaftarkan diri.&nbsp;</div>\r\n</div>\r\n<div id=\"section-g2bf690\" class=\"wp-block-gutentor-e1 section-g2bf690 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 9</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g055d84\" class=\"wp-block-gutentor-e1 section-g055d84 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Syarat-syarat keanggotaan :<br>1. Profesional.<br>2. Berkebangsaan Indonesia.<br>3. WNA hanya dapat menjadi anggota kehormatan yang diputuskan melalui rapat pengurus nasional AAI Pusat dan ANRI.</div>\r\n</div>\r\n<div id=\"section-g974474\" class=\"wp-block-gutentor-e1 section-g974474 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 10</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-ge20c97\" class=\"wp-block-gutentor-e1 section-ge20c97 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Keanggotaan seseorang berakhir dalam AAI apabila :<br>1.&nbsp;&nbsp; Meninggal dunia<br>2.&nbsp; Pindah ke dalam jabatan struktural di luar lingkaran pembinaan kearsipan sehingga menjadi keanggotaan aktif.<br>3.&nbsp;&nbsp;Meminta berhenti secara tertulis.<br>4.&nbsp; Dikeluarkan dari keanggotaan berdasarkan rapat pleno pengurus cabang atas rekomendasi dewan kehormatan karena melanggar kode etik Arsiparis.</div>\r\n</div>\r\n<div id=\"section-g08242e\" class=\"wp-block-gutentor-e1 section-g08242e gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 11</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g29915a\" class=\"wp-block-gutentor-e1 section-g29915a gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Hak dan kewajiban anggota :<br>1.&nbsp;&nbsp;Anggota berhak menghadiri konperensi dan atau konggres.<br>2.&nbsp;&nbsp;Anggota memiliki hak bicara dan hak suara sesuai tata tertib konferensi dan atau kongres.<br>3.&nbsp;&nbsp;Anggota dapat dipilih menjadi pengurus AAI.<br>4.&nbsp; Anggota berkewajiban mematuhi ketentuan yang diputuskan bersama dalam konferensi atau kongres.</div>\r\n</div>\r\n<div id=\"section-g410c94\" class=\"wp-block-gutentor-e1 section-g410c94 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB V<br>&nbsp;KEPENGURUSAN</strong></h5>\r\n</div>\r\n</div>\r\n<div id=\"section-g8425c5\" class=\"wp-block-gutentor-e1 section-g8425c5 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 12</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g38bf31\" class=\"wp-block-gutentor-e1 section-g38bf31 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Kepengurusan Organisasi AAI terdiri dari :<br>1.&nbsp;&nbsp;&nbsp;Pengurus nasional untuk tingkat Nasional.<br>2.&nbsp;&nbsp;Pengurus wilayah untuk tingkat propinsi.&nbsp;<br>3.&nbsp; Pengurus cabang untuk tingkat kabupaten / kota.&nbsp;</div>\r\n</div>\r\n<div id=\"section-gc35a5b\" class=\"wp-block-gutentor-e1 section-gc35a5b gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 13</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g7d8be9\" class=\"wp-block-gutentor-e1 section-g7d8be9 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Pengurus nasional :<br>1.&nbsp; Pengurus nasional dipilih melalui kongres AAI.<br>2.&nbsp; Pengurus nasional terdiri dari ketua umum, wakil ketua umum, ketua I, II, III, IV, V, dan VI, sekjen, wakil sekjen I, II, dan III, bendahara, dan ketua departemen-departemen.&nbsp;<br>3.&nbsp;&nbsp;Semua unsur anggota dapat menjadi pengurus nasional AAI.&nbsp;</div>\r\n</div>\r\n<div id=\"section-gc9f3f4\" class=\"wp-block-gutentor-e1 section-gc9f3f4 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 14</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g6b5bb4\" class=\"wp-block-gutentor-e1 section-g6b5bb4 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Pengurus wilayah :<br>1.&nbsp;&nbsp;Pengurus wilayah dipilih melalui Konferensi wilayah.&nbsp;<br>2.&nbsp;&nbsp;Pengurus wilayah sekurang-kurangnya terdiri dari ketua, wakil ketua I dan II, sekretaris, wakil sekretaris I dan II, bendahara, wakil bendahara, dan ketua bidang I, II, dan III.<br>3.&nbsp;&nbsp;Semua unsur anggota dapat menjadi pengurus wilayah AAI.</div>\r\n</div>\r\n<div id=\"section-gcf0938\" class=\"wp-block-gutentor-e1 section-gcf0938 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 15</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g08d848\" class=\"wp-block-gutentor-e1 section-g08d848 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Pengurus cabang :<br>1. Pengurus cabang dipilih melalui Konferensi cabang.<br>2. Pengurus cabang sekurang-kurangnya terdiri dari ketua, wakil ketua I dan II, sekretaris, wakil sekretaris I dan II, bendahara, wakil bendehara, dan ketua seksi I, II, dan II.<br>3. Semua unsur anggota dapat menjadi pengurus cabang AAI.</div>\r\n</div>\r\n<div id=\"section-g5cccb7\" class=\"wp-block-gutentor-e1 section-g5cccb7 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 16</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g3bb041\" class=\"wp-block-gutentor-e1 section-g3bb041 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Legalisasi pengurus :<br>1.&nbsp;&nbsp;Pengurus nasional dilantik dan dikukuhkan oleh atau atas nama Kepala Arsip Nasional Republik Indonesia atas permohonan panitia kongres.<br>2.&nbsp;&nbsp;Kepala Arsip Nasional dalam hal ini bertindak sebagai fihak yang mewakili Southtest Asian Regional Branch of International Council on Archive (SARBICA).<br>3.&nbsp;&nbsp;Pengurus wilayah dilantik dan dikukuhkan oleh pengurus nasional.<br>4.&nbsp;&nbsp;Pengurus cabang dilantik dan dikukuhkan oleh pengurus wilayah.</div>\r\n</div>\r\n<div id=\"section-gb4b1ff\" class=\"wp-block-gutentor-e1 section-gb4b1ff gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB VI<br>MEKANISME ORGANISASI</strong></h5>\r\n</div>\r\n</div>\r\n<div id=\"section-g6003c0\" class=\"wp-block-gutentor-e1 section-g6003c0 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 17</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g21002a\" class=\"wp-block-gutentor-e1 section-g21002a gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Kongres :<br>1.&nbsp;&nbsp;Kongres merupakan forum tertinggi dalam AAI.&nbsp;<br>2.&nbsp;&nbsp;Kongers diselenggarakan sekurang-kurangnya sekali dalam lima tahun.&nbsp;<br>3.&nbsp;&nbsp;Peserta kongres terdiri dari pengurus nasional, utusan wilayah, dan utusan cabang.&nbsp;<br>4.&nbsp; Kongres luar biasa dapat dilakukan untuk membahas persoalan yang dianggap luar biasa.</div>\r\n</div>\r\n<div id=\"section-gf7cd21\" class=\"wp-block-gutentor-e1 section-gf7cd21 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 18</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-ge858c6\" class=\"wp-block-gutentor-e1 section-ge858c6 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Musyawarah Nasional :<br>1. Musyawarah Nasional merupakan lembaga tertinggi kedua dalam AAI.<br>2. Musyawaran Nasional berwenang mengangkat Koordinator wilayah AAI dan Dewan Kehormatan AAI.<br>3. Musyawarah Nasional dapat diselenggarakan pada setiap tahun.\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<div id=\"section-g222469\" class=\"wp-block-gutentor-e1 section-g222469 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 19</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g3c9401\" class=\"wp-block-gutentor-e1 section-g3c9401 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Konferensi :<br>1. Konferensi merupakan lembaga tertinggi dalam AAI tingkat wilayah dan cabang.<br>2. Konferensi diselenggarakan sekurang-kurangnya sekali dalam tiga tahun dan dapat diundur sampai lima tahun.<br>3. Peserta konferensi adalah semua anggota yang berada di bawah koordinasi wilayah dan / atau cabang.</div>\r\n</div>\r\n<div id=\"section-g45a820\" class=\"wp-block-gutentor-e1 section-g45a820 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\">&nbsp;</h5>\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 20</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-gb174d9\" class=\"wp-block-gutentor-e1 section-gb174d9 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">1.&nbsp;&nbsp;&nbsp;Hak dan kewajiban anggota selama kongres, munas, atau konferensi di atur dalam tata tertib.<br>2.&nbsp;&nbsp; Semua utusan memiliki hak suara.<br>3.&nbsp; Peninjau memiliki hak bicara tetapi tidak memiliki hak&nbsp; suara.</div>\r\n</div>\r\n<div id=\"section-gd5f7d8\" class=\"wp-block-gutentor-e1 section-gd5f7d8 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 21</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g2b4115\" class=\"wp-block-gutentor-e1 section-g2b4115 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Quorum :<br>1. Kongres dapat dilanjutkan dan dianggap sah apabila dihadiri oleh utusan yang menjadi wakil dari setengah lebih satu dari jumlah cabang yang terdaftar pada AAI Nasional.<br>2. Kongres dapat dilanjutkan tanpa quorum.<br>3. Konferensi dapat dilanjutkan dan dianggap sah apabila dihadiri oleh sekurangkurangnya 2/3 (dua pertiga) dari jumlah anggota cabang yang diundang.<br>4. Bila quorum tingkat cabang tidak terpenuhi, maka sidang dapat dilanjutkan setelah berkonsultasi dengan pengurus nasional AAI\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<div id=\"section-gf8e0ee\" class=\"wp-block-gutentor-e1 section-gf8e0ee gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 22</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g540e40\" class=\"wp-block-gutentor-e1 section-g540e40 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Pemungutan suara :<br>1.&nbsp;&nbsp;Pemungutan suara baik pada konferensi maupun kongres dilakukan berdasarkan aturan atau tata tertib yang diisepakati pada sidang pendahuluan.<br>2.&nbsp; Baik keputusan konferensi maupun kongres dianggap sah apabila mendapat dukungan setengah lebih satu suara utusan yang hadir.<br>3.&nbsp;Apabila dalam membuat kesepakatan terjadi kesamaan suara, maka fihak yang mendapat dukungan dari pengurus domisioner yang diberlakukan dengan sebelumnya diumumkan oleh pimpinan sidang.</div>\r\n</div>\r\n<div id=\"section-g6f7d79\" class=\"wp-block-gutentor-e1 section-g6f7d79 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 23</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-gbda336\" class=\"wp-block-gutentor-e1 section-gbda336 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Kewenangan kongres, musyawarah nasional dan konferensi :<br>1.&nbsp;&nbsp;Kongres memiliki kewenangan menyusun, menyesuaiakan dan mengubah Anggaran Dasar dan Anggaran Rumah Tangga AAI.<br>2.&nbsp;&nbsp;Kongres memiliki kewenangan menyusun program kerja dan memilih pengurus AAI tingkat nasional.<br>3.&nbsp;&nbsp;Kongres luar biasa memiliki kewenangan membubarkan AAI.&nbsp;<br>4.&nbsp;&nbsp;Kongres dan munas memiliki kewenangan merumuskan dan mensahkan<br>Kode Etik Arsiparis.<br>5.&nbsp;&nbsp;Munas memiliki kewenangan untuk membentuk Dewan Kehormatan<br>Arsiparis.<br>6.&nbsp;&nbsp;Konferensi memiliki kewenangan menyusun program kerja dan memilih pengurus tingkat cabang.</div>\r\n</div>\r\n<div id=\"section-gfdb70c\" class=\"wp-block-gutentor-e1 section-gfdb70c gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB VII<br>DEWAN KEHORMATAN ARSIPARIS</strong></h5>\r\n</div>\r\n</div>\r\n<div id=\"section-g970bb7\" class=\"wp-block-gutentor-e1 section-g970bb7 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 24</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g5099bb\" class=\"wp-block-gutentor-e1 section-g5099bb gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Dewan Kehormatan Arsiparis bertugas :<br>1.&nbsp;&nbsp;Menyusun, menyesuaikan dan mengubah Kode Etik Arsiparis.<br>2.&nbsp;&nbsp;Menyusun prosedur pengaduan dan penyelesaian pelanggaran kode etik.<br>3.&nbsp;&nbsp;Menerima pengaduan atas pelanggaran-pelanggaran yang dilakukan anggota.<br>4.&nbsp; Menyelenggarakan penyelidikan bagi anggota yang diduga melanggar Kode Etik Arsiparis.<br>5.&nbsp;&nbsp;Menjatuhkan sanksi terhadap anggota yang melanggar kode etik.<br>6.&nbsp;&nbsp;Membuat rekomendasi kepada pimpinan instansi bagi Arsiparis yang melanggar kode etik.<br>7.&nbsp;&nbsp;Memeriksa keuangan pengurus nasional, pengurus wilayah dan pengurus cabang.</div>\r\n</div>\r\n<div id=\"section-g1e241e\" class=\"wp-block-gutentor-e1 section-g1e241e gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB VIII<br>KEUANGAN</strong></h5>\r\n</div>\r\n</div>\r\n<div id=\"section-g020004\" class=\"wp-block-gutentor-e1 section-g020004 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 25</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-gc88d46\" class=\"wp-block-gutentor-e1 section-gc88d46 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">(1)&nbsp; Sumber keuangan AAI berasal dari uang pendaftaran, iuran bulanan, sumbangan yang tidak mengikat dan dana yang dihasilkan akibat suatu kerja sama;<br>(2)&nbsp; Sebelum Asosiasi baik di tingkat nasional, di tingkat wilayah maupun di tingkat cabang mandiri di bidang keuangan, maka pembiayaan dapat difasilitasi dari dinas.<br>(3)&nbsp; Pembiayaan dilakukan untuk kegiatan yang menyangkut keberadaan Asosiasi.</div>\r\n</div>\r\n<div id=\"section-g822deb\" class=\"wp-block-gutentor-e1 section-g822deb gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB VIII<br>KEUANGAN</strong></h5>\r\n</div>\r\n</div>\r\n<div id=\"section-g274440\" class=\"wp-block-gutentor-e1 section-g274440 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 26</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g23908d\" class=\"wp-block-gutentor-e1 section-g23908d gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">(1)&nbsp; AAI dideklarasikan secara formal oleh peserta pemilihan Arsiparis Teladan Tingkat Nasional dan para pejabat struktural pendampingnya di Jakarta pada tanggal 14 bulan Agustus tahun 1998.<br>(2)&nbsp;&nbsp;AAI didirikan untuk jangka waktu yang tidak ditentukan.</div>\r\n</div>\r\n<div id=\"section-g484bb9\" class=\"wp-block-gutentor-e1 section-g484bb9 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h5 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB X<br>ATURAN PERALIHAN</strong></h5>\r\n</div>\r\n</div>\r\n<div id=\"section-ge5d1f1\" class=\"wp-block-gutentor-e1 section-ge5d1f1 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 27</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g103fab\" class=\"wp-block-gutentor-e1 section-g103fab gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Anggaran Dasar dan Anggaran Rumah Tangga dapat diubah oleh kongres apabila mendapat persetujuan dari 2/3 jumlah anggota yang diundang yang mamiliki hak suara.</div>\r\n</div>\r\n<div id=\"section-gac084b\" class=\"wp-block-gutentor-e1 section-gac084b gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 28</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-geead65\" class=\"wp-block-gutentor-e1 section-geead65 gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Pembubaran AAI dapat dilakukan oleh kongres luar biasa yang diadakan khusus untukmembahas pembubaran tersebut.<br><br></div>\r\n</div>\r\n<div id=\"section-g7706e9\" class=\"wp-block-gutentor-e1 section-g7706e9 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br>Pasal 29</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-ga4d1bd\" class=\"wp-block-gutentor-e1 section-ga4d1bd gutentor-element gutentor-element-advanced-text text-align-left-desktop text-align-left-tablet text-align-left-mobile\">\r\n<div class=\"gutentor-text-wrap\">Hal-hal yang tidak cukup diatur dalam Anggaran Dasar ini diatur dalam Anggaran Rumah Tangga.</div>\r\n</div>\r\n<div id=\"section-gfd26b2\" class=\"wp-block-gutentor-e1 section-gfd26b2 gutentor-element gutentor-element-advanced-text text-align-center-desktop text-align-center-tablet text-align-center-mobile\">\r\n<div class=\"gutentor-text-wrap\">\r\n<h6 class=\"gutentor-text\" style=\"text-align: center;\"><br><strong>BAB XI</strong><br><strong>ATURAN PERALIHAN</strong><br>&nbsp;<br>Pasal 30</h6>\r\n</div>\r\n</div>\r\n<div id=\"section-g2f07fe\" class=\"wp-block-gutentor-e1 section-g2f07fe gutentor-element gutentor-element-advanced-text\">\r\n<div class=\"gutentor-text-wrap\">(1) Anggaran Dasar ini merupakan perubahan dan penyempurnaan dari Anggaran Dasar hasil Kongres ke-1 Asosiasi Arsiparis Indonesia Tahun 2005 di Jakarta dan Kongres Ke-2 AAI Tahun 2010 di Jakarta.<br>(2)&nbsp; Anggaran Dasar ini mulai berlaku sejak tanggal ditetapkan. Ditetapkan di Jakarta Pada tanggal 30 Nopember 2015&nbsp;Majelis Sidang Kongres Ke-3&nbsp;Asosiasi Arsiparis Indonesia</div>\r\n<div class=\"gutentor-text-wrap\">&nbsp;</div>\r\n<div class=\"gutentor-text-wrap\">&nbsp;</div>\r\n</div>', '2023-04-12 10:57:43', '2023-05-18 14:44:10'),
(12, 66, 'KEANGGOTAAN', '20230412115231.png', '<h4 class=\"has-text-align-center has-text-color has-background wp-block-heading\" style=\"text-align: center;\"><strong>Anggota Asosiasi Arsiparis Indonesia</strong><br><strong>Wilayah Pemerintah Provinsi DKI Jakarta</strong></h4>', '2023-04-12 11:52:31', '2023-04-12 11:52:31'),
(13, 66, 'KONSUL', '20230420054501.png', '<p style=\"text-align: center;\">Silahkan konsultasikan permasalahan Anda dengan cara masuk ke dalam menu akses terlebih dahulu. Konsultan kami siap membantu.</p>', '2023-04-19 15:20:30', '2023-05-22 06:33:24'),
(14, 66, 'REGISTER', '20230523011233.png', '<p>Pendaftaran bagi Pegawai Swasta/BUMN/BUMD dan Masyarakat Pemerhati Arsip (termasuk mahasiswa). Bagi Arsiparis (PNS) DKI Jakarta akan didaftarkan oleh Admin.</p>', '2023-05-23 01:12:33', '2023-05-23 01:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `iklans`
--

CREATE TABLE `iklans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `mulai_pemasangan` date NOT NULL,
  `akhir_pemasangan` date NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `link_media` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_postings`
--

CREATE TABLE `kategori_postings` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_postings`
--

INSERT INTO `kategori_postings` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Seminar', '2023-01-12 00:52:25', '2023-01-12 19:21:37'),
(2, 'Pengumuman', '2023-01-12 01:04:11', '2023-01-12 01:04:11'),
(3, 'Pertemuan', '2023-01-12 01:14:45', '2023-01-12 19:21:59'),
(4, 'Berita', '2023-01-12 01:14:50', '2023-01-12 19:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 2),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postings`
--

CREATE TABLE `postings` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postings`
--

INSERT INTO `postings` (`id`, `id_user`, `id_kategori`, `judul`, `gambar`, `deskripsi`, `created_at`, `updated_at`) VALUES
(41, 66, 2, 'dukungan-aai-dki-jakarta-untuk-bapak-iwan-satyoprodjo', '20230521042719.PNG', '<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp;Kami keluarga besar AAI Tingkat Wilayah DKI Jakarta mendukung Bapak Iwan Satyoprodjo sebagai Peserta Lomba Arsiparis Teladan Nasional ANRI Tahun 2023.</p>', '2023-05-20 21:27:19', '2023-05-24 04:31:16'),
(42, 66, 1, 'kegiatan-peningkatan-persiapan-pemilihan-arsip-teladan-nasional-tahun-2023', '20230521042946.PNG', '<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp;1 Mei 2023, Kegiatan Peningkatan Persiapan Kepesertaan Keikutsertaan Bapak Iwan Satyoprojo (Arsiparis Madya DKI Jakarta) dalam rangka Keikutsertaan pada Pemilihan Arsip Teladan Nasional Tahun 2023 Arsip Nasional Republik Indonesia tanggal 4 Mei 2023.</p>', '2023-05-20 21:29:46', '2023-05-24 04:31:04'),
(43, 66, 2, 'halal-bi-halal-anggota-aai-dki-jakarta', '20230521043539.PNG', '<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp;Acara Halal bi Bihalal Anggota AAI (Asosiasi Arsiparis Indonesia) wilayah DKI Jakarta berlangsung dengan rasa suka cita saling membuka pintu maaf seluas-luasnya sekaligus membahas perencanaan kedepan untuk Forum AAI ini.</p>', '2023-05-20 21:35:39', '2023-05-24 04:30:39'),
(44, 66, 3, 'kepala-dinas-perpustakaan-dan-kearsipan-provinsi-dki-jakarta-mendukung-kegiatan-forum-aai', '20230521043826.PNG', '<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp; Audiensi Pengurus AAI Tingkat Wilayah Provinsi DKI Jakarta dengan Kepala Dinas Perpustakaan dan Kearsipan Provinsi DKI Jakarta selaku Pembina AAI DKI Jakarta pada Jumat, (5/5/2023).</p>\r\n<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp;Dalam kesempatan itu disampaikan oleh Ketua AAI DKI Jakarta, Ari Imansyah , bahwa AAI sebagai Mitra Kerja Dinas Perpustakaan dan Kearsipan akan bersama-sama dalam meningkatkan Mutu Penyelenggaraan Kearsipan maupun SDM Kearsipan di Provinsi DKI Jakarta sesuai dengan Program Kerja Pengurus AAI Tingkat Wilayah Provinsi DKI Jakarta Tahun 2022 -2025.</p>\r\n<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp;Sementara itu, Kepala Dinas Perpustakaan dan Kearsipan Provinsi DKI Jakarta, Firmansyah menyatakan akan bersinergi untuk mendukung seluruh Program Kerja yang akan dilakukan oleh AAI DKI Jakarta untuk kemajuan penyelenggaraan kearsipan di DKI Jakarta.</p>', '2023-05-20 21:38:26', '2023-05-24 04:28:44'),
(46, 13, 3, 'pengukuhan-asosiasi-arsiparis-indonesia-provinsi-wilayah-dki-jakarta-aai-jakarta-periode-2022-2025', '20230523235930.jpg', '<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp; &nbsp; Berlokasi di Jakarta berlangsung kegiatan pengukuhan Asosiasi Arsiparis Indonesia Provinsi Wilayah DKI Jakarta (AAI Jakarta) periode 2022-2025 pada Kamis, 1 Desember 2022 bertempat di Pusat Dokumentasi Sastra HB Yasin. Acara ini merupakan keberlanjutan dari acara pemilihan yang telah dilaksanakan AAI Jakarta pada 13 November 20022. Acara pengukuhan AAI Jakarta di hari oleh kepala Dinas Perpustakaan dan Kearsipan Provinsi DKI Jakarta Bapak Wahyu Haryadi, Ketua Pengurus Nasional Asosiasi Arsiparis Indonesia Bapak Dr. Andi Kasman beserta jajaran kepengurusan, dan juga perwakilan dari penasihat wilayah AAI Jakarta Bapak Dr. Taufik Asmiyanto.</p>\r\n<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp; &nbsp; Pada aktivitas pengukuhan ini dikukuhkan struktur AAI Jakarta yang terdiri dari bidang hukum dan organisasi, bidang kajian aplikasi bidang teknologi dan standarisasi kearsipan, bidang sumber daya manusia, bidang kerjasama program, bidang kesejahteraan anggota, dan sekretariat AAI Jakarta. Acara diawali dengan penyampaian laporan pertanggung jawaban ketua AAI Jakarta periode 2019-2022 Bapak Iwan Satyoprojo, dilanjutkan dengan acara pengukuhan pengurus AAI Jakarta oleh Ketua Pengurus Nasional. Melalui kegiatan ini ketua AAI Jakarta Bapak Ari Imansyah menyampaikan ssecara singkat tentang program dan strategi pengurus AAI Jakarta perioidesasi 2022-2025 dalam meningkatkan professionalisme profesi arsiparis. Pada kesempatan ini beliau juga menyampaikan pentingnya arsiparis dan asosiasi meningkatkan kapasitas keprofesian sebagai wujud tanggung jawab dalam penyelenggaraan kearsipan daerah (ais).</p>', '2023-05-23 23:59:30', '2023-05-24 04:30:02'),
(47, 13, 3, 'rapat-pleno-i-asosiasi-arsiparis-indonesia-pengurus-wilayah-dki-jakarta-aai-jakarta-periode-2022-2025', '20230524000849.jpg', '<p>&nbsp; &nbsp; &nbsp; &nbsp; Bertempat di gedung Dinas Perpustakaan dan Kearsipan Provinsi DKI Jakarta, 9 Februari 2023 terlaksana Kegiatan Rapat Pleno I Asosiasi Arsiparis Indonesia Pengurus Wilayah DKI Jakarta (AAI Jakarta) periode 2022-2025. &nbsp;Pelaksanaan kegiatan Rapat Pleno I AAI Jakarta merupakan kegiatan Kegiatan pleno pertama kepengurusan periodesasi 2022-2025. Kegiatan ini beragenda penyusunan rencana program kegiatan dan juga sosialisasi pelaksanaan kegiatan yang akan dilaksanakan selama setahun atau selama tahun 2023. Kegiatan ini dihadiri oleh kepala Dinas Perpustakaan dan Kearsipan Provinsi DKI Jakarta, Bapak Wahyu Haryadi.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Pelaksanaan kegiatan ini dihadiri oleh 100 orang anggota AAI Jakarta yang terdiri dari Aparatur Sipil Negara dilingkungan Provinsi DKI Jakarta dan juga anggota AAI Jakarta dari unsur swasta yang berasal dari pengelola kearsipan di Badan Usaha Milik Daerah (BUMD). Kegiatan ini, selain sebagai wahana untuk menyusun program kerja dan sosialisasi program kegiatan yang akan dilaksanakan AAI Jakarta namun dilaksanakan pula pendataan ulang keanggotaan. Dengan pelaksanaan pembahruan kartu anggota AAI Jakarta berbasis kartu elektronik. Pada kegiatan ini dilaksanakan pula juga sosialisasi mengenai pemanfaatan website yang akan menga komodir 3 (tiga) kebutuhan anggota diantaranya konsultasi kesehatan, konsultasi pengembangan lingkungan kearsipan organisasi, dan konsultasi pengembangan karir keprofesian (ais).</p>', '2023-05-24 00:08:49', '2023-05-24 04:29:20'),
(48, 13, 3, 'pertemuan-anggota-aai-dengan-wakil-sekretariat-kabinet-indonesia', '20230524001406.jpg', '<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Pada hari Selasa 14 Februari 2023 Asosiasi Arsiparis Indonesia Pengurus Wilayah DKI Jakarta (AAI Jakarta) melaksanakan Audiensi dengan wakil sekretariat kabinet Indonesia Bapak Fadlansyah Lubis. Delegasi AAI Jakarta diterima di gedung Sekratariat Kabinet Merdeka Utara, lantai 3- Jakarta pusat. Pada kesempatan ini delegasi AAI Jakarta langsung diterima oleh wakil sekretaris Kabinet Republik Indonesia. Dengan suasana yang hangat dan penuh antusiasme diskusi yang penuh syarat dengan materi kearsipan. Sekretariat Kabinet Republik Indonesia menjadi salah satu referensi asosiasi AAI Jakarta dikarenakan penyelenggaraan kearsipan yang dilakukan di Sekretariat Kabinet Republik Indonesia sangat baik, diantaranya pemanfaatan teknologi sekuriti printing dan autentifikasi arsip.&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Terlepas dari hal itu delegasi AAI Jakarta diskusi ini berfokus pada pembahasan paradigma kearsipan, terutama pengembangan asosiasi profesi. Dalam pertemuan yang berlangsung selama satu jam terdapat masukan positif bagi asosiasi diantaranya adalah mengedepankan keterbukaan keanggotaan sehingga paradigma berfikir, independensi, dan terjadi knowledge sharing antar anggota akan lebih optimal. Selanjutnya asosiasi juga diingatkan untuk terus memajukan dunia kearsipan untuk lebih dirasakan kehadirannya di tengah masyarakat sehingga keberadaan asosiasi melekat dengan kebutuhan masyarakat. Audiensi semacam ini merupakan kegiatan AAI Jakarta yang akan terus dilakukan oleh asosiasi arsiparis Indonesia Jakarta sehingga ke depan ada pengembangan dan inovasi yang bersumber dari input stakeholder eksternal sehingga terwujud silaturahmi positif yang membawa pengetahuan baru bagi pengurus AAI Jakarta dan tentunya output program asosiasi yang lebih berkenaan dengan urusan kearsipan (ais).</p>', '2023-05-24 00:14:06', '2023-05-24 04:28:00'),
(49, 13, 1, 'webinar-dengan-tema-sdm-kearsipan-dan-sertifikasi-professi-arsiparis', '20230524001558.jpg', '<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Divisi Kajian dan Publikasi Asosiasi Arsiparis Indonesia Pengurus Wilayah DKI Jakarta (AAI Jakarta) &nbsp;melaksanakan kegiatan Webinar dengan tema SDM Kearsipan dan Sertifikasi Professi Arsiparis. Dilaksanakan pada hari Sabtu, 1 April 2023 melalui virtual zoom meeting dengan menghadirkan Narasumber Bapak Suwarto S.ST.Ars sebagai Arsiparis Ahli Madya, Arsip Nasional Republik Indonesia. Kegiatan webinar ini dimoderatori oleh Bapak Harris Budiman Arsiparis Ahli Muda Dinas Perpustakaan dan Kearsipan Provinsi DKI Jakarta. Kegiatan yang kurang lebih diikuti oleh 60 peserta anggota AAI Jakarta membahas mengenai kegiatan sertifikasi professi arsiparis ke pada jenjang sertifikasi profesi arsiparis keterampilan dan sertifikasi profesi arsiparis keahlian. Kegiatan ini merupakan agenda rutin dari Divisi Kajian dan Publikasi AAI Jakarta yang mengedepankan informasi penunjang pengetahuan keprofesian arsiparis &nbsp;di lingkungan provinsi DKI Jakarta (ais).</p>', '2023-05-24 00:15:58', '2023-05-24 04:27:13'),
(50, 13, 3, 'audiensi-aai-jakarta-dengan-aai-nasional', '20230524013339.jpg', '<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp;Jakarta, 13 April 2023 menjadi hari yang spesial bagi pengurus Asosiasi Arsiparis Indonesia Pengurus Wilayah DKI Jakarta (AAI Jakarta) dengan visitasi ke Pengurus Nasional AAI di Arsip Nasional Republik Indonesia. Pada kesempatan ini audiensi kepengurusan AAI Jakarta diterima langsung oleh Ketua AAI Nasional beserta jajaran. Audiensi AAI Jakarta diterima di gedung D lantai enam sekretariat AAI Nasional. Pada kesempatan ini, mendiskusikan perihal rencana program kerja AAI Jakarta serta memohon input atas paparan program kerja AAI Jakarta. Pada kesempatan ini ketua Pengurus Wilayah AAI Jakarta, Bapak Ari Imansyah mengemukakan bahwa dengan lokasi geografis antara Arsip Nasional yang menjadi sekretariat AAI Nasional dengan lingkungan provinsi DKI Jakarta menjadi kemudahan dan bonus geografis sehingga diharapkan audiensi serta komunikasi serta jalan Silaturahmi antara pengurus AAI Jakarta dengan Pengurus Nasional dapat lebih meningkat.</p>\r\n<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp;Pada kesempatan ini, Bapak Dr. Andi Kasman selaku Ketua Ketua AAI Nasional mengingatkan kepada pengurus untuk tetap teguh dengan segala macam ketentuan mengenai kearsipan sehingga dapat menjadi duta kearsipan di kantor atau lingkungan kerja masing masing. Karna lingkungan kearsipan yang baik tercipta dari unit pengolah dan unit kearsipan yang tertata dengan baik sehingga simpul-simpul yang baik dapat menciptakan lingkungan kearsipan yang tertib arsip. Acara ini juga dilanjutkan dengan ramahtamah antara antara pengurus Ketua AAI Nasional periode 2023 - 2025 dengan Pengurus AAI Nasional (ais).</p>', '2023-05-24 01:33:39', '2023-05-24 04:26:12'),
(51, 13, 3, 'kolaborasi-aai-jakarta-dengan-masyarakat-arsip-jakarta', '20230524013514.jpg', '<p style=\"text-align: justify;\">&nbsp; &nbsp;Asosiasi Arsiparis Indonesia Pengurus Wilayah DKI Jakarta (AAI Jakarta) melaksanakan kolaborasi dengan Masyarakat Arsip Jakarta (MAJ). MAJ Merupakan komunitas yang menjadi bagian dari AAI Jakarta yang berisi purnakarya atau pensiun dari Arsiparis dan pengelola kearsipan dilingkungan Provinsi DKI Jakarta. Pada kesempatan ini AAI Jakarta dan MAJ melaksanakan keikutsertaan pada Bazar di Kantor Walikota Jakarta Timur. Keikutsertaan pada bazzar ini &nbsp;yaitu untuk mengeratkan silaturahmi antara para purna &nbsp;arsiparis yang dibentuk dalam wadah Bazar. Tujuan kegiatan ini adalah untuk tetap menjaga menjaga silaturahmi antara para purna arsiparis. Bazar ini dilaksanakan tanggal 17 dan 18 April 2023. Pada kesempatan ini para purna arsiparis manfaatkan berniaga makanan cepat saji, makanan khas lebaran, pakaian anak, dan merchandise AAI Jakarta. Kegiatan ini merupakan rangkaian awal dari kolaborasi dengan komunitas yang diharapkan semakin mengembangkan AAI Jakarta lebih dekat dengan masayarakat.</p>', '2023-05-24 01:35:14', '2023-05-24 04:25:24'),
(53, 13, 2, 'perwakilan-aai-dki-jakarta-raih-juara-ii-arsip-teladan-nasional-tahun-2023', '20230524050115.jpg', '<p style=\"text-align: justify;\">&nbsp; &nbsp; DKI Jakarta melalui Bapak Iwan Satyoprodjo memperoleh Juara II pada Pemilihan Arsip Teladan Nasional Tahun 2023. Banyuwangi, 22 Mei 2023 menjadi hari yang membahagiakan bagi arsiparis madya Provinsi DKI Jakarta Bapak Iwan Satyoprodjo karena pada perayaan Hari Kearsipan Nasional Ke-52 di Jawa timur berhasil memperoleh predikat juara II arsiparis teladan nasional tingkat keahlian Arsip Nasional Republik Indonesia. Pada kesempatan ini penghargaan dan apresiasi langsung diberikan oleh Abdullah Azwar Anas menteri Pendayagunaan Aparatur Negara Reformasi Birokrasi Republik Indonesia.</p>\r\n<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp; Pelaksanaan pemilihan arsiparis madya teladan nasional tahun 2023 di awali dengan kegiatan penyisihan. Untuk tingkat keahlian diikuti dengan 79 orang arsiparis seluruh Indonesia yang mengikuti proses seleksi penyisihan lomba arsiparis teladan tingkat nasional tingkat keahlian. Adapun keberhasilan Bapak Iwan Satyoprodjo menjadi juara II diantaranya adalah ketepatan dalam penyampaian program karena berdasarkan rilis dari Deputi Bidang Pembinaan KearsipanArsip Nasional Republik Indonesia bahwa arsiparis teladan nasional tahun 2023 bukan untuk memilih yang terbaik, terpandai tetapi yang memiliki integritas dan kapasitas bagi pelayanan publik khususnya di bidang kearsipan. Terlebih saat ini memasuki Era teknologi informasi yang menghasilkan arsip digital sehingga para arsiparis diuji untuk dapat mengakses arsip elektronik serta menyajikan kepada pengguna yang berhak yang dapat menjadi bagian dari upaya menjaga memori kolektif bangsa.<br>&nbsp; &nbsp; &nbsp;Hari Kearsipan diperingati ke-52 tahun dengan mengangkat tema &ldquo;Gerakan Kearsipan: Menuju Birokrasi Maju, Memori Kolektif Bangsa dan Peradaban Unggul&rdquo;. Kabupaten Banyuwangi Provinsi Jawa Timur menjadi tuan rumah helatan Anugerah Kearsipan dan Puncak peringatan Hari Kearsipan ke-52 mulai 22 s.d 23 Mei 2023 di Hotel El Royal, Banyuwangi, Jawa Timur. Melalui peringatan Hari Kearsipan ke-52, perkembangan teknologi pada Bidang Kearsipan dalam wujud optimalisasi transformasi digital kearsipan dan Reformasi Birokrasi menjadi salah satu isu utama. Hal tersebut tak lain untuk mewujudkan inovasi kearsipan sebagaimana amanat Presiden Joko Widodo pada peringatan Tahun Emas Kearsipan serta mendukung pelaksanaan Reformasi Birokrasi Tematik yang pada berfokus pada empat hal, yakni penanggulangan kemiskinan, kemudahan investasi, digitalisasi administrasi, dan prioritas aktual presiden (ais).<br>Sumber: https://www.anri.go.id/publikasi/berita/babak-penyisihan-arsiparis-teladan-nasional-tahun-2023</p>', '2023-05-24 05:01:15', '2023-05-24 05:01:15'),
(54, 102, 1, 'seminar-kearsipan-bertema-how-to-think-as-a-millenial', '20230525100930.jpeg', '<p style=\"text-align: justify;\">Dinas Perpustakaan dan Kearsipan (Dispusip) Provinsi DKI Jakarta bersama Asosiasi Arsiparis Indonesia (AAI) Wilayah Provinsi DKI Jakarta menggelar seminar kearsipan bertema How To Think As a Millenial dengan menghadirkan nara sumber Penasehat AAI Wilayah Provinsi DKI Jakarta, Afutami pada hari Rabu 24 Mei 2023 di ruang seribu wajah Balaikota Blok G Lantai 22, Gambir, Jakarta Pusat. Seminar dibuka oleh Kepala Dinas Perpustakaan dan Kearsipan Provinsi DKI Jakarta, Firmansyah, digelar dalam rangka HUT Kearsipan ke-52 yang membicarakan bagaimana profesi arsiparis ke depan memiliki peran penting guna melindungi dan menyelamatkan dokumen negara terkait pelaksanaan pembangunan Kota Jakarta ke depan baik bersifat historical maupun administrasi.</p>', '2023-05-25 10:09:30', '2023-05-25 10:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_datamaster`
--

CREATE TABLE `tbl_datamaster` (
  `id` bigint(20) NOT NULL,
  `nama_kadis` varchar(255) DEFAULT NULL,
  `nip_kadis` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_datamaster`
--

INSERT INTO `tbl_datamaster` (`id`, `nama_kadis`, `nip_kadis`, `created_at`, `updated_at`) VALUES
(1, 'Wahyu Haryadi', '196701151993031005', '2020-02-17 11:29:38', '2020-05-19 07:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id` bigint(20) NOT NULL,
  `inst` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id`, `inst`, `created_at`, `updated_at`) VALUES
(4, 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '2019-09-19 19:49:28', '2019-10-05 02:12:22'),
(5, 'DINAS KELAUTAN DAN PERTANIAN PROVINSI DKI JAKARTA', '2019-09-19 19:49:49', '2019-09-19 19:49:49'),
(7, 'DINAS PARIWISATA DAN KEBUDAYAAN PROVINSI DKI JAKARTA', '2019-09-19 19:50:16', '2019-09-19 19:50:16'),
(8, 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '2019-09-19 19:50:30', '2019-09-19 19:50:30'),
(9, 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '2019-09-19 19:50:48', '2019-09-19 19:50:48'),
(10, 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '2019-09-19 19:51:00', '2019-09-19 19:51:00'),
(12, 'RSUD TARAKAN JAKARTA PUSAT', '2019-09-19 19:51:30', '2019-09-19 19:51:30'),
(13, 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '2019-09-19 19:51:44', '2019-09-19 19:51:44'),
(14, 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '2019-09-19 19:51:56', '2019-09-19 19:51:56'),
(15, 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '2019-09-19 19:52:10', '2019-09-19 19:52:10'),
(16, 'WALIKOTA KOTA ADMINISTRASI JAKARTA PUSAT', '2019-09-19 19:52:22', '2019-09-19 19:52:22'),
(17, 'WALIKOTA KOTA ADMINISTRASI JAKARTA BARAT', '2019-09-19 19:52:35', '2019-09-19 19:52:35'),
(18, 'WALIKOTA KOTA ADMINISTRASI JAKARTA SELATAN', '2019-09-19 19:52:46', '2019-09-19 19:52:46'),
(19, 'WALIKOTA KOTA ADMINISTRASI JAKARTA PUSAT', '2019-09-19 19:52:58', '2019-09-19 19:52:58'),
(20, 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '2019-10-16 13:45:00', '2019-10-16 13:45:00'),
(21, 'DINAS PENANGGULANGAN KEBAKARAN DAN PENYELAMATAN PROVINSI DKI JAKARTA', '2019-10-17 09:37:31', '2019-10-17 09:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unitkerja`
--

CREATE TABLE `tbl_unitkerja` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_k` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_unitkerja`
--

INSERT INTO `tbl_unitkerja` (`id`, `u_k`, `created_at`, `updated_at`) VALUES
(2, 'BIRO UMUM', '2019-08-30 11:32:12', '2020-01-01 23:16:28'),
(4, 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', '2019-09-19 19:45:27', '2019-09-19 19:45:27'),
(5, 'BAGIAN UMUM DAN PEMASARAN', '2019-09-19 19:45:45', '2019-09-19 19:45:45'),
(6, 'BAGIAN UMUM DAN PROTOKOL', '2019-09-19 19:45:55', '2019-09-19 19:45:55'),
(7, 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', '2019-09-19 19:46:07', '2019-09-19 19:46:07'),
(8, 'BIDANG PENDIDIK DAN TENAGA KEPENDIDIKAN', '2019-09-19 19:46:19', '2019-09-19 19:46:19'),
(9, 'BIDANG PENGELOLAAN ARSIP', '2019-09-19 19:46:32', '2019-09-19 19:46:32'),
(10, 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', '2019-09-19 19:46:53', '2019-09-19 19:46:53'),
(11, 'SEKRETARIAT', '2019-09-19 19:47:09', '2019-09-19 19:47:09'),
(12, 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA BARAT', '2019-09-19 19:47:22', '2019-09-19 19:47:22'),
(13, 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA TIMUR', '2019-09-19 19:47:35', '2019-09-19 19:47:35'),
(14, 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA SELATAN', '2019-09-19 19:47:46', '2019-09-19 19:47:46'),
(15, 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA PUSAT', '2019-09-19 19:47:58', '2019-09-19 19:47:58'),
(16, 'UNIT PELAKSANA PTSP KEPULAUAN', '2019-09-19 19:48:20', '2019-09-19 19:48:20'),
(17, 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', '2020-02-26 13:48:30', '2020-02-26 13:48:30'),
(18, 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', '2020-03-30 07:48:03', '2020-03-30 07:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `category_id`, `ticket_id`, `title`, `priority`, `message`, `status`, `created_at`, `updated_at`) VALUES
(7, 13, 2, 'YVRCDVX7M4', 'Asrip', 'high', 'Minta arsip', 'Closed', '2023-04-27 00:01:16', '2023-04-27 00:03:35'),
(8, 13, 2, 'MTR8FZTDZ8', 'Hukum Arsip', 'high', 'Coba', 'Open', '2023-05-20 20:51:49', '2023-05-20 20:51:49'),
(9, 13, 2, 'U2JMK9HUBM', 'Hukum Arsip', 'high', 'Coba', 'Open', '2023-05-20 20:52:08', '2023-05-20 20:52:08'),
(10, 13, 1, 'IDE0UJ4WDZ', 'Mau Tanya Arsip', 'high', 'awewqe', 'Open', '2023-05-20 20:53:55', '2023-05-20 20:53:55'),
(11, 13, 1, 'UYX5IDJOWQ', 'Mau Tanya Arsip', 'high', 'awewqe', 'Open', '2023-05-20 20:54:14', '2023-05-20 20:54:14'),
(12, 13, 1, 'BM5FCNJZ1P', 'COba', 'high', 'Ok', 'Open', '2023-05-21 08:25:14', '2023-05-21 08:25:14'),
(13, 102, 1, '3BKUMFKN3K', 'Uji kompetensi', 'high', 'Apakah saya bisa ikut uji kompetensi madya', 'Open', '2023-05-23 13:45:42', '2023-05-23 13:45:42'),
(14, 13, 1, 'W94593NO4B', 'Ok', 'high', 'Ok', 'Open', '2023-05-23 22:18:53', '2023-05-23 22:18:53'),
(15, 13, 2, 'GLECJ8XIFU', 'Test', 'high', 'Masa', 'Open', '2023-05-23 22:20:18', '2023-05-23 22:20:18'),
(16, 13, 2, '0MXAXMDWPY', 'Test', 'high', 'Test', 'Open', '2023-05-23 14:21:07', '2023-05-23 14:21:07'),
(17, 13, 2, 'TLAIOFJP7P', 'MAsa', 'high', 'ok', 'Open', '2023-05-23 21:23:21', '2023-05-23 21:23:21'),
(18, 101, 1, '5CJJKERKX9', 'Tes', 'high', '123', 'Closed', '2023-05-24 03:29:45', '2023-05-24 04:14:01'),
(19, 102, 5, 'BMF5ZVSZXW', 'Bagaimana agar bisa kurus', 'high', 'Mohon bimbingannya agar bisa membuat badan menjadi ideal', 'Open', '2023-05-25 10:10:32', '2023-05-25 10:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `no_telpn` varchar(20) NOT NULL,
  `nrk` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `no_ser_kar` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `t_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `j_k` varchar(255) NOT NULL,
  `pang` varchar(255) NOT NULL,
  `gol` varchar(255) NOT NULL,
  `tmt_pang` varchar(255) NOT NULL,
  `ting` varchar(255) NOT NULL,
  `tmt_ting` varchar(255) NOT NULL,
  `u_k` varchar(255) NOT NULL,
  `inst` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `verifikasi` int(11) NOT NULL,
  `persetujuan` varchar(7) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `kategori`, `no_telpn`, `nrk`, `nip`, `no_ser_kar`, `name`, `t_lahir`, `tgl_lahir`, `j_k`, `pang`, `gol`, `tmt_pang`, `ting`, `tmt_ting`, `u_k`, `inst`, `foto`, `email`, `email_verified_at`, `password`, `level`, `is_admin`, `id_anggota`, `verifikasi`, `persetujuan`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, '', '0', '177890', '197610102010011027', 'Q 090540', 'OKGANI SUHYOKO , S.S.', 'JAKARTA', '1976-10-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2019-04-01', 'AHLI MUDA', '2017-10-04', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1571972716_201931003 Okgani.jpg', 'okgani@ptsp.com', NULL, '$2y$10$AMjnBhSnHcG/PEPErmJQTOkkbq7xvBT4pE.NwOtLI6nxYt8aR4CBa', 'ADMIN', 1, 201931003, 1, '', NULL, '2019-08-26 08:04:03', '2023-04-25 18:33:37'),
(13, '', '0', '177525', '198610132010011012', 'Q 243137', 'BANGUN WIRYAWAN, S.E.', 'JAKARTA', '1986-10-13', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2019-10-01', 'AHLI PERTAMA', '2018-05-09', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1571972739_201931034 Bangun Wiryawan fix.jpg', 'bangun@pstik.com', NULL, '$2y$10$bs1wa8no9RLWNt.gHeH/5.ZVh3yrJTyclG9oWhp.kgHQkvqKfOLFC', 'USERS', 0, 201931034, 1, '', NULL, '2019-08-26 08:56:31', '2023-04-26 20:43:46'),
(17, '', '0', '332211', '198210092010011018', 'Q 240127', 'DIMAS OKTAVIANTO, S.KOM', 'JAKARTA', '1982-10-09', 'LAKI-LAKI', 'PENATA MUDA', 'III-b', '2019-10-01', 'AHLI PERTAMA', '2018-05-09', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1571972760_201931038 Dimas Oktavianto fix.jpg', 'dimas@pstik.com', NULL, '$2y$10$bs1wa8no9RLWNt.gHeH/5.ZVh3yrJTyclG9oWhp.kgHQkvqKfOLFC', 'ADMIN', 1, 201931038, 1, '', NULL, '2019-08-27 17:16:04', '2023-05-22 02:28:33'),
(19, '', '0', '123123', '196304241985032010', 'E 001079', 'PRATIWI, S.AP.', 'JAKARTA', '1963-04-24', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2014-04-01', 'MAHIR', '2015-04-10', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '1571972772_201931006 Pratiwi, S.AP..jpg', 'pratiwi@walkotjaktim.com', NULL, '$2y$10$bs1wa8no9RLWNt.gHeH/5.ZVh3yrJTyclG9oWhp.kgHQkvqKfOLFC', 'ADMIN', 1, 201931006, 1, '', NULL, '2019-10-03 01:45:30', '2023-05-22 02:29:09'),
(22, '', '0', '000000', '196407241987031004', 'E 474985', 'YULIANTO', 'JAKARTA', '1964-08-24', 'LAKI-LAKI', 'PENATA', 'III-b', '2009-10-01', 'MAHIR', '2019-08-09', 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA BARAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1571972445_201931039 Yulianto.jpg', 'jhon@jhon.com', NULL, '$2y$10$PdfOcjT4IPkJ58lKG26dguN1jTcz73B1dstURSuLpVpH/S5frrw22', 'USERS', 0, 201931039, 1, '', NULL, '2019-10-04 19:50:13', '2023-05-22 13:32:14'),
(24, '', '0', '000000', '196905171997031009', 'G 419176', 'JONRIADI', 'SIULAK GEDANG', '1969-05-17', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2012-04-01', 'MAHIR', '2019-03-04', 'BAGIAN UMUM DAN PEMASARAN', 'RSUD TARAKAN JAKARTA PUSAT', '1571207682_Jonriadi.jpeg', 'users@users.com', NULL, '$2y$10$4XRGEjcvtpgCU47rzxDlE.3V6MvYNIkEV9RDycV1Ba32KkiTJ9/kK', 'USERS', 0, 201931035, 1, '', NULL, '2019-10-06 14:20:07', '2023-05-22 13:32:39'),
(26, '', '0', '3123', '196610281991091001', 'F 228740', 'SAFRINO OKMAN', 'JAKARTA', '1966-10-28', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2010-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1579829999_1572242690_201931023 Safrino Okman fix.jpg', 'users@users.id', NULL, '$2y$10$XIqMuBULYGeuekGhkzW80eUmC1AVOGYI9G1bzNPKfAlhkbN2Fp5WG', 'USERS', 0, 201931023, 1, '', NULL, '2019-10-16 06:40:12', '2023-05-22 13:33:05'),
(30, '', '0', '164925', '197207182006042001', 'N 232181', 'ASTRIA ZOHRAT TAWANGRATNA, S.S.', 'KEBUMEN', '1972-07-18', 'PEREMPUAN', 'PENATA', 'III-c', '2019-10-01', 'PENYELIA', '2018-02-07', 'SEKRETARIAT', 'DINAS PARIWISATA DAN KEBUDAYAAN PROVINSI DKI JAKARTA', '1573008042_201931057 Astria Zohrat Tawangratna.jpg', 'astria@aaijakarta.or.id', NULL, '$2y$10$42LMIMgv3sZiG9VXWgT8F..sYad/u3w5jWykB3jlaRaCx1Cd1UzMm', 'USERS', 1, 201931057, 1, '', NULL, '2019-10-16 15:45:08', '2023-05-22 04:38:57'),
(34, 'PNS', '0', '000000', '196810271997032003', 'G 415063', 'DWI ANUGRAHENI ANDAYANTI', 'JAKARTA', '1968-10-27', 'PEREMPUAN', '', 'III-b', '2013-04-01', 'MAHIR', '2019-07-26', 'SEKRETARIAT', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '1572320089_201931065 Dwi Anugraheni.jpg', 'G415063@dkijakarta.com', NULL, '$2y$10$Z7p2ZkJe1DXu7b.FUzfAn.t7Y6zsRdghVOsr1wnjHijc/Kk4k0d5q', 'USERS', 0, 201931064, 1, '', NULL, '2019-10-16 15:58:39', '2023-05-31 02:31:42'),
(35, '', '0', '165290', '197408242006041013', 'P 020945', 'MOHAMAD HANAFI, A.MD.', 'SURABAYA', '1974-08-24', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2014-04-01', 'MAHIR', '2020-01-07', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '1572244331_201931005 Mohamad Hanafi.jpg', 'P020945@dkijakarta.com', NULL, '$2y$10$TCqcA0pAr1bF3qTPCigpj.XCsFLqRj1N1i5z71hGZMcrsmdEBmUxm', 'USERS', 0, 201931005, 1, '', NULL, '2019-10-16 16:01:12', '2023-05-22 13:33:53'),
(36, 'PNS', '0', '178274', '198410302010012033', 'Q 089735', 'ELOK RISCA DAMAYANTI, S.E.', 'DEPOK', '1984-10-30', 'LAKI-LAKI', 'PENGATUR', 'II-c', '2019-10-01', 'AHLI MUDA', '2019-07-26', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '1572244697_201931010 Elok Risca Damayanti.jpg', 'Q089735@dkijakarta.com', NULL, '$2y$10$Ce15HUDnhsBs4MhKkgVM0.Di2vXyiIPpEN4LhKapXbTmG4YYzqVcm', 'USERS', 1, 201931010, 1, '', NULL, '2019-10-16 16:04:37', '2023-05-24 05:35:15'),
(37, '', '0', '000000', '196602171987031005', 'E 388412', 'SUGIANTO, A.MD.', 'JAKARTA', '1966-02-17', 'LAKI-LAKI', 'PENATA', 'III-c', '2011-10-01', 'MAHIR', '2019-03-04', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '1572245175_201931017 Sugianto fix.jpg', 'E388412@dkijakarta.com', NULL, '$2y$10$64IQy.dmbH4hgDhQaP7rMOaiiSMHtfSkl8m8xtWDmldZ9lp3WIF.y', 'USERS', 0, 201931017, 1, '', NULL, '2019-10-16 16:27:32', '2023-05-22 13:36:24'),
(38, '', '0', '000000', '196706271994012001', 'G 119134', 'YOSIFA ISMAYANTI, S.H.', 'JAKARTA', '1967-06-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2015-10-05', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '1572245645_201931036 Yosifa Ismayanti fix.jpg', 'G119134@dkijakarta.com', NULL, '$2y$10$fey1jZ8FuJu0aM8m0cXQpO1EepgW0db7Xse2gPmfLVtODghIPVqu6', 'USERS', 0, 201931036, 1, '', NULL, '2019-10-17 02:00:16', '2023-05-22 13:36:37'),
(39, '', '0', '000000', '196512201985032002', 'B 372117', 'NINING KARTINI', 'KUNINGAN', '1965-12-20', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572245985_201931027 Nining Kartini fix.jpg', 'B372117@dkijakarta.com', NULL, '$2y$10$Mwo.v9vhreZF6zfVj7JeeuatedOm/GAwPubzz6jCx5gN1bbx6pt.i', 'USERS', 0, 201931027, 1, '', NULL, '2019-10-17 02:03:41', '2023-05-22 13:35:53'),
(40, 'PNS', '0', '0', '198207142010012034', 'A 0506320', 'DEVI RATNASARI', 'PEMALANG', '1982-07-14', 'LAKI-LAKI', 'PENGATUR', 'II-c', '2014-04-01', 'AHLI MUDA', '2015-12-22', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '1571278065_girl.jpg', 'A0506320@dkijakarta.com', NULL, '$2y$10$5qZO7q3IasHtWlJkxzCcbeMfYvg/P2..T2NdjCsaCvIGVJisJGoGK', 'USERS', 0, 0, 1, '', NULL, '2019-10-17 02:07:45', '2023-05-24 05:26:04'),
(41, '', '0', '123123', '196411191987011002', 'E 056760', 'FANDOLI', 'SIKUMPUL', '1964-11-19', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2017-04-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572247128_201931004 Fandoli.jpg', 'E056760@dkijakarta.com', NULL, '$2y$10$G9BlfUf7IwVsnWx82SVOsuL8XAJdLskL6Vpz5xbmLK3J9KwyKQ3jK', 'USERS', 0, 201931004, 1, '', NULL, '2019-10-17 02:21:19', '2023-05-22 13:38:07'),
(42, '', '0', '131232', '196204231984102001', 'D 106067', 'SRI SUTARSIH', 'JAKARTA', '1962-04-23', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2013-12-02', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572247096_201931046 Sri Sutarsih.jpg', 'D106067@dkijakarta.com', NULL, '$2y$10$s2FPbYogZUgDbC6IIcP/0eXqLBvMaYQnsHHn4Z2IS9hWGO8YW5mxO', 'USERS', 0, 201931046, 1, '', NULL, '2019-10-17 02:25:03', '2023-05-22 13:38:57'),
(43, '', '0', '108652', '196608311986031002', 'E 434456', 'AGUS TANTYO', 'JAKARTA', '1966-08-31', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2018-04-01', 'PENYELIA', '2017-03-02', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1572247384_201931019 Agus Tantyo fix.jpg', 'E434456@dkijakarta.com', NULL, '$2y$10$S215DFBXvKYjGXdjk48imOnkT5OHzFxu0PCWxhImORFbzf.NqZQVK', 'USERS', 0, 201931019, 1, '', NULL, '2019-10-17 02:27:38', '2023-05-22 02:32:07'),
(44, '', '0', '000000', '198602282010012041', 'A 05003296', 'WISE WINEKA', 'JAKARTA', '1986-02-28', 'PEREMPUAN', 'PENATA MUDA', 'III-a', '2018-04-01', 'AHLI PERTAMA', '2019-08-08', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '1572247994_201931002 Wise Wineka.jpg', 'A05003296@dkijakarta.com', NULL, '$2y$10$F5GU/0JImeAvPotkGr3op.n6nJ5Da232zkCTjfsrALyML/y.WaWJW', 'USERS', 0, 201931002, 1, '', NULL, '2019-10-17 02:30:37', '2023-05-22 13:39:36'),
(45, '', '0', '123123', '198806042011011007', 'Q 356907', 'REZA PRIATNA', 'JAKARTA', '1988-06-04', 'LAKI-LAKI', 'PENGATUR TK.1', 'II-d', '2017-10-01', 'TERAMPIL', '2014-11-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572313481_201931051 Reza Priatna.jpg', 'Q356907@dkijakarta.com', NULL, '$2y$10$g9RmfktLRMGnh7kfk0AMoOuBt/5xL0ZX/vDAtrBjL2fxawX/GO8KC', 'USERS', 0, 201931051, 1, '', NULL, '2019-10-17 02:33:25', '2023-05-22 13:40:09'),
(46, '', '0', '000000', '196805201990111002', 'E 926758', 'SETIYONO, A.MD.', 'SIDOMULYO', '1968-05-20', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'MAHIR', '2015-07-10', 'SEKRETARIAT', 'DINAS PENANGGULANGAN KEBAKARAN DAN PENYELAMATAN PROVINSI DKI JAKARTA', '1571279816_man.jpg', 'E926758@dkijakarta.com', NULL, '$2y$10$3jm/.27lzyinci/tlw2C4OmkpAGFm.6JLvvtWyHUpIgqDQCBeCpfa', 'USERS', 0, 0, 0, '', NULL, '2019-10-17 02:36:56', '2020-04-21 03:40:37'),
(48, '', '0', '000000', '197109262000121001', 'E 434456', 'JAYA SENTOSO', 'JAKARTA', '1971-09-26', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2018-04-01', 'PENYELIA', '2019-07-23', 'BIDANG PENDIDIK DAN TENAGA KEPENDIDIKAN', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '1573007965_201931020 Jaya Sentosa.jpg', 'E434453@dkijakarta.com', NULL, '$2y$10$MTock/sfMUU6jyNeiXLTFOwDNNCMLICBvJme3HzhNsqjjPfdNQjAO', 'USERS', 0, 201931020, 1, '', NULL, '2019-10-17 02:41:55', '2023-05-22 13:41:16'),
(49, '', '0', '000000', '197303251997031002', 'G 419283', 'ENDI, S.AP.', 'RAJADESA', '1973-03-25', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'AHLI PERTAMA', '2017-08-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '1572314634_201931016 Endi Rajadesa fix.jpg', 'G419283@dkijakarta.com', NULL, '$2y$10$LyRiHLU4eWuMTPourp1AxO81Y1LjDSOuuLqMImEM6Ujw8fuKlUefa', 'USERS', 0, 201931016, 1, '', NULL, '2019-10-17 03:34:23', '2023-05-22 13:41:40'),
(50, '', '0', '000000', '197111111996031002', 'G 415333', 'LUHUT SIHOMBING', 'BANJARBARU', '1971-11-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-10-01', 'AHLI MUDA', '2019-02-18', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572315722_201931015 Luhut Sihombing, S.S.T.Ars..jpg', 'G415333@dkijakarta.com', NULL, '$2y$10$p/l6Yi4e9qGzW0WGqAPknOdrsECL1n0/hs6x5tEb85oJpjhCEyXU6', 'USERS', 0, 201931015, 1, '', NULL, '2019-10-17 03:36:38', '2023-05-22 13:42:06'),
(51, '', '0', '000000', '197702112010012010', 'Q 092057', 'DINI DWI UTARI HANDAYANTI, S.SOS.', 'BANDUNG', '1977-02-11', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2014-10-03', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572316695_201931007 Dini Dwi Utari.jpg', 'Q092057@dkijakarta.com', NULL, '$2y$10$LBEDUrAhDoF0IhXN1hhlN.6JJ67O0ydjv7pfwQQ7.eyNQduR1dF8e', 'USERS', 0, 201931007, 1, '', NULL, '2019-10-17 03:39:34', '2023-05-22 13:42:31'),
(52, '', '0', '132131', '196307141989101001', 'E 688033', 'HASAN', 'JAKARTA, 14-07-1963', '1963-07-14', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2017-10-01', 'MAHIR', '2013-08-02', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '1572317050_201931055 Hasan.jpg', 'E688033@dkijakarta.com', NULL, '$2y$10$9XANyQOcBcZuMVWO0EActuY6VY79hTcDQ4VIG7ml2p3NnSKjWu2n6', 'USERS', 0, 201931055, 1, '', NULL, '2019-10-17 03:42:32', '2023-05-22 13:44:07'),
(53, '', '0', '000000', '196806151989101001', 'E 912043', 'PRAYITNO', 'JAKARTA', '1968-06-15', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-10-01', 'MAHIR', '2014-08-29', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '1572317516_201931054 Prayitno.jpg', 'E912043@dkijakarta.com', NULL, '$2y$10$kgn6.WTpaZRkdVIVOYQXyugGvO7eEZ3h/ar3UghsWwIjcCVbpxDhG', 'USERS', 0, 201931054, 1, '', NULL, '2019-10-17 03:45:04', '2023-05-22 13:44:56'),
(54, '', '0', '000000', '196406291987032004', 'E 357509', 'WIWIK KURNIAWATI', 'JAKARTA', '1964-06-29', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572318079_201931031 Wiwik Kurniawati.jpg', 'E357509@dkijakarta.com', NULL, '$2y$10$qaJeN///m1yBVxROiEfyt.MMnrf1Pz5rVPAWDeVhJrT.sJ4MAsDoi', 'USERS', 0, 201931031, 1, '', NULL, '2019-10-17 03:47:49', '2023-05-22 13:45:20'),
(55, '', '0', '123123', '196403111985031011', 'D 350524', 'SUGENG LESTARI, S.E.', 'KULONPROGO', '1964-03-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2012-10-01', 'PENYELIA', '2011-12-07', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '1572318289_201931056 Sugeng Lestari.jpg', 'D350524@dkijakarta.com', NULL, '$2y$10$03QckMFu0IGe442KWopbseU5mxNJGwVGBkBaMmiRo8oZcQy6.s9rG', 'USERS', 0, 201931056, 1, '', NULL, '2019-10-17 03:50:45', '2023-05-22 13:45:58'),
(56, '', '0', '', '196603051989031012', 'E 632330', 'MANSYUR, SP', 'KUNINGAN', '1966-03-05', 'LAKI-LAKI', 'PENATA', 'III-c', '2013-04-01', 'MAHIR', '2013-09-12', 'SEKRETARIAT', 'DINAS KELAUTAN DAN PERTANIAN PROVINSI DKI JAKARTA', '1571284416_man.jpg', 'E632330@dkijakarta.com', NULL, '$2y$10$XXHkc7aWWsE1WJt9UsODlelwclPKbm2uuUSDpiZ7RepHsd8ZP4Kf.', 'USERS', 0, 0, 0, '', NULL, '2019-10-17 03:53:36', '2019-10-17 03:53:36'),
(57, '', '0', '000000', '196511101993101001', 'G 068740', 'SUYITNO', 'NGAWI', '1965-11-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-04-01', 'AHLI MUDA', '2015-11-09', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '1572318742_201931044 Suyitno.jpg', 'G068740@dkijakarta.com', NULL, '$2y$10$NnZxaUaFfUCHlvhxHia5jOc4Lt93CPu/EEQuNtxknrZPXOR1x8YHy', 'USERS', 0, 201931044, 1, '', NULL, '2019-10-17 03:56:10', '2023-05-22 13:46:45'),
(58, '', '0', '000000', '196810151998032006', 'H 072714', 'SITI ZULAIKA ZAIN', 'JAKARTA', '1968-10-15', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2014-02-10', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572316339_201931043 Siti Zulaika Zain fix.jpg', 'H072714@dkijakarta.com', NULL, '$2y$10$DNGiAzWd9bMNxyY/jsKZMOmZTIBk2BnrhXbhhtMzg84wjw4SNAls6', 'USERS', 0, 201931043, 1, '', NULL, '2019-10-17 03:58:46', '2023-05-22 13:47:20'),
(66, '', '0', '12221', '123456', '123456', 'SUPER ADMIN', 'JAKARTA', '1990-01-01', 'LAKI-LAKI', 'PENGATUR', 'III-d', '2020-01-01', 'AHLI MUDA', '2020-01-01', 'BIRO UMUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '20230523120906.User-Avatar-Profile-PNG-Isolated-Clipart.png', 'admin@aaijakarta.or.id', NULL, '$2y$10$t9scGgwNbAxIn5242/y/lOdDm1io1ugPy2use4qSaQ6OGYOJ3Mhr6', 'SUPERADMIN', 1, 0, 1, '', NULL, '2020-02-14 07:43:45', '2023-05-23 22:00:57'),
(67, '', '0', '165616', '197311162006041015', 'N 583621', 'ARIS PANTOYO', 'JAKARTA', '1973-11-16', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-10-01', 'MAHIR', '2019-05-03', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1582598262_201931028 Aris Pantoyo.jpg', 'arsp763@gmail.com', NULL, '$2y$10$bs1wa8no9RLWNt.gHeH/5.ZVh3yrJTyclG9oWhp.kgHQkvqKfOLFC', 'USERS', 0, 201931028, 1, '', NULL, '2020-02-25 02:37:42', '2023-05-22 02:29:39'),
(68, '', '0', '127911', '196407121992031008', 'F 409504', 'ARIS WIDIANA', 'KUNINGAN', '1964-07-12', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2009-04-01', 'AHLI PERTAMA', '2012-07-04', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1582699522_201931037 Aris Widiana fix.jpg', 'arisw@gmail.com', NULL, '$2y$10$eDSm2i0CWWM4DvG5c3.Q8OoLvRww/6SJcPEFX43VEQMS0P/1m93.q', 'USERS', 0, 201931037, 1, '', NULL, '2020-02-26 06:45:22', '2023-05-22 13:47:58'),
(69, 'PNS', '0', '181383', '198103302011011007', 'Q 356483', 'ADE MARDIANSYAH', 'JAKARTA', '1981-03-30', 'LAKI-LAKI', '', 'II-d', '2015-04-01', 'TERAMPIL', '2018-11-28', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1582701455_201931063 Ade Mardiansyah.jpeg', 'ade@gmail.com', NULL, '$2y$10$XPYgQbdYWPDTUpeVPwCNxukJFJVR2z3gZeGdgJpLqvb7/hm0rax16', 'USERS', 0, 201931063, 1, '', NULL, '2020-02-26 07:17:35', '2023-05-31 02:31:28'),
(70, '', '0', '175080', '197004202009042001', 'Q 131926', 'TRI WAHYUNIATI', 'BLITAR', '1970-04-20', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-a', '2016-10-01', 'AHLI PERTAMA', '2019-02-13', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1583117037_201931030 Tri Wahyuniarti.jpg', 'triw@gmail.com', NULL, '$2y$10$yuBVHMId9MZws2zxdnAVaud8EyOnhqP6m75mkyy46MDWBV0LEGdZ2', 'USERS', 0, 201931030, 1, '', NULL, '2020-03-02 02:43:57', '2023-05-22 13:48:31'),
(71, '', '0', '119959', '196801131996031002', 'G 353924', 'UUS SAEPUDIN, S.AP.', 'PURWAKARTA', '1968-01-13', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2016-04-01', 'AHLI PERTAMA', '2016-10-20', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1583996919_201931014 Uus Saepudin.jpg', 'uussaepudin32@gmail.com', NULL, '$2y$10$GEmlT/0ntbBByNvX5ks8ZuTSGuTOnpEb5AkSXzl5HVG9einARwmyC', 'USERS', 0, 201931014, 1, '', NULL, '2020-03-12 07:08:39', '2023-05-22 13:49:35'),
(72, '', '0', '195892', '196812182009041001', 'Q 356483', 'ASIKIN', 'BIMA', '1968-12-18', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-10-01', 'AHLI MUDA', '2018-12-03', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1584323085_201931013 Asikin.JPG', 'asikin.mr@gmail.com', NULL, '$2y$10$HD/PIVKTotmBgVp0xiy4J.ll/FTeKLeOwr8swPorfprDD2CGO5OBK', 'USERS', 0, 201931013, 1, '', NULL, '2020-03-16 01:44:46', '2023-05-22 13:50:00'),
(73, 'PNS', '0', '101447', '196503091985032007', 'D 344426', 'SUHAINI, S.H.', 'JAKARTA', '1965-03-09', 'PEREMPUAN', 'PENATA', 'III-c', '2013-10-01', 'AHLI MUDA', '2018-11-29', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1585523128_201931042 Suhaini.jpg', 'esuhaini30@gmail.com', NULL, '$2y$10$b3neS7cj./m10WIvsVVw1OdOCPzVk373nFTGnvbyES.cjeL903KNO', 'USERS', 0, 201931042, 1, '', NULL, '2020-03-29 23:05:28', '2023-05-31 02:31:04'),
(74, '', '0', '118026', '196907121993032006', 'G 044960', 'ENDANG PUJI ASTUTI', 'OGAN KOMERING ULU', '1969-07-12', 'PEREMPUAN', 'PENATA', 'III-c', '2017-10-01', 'AHLI MUDA', '2019-03-06', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1585523712_201931032 Endang Puji Astuti.jpg', 'endangpuji07@gmail.com', NULL, '$2y$10$3WtdhEzS0sQj9CTjZOLi6eUJvf9itCCTed392AeRinja.DjpooKce', 'USERS', 0, 201931032, 1, '', NULL, '2020-03-29 23:15:12', '2023-05-22 13:53:01'),
(75, '', '0', '123456', '197806162006041022', 'N 231999', 'NURCAHYO', 'JAKARTA', '1978-06-16', 'LAKI-LAKI', 'PENATA', 'III-c', '2014-04-01', 'AHLI MUDA', '2017-10-04', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1585525044_201931040 Nurcahyo.jpg', 'inoengcahyo@gmail.com', NULL, '$2y$10$UwYT.C1pMcJ8TTxoQYAjPu.kmi/BxYyHTiyNizOy6ZF35PlIVzmY.', 'USERS', 0, 201931040, 1, '', NULL, '2020-03-29 23:37:24', '2023-05-22 13:54:41'),
(76, 'PNS', '0', '119699', '197303211996031001', 'G 303292', 'AGUS, S.H.', 'TIGARAKSA', '1973-03-21', 'LAKI-LAKI', 'PENGATUR', 'II-c', '2017-04-01', 'AHLI MUDA', '2019-02-25', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '1585528584_201931025 Agus.jpeg', 'agusg598@gmail.com', NULL, '$2y$10$8Wr7KxRy/Vfxy0v2/fo4uOFximnEWP4mI6wtK8gucWOGS0Y1GBs9K', 'USERS', 0, 0, 1, '', NULL, '2020-03-30 00:36:24', '2023-05-23 13:27:41'),
(77, 'PNS', '0', '000000', '198009092010012029', 'Q 092516', 'YUNIARTI, S.HUM.', 'JAKARTA', '1980-09-09', 'PEREMPUAN', 'PENATA', 'III-c', '2018-04-01', 'AHLI MUDA', '2019-03-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1587596489_201931033 Yuniarti.jpg', 'bella.yuni@gmail.com', NULL, '$2y$10$vEwTk47f7KuZURivaVg5sO.o3s.qhS/.Kz5hFxeDKzNYosHNGm8ci', 'USERS', 0, 201931033, 1, '', NULL, '2020-04-22 23:01:29', '2023-05-31 02:06:16'),
(82, 'Pegawai BUMN/BUMD/Swasta', '123456789012', '0', '123213123213', '0', 'Adri Benjamin', 'JAKARTA', '2023-05-22', '---PILIH JENIS KELAMIN---', '0', '0', '0', '0', '0', 'WEQWE', '0', '0', 'andri@user.com', NULL, '$2y$10$6FzB/FCuKIhKc4iENydqnO/DIUBYSi1wsmo25/jSvM9Ys83/JZmzO', 'USERS', 0, 201931009, 1, '', NULL, '2023-05-22 14:03:42', '2023-05-22 14:04:39'),
(83, 'Pegawai BUMN/BUMD/Swasta', '012345678912', '0', '213213123123', '0', 'Agus G', 'JAKARTA', '2023-05-22', 'LAKI-LAKI', '0', '0', '0', '0', '0', 'DASDASD', '0', '0', 'agus@user.com', NULL, '$2y$10$QGfXTXeLLF7tsREEKrgHt.tshW4NtErdg6oTT0sMdW.ptlqXE3/gW', 'USERS', 0, 201931025, 1, '', NULL, '2023-05-22 14:06:09', '2023-05-22 14:06:47'),
(84, 'Pegawai BUMN/BUMD/Swasta', '021021010', '0', '1232131233', '0', 'Eko Parawiyanto, S.AP.', 'JAKARTA', '2023-05-22', 'LAKI-LAKI', '0', '0', '0', '0', '0', '213123', '0', '0', 'eko@user.com', NULL, '$2y$10$xIZ6Daxyr3OTouXI7Ua7KeAMQrrwszAH9rvBy60B5ixy8BSc.Hfla', 'USERS', 0, 201931058, 1, '', NULL, '2023-05-22 14:09:42', '2023-05-22 14:10:33'),
(85, 'Pegawai BUMN/BUMD/Swasta', '08080808080', '0', '213213213', '0', 'Endi S.AP, M.A.', 'Jakarta', '2023-05-22', 'LAKI-LAKI', '0', '0', '0', '0', '0', '3123123', '0', '0', 'endi@user.com', NULL, '$2y$10$nF8rjXDJaaRPRea5swSKXuOzy4d90p3eJQNLCvKTRBdxEl2MQB5O6', 'USERS', 0, 0, 0, '', NULL, '2023-05-22 14:11:40', '2023-05-22 14:11:40'),
(86, 'Pegawai BUMN/BUMD/Swasta', '00802183080', '0', '123123123', '0', 'Fransisca', 'Jakarta', '2023-05-22', 'LAKI-LAKI', '0', '0', '0', '0', '0', '3123123123', '0', '0', 'fransisca@user.com', NULL, '$2y$10$KJ/jBUlcP7JaAVH7JwcbXeL1TUmGUQwkYaGermZGCqscpaqU5YzBO', 'USERS', 0, 0, 0, '', NULL, '2023-05-22 14:12:38', '2023-05-22 14:12:38'),
(87, 'Pegawai BUMN/BUMD/Swasta', '002138210830128', '0', '12321321', '0', 'Haryana', 'Jakarta', '2023-05-22', 'LAKI-LAKI', '0', '0', '0', '0', '0', '3123123', '0', '0', 'haryana@user.com', NULL, '$2y$10$KKe54CJzfDlXuBgrP.llcuScXwYj5FZhdHY1j1Mc2wauUTt1Wro/i', 'USERS', 0, 0, 0, '', NULL, '2023-05-22 14:13:47', '2023-05-22 14:13:47'),
(88, 'Pegawai BUMN/BUMD/Swasta', '213213123213', '0', '213123213', '0', 'IWAN SATYOPRODJO, S.H., M.H.', 'JAKARTA', '2023-05-22', 'LAKI-LAKI', 'PENGATUR', 'II-c', '0', 'AHLI MUDA', '0', '213123123', '0', '0', 'iwan@user.com', NULL, '$2y$10$v7KxUpYcI5eBmVmjk1fmFOdXeAHUmml1rDvb6XPbwwJH5oK.rwBx2', 'USERS', 1, 201931011, 1, '', NULL, '2023-05-22 14:15:30', '2023-05-24 05:37:05'),
(89, 'Pegawai BUMN/BUMD/Swasta', '213123123123', '0', '213123123', '0', 'Khumedi', 'Jakarta', '2023-05-22', 'LAKI-LAKI', '0', '0', '0', '0', '0', '213123123', '0', '0', 'khumedi@user.com', NULL, '$2y$10$FXkjNXFiQbHCQ9cE.16ezO.9EENUqjZUMmolAE4CYcmCkskPw/MfG', 'USERS', 0, 0, 0, '', NULL, '2023-05-22 14:16:57', '2023-05-22 14:16:57'),
(90, 'Pegawai BUMN/BUMD/Swasta', '213123123', '0', '312313123', '0', 'M. Zulfikar Adi Wibowo', 'Jakarta', '2023-05-22', 'LAKI-LAKI', '0', '0', '0', '0', '0', '123123123', '0', '0', 'zulfikar@user.com', NULL, '$2y$10$IXBGz.AHM77/7Efq8UYfwOMxBHI3CV53hTgDWXENDFX8x1AgIWy/i', 'USERS', 0, 0, 0, '', NULL, '2023-05-22 14:18:07', '2023-05-22 14:18:07'),
(91, 'Pegawai BUMN/BUMD/Swasta', '213123123123', '0', '21312312', '0', 'Martini', 'Jakarta', '2023-05-22', 'LAKI-LAKI', '0', '0', '0', '0', '0', '23213213', '0', '0', 'martini@user.com', NULL, '$2y$10$7RChtrOJuI.dJ3x.BXQJzO2Pl/pK0FCk2.cFSsTJxYYQLmhbVzkf2', 'USERS', 0, 0, 0, '', NULL, '2023-05-22 14:19:02', '2023-05-22 14:19:02'),
(92, 'Pegawai BUMN/BUMD/Swasta', '123123123', '0', '123123123123', '0', 'Mimi Karminingsih', 'Jakrta', '2023-05-22', 'PEREMPUAN', '0', '0', '0', '0', '0', '123123', '0', '0', 'mimi@user.com', NULL, '$2y$10$/bQ2dH2JTxTHG0MRK6veoObVoUnnOvAwhf0s9JkDUfmDbmsMA.5Z.', 'USERS', 0, 0, 0, '', NULL, '2023-05-22 14:20:05', '2023-05-22 14:20:05'),
(93, 'Pegawai BUMN/BUMD/Swasta', '12312312312', '0', '21312312', '0', 'Muhamad', 'Jakarta', '2023-05-22', 'LAKI-LAKI', '0', '0', '0', '0', '0', '213123123', '0', '0', 'muhamad@user.com', NULL, '$2y$10$ddXRK.0y8IEzoY0y7j4QRung5lhAxXQurGohdfVqxemVjQ5IeVQ92', 'USERS', 0, 0, 0, '', NULL, '2023-05-22 14:22:39', '2023-05-22 14:22:39'),
(94, 'Pegawai BUMN/BUMD/Swasta', '213123123123', '0', '1312312321', '0', 'Ni Putu Kartika, S.AP., M.A.', 'Bali', '2023-05-22', 'PEREMPUAN', '0', '0', '0', '0', '0', '213123312', '0', '0', 'kartika@user.com', NULL, '$2y$10$VIn/39d3MukrEAt5Oh18j.udvuh2xoe1MZonwWZtkGuDkuw48Jrsy', 'USERS', 0, 0, 0, '', NULL, '2023-05-22 14:23:51', '2023-05-22 14:23:51'),
(95, 'PNS', '213123123123', '0', '3213213123', '0', 'PASIEM, S.SOS.', 'JAKAKRTA', '2023-05-22', 'LAKI-LAKI', 'TIDAK ADA', 'TIDAK ADA', '0', 'TIDAK ADA', '0', '213123123', '0', '0', 'pasiem@user.com', NULL, '$2y$10$oOQZpzJKgR1jH9zTAM/AL.6whPv43tZGqGEDK66YURz6fPw6Ps6E.', 'USERS', 0, 0, 0, '', NULL, '2023-05-22 14:25:18', '2023-05-31 02:06:59'),
(96, 'Pegawai BUMN/BUMD/Swasta', '2131231', '0', '123123', '0', 'R. SRI HARTATI', 'JAKARTA', '2023-05-22', 'LAKI-LAKI', 'PENGATUR', 'II-c', '0', 'AHLI MUDA', '0', '213213123', '0', '0', 'sri@user.com', NULL, '$2y$10$/oUUyH7DVQGSyePBR6c4p.SsYkB5BzSSDgEjn7p.gr9vssJQQ1HCW', 'USERS', 0, 201931047, 1, '', NULL, '2023-05-22 14:26:49', '2023-05-24 05:25:09'),
(97, 'Pegawai BUMN/BUMD/Swasta', '1231231233', '0', '213123123123', '0', 'RIA VICTORIA S. K. D.', '12323123', '2023-05-22', 'LAKI-LAKI', 'PENGATUR', 'II-c', '0', 'AHLI MUDA', '0', '123123213', '0', '0', 'ria@user.com', NULL, '$2y$10$rZxzQqTrTGLRk9OMiHLi8.0Gg4CuzbsJUQDsbR12wd..Pn0r0SaZu', 'USERS', 0, 201931041, 1, '', NULL, '2023-05-22 14:28:04', '2023-05-24 05:24:30'),
(98, 'Pegawai BUMN/BUMD/Swasta', '213123123', '0', '213213123', '0', 'ROSMIATI SOPAR', 'JAKARTA', '2023-05-22', 'LAKI-LAKI', 'PENGATUR', 'II-c', '0', 'AHLI MUDA', '0', '231312313', '0', '0', 'sopar@user.com', NULL, '$2y$10$LR9TXgLlSvBftv6JnGxfVuEM38nt96gCm0NSM9JNFi0pDb82DsC.O', 'USERS', 0, 201931059, 1, '', NULL, '2023-05-22 14:29:01', '2023-05-24 05:23:35'),
(99, 'Pegawai BUMN/BUMD/Swasta', '123123123', '0', '213123123', '0', 'RUHYAT', 'JAKARTA', '2023-05-22', 'LAKI-LAKI', 'PENGATUR', 'II-c', '0', 'AHLI MUDA', '0', '123213123', '0', '0', 'ruhyat@user.com', NULL, '$2y$10$bs1wa8no9RLWNt.gHeH/5.ZVh3yrJTyclG9oWhp.kgHQkvqKfOLFC', 'USERS', 1, 201931024, 1, '', NULL, '2023-05-22 14:30:12', '2023-05-24 05:20:57'),
(100, 'Pegawai BUMN/BUMD/Swasta', '213123123123', '0', '21312312', '0', 'SAPTADI SUHARTO', '231321321', '2023-05-22', 'LAKI-LAKI', 'PENGATUR', 'II-c', '0', 'AHLI MUDA', '0', '1231232', '0', '0', 'suharto@user.com', NULL, '$2y$10$DS6oGcopsBXSm5xZUNJmSemazq8A58vfsq2etZEnlUrB72Asn7sPu', 'USERS', 0, 201931060, 1, '', NULL, '2023-05-22 14:31:20', '2023-05-24 05:22:57'),
(102, 'Pegawai BUMN/BUMD/Swasta', '081313101221', '0', '197705032006041019', '0', 'ADITIA', 'JAKARTA', '1977-05-03', 'LAKI-LAKI', 'PENGATUR', 'II-c', '0', 'AHLI MUDA', '0', 'PUSDATIN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '20230531020551.User-Avatar-Profile-PNG-Isolated-Clipart.png', 'aditia.skom@gmail.com', NULL, '$2y$10$XzHEFDrAaomeFqC2dxlY7OrAgZZg9ig1GGjm0Z3zRsdYRT2kYtQFe', 'USERS', 0, 0, 1, '', NULL, '2023-05-23 13:12:55', '2023-05-31 02:05:51'),
(103, 'PNS (non Arsipari)', '081218400932', '0', '198511012010011013', '0', 'Ari Imansyah', 'Bogor', '1985-11-01', 'LAKI-LAKI', '0', '0', '0', '0', '0', 'Dispusip DKI Jakarta', '0', '0', 'ari.imansyah@gmail.com', NULL, '$2y$10$k7NyATzT3937V8GkWlEkuOJNYkGPoMdQsWkHLCzSMU/e1sZExu752', 'USERS', 0, 0, 0, '', NULL, '2023-05-25 09:35:35', '2023-05-25 09:35:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `halamans`
--
ALTER TABLE `halamans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iklans`
--
ALTER TABLE `iklans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_postings`
--
ALTER TABLE `kategori_postings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postings`
--
ALTER TABLE `postings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_datamaster`
--
ALTER TABLE `tbl_datamaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_unitkerja`
--
ALTER TABLE `tbl_unitkerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `halamans`
--
ALTER TABLE `halamans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `iklans`
--
ALTER TABLE `iklans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_postings`
--
ALTER TABLE `kategori_postings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postings`
--
ALTER TABLE `postings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_datamaster`
--
ALTER TABLE `tbl_datamaster`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_unitkerja`
--
ALTER TABLE `tbl_unitkerja`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
