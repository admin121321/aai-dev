-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 07, 2023 at 04:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sipka`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Urgent', '2023-01-04 06:07:50', '2023-01-04 06:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `ticket_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `ticket_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'asdasd', '2023-01-04 00:47:00', '2023-01-04 00:47:00'),
(2, 4, 1, 'Cobas', '2023-01-04 01:22:24', '2023-01-04 01:22:24'),
(3, 4, 2, 'Ahhhhas', '2023-01-04 01:23:00', '2023-01-04 01:23:00'),
(4, 4, 1, 'Ok', '2023-01-04 01:23:37', '2023-01-04 01:23:37'),
(5, 1, 1, 'sadsad', '2023-01-04 01:23:58', '2023-01-04 01:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `halamans`
--

CREATE TABLE `halamans` (
  `id` int UNSIGNED NOT NULL,
  `id_user` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `halamans`
--

INSERT INTO `halamans` (`id`, `id_user`, `judul`, `gambar`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 20, 'Beranda', 'Tidak Ada', 'Masasasasas', '2023-01-13 15:45:33', '2023-02-08 04:43:41'),
(7, 2, 'Konsul', 'Tidak Ada', 'Idih', '2023-01-15 02:49:57', '2023-02-08 07:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_postings`
--

CREATE TABLE `kategori_postings` (
  `id` int UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postings`
--

CREATE TABLE `postings` (
  `id` int UNSIGNED NOT NULL,
  `id_user` int UNSIGNED NOT NULL,
  `id_kategori` int UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postings`
--

INSERT INTO `postings` (`id`, `id_user`, `id_kategori`, `judul`, `gambar`, `deskripsi`, `created_at`, `updated_at`) VALUES
(19, 1, 1, 'Seminar AAI Terkait Arsip', '20230208082523.jpeg', '<p>Perkumpulan Anggota AAI DKI Jakarta mengikuti Seminar Ok</p>', '2023-01-30 21:01:14', '2023-02-15 19:16:05'),
(25, 1, 4, 'Pengumuman', '20230206155919.jpeg', '<p>Naskah Proklamasi Menjadi Arsip Penting Negara</p>', '2023-02-02 02:58:52', '2023-02-06 08:59:19'),
(26, 1, 1, 'Seminar Kearsipan', '20230206160016.png', '<p>Seminar Kearsipan Terbaru</p>', '2023-02-04 01:34:51', '2023-02-06 09:00:16'),
(27, 1, 4, 'Berita Baru', '20230206174034.jpg', '<p>Berita Baru</p>', '2023-02-06 10:40:34', '2023-02-06 10:40:34'),
(29, 1, 3, 'Rapat Pleno AAI Jakarta', '20230207073435.jpeg', '<p>Rapat Pleno Anggota AAI (Asosisasi Arsiparis Indonesia) Wilayah DKI Jakarta Periode tahun 2022-2023, diselenggarakan pada tanggal 9 Februari 2023. Di ikut lebih dari 100 Anggota meliputi wilayah Kelurahan, Kecamatan, Walikota DKI Jakarta.&nbsp;</p>', '2023-02-07 00:12:17', '2023-02-07 00:34:35'),
(31, 66, 1, 'Seminar', '20230407154751.png', '<p>asdsadsad</p>', '2023-04-07 08:47:51', '2023-04-07 08:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_datamaster`
--

CREATE TABLE `tbl_datamaster` (
  `id` bigint NOT NULL,
  `nama_kadis` varchar(255) DEFAULT NULL,
  `nip_kadis` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` bigint NOT NULL,
  `inst` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `tbl_pengajuan`
--

CREATE TABLE `tbl_pengajuan` (
  `id` bigint NOT NULL,
  `idd` bigint NOT NULL,
  `nip` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `berkas_aju` varchar(255) DEFAULT NULL,
  `berkas_dupnk` varchar(255) DEFAULT NULL,
  `berkas_skp` varchar(255) DEFAULT NULL,
  `berkas_spmk` varchar(255) DEFAULT NULL,
  `berkas_skpjpakter` varchar(255) DEFAULT NULL,
  `berkas_buktzip` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL,
  `verifikator` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengajuan`
--

INSERT INTO `tbl_pengajuan` (`id`, `idd`, `nip`, `name`, `tahun`, `berkas_aju`, `berkas_dupnk`, `berkas_skp`, `berkas_spmk`, `berkas_skpjpakter`, `berkas_buktzip`, `keterangan`, `verifikator`, `status`, `created_at`, `updated_at`) VALUES
(115, 12, '197610102010011027', 'OKGANI SUHYOKO , S.S.', '2019', '1582274163_Pengantar Okgani.pdf', '1582274163_DUPNK OKGANI 2019.pdf', '1582274163_SKP OKGANI 2019.pdf', '1582274163_SPMK OKGANI 2019.pdf', '1582274163_SK jabatan Okgani.rar', '1582274501_bukti kerja_okgani.rar', '0', 'TIM PENILAI', '3', '2020-02-21 15:36:03', '2020-03-30 07:38:17'),
(116, 30, '197207182006042001', 'ASTRIA ZOHRAT TAWANGRATNA, S.S.', '2019', '1582275108_Pengantar Astria.pdf', '1582275108_DUPNK astria 2019.pdf', '1582275108_SKP Astria 2019.pdf', '1582275108_SPMK Astria 2019.pdf', '1582275108_SK Jabatan Astria.rar', '1582275108_Bukti Kerja Astria 2019.rar', '0', 'TIM PENILAI', '3', '2020-02-21 15:51:48', '2020-03-30 07:38:25'),
(117, 36, '198410302010012033', 'ELOK RISCA DAMAYANTI, S.E.', '2019', '1582596927_Pengantar Elok.pdf', '1582596927_DUPNK 2019 Elok.pdf', '1582596927_SKP 2019 Elok.pdf', '1582596927_SPMK 2019 Elok.pdf', '1582596927_SK Jabatan Elok.rar', '1582596927_Bukti Kerja 2019 Elok.rar', '0', 'TIM PENILAI', '3', '2020-02-25 09:15:27', '2020-03-30 07:38:35'),
(118, 35, '197408242006041013', 'MOHAMAD HANAFI, A.Md.', '2019', '1582597199_Pengantar Hanafi.pdf', '1582597199_DUPNK 2019 HANAFI.pdf', '1582597199_SKP 2019 Hanafi.pdf', '1582597199_SPMK 2019 HANAFI.pdf', '1582597199_SK Jabatan Hanafi.rar', '1582597199_Bukti Kerja 2019 Hanafi.rar', '0', 'TIM PENILAI', '3', '2020-02-25 09:19:59', '2020-03-30 07:38:43'),
(119, 39, '196512201985032002', 'NINING KARTINI', '2019', '1582597346_Pengantar Nining.pdf', '1582597346_DUPNK 2019 Nining.pdf', '1582597346_SKP 2019 Nining.pdf', '1582597346_SPMK 2019 Nining.pdf', '1582597346_SK Jabatan 2019 Nining.rar', '1582597346_Bukti Kerja 2019 Nining.rar', '0', 'TIM PENILAI', '3', '2020-02-25 09:22:26', '2020-03-30 07:38:52'),
(120, 43, '196608311986031002', 'AGUS TANTYO', '2019', '1582597435_Pengantar Agus Tantyo.pdf', '1582597435_DUPNK Agus Tantyo 2019.pdf', '1582597435_SKP Agus Tantyo 2019.pdf', '1582597435_SPMK 2019 Agus Tantyo.pdf', '1582597435_SK Jabatan Agus Tantyo.rar', '1582597435_Bukti Kerja 2019 Agus Tantyo.rar', '0', 'TIM PENILAI', '3', '2020-02-25 09:23:55', '2020-03-30 07:39:01'),
(121, 45, '198806042011011007', 'REZA PRIATNA', '2019', '1582597559_Pengantar Reza.pdf', '1582597559_DUPNK 2019 Reza.pdf', '1582597559_SKP 2019 Reza.pdf', '1582597559_SPMK 2019 Reza.pdf', '1582597559_SK Jabatan Reza.rar', '1582597559_Bukti Kerja 2019 Reza.rar', '0', 'TIM PENILAI', '3', '2020-02-25 09:25:59', '2020-03-30 07:39:09'),
(122, 58, '196810151998032006', 'SITI ZULAIKA ZAIN', '2019', '1582597652_Pengantar Siti Zulaika.pdf', '1582597652_DUPNK 2019 Siti Zulaika.pdf', '1582597652_SKP 2019 Siti Zulaika.pdf', '1582597652_SPMK 2019 Siti Zulaika.pdf', '1582597652_SK Jabatan Siti Zulaika.rar', '1582597652_Bukti Kerja 2019 Siti Zulaika.rar', '0', 'TIM PENILAI', '3', '2020-02-25 09:27:32', '2020-03-30 07:39:18'),
(123, 67, '197311162006041015', 'ARIS PANTOYO', '2019', '1582599280_Pengantar Aris Pantoyo.pdf', '1582599280_DUPNK 2019 Aris Pantoyo.pdf', '1582599280_SKP Aris 2019.pdf', '1582599280_SPMK 2019 Aris Pantoyo.pdf', '1582599280_SK Jabatan Aris Pantoyo.rar', '1582599280_Bukti Kerja 2019 Aris Pantoyo.rar', '0', 'TIM PENILAI', '3', '2020-02-25 09:54:40', '2020-03-30 07:39:26'),
(124, 53, '196806151989101001', 'PRAYITNO', '2018', '1582675388_Pengantar 2018 Prayitno.pdf', '1582675388_DUPNK Prayitno 2018.pdf', '1582675388_SKP Prayitno 2018.pdf', '1582675388_SPMK Prayitno 2018.pdf', '1582675388_SK Jabatan Prayitno.rar', '1582675388_Bukti Kerja 2018 Prayitno.rar', '0', 'TIM PENILAI', '3', '2020-02-26 07:03:08', '2020-03-30 07:39:35'),
(126, 51, '197702112010012010', 'DINI DWI UTARI HANDAYANTI, S.Sos.', '2019', '1582693522_Pengantar Dini.pdf', '1582693522_DUPNK 2019 Dini.pdf', '1582693522_SKP 2019 Dini .pdf', '1582693522_SPMK 2019 Dini.pdf', '1582693522_SK Jabatan Dini.rar', '1582693522_Bukti Kerja 2019 Dini.rar', '0', 'TIM PENILAI', '3', '2020-02-26 12:05:22', '2020-03-30 07:39:42'),
(127, 68, '196407121992031008', 'ARIS WIDIANA', '2019', '1583741693_Pengantar Aris W.pdf', '1582699574_DUPNK 2019 Aris W.pdf', '1583741693_SKP 2019 Aris W.pdf', '1582699574_SPMK 2019 Aris W.pdf', '1587023054_SK Jabatan Aris W.rar', '1582699574_Bukti Kerja 2019 Aris W.rar', '0', 'TIM PENILAI', '3', '2020-02-26 13:46:14', '2020-04-16 14:44:41'),
(129, 69, '198103302011011007', 'ADE MARDIANSYAH', '2019', '1582761198_Pengantar Ade M.pdf', '1582761198_DUPNK 2019 Ade M.pdf', '1584066803_SKP 2019 Ade M.pdf', '1582761198_SPMK 2019 Ade M.pdf', '1582761198_SK Jabatan Ade M.rar', '1582761198_Bukti Kerja 2019 Ade M.rar', '0', 'TIM PENILAI', '3', '2020-02-27 06:53:18', '2020-03-30 07:41:11'),
(130, 53, '196806151989101001', 'PRAYITNO', '2019', '1582761732_Pengajuan Prayitno.pdf', '1582761732_DUPNK 2019 Prayitno.pdf', '1582761732_SKP Prayitno 2019.pdf', '1582761732_SPMK 2019 Prayitno.pdf', '1582761732_SK Jabatan Prayitno.rar', '1582761732_Bukti Kerja 2019 Prayitno.rar', '0', 'TIM PENILAI', '3', '2020-02-27 07:02:13', '2020-03-30 07:41:29'),
(131, 13, '198610132010011012', 'BANGUN WIRYAWAN, S.E.', '2019', '1587082469_Pengantar Bangun.pdf', '1587082469_DUPNK 2019 Bangun.pdf', '1587082469_SKP 2019 Bangun.pdf', '1587082469_SPMK 2019 Bangun.pdf', '1587082469_SK Jabatan Bangun.rar', '1587082469_Bukti Kerja.zip', 'lengkap', 'TIM PENILAI', '3', '2020-03-02 09:12:25', '2020-04-17 07:14:53'),
(132, 17, '198210092010011018', 'DIMAS OKTAVIANTO, S.KOM', '2019', '1583115235_Pengantar Dimas.pdf', '1583115235_DUNPK 2019 Dimas.pdf', '1583115235_SKP 2019_Dimas.pdf', '1583115235_SPMK 2019 Dimas.pdf', '1583115235_SK Jabatan Dimas.rar', '1587336384_Bukti kerja 2019 Dimas.rar', 'lengkap', 'TIM PENILAI', '3', '2020-03-02 09:13:55', '2020-04-20 05:46:57'),
(134, 57, '196511101993101001', 'SUYITNO', '2019', '1587337615_Pengantar 2019 Suyitno.pdf', '1587337615_DUPNK 2019 Suyitno.pdf', '1587337615_SKP 2019 Suyitno.pdf', '1587337615_SPMK 2019 Suyitno.pdf', '1587337615_SK Jabatan Suyitno.rar', '1587509334_Bukti kerja 2019 suyitno.rar', 'lengkap', 'TIM PENILAI', '3', '2020-03-02 09:36:12', '2020-04-22 05:49:28'),
(136, 24, '196905171997031009', 'JONRIADI', '2019', '1583279287_Pengantar Jonriadi.pdf', '1583279287_DUPNK 2019 Jonriadi.pdf', '1583279287_SKP 2019 Jonriadi.pdf', '1583279287_SPMK 2019 Jonriadi.pdf', '1587338903_SK Jabatan Jonriadi.rar', '1587338903_Bukti Kerja Jonriadi.rar', 'lengkap', 'TIM PENILAI', '3', '2020-03-04 06:48:07', '2020-04-20 06:29:09'),
(137, 46, '196805201990111002', 'SETIYONO, A.Md.', '2019', '1583279969_Pengantar Setiyono.pdf', '1583279969_DUPNK 2019 Setiyono.pdf', '1583279969_SKP 2019 Setiyono.pdf', '1587941055_SPMK 2019 Setiyono.pdf', '1583279969_SK Jabatan Setiyono.rar', '1583279969_Bukti Kerja 2019 Setiyono.rar', 'lengkap', 'TIM PENILAI', '3', '2020-03-04 06:59:29', '2020-04-27 05:44:48'),
(138, 70, '197004202009042001', 'TRI WAHYUNIATI', '2019', '1583475396_Pengantar Tri W.pdf', '1583280398_DUPNK 2019 Tri W.pdf', '1583280398_SKP 2019 Tri W.pdf', '1583280398_SPMK 2019 Tri W.pdf', '1583280398_SK Jabatan Tri W.rar', '1583280398_Bukti Kerja 2019 Tri W.rar', '0', 'TIM PENILAI', '3', '2020-03-04 07:06:38', '2020-03-30 07:42:05'),
(139, 49, '197303251997031002', 'ENDI, S.AP.', '2019', '1583475040_Pengantar Endi.pdf', '1583475040_DUPNK 2019 Endi.pdf', '1583475040_SKP 2019 Endi.pdf', '1583475040_SPMK Endi.pdf', '1583475040_SK Jabatan Endi.rar', '1583475040_Bukti Kerja 2019 Endi.rar', '0', 'TIM PENILAI', '3', '2020-03-06 13:10:41', '2020-03-30 07:42:14'),
(140, 50, '197111111996031002', 'LUHUT SIHOMBING', '2019', '1583741573_Pengantar Luhut.pdf', '1583741573_DUPNK 2019 Luhut.pdf', '1583741573_SKP 2019 Luhut.pdf', '1583741573_SPMK 2019 Luhut.pdf', '1583741573_Sk Jabatan Luhut.rar', '1583741573_Bukti Kerja 2019 Luhut.rar', '0', 'TIM PENILAI', '3', '2020-03-09 15:12:53', '2020-03-30 07:42:33'),
(141, 22, '196407241987031004', 'YULIANTO', '2019', '1583741860_Pengantar Yulianto.pdf', '1587424956_DUPNK 2019 Yulianto.pdf', '1583741860_SKP 2019 Yulianto.pdf', '1583825235_SPMK Yulianto 2019.pdf', '1583825235_SK Jabatan Yulianto.rar', '1583741860_Bukti Kerja 2019 Yulianto.rar', 'lengkap', 'TIM PENILAI', '3', '2020-03-09 15:17:40', '2020-04-21 06:23:10'),
(142, 37, '196602171987031005', 'SUGIANTO, A.Md.', '2019', '1583825769_Pengantar Sugianto.pdf', '1583825769_DUPNK 2019 Sugianto.pdf', '1583825769_SKP 2019 Sugianto.pdf', '1583825769_SPMK 2019 Sugianto.pdf', '1583970750_SK Jabatan Sugianto.rar', '1583970750_Bukti Kerja 2019 Sugianto.rar', '0', 'TIM PENILAI', '3', '2020-03-10 14:36:09', '2020-03-30 07:44:11'),
(144, 54, '196406291987032004', 'WIWIK KURNIAWATI', '2019', '1583971058_Pengantar Wiwik.pdf', '1583971058_DUPNK 2019 Wiwik.pdf', '1583971058_SKP 2019 Wiwik.pdf', '1583971058_SPMK 2019 Wiwik.pdf', '1583971058_SK Jabatan Wiwik.rar', '1587423820_Bukti kerja 2019 Wiwik.rar', 'lengkap', 'TIM PENILAI', '3', '2020-03-12 06:57:38', '2020-04-21 06:04:32'),
(145, 44, '198602282010012041', 'WISE WINEKA', '2019', '1583991950_Pengantar Wise.pdf', '1583991950_DUPNK 2019 Wise.pdf', '1583991950_SKP 2019 Wise.pdf', '1583991950_SPMK 2019 Wise.pdf', '1583991950_SK Jabatan Wise.rar', '1583991950_Bukti Kerja 2019 Wise.rar', '0', 'TIM PENILAI', '3', '2020-03-12 12:45:50', '2020-03-30 07:44:27'),
(146, 71, '196801131996031002', 'UUS SAEPUDIN, S.AP.', '2019', '1584066635_Pengantar Uus.pdf', '1583997008_DUPNK 2019 Uus.pdf', '1583997008_SKP 2019 Uus.pdf', '1583997008_SPMK 2019 Uus.pdf', '1583997008_SK Jabatan Uus.rar', '1583997008_Bukti Kerja 2019 Uus.rar', '0', 'TIM PENILAI', '3', '2020-03-12 14:10:08', '2020-03-30 07:44:48'),
(147, 48, '197109262000121001', 'JAYA SENTOSO', '2019', '1584322693_Pengantar Jaya.pdf', '1584322693_DUPNK 2019 Jaya.pdf', '1584322693_SKP 2019 Jaya.pdf', '1584322693_SPMK 2019 Jaya.pdf', '1587337974_SK Jabatan Jaya.rar', '1584322693_Bukti Kerja 2019 Jaya.rar', 'lengkap', 'TIM PENILAI', '3', '2020-03-16 08:38:13', '2020-04-20 06:13:46'),
(148, 72, '196812182009041001', 'ASIKIN', '2019', '1584323920_Pengantar Asikin.pdf', '1584323920_DUPNK 2019 Asikin.pdf', '1584323920_SKP 2019 Asikin.pdf', '1584323920_SPMK 2019 Asikin.pdf', '1584323920_SK Jabatan Asikin.rar', '1584324000_Bukti Kerja 2019 Asikin.rar', '0', 'TIM PENILAI', '3', '2020-03-16 08:58:40', '2020-03-30 07:45:04'),
(149, 26, '196610281991091001', 'SAFRINO OKMAN', '2019', '1584401759_Pengantar Safrino.pdf', '1584401759_DUPNK 2019 Safrino.pdf', '1584401759_SKP 2019 Safrino.pdf', '1587336825_SPMK 2019 Safrino.pdf', '1584401759_SK Jabatan Safrino.rar', '1584401759_bukti kerja 2019 safrino.rar', 'lengkap', 'TIM PENILAI', '3', '2020-03-17 06:35:59', '2020-04-20 05:54:44'),
(151, 74, '196907121993032006', 'ENDANG PUJI ASTUTI', '2019', '1585523847_Pengantar Endang Puji.pdf', '1585523847_DUNPK 2019 Endang Puji.pdf', '1585523847_SKP 2019 Endang Puji.pdf', '1585523847_SPMK 2019 Endang Puji.pdf', '1585523847_SK Jabatan Endang Puji.rar', '1587082145_Lap Bukti Kerja Arsiparis 2019.rar', 'lengkap', 'TIM PENILAI', '3', '2020-03-30 06:17:27', '2020-04-17 07:09:35'),
(152, 75, '197806162006041022', 'NURCAHYO', '2019', '1585525441_Pengantar Nurcahyo.pdf', '1585525970_DUPNK 2019 Nurcahyo+.pdf', '1587423114_skp edit.pdf', '1585525441_SPMK 2019 Nurcahyo.pdf', '1587423114_SK Jabatan dan Pangkat.rar', '0', 'bukti kerja di googledrive timpkajkt@gmail.com; skp menunggu ttd Askesmas', 'TIM PENILAI', '3', '2020-03-30 06:44:01', '2020-04-21 05:52:51'),
(153, 38, '196706271994012001', 'YOSIFA ISMAYANTI, S.H.', '2019', '1585527854_Pengantar Yosifa.pdf', '1585527854_DUPNK 2019 Yosifa.pdf', '1585527854_SKP 2019 Yosifa.pdf', '1585527854_SPMK 2019 Yosifa.pdf', '1585527854_SK Jabatan Yosifa.rar', '1587423462_Bukti kerja 2019 Yosifa.rar', 'lengkap', 'TIM PENILAI', '3', '2020-03-30 07:24:14', '2020-04-21 05:58:34'),
(154, 76, '197303211996031001', 'AGUS, S.H.', '2019', '1585528626_Pengantar Agus.pdf', '1585528626_DUPNK 2019 Agus.pdf', '1585528626_SKP 2019 Agus.pdf', '1585528626_SPMK 2019 Agus.pdf', '1585528627_SK Jabatan Agus.rar', '1585528627_Bukti Kerja 2019 Agus.rar', '0', 'TIM PENILAI', '3', '2020-03-30 07:37:07', '2020-03-30 07:49:17'),
(155, 73, '196503091985032007', 'SUHAENI, S.H.', '2019', '1585530001_Pengantar Eni Suhaeni.pdf', '1585530001_DUPNK 2019 Eni Suhaeni.pdf', '1585530001_SKP 2019 Eni Suhaeni.pdf', '1585530001_SPMK 2019 Eni Suhaeni.pdf', '1585530001_SK Jabatan Eni Suhaeni.rar', '1585530001_Bukti Kerja Eni Suhaeni.rar', '0', 'TIM PENILAI', '3', '2020-03-30 08:00:01', '2020-03-30 08:00:27'),
(156, 34, '196810271997032003', 'DWI ANUGRAHENI ANDAYANI', '2019', '1587358071_Pengantar Dwi A.pdf', '1587358071_DUPNK 2019 Dwi A.pdf', '1587358071_SKP 2019 Dwi A.pdf', '1587358071_SPMK 2019 Dwi A.pdf', '1587365470_SK Jabatan Dwi A.rar', '1587358071_Bukti Kerja 2019 Dwi A.rar', 'lengkap', 'TIM PENILAI', '3', '2020-04-20 11:47:51', '2020-04-20 13:51:36'),
(157, 77, '198009092010012029', 'YUNIARTI, S.HUM.', '2019', '1587596627_Pengantar Yuni.pdf', '1587596627_DUPNK 2019 Yuni.pdf', '1587596627_SKP 2019 Yuni.pdf', '1587596627_SPMK utama 2019 Yuni.pdf', '1587596627_SK Jabatan Yuni.rar', '1587596628_Bukti kerja + SPMK tambahan 2019 Yuni.rar', 'lengkap', 'TIM PENILAI', '3', '2020-04-23 06:03:48', '2020-04-23 06:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penilaian`
--

CREATE TABLE `tbl_penilaian` (
  `id` bigint UNSIGNED NOT NULL,
  `idd` bigint NOT NULL,
  `nrk` varchar(255) DEFAULT NULL,
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
  `akk` varchar(255) NOT NULL,
  `jak` varchar(255) NOT NULL,
  `ang` varchar(255) NOT NULL,
  `seb` varchar(255) NOT NULL,
  `pros` varchar(255) NOT NULL,
  `akm` varchar(255) NOT NULL,
  `akd` varchar(255) NOT NULL,
  `priod` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL,
  `thn_p` varchar(255) NOT NULL,
  `np` varchar(255) NOT NULL,
  `sksurat` varchar(255) NOT NULL,
  `rekomen` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penilaian`
--

INSERT INTO `tbl_penilaian` (`id`, `idd`, `nrk`, `nip`, `no_ser_kar`, `name`, `t_lahir`, `tgl_lahir`, `j_k`, `pang`, `gol`, `tmt_pang`, `ting`, `tmt_ting`, `u_k`, `inst`, `akk`, `jak`, `ang`, `seb`, `pros`, `akm`, `akd`, `priod`, `tgl_tetap`, `thn_p`, `np`, `sksurat`, `rekomen`, `created_at`, `updated_at`) VALUES
(1, 12, '', '197610102010011027', 'Q 090540', 'OKGANI SUHYOKO , S.S.', 'JAKARTA', '1976-10-10', 'LAKI-LAKI', 'PENATA MUDA Tk.1', 'III-b', '2014-04-01', 'AHLI MUDA', '2017-10-04', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '200', '204.575', '0', '0', '0', '0', '4.575', '5 Oktober s.d. 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-25 17:48:33', '2020-04-29 02:51:29'),
(2, 12, '', '197610102010011027', 'Q 090540', 'OKGANI SUHYOKO , S.S.', 'JAKARTA', '1976-10-10', 'LAKI-LAKI', 'PENATA MUDA Tk.1', 'III-b', '2014-04-01', 'AHLI MUDA', '2017-10-04', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '91.58', 'Sangat Baik', '150', '25', '37.500', '5 Oktober s.d. 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-25 17:51:29', '2020-01-01 16:51:21'),
(3, 12, '', '197610102010011027', 'Q 090540', 'OKGANI SUHYOKO , S.S.', 'JAKARTA', '1976-10-10', 'LAKI-LAKI', 'PENATA MUDA Tk.1', 'III-b', '2014-04-01', 'AHLI MUDA', '2017-10-04', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '42.075', '5 Oktober s.d. 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', 'Dapat dipertimbangkan untuk dinaikkan pangkat/golongannya menjadi Penata (III-c)', '2019-10-26 04:28:48', '2020-01-01 16:51:46'),
(12, 13, '', '198610132010011012', 'Q 243137', 'BANGUN WIRYAWAN, S.E.', 'JAKARTA', '1986-10-13', 'Laki-laki', 'PENATA MUDA', 'III-a', '2016-04-01', 'AHLI PERTAMA', '2018-05-09', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '100', '187.905', '92.08', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'AKK', '1078/-071.92', '0', '2019-10-28 05:32:07', '2020-04-29 02:08:21'),
(13, 13, '', '198610132010011012', 'Q 243137', 'BANGUN WIRYAWAN, S.E.', 'JAKARTA', '1986-10-13', 'Laki-laki', 'PENATA MUDA', 'III-a', '2016-04-01', 'AHLI PERTAMA', '2018-05-09', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '91.48', 'Sangat Baik', '150', '12.5', '18.750', '10 Mei s.d. 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 05:32:45', '2019-10-28 05:32:45'),
(14, 13, '', '198610132010011012', 'Q 243137', 'BANGUN WIRYAWAN, S.E.', 'JAKARTA', '1986-10-13', 'Laki-laki', 'PENATA MUDA', 'III-a', '2016-04-01', 'AHLI PERTAMA', '2018-05-09', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '106.655', '10 Mei s.d. 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan pangkat/golongannya menjadi Penata Muda Tk. I (III-b)', '2019-10-28 05:33:42', '2019-10-28 05:33:42'),
(15, 17, '', '198210092010011018', 'Q 240127', 'DIMAS OKTAVIANTO, S.KOM', 'JAKARTA', '1982-10-09', 'Laki-laki', 'PENATA MUDA', 'III-a', '2016-04-01', 'AHLI PERTAMA', '2018-05-09', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '100', '183.105', '0', '0', '0', '0', '83.105', '10 Mei s.d. 31 Desember 2018', '5 April 2019', '2017', 'AKK', '1418/-071.92', '0', '2019-10-28 05:35:53', '2019-10-28 05:35:53'),
(16, 17, '', '198210092010011018', 'Q 240127', 'DIMAS OKTAVIANTO, S.KOM', 'JAKARTA', '1982-10-09', 'Laki-laki', 'PENATA MUDA', 'III-a', '2016-04-01', 'AHLI PERTAMA', '2018-05-09', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '91.48', 'Sangat Baik', '150', '12.5', '18.750', '10 Mei s.d. 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 05:36:34', '2019-10-28 05:36:34'),
(17, 17, '', '198210092010011018', 'Q 240127', 'DIMAS OKTAVIANTO, S.KOM', 'JAKARTA', '1982-10-09', 'Laki-laki', 'PENATA MUDA', 'III-a', '2016-04-01', 'AHLI PERTAMA', '2018-05-09', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '101.855', '10 Mei s.d. 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan pangkat/golongannya menjadi Penata Muda Tk. I (III-b)', '2019-10-28 05:37:21', '2019-10-28 05:37:21'),
(18, 19, '', '196304241985032010', 'E 001079', 'PRATIWI, S.AP.', 'Jakarta', '1963-04-24', 'Perempuan', 'PENATA TK.1', 'III-d', '2014-04-01', 'MAHIR', '2015-04-10', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '100', '110.37', '0', '0', '0', '0', '10.370', '2 Januari - 31 Desember 2018', '5 April 2019', '2017', 'AKK', '1418/-071.92', '0', '2019-10-28 05:39:47', '2019-10-28 05:39:47'),
(19, 19, '', '196304241985032010', 'E 001079', 'PRATIWI, S.AP.', 'Jakarta', '1963-04-24', 'Perempuan', 'PENATA TK.1', 'III-d', '2014-04-01', 'MAHIR', '2015-04-10', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '91.65', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 05:40:54', '2019-10-28 05:40:54'),
(20, 19, '', '196304241985032010', 'E 001079', 'PRATIWI, S.AP.', 'Jakarta', '1963-04-24', 'Perempuan', 'PENATA TK.1', 'III-d', '2014-04-01', 'MAHIR', '2015-04-10', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '0', '0', '0', '0', '29.120', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-28 05:41:43', '2019-10-28 05:41:43'),
(21, 22, '', '196407241987031004', 'E 474985', 'YULIANTO', 'JAKARTA', '1964-08-24', 'LAKI-LAKI', 'PENATA', 'III-b', '2009-10-01', 'TERAMPIL', '2016-04-28', 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA PUSAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '80', '127.322', '0', '0', '0', '0', '47.322', '2 Januari - 31 Desember 2018', '5 April 2019', '2017', 'AKK', '1418/-071.92', '0', '2019-10-28 05:43:16', '2019-10-28 05:43:16'),
(22, 22, '', '196407241987031004', 'E 474985', 'YULIANTO', 'JAKARTA', '1964-08-24', 'LAKI-LAKI', 'PENATA', 'III-b', '2009-10-01', 'TERAMPIL', '2016-04-28', 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA PUSAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '89.33', 'Baik', '125', '5', '6.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 05:44:06', '2019-10-28 05:44:06'),
(23, 22, '', '196407241987031004', 'E 474985', 'YULIANTO', 'JAKARTA', '1964-08-24', 'LAKI-LAKI', 'PENATA', 'III-b', '2009-10-01', 'TERAMPIL', '2016-04-28', 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA PUSAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '53.572', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Pelaksana Lanjutan setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 05:45:10', '2019-10-28 05:45:10'),
(24, 24, '', '196905171997031009', 'G 419176', 'JONRIADI', 'SIULAK GEDANG', '1969-05-17', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2012-04-01', 'TERAMPIL', '2014-12-30', 'BAGIAN UMUM DAN PEMASARAN', 'RSUD TARAKAN JAKARTA PUSAT', '80', '103.567', '0', '0', '0', '0', '23.567', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-28 05:48:08', '2019-10-28 05:48:08'),
(25, 24, '', '196905171997031009', 'G 419176', 'JONRIADI', 'SIULAK GEDANG', '1969-05-17', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2012-04-01', 'TERAMPIL', '2014-12-30', 'BAGIAN UMUM DAN PEMASARAN', 'RSUD TARAKAN JAKARTA PUSAT', '0', '0', '89.4', 'Baik', '125', '5', '6.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-28 05:49:00', '2019-10-28 05:49:00'),
(26, 24, '', '196905171997031009', 'G 419176', 'JONRIADI', 'SIULAK GEDANG', '1969-05-17', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2012-04-01', 'TERAMPIL', '2014-12-30', 'BAGIAN UMUM DAN PEMASARAN', 'RSUD TARAKAN JAKARTA PUSAT', '0', '0', '0', '0', '0', '0', '29.817', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Pelaksana Lanjutan setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 05:49:44', '2019-10-28 05:49:44'),
(27, 24, '', '196905171997031009', 'G 419176', 'JONRIADI', 'SIULAK GEDANG', '1969-05-17', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2012-04-01', 'MAHIR', '2019-03-04', 'BAGIAN UMUM DAN PEMASARAN', 'RSUD TARAKAN JAKARTA PUSAT', '0', '0', '91.03', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 05:52:00', '2019-10-28 05:52:00'),
(28, 24, '', '196905171997031009', 'G 419176', 'JONRIADI', 'SIULAK GEDANG', '1969-05-17', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2012-04-01', 'MAHIR', '2019-03-04', 'BAGIAN UMUM DAN PEMASARAN', 'RSUD TARAKAN JAKARTA PUSAT', '0', '0', '0', '0', '0', '0', '18.750', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-28 06:00:58', '2019-10-28 06:00:58'),
(29, 26, '', '196610281991091001', 'F 228740', 'SAFRINO OKMAN', 'JAKARTA', '1966-10-28', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2010-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '300', '439.85', '0', '0', '0', '0', '139.850', '2 Januari - 31 Desember 2018', '5 April 2019', '2017', 'AKK', '1418/-071.92', '0', '2019-10-28 06:06:47', '2019-10-28 06:06:47'),
(30, 26, '', '196610281991091001', 'F 228740', 'SAFRINO OKMAN', 'JAKARTA', '1966-10-28', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2010-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '85.4', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 06:07:31', '2019-10-28 06:07:31'),
(31, 26, '', '196610281991091001', 'F 228740', 'SAFRINO OKMAN', 'JAKARTA', '1966-10-28', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2010-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '171.100', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-28 06:08:21', '2019-10-28 06:08:21'),
(32, 30, '', '197207182006042001', 'N 232181', 'ASTRIA ZOHRAT TAWANGRATNA, S.S.', 'KEBUMEN', '1972-07-18', 'PEREMPUAN', 'PENATA MUDA Tk.1', 'III-b', '2010-04-01', 'PENYELIA', '2018-02-07', 'SEKRETARIAT', 'DINAS PARIWISATA DAN KEBUDAYAAN PROVINSI DKI JAKARTA', '150', '250.333', '0', '0', '0', '0', '100.333', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-28 06:11:27', '2019-10-28 06:11:27'),
(33, 30, '', '197207182006042001', 'N 232181', 'ASTRIA ZOHRAT TAWANGRATNA, S.S.', 'KEBUMEN', '1972-07-18', 'PEREMPUAN', 'PENATA MUDA Tk.1', 'III-b', '2010-04-01', 'PENYELIA', '2018-02-07', 'SEKRETARIAT', 'DINAS PARIWISATA DAN KEBUDAYAAN PROVINSI DKI JAKARTA', '0', '0', '91.08', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-28 06:16:10', '2019-10-28 06:16:10'),
(34, 30, '', '197207182006042001', 'N 232181', 'ASTRIA ZOHRAT TAWANGRATNA, S.S.', 'KEBUMEN', '1972-07-18', 'PEREMPUAN', 'PENATA MUDA Tk.1', 'III-b', '2010-04-01', 'PENYELIA', '2018-02-07', 'SEKRETARIAT', 'DINAS PARIWISATA DAN KEBUDAYAAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '137.833', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Penyelia dan pangkatnya menjadi Penata (III-c) setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 06:17:44', '2019-10-28 06:44:37'),
(35, 30, '', '197207182006042001', 'N 232181', 'ASTRIA ZOHRAT TAWANGRATNA, S.S.', 'KEBUMEN', '1972-07-18', 'PEREMPUAN', 'PENATA MUDA Tk.1', 'III-b', '2010-04-01', 'PENYELIA', '2018-02-07', 'SEKRETARIAT', 'DINAS PARIWISATA DAN KEBUDAYAAN PROVINSI DKI JAKARTA', '0', '0', '89.72', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 06:21:21', '2019-10-28 06:21:21'),
(37, 34, '', '196810271997032003', 'G 415063', 'DWI ANUGRAHENI ANDAYANI', 'JAKARTA', '1968-10-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2013-04-01', 'TERAMPIL', '2014-02-20', 'SEKRETARIAT', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '80', '87.244', '0', '0', '0', '0', '7.244', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-28 06:27:06', '2019-10-28 06:27:06'),
(38, 34, '', '196810271997032003', 'G 415063', 'DWI ANUGRAHENI ANDAYANI', 'JAKARTA', '1968-10-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2013-04-01', 'TERAMPIL', '2014-02-20', 'SEKRETARIAT', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '0', '0', '85.62', 'Baik', '125', '5', '6.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-28 06:28:04', '2019-10-28 06:28:04'),
(39, 34, '', '196810271997032003', 'G 415063', 'DWI ANUGRAHENI ANDAYANI', 'JAKARTA', '1968-10-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2013-04-01', 'TERAMPIL', '2014-02-20', 'SEKRETARIAT', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '13.494', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', '---', '2019-10-28 06:28:46', '2019-10-28 06:28:46'),
(40, 34, '', '196810271997032003', 'G 415063', 'DWI ANUGRAHENI ANDAYANI', 'JAKARTA', '1968-10-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2013-04-01', 'TERAMPIL', '2014-02-20', 'SEKRETARIAT', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '0', '0', '91.11', 'Sangat Baik', '150', '5', '7.500', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 06:29:59', '2019-10-28 06:29:59'),
(41, 34, '', '196810271997032003', 'G 415063', 'DWI ANUGRAHENI ANDAYANI', 'JAKARTA', '1968-10-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2013-04-01', 'TERAMPIL', '2014-02-20', 'SEKRETARIAT', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '20.994', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Pelaksana Lanjutan setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 06:30:46', '2019-10-28 06:30:46'),
(42, 35, '', '197408242006041013', 'P 020945', 'MOHAMAD HANAFI, A.Md.', 'SURABAYA', '1974-08-24', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2014-04-01', 'TERAMPIL', '2015-04-21', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '80', '97.877', '0', '0', '0', '0', '17.877', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-28 06:32:40', '2019-10-28 06:32:40'),
(43, 35, '', '197408242006041013', 'P 020945', 'MOHAMAD HANAFI, A.Md.', 'SURABAYA', '1974-08-24', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2014-04-01', 'TERAMPIL', '2015-04-21', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '94.03', 'Sangat Baik', '150', '5', '7.500', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-28 06:33:23', '2019-10-28 06:33:23'),
(44, 35, '', '197408242006041013', 'P 020945', 'MOHAMAD HANAFI, A.Md.', 'SURABAYA', '1974-08-24', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2014-04-01', 'TERAMPIL', '2015-04-21', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '91.96', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2018', '10 Agustus 2019', '2018', 'PAK', '2699/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Pelaksana Lanjutan setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 06:34:07', '2020-04-29 01:58:32'),
(45, 35, '', '197408242006041013', 'P 020945', 'MOHAMAD HANAFI, A.Md.', 'SURABAYA', '1974-08-24', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2014-04-01', 'TERAMPIL', '2015-04-21', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '91.16', 'Sangat Baik', '150', '5', '7.500', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 06:36:14', '2019-10-28 06:36:14'),
(46, 35, '', '197408242006041013', 'P 020945', 'MOHAMAD HANAFI, A.Md.', 'SURABAYA', '1974-08-24', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2014-04-01', 'TERAMPIL', '2015-04-21', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '32.877', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Pelaksana Lanjutan setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 06:36:48', '2019-10-28 06:36:48'),
(47, 36, '', '198410302010012033', 'Q 089735', 'ELOK RISCA DAMAYANTI, S.E.', 'DEPOK', '1984-10-30', 'PEREMPUAN', 'PENGATUR Tk.1', 'III-b', '2014-04-01', 'MAHIR', '2015-05-08', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '150', '176.198', '0', '0', '0', '0', '26.198', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-28 06:39:55', '2019-10-28 06:39:55'),
(48, 36, '', '198410302010012033', 'Q 089735', 'ELOK RISCA DAMAYANTI, S.E.', 'DEPOK', '1984-10-30', 'PEREMPUAN', 'PENGATUR Tk.1', 'III-b', '2014-04-01', 'MAHIR', '2015-05-08', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '93.92', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-28 06:40:57', '2019-10-28 06:40:57'),
(49, 36, '', '198410302010012033', 'Q 089735', 'ELOK RISCA DAMAYANTI, S.E.', 'DEPOK', '1984-10-30', 'PEREMPUAN', 'PENGATUR Tk.1', 'III-b', '2014-04-01', 'MAHIR', '2015-05-08', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '44.948', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', '---', '2019-10-28 06:41:43', '2019-10-28 06:41:43'),
(50, 36, '', '198410302010012033', 'Q 089735', 'ELOK RISCA DAMAYANTI, S.E.', 'DEPOK', '1984-10-30', 'PEREMPUAN', 'PENGATUR Tk.1', 'III-b', '2014-04-01', 'MAHIR', '2015-05-08', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '91.67', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 06:42:37', '2019-10-28 06:42:37'),
(51, 36, '', '198410302010012033', 'Q 089735', 'ELOK RISCA DAMAYANTI, S.E.', 'DEPOK', '1984-10-30', 'PEREMPUAN', 'PENGATUR Tk.1', 'III-b', '2014-04-01', 'MAHIR', '2015-05-08', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '63.698', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Penyelia dan pangkatnya menjadi Penata (III-c) setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 06:43:31', '2019-10-28 06:43:31'),
(52, 37, '', '196602171987031005', 'E 388412', 'SUGIANTO, A.Md.', 'JAKARTA', '1966-02-17', 'LAKI-LAKI', 'PENATA', 'III-c', '2011-10-01', 'TERAMPIL', '2015-02-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '80', '112.934', '0', '0', '0', '0', '32.934', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-28 06:47:00', '2019-10-28 06:47:00'),
(53, 37, '', '196602171987031005', 'E 388412', 'SUGIANTO, A.Md.', 'JAKARTA', '1966-02-17', 'LAKI-LAKI', 'PENATA', 'III-c', '2011-10-01', 'TERAMPIL', '2015-02-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '80.88', 'Baik', '125', '5', '6.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-28 06:47:34', '2019-10-28 06:47:34'),
(54, 37, '', '196602171987031005', 'E 388412', 'SUGIANTO, A.Md.', 'JAKARTA', '1966-02-17', 'LAKI-LAKI', 'PENATA', 'III-c', '2011-10-01', 'TERAMPIL', '2015-02-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '39.184', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Pelaksana Lanjutan setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 06:48:22', '2019-10-28 06:48:22'),
(55, 37, '', '196602171987031005', 'E 388412', 'SUGIANTO, A.Md.', 'JAKARTA', '1966-02-17', 'LAKI-LAKI', 'PENATA', 'III-c', '2011-10-01', 'MAHIR', '2019-03-04', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '80.09', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 06:51:38', '2019-10-28 06:51:38'),
(56, 37, '', '196602171987031005', 'E 388412', 'SUGIANTO, A.Md.', 'JAKARTA', '1966-02-17', 'LAKI-LAKI', 'PENATA', 'III-c', '2011-10-01', 'MAHIR', '2019-03-04', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '15.625', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-28 06:52:14', '2019-10-28 06:52:14'),
(57, 38, '', '196706271994012001', 'G 119134', 'YOSIFA ISMAYANTI, S.H.', 'JAKARTA', '1967-06-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2015-10-05', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '150', '234.25', '0', '0', '0', '0', '84.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2017', 'AKK', '1418/-071.92', '0', '2019-10-28 06:54:38', '2019-10-28 06:54:38'),
(58, 38, '', '196706271994012001', 'G 119134', 'YOSIFA ISMAYANTI, S.H.', 'JAKARTA', '1967-06-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2015-10-05', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '0', '0', '88.09', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 06:56:57', '2019-10-28 06:56:57'),
(59, 38, '', '196706271994012001', 'G 119134', 'YOSIFA ISMAYANTI, S.H.', 'JAKARTA', '1967-06-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2015-10-05', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '99.875', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Muda dan pangkatnya menjadi Penata (III-c) setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 06:58:24', '2019-10-28 06:58:24'),
(60, 39, '', '196512201985032002', 'B 372117', 'NINING KARTINI', 'KUNINGAN', '1965-12-20', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '300', '431.098', '0', '0', '0', '0', '131.098', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-28 07:00:30', '2019-10-28 07:00:30'),
(61, 39, '', '196512201985032002', 'B 372117', 'NINING KARTINI', 'KUNINGAN', '1965-12-20', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '84.4', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-28 07:01:14', '2019-10-28 07:01:14'),
(62, 39, '', '196512201985032002', 'B 372117', 'NINING KARTINI', 'KUNINGAN', '1965-12-20', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '162.348', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', '---', '2019-10-28 07:01:54', '2019-10-28 07:01:54'),
(63, 39, '', '196512201985032002', 'B 372117', 'NINING KARTINI', 'KUNINGAN', '1965-12-20', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '85.53', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 07:02:54', '2019-10-28 07:02:54'),
(64, 39, '', '196512201985032002', 'B 372117', 'NINING KARTINI', 'KUNINGAN', '1965-12-20', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '193.598', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-28 07:03:16', '2019-10-28 07:03:16'),
(65, 40, '', '198207142010012034', 'A 0506320', 'DEVI RATNASARI', 'PEMALANG', '1982-07-14', 'PEREMPUAN', 'PENGATUR Tk.1', 'II-d', '2014-04-01', 'TERAMPIL', '2015-12-22', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '80', '92.570', '0', '0', '0', '0', '12.570', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-28 07:06:12', '2019-10-28 07:06:12'),
(66, 40, '', '198207142010012034', 'A 0506320', 'DEVI RATNASARI', 'PEMALANG', '1982-07-14', 'PEREMPUAN', 'PENGATUR Tk.1', 'II-d', '2014-04-01', 'TERAMPIL', '2015-12-22', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '91.68', 'Sangat Baik', '150', '5', '7.500', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-28 07:07:10', '2019-10-28 07:07:10'),
(67, 40, '', '198207142010012034', 'A 0506320', 'DEVI RATNASARI', 'PEMALANG', '1982-07-14', 'PEREMPUAN', 'PENGATUR Tk.1', 'II-d', '2014-04-01', 'TERAMPIL', '2015-12-22', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '0', '0', '0', '0', '20.070', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Pelaksana Lanjutan dan pangkatnya menjadi Penata Muda (III-a) setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 07:08:30', '2019-10-28 07:08:30'),
(68, 40, '', '198207142010012034', 'A 0506320', 'DEVI RATNASARI', 'PEMALANG', '1982-07-14', 'PEREMPUAN', 'PENGATUR Tk.1', 'II-d', '2014-04-01', 'TERAMPIL', '2015-12-22', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '100', '147.628', '91.36', 'Sangat Baik', '150', '5', '47.628', 'April s.d. Desember 2013', '22 April 2014', '2013-', 'KAK', '1012/-087.1', '0', '2019-10-28 07:09:49', '2020-04-16 08:08:45'),
(69, 40, '', '198207142010012034', 'A 0506320', 'DEVI RATNASARI', 'PEMALANG', '1982-07-14', 'PEREMPUAN', 'PENGATUR Tk.1', 'II-d', '2014-04-01', 'TERAMPIL', '2015-12-22', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '0', '0', '0', '0', '27.570', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Pelaksana Lanjutan dan pangkatnya menjadi Penata Muda (III-a) setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-28 07:10:53', '2019-10-28 07:10:53'),
(70, 41, '', '196411191987011002', 'E 056760', 'FANDOLI', 'SIKUMPUL', '1964-11-19', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2017-04-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '300', '367.704', '0', '0', '0', '0', '67.704', '2 Januari - 31 Desember 2018', '5 April 2019', '2017', 'AKK', '1418/-071.92', '0', '2019-10-28 07:13:17', '2019-10-28 07:13:17'),
(71, 41, '', '196411191987011002', 'E 056760', 'FANDOLI', 'SIKUMPUL', '1964-11-19', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2017-04-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '85.4', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 07:13:51', '2019-10-28 07:13:51'),
(72, 41, '', '196411191987011002', 'E 056760', 'FANDOLI', 'SIKUMPUL', '1964-11-19', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2017-04-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '98.954', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-28 07:14:23', '2019-10-28 07:14:23'),
(73, 42, '', '196204231984102001', 'D 106067', 'SRI SUTARSIH', 'JAKARTA', '1962-04-23', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2013-12-02', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '300', '354.371', '0', '0', '0', '0', '54.371', '2 Januari - 31 Desember 2018', '5 April 2019', '2017', 'AKK', '1418/-071.92', '0', '2019-10-28 07:20:05', '2019-10-28 07:20:05'),
(74, 42, '', '196204231984102001', 'D 106067', 'SRI SUTARSIH', 'JAKARTA', '1962-04-23', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2013-12-02', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '85.4', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 07:20:41', '2019-10-28 07:20:41'),
(75, 42, '', '196204231984102001', 'D 106067', 'SRI SUTARSIH', 'JAKARTA', '1962-04-23', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2013-12-02', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '85.621', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-28 07:21:11', '2019-10-28 07:21:11'),
(76, 43, '', '196608311986031002', 'E 434456', 'AGUS TANTYO', 'JAKARTA', '1966-08-31', 'LAKI-LAKI', 'PENATA', 'III-c', '2017-04-01', 'PENYELIA', '2017-03-02', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '200', '273.639', '0', '0', '0', '0', '73.639', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-28 07:23:38', '2019-10-28 07:23:38'),
(77, 43, '', '196608311986031002', 'E 434456', 'AGUS TANTYO', 'JAKARTA', '1966-08-31', 'LAKI-LAKI', 'PENATA', 'III-c', '2017-04-01', 'PENYELIA', '2017-03-02', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '91.26', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-28 07:24:11', '2019-10-28 07:24:11'),
(78, 43, '', '196608311986031002', 'E 434456', 'AGUS TANTYO', 'JAKARTA', '1966-08-31', 'LAKI-LAKI', 'PENATA', 'III-c', '2017-04-01', 'PENYELIA', '2017-03-02', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '111.139', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', 'Dapat dipertimbangkan untuk dinaikkan pangkat/golongannya menjadi Penata Tk. I (III-d)', '2019-10-28 07:25:01', '2019-10-28 07:25:01'),
(79, 43, '', '196608311986031002', 'E 434456', 'AGUS TANTYO', 'JAKARTA', '1966-08-31', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2018-04-01', 'PENYELIA', '2017-03-02', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '91.58', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-28 07:26:31', '2019-10-28 07:26:31'),
(80, 43, '', '196608311986031002', 'E 434456', 'AGUS TANTYO', 'JAKARTA', '1966-08-31', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2018-04-01', 'PENYELIA', '2017-03-02', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '37.500', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-28 07:26:52', '2019-10-28 07:26:52'),
(83, 45, '', '198806042011011007', 'Q 356907', 'REZA PRIATNA', 'JAKARTA', '1988-06-04', 'LAKI-LAKI', 'PENGATUR Tk.1', 'II-d', '2017-10-01', 'TERAMPIL', '2014-11-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '84.83', 'Baik', '125', '5', '6.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-29 01:45:35', '2019-10-29 01:45:35'),
(84, 45, '', '198806042011011007', 'Q 356907', 'REZA PRIATNA', 'JAKARTA', '1988-06-04', 'LAKI-LAKI', 'PENGATUR Tk.1', 'II-d', '2017-10-01', 'TERAMPIL', '2014-11-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '6.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', '---', '2019-10-29 01:50:27', '2019-10-29 01:50:27'),
(85, 45, '', '198806042011011007', 'Q 356907', 'REZA PRIATNA', 'JAKARTA', '1988-06-04', 'LAKI-LAKI', 'PENGATUR Tk.1', 'II-d', '2017-10-01', 'TERAMPIL', '2014-11-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '84.76', 'Baik', '125', '5', '6.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-29 01:52:57', '2019-10-29 01:52:57'),
(86, 45, '', '198806042011011007', 'Q 356907', 'REZA PRIATNA', 'JAKARTA', '1988-06-04', 'LAKI-LAKI', 'PENGATUR Tk.1', 'II-d', '2017-10-01', 'TERAMPIL', '2014-11-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '12.500', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-29 01:54:19', '2019-10-29 01:54:19'),
(87, 46, '', '196805201990111002', 'E 926758', 'SETIYONO, A.Md.', 'SIDOMULYO', '1968-05-20', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'MAHIR', '2015-07-10', 'SEKRETARIAT', 'DINAS PENANGGULANGAN KEBAKARAN DAN PENYELAMATAN PROVINSI DKI JAKARTA', '0', '0', '91.25', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-29 01:57:30', '2019-10-29 01:57:30'),
(88, 46, '', '196805201990111002', 'E 926758', 'SETIYONO, A.Md.', 'SIDOMULYO', '1968-05-20', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'MAHIR', '2015-07-10', 'SEKRETARIAT', 'DINAS PENANGGULANGAN KEBAKARAN DAN PENYELAMATAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '18.750', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-29 01:58:08', '2019-10-29 01:58:08'),
(89, 48, '', '197109262000121001', 'E 434456', 'JAYA SENTOSO', 'JAKARTA', '1971-09-26', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2018-04-01', 'MAHIR', '2014-03-04', 'BIDANG PENDIDIK DAN TENAGA KEPENDIDIKAN', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '50', '211.280', '0', '0', '0', '0', '161.280', '2 Januari - 31 Desember 2018', '5 April 2019', '2017', 'AKK', '1418/-071.92', '0', '2019-10-29 02:00:14', '2019-10-29 02:00:14'),
(90, 48, '', '197109262000121001', 'E 434456', 'JAYA SENTOSO', 'JAKARTA', '1971-09-26', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2018-04-01', 'MAHIR', '2014-03-04', 'BIDANG PENDIDIK DAN TENAGA KEPENDIDIKAN', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '0', '0', '89.36', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-29 02:00:55', '2019-10-29 02:00:55'),
(91, 48, '', '197109262000121001', 'E 434456', 'JAYA SENTOSO', 'JAKARTA', '1971-09-26', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2018-04-01', 'MAHIR', '2014-03-04', 'BIDANG PENDIDIK DAN TENAGA KEPENDIDIKAN', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '176.905', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Penyelia setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-29 02:02:01', '2019-10-29 02:02:01'),
(93, 49, '', '197303251997031002', 'G 419283', 'ENDI, S.AP.', 'RAJADESA', '1973-03-25', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'AHLI PERTAMA', '2017-08-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '81.84', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-29 02:06:09', '2019-10-29 02:06:09'),
(98, 49, '', '197303251997031002', 'G 419283', 'ENDI, S.AP.', 'RAJADESA', '1973-03-25', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'AHLI PERTAMA', '2017-08-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '15.625', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', '---', '2019-10-29 02:17:32', '2019-10-29 02:17:32'),
(99, 49, '', '197303251997031002', 'G 419283', 'ENDI, S.AP.', 'RAJADESA', '1973-03-25', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'AHLI PERTAMA', '2017-08-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '81.86', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-29 02:19:21', '2019-10-29 02:19:21'),
(100, 49, '', '197303251997031002', 'G 419283', 'ENDI, S.AP.', 'RAJADESA', '1973-03-25', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'AHLI PERTAMA', '2017-08-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '31.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-29 02:20:08', '2019-10-29 02:20:08'),
(103, 50, '', '197111111996031002', 'G 415333', 'LUHUT SIHOMBING', 'BANJARBARU', '1971-11-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-10-01', 'PENYELIA', '2014-11-13', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '300', '333.645', '0', '0', '0', '0', '33.645', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-29 02:26:01', '2019-10-29 02:26:01'),
(104, 50, '', '197111111996031002', 'G 415333', 'LUHUT SIHOMBING', 'BANJARBARU', '1971-11-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-10-01', 'PENYELIA', '2014-11-13', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '89.56', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-29 02:26:33', '2019-10-29 02:26:33'),
(105, 50, '', '197111111996031002', 'G 415333', 'LUHUT SIHOMBING', 'BANJARBARU', '1971-11-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-10-01', 'PENYELIA', '2014-11-13', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '64.895', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Muda setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-29 02:27:41', '2019-10-29 02:27:41'),
(107, 50, '', '197111111996031002', 'G 415333', 'LUHUT SIHOMBING', 'BANJARBARU', '1971-11-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-10-01', 'AHLI MUDA', '2019-02-18', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '89.16', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-29 02:30:54', '2019-10-29 02:30:54'),
(108, 50, '', '197111111996031002', 'G 415333', 'LUHUT SIHOMBING', 'BANJARBARU', '1971-11-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-10-01', 'AHLI MUDA', '2019-02-18', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '31.250', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2019-10-29 02:31:25', '2019-10-29 02:31:25'),
(109, 58, '', '196810151998032006', 'H 072714', 'SITI ZULAIKA ZAIN', 'JAKARTA', '1968-10-15', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2014-02-10', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '300', '302.999', '0', '0', '0', '0', '2.999', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-29 02:33:01', '2019-10-29 02:34:32'),
(110, 58, '', '196810151998032006', 'H 072714', 'SITI ZULAIKA ZAIN', 'JAKARTA', '1968-10-15', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2014-02-10', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '84.17', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-29 02:33:29', '2019-10-29 02:33:29'),
(111, 58, '', '196810151998032006', 'H 072714', 'SITI ZULAIKA ZAIN', 'JAKARTA', '1968-10-15', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2014-02-10', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '34.249', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', '---', '2019-10-29 02:34:57', '2019-10-29 02:34:57'),
(112, 51, '', '197702112010012010', 'Q 092057', 'DINI DWI UTARI HANDAYANTI, S.Sos.', 'BANDUNG', '1977-02-11', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2014-10-03', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '150', '218.75', '0', '0', '0', '0', '68.750', '1 November - 31 Desember 2018', '5 April 2019', '2017', 'AKK', '1418/-071.92', '0', '2019-10-29 02:40:59', '2019-10-29 02:40:59'),
(113, 51, '', '197702112010012010', 'Q 092057', 'DINI DWI UTARI HANDAYANTI, S.Sos.', 'BANDUNG', '1977-02-11', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2014-10-03', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '87.08', 'Baik', '125', '12.5', '15.625', '1 November - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2019-10-29 02:41:33', '2019-10-29 02:41:33'),
(114, 51, '', '197702112010012010', 'Q 092057', 'DINI DWI UTARI HANDAYANTI, S.Sos.', 'BANDUNG', '1977-02-11', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2014-10-03', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '84.375', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Muda setelah mengikuti dan lulus sertifikasi jabatan', '2019-10-29 02:43:17', '2019-10-29 02:43:17'),
(118, 53, '', '196806151989101001', 'E 912043', 'PRAYITNO', 'JAKARTA', '1968-06-15', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2015-10-01', 'MAHIR', '2014-08-29', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '100', '294.387', '0', '0', '0', '0', '194.387', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-29 02:52:37', '2019-10-29 02:52:37'),
(119, 53, '', '196806151989101001', 'E 912043', 'PRAYITNO', 'JAKARTA', '1968-06-15', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2015-10-01', 'MAHIR', '2014-08-29', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '85.94', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-29 02:53:12', '2019-10-29 02:53:12'),
(120, 53, '', '196806151989101001', 'E 912043', 'PRAYITNO', 'JAKARTA', '1968-06-15', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2015-10-01', 'MAHIR', '2014-08-29', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '210.012', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', 'Dapat dipertimbangkan untuk dinaikkan pangkat/golongannya menjadi Penata Muda Tk. I (III-b)', '2019-10-29 02:55:24', '2019-10-29 02:55:24'),
(121, 52, '', '196307141989101001', 'E 688033', 'HASAN', 'JAKARTA, 14-07-1963', '1963-07-14', 'LAKI-LAKI', 'PENATA MUDA Tk.1', 'III-b', '2017-10-01', 'MAHIR', '2013-08-02', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '85.87', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-29 02:58:55', '2019-10-29 02:58:55'),
(122, 52, '', '196307141989101001', 'E 688033', 'HASAN', 'JAKARTA, 14-07-1963', '1963-07-14', 'LAKI-LAKI', 'PENATA MUDA Tk.1', 'III-b', '2017-10-01', 'MAHIR', '2013-08-02', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '15.625', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', '---', '2019-10-29 02:59:19', '2019-10-29 02:59:19'),
(123, 54, '', '196406291987032004', 'E 357509', 'WIWIK KURNIAWATI', 'JAKARTA', '1964-06-29', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '300', '370.440', '0', '0', '0', '0', '70.440', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-29 03:01:55', '2019-10-29 03:01:55'),
(124, 54, '', '196406291987032004', 'E 357509', 'WIWIK KURNIAWATI', 'JAKARTA', '1964-06-29', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '87.72', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-29 03:02:38', '2019-10-29 03:02:38'),
(125, 54, '', '196406291987032004', 'E 357509', 'WIWIK KURNIAWATI', 'JAKARTA', '1964-06-29', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '101.690', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Muda setelah mengikuti dan lulus Diklat Alih Jenjang dan sertifikasi jabatan', '2019-10-29 03:03:28', '2019-10-29 03:03:28'),
(126, 55, '', '196403111985031011', 'D 350524', 'SUGENG LESTARI, S.E.', 'KULONPROGO', '1964-03-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2012-10-01', 'PENYELIA', '2011-12-07', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '300', '427.997', '0', '0', '0', '0', '127.997', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-29 03:05:44', '2019-10-29 03:05:44'),
(127, 55, '', '196403111985031011', 'D 350524', 'SUGENG LESTARI, S.E.', 'KULONPROGO', '1964-03-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2012-10-01', 'PENYELIA', '2011-12-07', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '84.09', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-29 03:06:17', '2019-10-29 03:06:17'),
(128, 55, '', '196403111985031011', 'D 350524', 'SUGENG LESTARI, S.E.', 'KULONPROGO', '1964-03-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2012-10-01', 'PENYELIA', '2011-12-07', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '159.247', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', '---', '2019-10-29 03:06:55', '2019-10-29 03:06:55'),
(129, 56, '', '196603051989031012', 'E 632330', 'MANSYUR, SP', 'KUNINGAN', '1966-03-05', 'LAKI-LAKI', 'PENATA', 'III-c', '2013-04-01', 'MAHIR', '2013-09-12', 'SEKRETARIAT', 'DINAS KELAUTAN DAN PERTANIAN PROVINSI DKI JAKARTA', '150', '156.785', '0', '0', '0', '0', '6.785', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-29 03:09:09', '2019-10-29 03:09:09'),
(130, 56, '', '196603051989031012', 'E 632330', 'MANSYUR, SP', 'KUNINGAN', '1966-03-05', 'LAKI-LAKI', 'PENATA', 'III-c', '2013-04-01', 'MAHIR', '2013-09-12', 'SEKRETARIAT', 'DINAS KELAUTAN DAN PERTANIAN PROVINSI DKI JAKARTA', '0', '0', '86.4', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-29 03:09:37', '2019-10-29 03:09:37'),
(131, 56, '', '196603051989031012', 'E 632330', 'MANSYUR, SP', 'KUNINGAN', '1966-03-05', 'LAKI-LAKI', 'PENATA', 'III-c', '2013-04-01', 'MAHIR', '2013-09-12', 'SEKRETARIAT', 'DINAS KELAUTAN DAN PERTANIAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '22.410', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', '---', '2019-10-29 03:10:19', '2019-10-29 03:10:19'),
(132, 57, '', '196511101993101001', 'G 068740', 'SUYITNO', 'NGAWI', '1965-11-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-04-01', 'AHLI MUDA', '2015-11-09', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '200', '220.655', '0', '0', '0', '0', '20.655', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2019-10-29 03:13:04', '2019-10-29 03:13:04');
INSERT INTO `tbl_penilaian` (`id`, `idd`, `nrk`, `nip`, `no_ser_kar`, `name`, `t_lahir`, `tgl_lahir`, `j_k`, `pang`, `gol`, `tmt_pang`, `ting`, `tmt_ting`, `u_k`, `inst`, `akk`, `jak`, `ang`, `seb`, `pros`, `akm`, `akd`, `priod`, `tgl_tetap`, `thn_p`, `np`, `sksurat`, `rekomen`, `created_at`, `updated_at`) VALUES
(133, 57, '', '196511101993101001', 'G 068740', 'SUYITNO', 'NGAWI', '1965-11-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-04-01', 'AHLI MUDA', '2015-11-09', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '88.07', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2019-10-29 03:13:58', '2019-10-29 03:13:58'),
(134, 57, '', '196511101993101001', 'G 068740', 'SUYITNO', 'NGAWI', '1965-11-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-04-01', 'AHLI MUDA', '2015-11-09', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '51.905', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', '---', '2019-10-29 03:14:22', '2019-10-29 03:14:22'),
(139, 59, '', '197806162006041022', 'A NNNNN', 'NURCAHYO', 'XXXXXXX', '1978-06-16', 'LAKI-LAKI', 'PENATA', 'III-c', '2017-10-01', 'AHLI MUDA', '2018-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '91.65', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2019', '5 April 2020', '2019', 'KAK', '3470/-074', '0', '2019-11-08 00:06:39', '2019-11-08 00:06:39'),
(140, 59, '', '197806162006041022', 'A NNNNN', 'NURCAHYO', 'XXXXXXX', '1978-06-16', 'LAKI-LAKI', 'PENATA', 'III-c', '2017-10-01', 'AHLI MUDA', '2018-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '49.750', '2 Januari - 31 Desember 2019', '5 April 2020', '2019', 'PAK', '3470/-074', '---', '2019-11-08 00:07:05', '2019-11-08 00:07:05'),
(187, 59, NULL, '197806162006041022', 'A NNNNN', 'NURCAHYO', 'XXXXXXX', '1978-06-16', 'LAKI-LAKI', 'PENATA', 'III-c', '2017-10-01', 'AHLI MUDA', '2018-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '200', '210', '0', '0', '0', '0', '10.000', '2 Januari - 31 Desember 2017', '5 April 2020', '2016', 'AKK', '3470/-074', '0', '2020-01-16 08:17:32', '2020-01-16 08:17:32'),
(188, 59, NULL, '197806162006041022', 'A NNNNN', 'NURCAHYO', 'XXXXXXX', '1978-06-16', 'LAKI-LAKI', 'PENATA', 'III-c', '2017-10-01', 'AHLI MUDA', '2018-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '91.58', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2017', '5 April 2019', '2016', 'KAK', '3470/-074', '0', '2020-01-16 08:17:43', '2020-01-16 08:17:43'),
(189, 59, NULL, '197806162006041022', 'A NNNNN', 'NURCAHYO', 'XXXXXXX', '1978-06-16', 'LAKI-LAKI', 'PENATA', 'III-c', '2017-10-01', 'AHLI MUDA', '2018-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '85.000', '2 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Muda setelah mengikuti dan lulus sertifikasi jabatan', '2020-01-16 08:17:54', '2020-01-16 08:17:54'),
(192, 45, NULL, '198806042011011007', 'Q 356907', 'REZA PRIATNA', 'JAKARTA', '1988-06-04', 'LAKI-LAKI', 'PENGATUR Tk.1', 'II-d', '2017-10-01', 'TERAMPIL', '2014-11-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '91.22', 'Sangat Baik', '150', '5', '7.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-07 03:27:28', '2020-04-29 03:34:53'),
(193, 45, NULL, '198806042011011007', 'Q 356907', 'REZA PRIATNA', 'JAKARTA', '1988-06-04', 'LAKI-LAKI', 'PENGATUR Tk.1', 'II-d', '2017-10-01', 'TERAMPIL', '2014-11-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '20.000', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Mahir dan dinaikkan pangkatnya menjadi Penata Muda (III/a) setelah mengikuti dan lulus sertifikasi jabatan yang dipersyaratkan', '2020-04-07 03:28:21', '2020-04-29 03:35:14'),
(199, 35, NULL, '197408242006041013', 'P 020945', 'MOHAMAD HANAFI, A.MD.', 'SURABAYA', '1974-08-24', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2014-04-01', 'MAHIR', '2020-01-07', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '91,35', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-15 09:22:19', '2020-04-29 03:26:56'),
(200, 35, NULL, '197408242006041013', 'P 020945', 'MOHAMAD HANAFI, A.MD.', 'SURABAYA', '1974-08-24', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2014-04-01', 'MAHIR', '2020-01-07', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-15 09:24:03', '2020-04-29 03:27:15'),
(201, 30, NULL, '197207182006042001', 'N 232181', 'ASTRIA ZOHRAT TAWANGRATNA, S.S.', 'KEBUMEN', '1972-07-18', 'PEREMPUAN', 'PENATA', 'III-c', '2019-10-01', 'PENYELIA', '2018-02-07', 'SEKRETARIAT', 'DINAS PARIWISATA DAN KEBUDAYAAN PROVINSI DKI JAKARTA', '0', '0', '94,60', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-15 10:10:36', '2020-04-29 03:23:58'),
(202, 30, NULL, '197207182006042001', 'N 232181', 'ASTRIA ZOHRAT TAWANGRATNA, S.S.', 'KEBUMEN', '1972-07-18', 'PEREMPUAN', 'PENATA', 'III-c', '2019-10-01', 'PENYELIA', '2018-02-07', 'SEKRETARIAT', 'DINAS PARIWISATA DAN KEBUDAYAAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '37.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-15 10:11:13', '2020-04-29 03:24:21'),
(203, 53, NULL, '196806151989101001', 'E 912043', 'PRAYITNO', 'JAKARTA', '1968-06-15', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-10-01', 'MAHIR', '2014-08-29', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '85,04', 'Baik', '125', '12.5', '15.625', '1 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2020-04-15 10:21:11', '2020-04-15 10:21:11'),
(204, 53, NULL, '196806151989101001', 'E 912043', 'PRAYITNO', 'JAKARTA', '1968-06-15', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-10-01', 'MAHIR', '2014-08-29', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '15.625', '1 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2020-04-15 10:21:40', '2020-04-20 08:53:39'),
(205, 53, NULL, '196806151989101001', 'E 912043', 'PRAYITNO', 'JAKARTA', '1968-06-15', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-10-01', 'MAHIR', '2014-08-29', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '88,59', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-15 10:24:30', '2020-04-29 03:41:44'),
(206, 53, NULL, '196806151989101001', 'E 912043', 'PRAYITNO', 'JAKARTA', '1968-06-15', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-10-01', 'MAHIR', '2014-08-29', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-15 10:25:51', '2020-04-29 03:42:02'),
(211, 43, NULL, '196608311986031002', 'E 434456', 'AGUS TANTYO', 'JAKARTA', '1966-08-31', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2018-04-01', 'PENYELIA', '2017-03-02', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '91.58', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-16 03:58:05', '2020-04-29 03:33:26'),
(212, 43, NULL, '196608311986031002', 'E 434456', 'AGUS TANTYO', 'JAKARTA', '1966-08-31', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2018-04-01', 'PENYELIA', '2017-03-02', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '75.000', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-16 04:00:12', '2020-04-29 03:34:02'),
(215, 67, NULL, '197311162006041015', 'N 583621', 'ARIS PANTOYO', 'JAKARTA', '1973-11-16', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-10-01', 'MAHIR', '2019-05-03', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '91,60', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-16 04:16:42', '2020-04-29 03:45:59'),
(216, 67, NULL, '197311162006041015', 'N 583621', 'ARIS PANTOYO', 'JAKARTA', '1973-11-16', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-10-01', 'MAHIR', '2019-05-03', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-16 04:16:52', '2020-04-29 03:46:21'),
(217, 58, NULL, '196810151998032006', 'H 072714', 'SITI ZULAIKA ZAIN', 'JAKARTA', '1968-10-15', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2014-02-10', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '85,00', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-16 04:36:56', '2020-04-29 03:44:56'),
(218, 58, NULL, '196810151998032006', 'H 072714', 'SITI ZULAIKA ZAIN', 'JAKARTA', '1968-10-15', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2014-02-10', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '65.499', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-16 04:42:02', '2020-04-29 03:45:16'),
(219, 39, NULL, '196512201985032002', 'B 372117', 'NINING KARTINI', 'KUNINGAN', '1965-12-20', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '89,57', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-16 07:02:24', '2020-04-29 03:32:06'),
(220, 39, NULL, '196512201985032002', 'B 372117', 'NINING KARTINI', 'KUNINGAN', '1965-12-20', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '224.848', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-16 07:07:45', '2020-04-29 03:32:32'),
(224, 68, NULL, '196407121992031008', '123456', 'ARIS WIDIANA', 'KUNINGAN', '1964-07-12', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2009-04-01', 'AHLI PERTAMA', '2012-07-04', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '100', '147.628', '0', '0', '0', '0', '47.628', '2 Januari - 31 Desember 2019', '29 April 2020', '2018', 'AKK', '1078/-071.92', '0', '2020-04-16 08:21:34', '2020-04-29 03:46:48'),
(225, 68, NULL, '196407121992031008', '123456', 'ARIS WIDIANA', 'KUNINGAN', '1964-07-12', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2009-04-01', 'AHLI PERTAMA', '2012-07-04', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '86.02', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-16 08:21:58', '2020-04-29 03:47:43'),
(226, 68, NULL, '196407121992031008', '123456', 'ARIS WIDIANA', 'KUNINGAN', '1964-07-12', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2009-04-01', 'AHLI PERTAMA', '2012-07-04', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '63.253', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', 'Dapat dipertimbangkan untuk dinaikkan pangkatnya menjadi Penata Muda Tk. I (III/b)', '2020-04-16 08:22:29', '2020-04-29 03:48:02'),
(227, 69, NULL, '198103302011011007', '123456', 'ADE MARDIANSYAH', 'JAKARTA', '1981-03-30', 'LAKI-LAKI', 'PENGATUR TK.1', 'II-d', '2015-04-01', 'TERAMPIL', '2018-11-28', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '85.98', 'Baik', '125', '5', '6.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-17 07:24:41', '2020-04-29 03:48:40'),
(228, 69, '0', '0', '0', 'ADE MARDIANSYAH', '0', '0000-00-00', '0', 'PENGATUR TK.1', 'II-d', '2015-04-01', 'TERAMPIL', '2018-11-28', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '15.000', '0', '0', '2018', 'AKKINPAS', '0', '0', '2020-04-17 07:24:42', '2020-04-17 07:24:42'),
(229, 69, NULL, '198103302011011007', '123456', 'ADE MARDIANSYAH', 'JAKARTA', '1981-03-30', 'LAKI-LAKI', 'PENGATUR TK.1', 'II-d', '2015-04-01', 'TERAMPIL', '2018-11-28', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '21.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Mahir dan dinaikkan pangkatnya menjadi Penata Muda (III/a) setelah mengikuti dan lulus Diklat Pengangkatan Arsiparis Terampil dan sertifikasi jabatan yang dipersyaratkan', '2020-04-17 07:27:04', '2020-04-29 03:48:58'),
(231, 70, '0', '0', '0', 'TRI WAHYUNIATI', '0', '0000-00-00', '0', 'PENATA MUDA TK.1', 'III-a', '2016-10-01', 'AHLI PERTAMA', '2019-02-13', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '12.500', '0', '0', '2018', 'AKKINPAS', '0', '0', '2020-04-17 07:41:06', '2020-04-17 07:41:06'),
(233, 70, NULL, '197004202009042001', '123456', 'TRI WAHYUNIATI', 'BLITAR', '1970-04-20', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-a', '2016-10-01', 'AHLI PERTAMA', '2019-02-13', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '87.48', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-17 07:49:42', '2020-04-29 03:49:26'),
(235, 70, NULL, '197004202009042001', '123456', 'TRI WAHYUNIATI', 'BLITAR', '1970-04-20', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-a', '2016-10-01', 'AHLI PERTAMA', '2019-02-13', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '28.125', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-17 07:50:17', '2020-04-29 03:49:46'),
(236, 24, NULL, '196905171997031009', 'G 419176', 'JONRIADI', 'SIULAK GEDANG', '1969-05-17', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2012-04-01', 'MAHIR', '2019-03-04', 'BAGIAN UMUM DAN PEMASARAN', 'RSUD TARAKAN JAKARTA PUSAT', '0', '0', '86.50', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-17 08:09:34', '2020-04-29 03:21:28'),
(237, 24, NULL, '196905171997031009', 'G 419176', 'JONRIADI', 'SIULAK GEDANG', '1969-05-17', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2012-04-01', 'MAHIR', '2019-03-04', 'BAGIAN UMUM DAN PEMASARAN', 'RSUD TARAKAN JAKARTA PUSAT', '0', '0', '0', '0', '0', '0', '34.375', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-17 09:07:47', '2020-04-29 03:21:54'),
(238, 49, NULL, '197303251997031002', 'G 419283', 'ENDI, S.AP.', 'RAJADESA', '1973-03-25', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'AHLI PERTAMA', '2017-08-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '82.09', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-20 03:33:37', '2020-04-29 03:37:28'),
(239, 49, NULL, '197303251997031002', 'G 419283', 'ENDI, S.AP.', 'RAJADESA', '1973-03-25', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'AHLI PERTAMA', '2017-08-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '46.875', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-20 03:40:28', '2020-04-29 03:37:51'),
(240, 37, NULL, '196602171987031005', 'E 388412', 'SUGIANTO, A.MD.', 'JAKARTA', '1966-02-17', 'LAKI-LAKI', 'PENATA', 'III-c', '2011-10-01', 'MAHIR', '2019-03-04', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '81.61', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-20 03:51:50', '2020-04-29 03:29:32'),
(241, 37, NULL, '196602171987031005', 'E 388412', 'SUGIANTO, A.MD.', 'JAKARTA', '1966-02-17', 'LAKI-LAKI', 'PENATA', 'III-c', '2011-10-01', 'MAHIR', '2019-03-04', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-20 03:55:45', '2020-04-29 03:29:56'),
(244, 34, NULL, '196810271997032003', 'G 415063', 'DWI ANUGRAHENI ANDAYANI', 'JAKARTA', '1968-10-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2013-04-01', 'MAHIR', '2019-07-26', 'SEKRETARIAT', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '0', '0', '91.08', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-20 06:52:39', '2020-04-29 03:25:58'),
(245, 34, NULL, '196810271997032003', 'G 415063', 'DWI ANUGRAHENI ANDAYANI', 'JAKARTA', '1968-10-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2013-04-01', 'MAHIR', '2019-07-26', 'SEKRETARIAT', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-20 06:52:52', '2020-04-29 03:26:25'),
(246, 71, NULL, '196801131996031002', 'G 353924', 'UUS SAEPUDIN, S.AP.', 'PURWAKARTA', '1968-01-13', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2016-04-01', 'AHLI PERTAMA', '2016-10-20', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '100', '214.000', '0', '0', '0', '0', '114.000', '2 Januari - 31 Desember 2019', '29 April 2020', '2018', 'AKK', '1078/-071.92', '0', '2020-04-20 07:04:04', '2020-04-29 03:50:19'),
(247, 71, NULL, '196801131996031002', 'G 353924', 'UUS SAEPUDIN, S.AP.', 'PURWAKARTA', '1968-01-13', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2016-04-01', 'AHLI PERTAMA', '2016-10-20', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '87.37', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-20 07:04:55', '2020-04-29 03:50:40'),
(248, 71, NULL, '196801131996031002', 'G 353924', 'UUS SAEPUDIN, S.AP.', 'PURWAKARTA', '1968-01-13', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2016-04-01', 'AHLI PERTAMA', '2016-10-20', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '129.625', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Muda dan dinaikkan pangkatnya menjadi Penata (III/c) setelah mengikuti dan lulus uji kompetensi jabatan yang dipersyaratkan', '2020-04-20 07:07:05', '2020-04-29 03:50:58'),
(249, 72, NULL, '196812182009041001', 'Q 356483', 'ASIKIN', 'BIMA', '1968-12-18', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-10-01', 'AHLI MUDA', '2018-12-03', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '91.16', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-20 07:41:34', '2020-04-29 03:51:34'),
(250, 72, '0', '0', '0', 'ASIKIN', '0', '0000-00-00', '0', 'PENATA', 'III-c', '2016-10-01', 'AHLI MUDA', '2018-12-03', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '25.000', '0', '0', '2018', 'AKKINPAS', '0', '0', '2020-04-20 07:41:34', '2020-04-20 07:41:34'),
(251, 72, NULL, '196812182009041001', 'Q 356483', 'ASIKIN', 'BIMA', '1968-12-18', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-10-01', 'AHLI MUDA', '2018-12-03', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '62.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-20 07:44:08', '2020-04-29 03:51:49'),
(252, 73, NULL, '196503091985032007', 'D 344426', 'SUHAINI, S.H.', 'JAKARTA', '1965-03-09', 'PEREMPUAN', 'PENATA', 'III-c', '2013-10-01', 'AHLI MUDA', '2018-11-29', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '85.12', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-20 08:03:55', '2020-04-29 03:52:24'),
(253, 73, '0', '0', '0', 'SUHAINI, S.H.', '0', '0000-00-00', '0', 'PENATA', 'III-c', '2013-10-01', 'AHLI MUDA', '2018-11-29', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '75.000', '0', '0', '2018', 'AKKINPAS', '0', '0', '2020-04-20 08:03:55', '2020-04-20 08:03:55'),
(254, 73, NULL, '196503091985032007', 'D 344426', 'SUHAINI, S.H.', 'JAKARTA', '1965-03-09', 'PEREMPUAN', 'PENATA', 'III-c', '2013-10-01', 'AHLI MUDA', '2018-11-29', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '106.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', 'Dapat dipertimbangkan untuk dinaikkan pangkatnya menjadi Penata Tk. I (III/d)', '2020-04-20 08:05:43', '2020-04-29 03:52:49'),
(255, 76, NULL, '197303211996031001', 'G 303292', 'AGUS, S.H.', 'TIGARAKSA', '1973-03-21', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-04-01', 'AHLI MUDA', '2019-02-25', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '0', '0', '77.272', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-21 04:48:39', '2020-04-29 03:54:58'),
(256, 76, '0', '0', '0', 'AGUS, S.H.', '0', '0000-00-00', '0', 'PENATA TK.1', 'III-d', '2017-04-01', 'AHLI MUDA', '2019-02-25', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '25.000', '0', '0', '2019', 'AKKINPAS', '0', '0', '2020-04-21 04:48:40', '2020-04-21 04:48:40'),
(257, 76, NULL, '197303211996031001', 'G 303292', 'AGUS, S.H.', 'TIGARAKSA', '1973-03-21', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-04-01', 'AHLI MUDA', '2019-02-25', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '56.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-21 04:49:01', '2020-04-29 03:55:16'),
(259, 13, NULL, '198610132010011012', 'Q 243137', 'BANGUN WIRYAWAN, S.E.', 'JAKARTA', '1986-10-13', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2019-10-01', 'AHLI PERTAMA', '2018-05-09', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '92.08', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-21 06:51:27', '2020-04-29 03:11:49'),
(260, 13, NULL, '198610132010011012', 'Q 243137', 'BANGUN WIRYAWAN, S.E.', 'JAKARTA', '1986-10-13', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2019-10-01', 'AHLI PERTAMA', '2018-05-09', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-21 06:53:02', '2020-04-29 03:02:21'),
(261, 74, '0', '0', '0', 'ENDANG PUJI ASTUTI', '0', '0000-00-00', '0', 'PENATA', 'III-c', '2017-10-01', 'AHLI MUDA', '2019-03-06', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '12.500', '0', '0', '2019', 'AKKINPAS', '0', '0', '2020-04-21 07:35:49', '2020-04-21 07:35:49'),
(263, 74, NULL, '196907121993032006', 'G 044960', 'ENDANG PUJI ASTUTI', 'OGAN KOMERING ULU', '1969-07-12', 'PEREMPUAN', 'PENATA', 'III-c', '2017-10-01', 'AHLI MUDA', '2019-03-06', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '88.000', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '---', '2020-04-21 07:35:49', '2020-04-29 03:53:17'),
(264, 74, NULL, '196907121993032006', 'G 044960', 'ENDANG PUJI ASTUTI', 'OGAN KOMERING ULU', '1969-07-12', 'PEREMPUAN', 'PENATA', 'III-c', '2017-10-01', 'AHLI MUDA', '2019-03-06', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '43.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-21 07:36:23', '2020-04-29 03:53:32'),
(265, 48, NULL, '197109262000121001', 'E 434456', 'JAYA SENTOSO', 'JAKARTA', '1971-09-26', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2018-04-01', 'PENYELIA', '2019-07-23', 'BIDANG PENDIDIK DAN TENAGA KEPENDIDIKAN', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '0', '0', '90.01', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-21 08:01:42', '2020-04-29 03:36:36'),
(266, 48, NULL, '197109262000121001', 'E 434456', 'JAYA SENTOSO', 'JAKARTA', '1971-09-26', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2018-04-01', 'PENYELIA', '2019-07-23', 'BIDANG PENDIDIK DAN TENAGA KEPENDIDIKAN', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-21 08:01:57', '2020-05-11 04:42:46'),
(268, 17, NULL, '198210092010011018', 'Q 240127', 'DIMAS OKTAVIANTO, S.KOM', 'JAKARTA', '1982-10-09', 'LAKI-LAKI', 'PENATA MUDA', 'III-b', '2019-10-01', 'AHLI PERTAMA', '2018-05-09', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '92.16', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-21 22:58:39', '2020-04-29 03:16:04'),
(269, 17, NULL, '198210092010011018', 'Q 240127', 'DIMAS OKTAVIANTO, S.KOM', 'JAKARTA', '1982-10-09', 'LAKI-LAKI', 'PENATA MUDA', 'III-b', '2019-10-01', 'AHLI PERTAMA', '2018-05-09', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-21 22:58:51', '2020-04-29 03:15:43'),
(274, 38, NULL, '196706271994012001', 'G 119134', 'YOSIFA ISMAYANTI, S.H.', 'JAKARTA', '1967-06-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2015-10-05', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '0', '0', '88.32', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-22 01:08:49', '2020-04-29 03:30:27'),
(275, 38, NULL, '196706271994012001', 'G 119134', 'YOSIFA ISMAYANTI, S.H.', 'JAKARTA', '1967-06-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2015-10-05', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '115.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Muda dan dinaikkan pangkatnya menjadi Penata (III/c) setelah mengikuti dan lulus uji kompetensi jabatan yang dipersyaratkan', '2020-04-22 01:10:38', '2020-04-29 03:31:21'),
(276, 54, NULL, '196406291987032004', 'E 357509', 'WIWIK KURNIAWATI', 'JAKARTA', '1964-06-29', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '86.35', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-22 01:16:58', '2020-04-29 03:42:36'),
(277, 54, NULL, '196406291987032004', 'E 357509', 'WIWIK KURNIAWATI', 'JAKARTA', '1964-06-29', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '132.940', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Muda setelah mengikuti dan lulus Diklat Alih Jenjang dan uji kompetensi jabatan yang dipersyaratkan', '2020-04-22 01:18:09', '2020-04-29 03:42:57'),
(278, 57, NULL, '196511101993101001', 'G 068740', 'SUYITNO', 'NGAWI', '1965-11-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-04-01', 'AHLI MUDA', '2015-11-09', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '89.25', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-22 07:24:02', '2020-04-29 03:43:54'),
(279, 57, NULL, '196511101993101001', 'G 068740', 'SUYITNO', 'NGAWI', '1965-11-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-04-01', 'AHLI MUDA', '2015-11-09', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '83.155', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-22 07:24:39', '2020-04-29 03:44:13'),
(282, 12, NULL, '197610102010011027', 'Q 090540', 'OKGANI SUHYOKO , S.S.', 'JAKARTA', '1976-10-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2019-04-01', 'AHLI MUDA', '2017-10-04', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '91.58', 'Sangat Baik', '150', '25', '37.500', '1 Januari - 31 Desember 2018', '5 April 2019', '2018', 'KAK', '1418/-071.92', '0', '2020-04-22 08:47:01', '2020-04-22 08:47:01'),
(283, 12, NULL, '197610102010011027', 'Q 090540', 'OKGANI SUHYOKO , S.S.', 'JAKARTA', '1976-10-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2019-04-01', 'AHLI MUDA', '2017-10-04', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '37.500', '1 Januari - 31 Desember 2018', '5 April 2019', '2018', 'PAK', '1418/-071.92', '---', '2020-04-22 08:47:21', '2020-04-22 08:47:21'),
(284, 12, NULL, '197610102010011027', 'Q 090540', 'OKGANI SUHYOKO , S.S.', 'JAKARTA', '1976-10-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2019-04-01', 'AHLI MUDA', '2017-10-04', 'PUSAT SISTEM TEKNOLOGI INFORMASI DAN KEARSIPAN', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '92.08', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-22 08:47:47', '2020-04-29 02:45:11'),
(285, 12, NULL, '197610102010011027', 'Q 090540', 'OKGANI SUHYOKO , S.S.', 'JAKARTA', '1976-10-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2019-04-01', 'AHLI MUDA', '2017-10-04', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '75.000', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-22 08:47:58', '2020-04-29 02:05:59'),
(288, 50, NULL, '197111111996031002', 'G 415333', 'LUHUT SIHOMBING', 'BANJARBARU', '1971-11-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-10-01', 'AHLI MUDA', '2019-02-18', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '84.96', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-22 23:41:08', '2020-04-29 03:39:40'),
(292, 75, NULL, '197806162006041022', 'N 231999', 'NURCAHYO', 'JAKARTA', '1978-06-16', 'LAKI-LAKI', 'PENATA', 'III-c', '2014-04-01', 'AHLI MUDA', '2017-10-04', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '85.69', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-22 23:59:48', '2020-04-29 03:54:03'),
(293, 75, '0', '0', '0', 'NURCAHYO', '0', '0000-00-00', '0', 'PENATA', 'III-c', '2014-04-01', 'AHLI MUDA', '2017-10-04', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '75.000', '0', '0', '2018', 'AKKINPAS', '0', '0', '2020-04-22 23:59:48', '2020-04-22 23:59:48'),
(294, 75, NULL, '197806162006041022', 'N 231999', 'NURCAHYO', 'JAKARTA', '1978-06-16', 'LAKI-LAKI', 'PENATA', 'III-c', '2014-04-01', 'AHLI MUDA', '2017-10-04', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '106.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', 'Dapat dipertimbangkan untuk dinaikkan pangkatnya menjadi Penata Tk. I (III/d)', '2020-04-23 00:00:54', '2020-04-29 03:54:25'),
(296, 77, NULL, '198009092010012029', 'Q 092516', 'YUNIARTI, S.HUM.', 'JAKARTA', '1980-09-09', 'PEREMPUAN', 'PENATA', 'III-c', '2018-04-01', 'AHLI MUDA', '2019-03-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '85.80', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-23 00:04:55', '2020-04-29 03:55:42'),
(297, 77, NULL, '198009092010012029', 'Q 092516', 'YUNIARTI, S.HUM.', 'JAKARTA', '1980-09-09', 'PEREMPUAN', 'PENATA', 'III-c', '2018-04-01', 'AHLI MUDA', '2019-03-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-23 00:05:06', '2020-04-29 03:55:57'),
(298, 50, NULL, '197111111996031002', 'G 415333', 'LUHUT SIHOMBING', 'BANJARBARU', '1971-11-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-10-01', 'AHLI MUDA', '2019-02-18', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '62.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-23 01:12:21', '2020-04-29 03:40:03'),
(299, 51, NULL, '197702112010012010', 'Q 092057', 'DINI DWI UTARI HANDAYANTI, S.SOS.', 'BANDUNG', '1977-02-11', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2014-10-03', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '88.36', 'Baik', '125', '12.5', '15.625', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-23 01:16:08', '2020-04-29 03:40:38'),
(300, 51, NULL, '197702112010012010', 'Q 092057', 'DINI DWI UTARI HANDAYANTI, S.SOS.', 'BANDUNG', '1977-02-11', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2014-10-03', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '100.000', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Muda dan dinaikkan pangkatnya menjadi Penata (III/c) setelah mengikuti dan lulus uji kompetensi jabatan yang dipersyaratkan', '2020-04-23 01:21:52', '2020-04-29 03:41:04'),
(301, 26, NULL, '196610281991091001', 'F 228740', 'SAFRINO OKMAN', 'JAKARTA', '1966-10-28', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2010-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '87.000', 'Baik', '125', '25', '31.250', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-23 01:26:41', '2020-04-29 03:23:03'),
(302, 26, NULL, '196610281991091001', 'F 228740', 'SAFRINO OKMAN', 'JAKARTA', '1966-10-28', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2010-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '202.350', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-23 01:27:54', '2020-04-29 03:23:26'),
(303, 36, NULL, '198410302010012033', 'Q 089735', 'ELOK RISCA DAMAYANTI, S.E.', 'DEPOK', '1984-10-30', 'PEREMPUAN', 'PENATA', 'III-c', '2019-10-01', 'PENYELIA', '2019-07-26', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '91.16', 'Sangat Baik', '150', '25', '37.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-23 05:02:44', '2020-04-29 03:27:49'),
(304, 36, NULL, '198410302010012033', 'Q 089735', 'ELOK RISCA DAMAYANTI, S.E.', 'DEPOK', '1984-10-30', 'PEREMPUAN', 'PENATA', 'III-c', '2019-10-01', 'PENYELIA', '2019-07-26', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '101.198', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAKPK', '1078/-071.92', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Muda setelah mengikuti dan lulus uji kompetensi jabatan', '2020-04-23 05:04:42', '2020-04-29 03:28:32'),
(326, 46, NULL, '196805201990111002', 'E 926758', 'SETIYONO, A.MD.', 'SIDOMULYO', '1968-05-20', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'MAHIR', '2015-07-10', 'SEKRETARIAT', 'DINAS PENANGGULANGAN KEBAKARAN DAN PENYELAMATAN PROVINSI DKI JAKARTA', '0', '0', '91.23', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-27 04:58:57', '2020-04-29 03:35:48'),
(327, 46, NULL, '196805201990111002', 'E 926758', 'SETIYONO, A.MD.', 'SIDOMULYO', '1968-05-20', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'MAHIR', '2015-07-10', 'SEKRETARIAT', 'DINAS PENANGGULANGAN KEBAKARAN DAN PENYELAMATAN PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '37.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-27 05:00:21', '2020-04-29 03:36:09'),
(330, 22, NULL, '196407241987031004', 'E 474985', 'YULIANTO', 'JAKARTA', '1964-08-24', 'LAKI-LAKI', 'PENATA', 'III-b', '2009-10-01', 'MAHIR', '2016-08-09', 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA BARAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '91.16', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-27 08:36:35', '2020-04-29 03:19:38'),
(334, 44, NULL, '198602282010012041', 'A 05003296', 'WISE WINEKA', 'JAKARTA', '1986-02-28', 'PEREMPUAN', 'PENATA MUDA', 'III-a', '2018-04-01', 'MAHIR', '2018-02-07', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '80', '101.635', '0', '0', '0', '0', '21.635', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2016', 'AKK', '3470/-074', '0', '2020-04-29 04:40:08', '2020-04-29 04:40:08'),
(335, 44, NULL, '198602282010012041', 'A 05003296', 'WISE WINEKA', 'JAKARTA', '1986-02-28', 'PEREMPUAN', 'PENATA MUDA', 'III-a', '2018-04-01', 'MAHIR', '2018-02-07', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '91.96', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'KAK', '3470/-074', '0', '2020-04-29 04:40:23', '2020-04-29 04:40:23'),
(336, 44, NULL, '198602282010012041', 'A 05003296', 'WISE WINEKA', 'JAKARTA', '1986-02-28', 'PEREMPUAN', 'PENATA MUDA', 'III-a', '2018-04-01', 'MAHIR', '2018-02-07', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '0', '0', '0', '0', '59.135', '2 Januari - 31 Desember 2017', '1 Oktober 2018', '2017', 'PAK', '3470/-074', 'Dapat dipertimbangkan untuk dinaikkan jabatannya menjadi Arsiparis Ahli Pertama setelah mengikuti dan lulus uji kompetensi jabatan yang dipersyaratkan', '2020-04-29 04:41:17', '2020-04-29 04:41:17'),
(337, 44, NULL, '198602282010012041', 'A 05003296', 'WISE WINEKA', 'JAKARTA', '1986-02-28', 'PEREMPUAN', 'PENATA MUDA', 'III-a', '2018-04-01', 'AHLI PERTAMA', '2019-08-08', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '91.96', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2018', '12 Agustus 2019', '2018', 'KAK', '3203/-071.92', '0', '2020-04-29 05:05:57', '2020-04-29 05:05:57'),
(338, 44, NULL, '198602282010012041', 'A 05003296', 'WISE WINEKA', 'JAKARTA', '1986-02-28', 'PEREMPUAN', 'PENATA MUDA', 'III-a', '2018-04-01', 'AHLI PERTAMA', '2019-08-08', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '0', '0', '0', '0', '18.750', '2 Januari - 31 Desember 2018', '12 Agustus 2019', '2018', 'PAK', '3203/-071.92', '---', '2020-04-29 05:06:28', '2020-04-29 05:06:28'),
(339, 44, NULL, '198602282010012041', 'A 05003296', 'WISE WINEKA', 'JAKARTA', '1986-02-28', 'PEREMPUAN', 'PENATA MUDA', 'III-a', '2018-04-01', 'AHLI PERTAMA', '2019-08-08', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '93.24', 'Sangat Baik', '150', '12.5', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'KAK', '1078/-071.92', '0', '2020-04-29 05:08:02', '2020-04-29 05:08:02'),
(340, 44, NULL, '198602282010012041', 'A 05003296', 'WISE WINEKA', 'JAKARTA', '1986-02-28', 'PEREMPUAN', 'PENATA MUDA', 'III-a', '2018-04-01', 'AHLI PERTAMA', '2019-08-08', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '0', '0', '0', '0', '0', '0', '37.500', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-04-29 05:08:17', '2020-04-29 05:08:17'),
(341, 22, NULL, '196407241987031004', 'E 474985', 'YULIANTO', 'JAKARTA', '1964-08-24', 'LAKI-LAKI', 'PENATA', 'III-b', '2009-10-01', 'MAHIR', '2019-08-09', 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA BARAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '0', '0', '0', '0', '0', '0', '18.750', '2 Januari - 31 Desember 2019', '29 April 2020', '2019', 'PAK', '1078/-071.92', '---', '2020-05-11 04:54:12', '2020-05-11 04:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penilaian_a`
--

CREATE TABLE `tbl_penilaian_a` (
  `id` bigint UNSIGNED NOT NULL,
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
  `akk` varchar(255) NOT NULL,
  `jak` varchar(255) NOT NULL,
  `sak` varchar(255) NOT NULL,
  `priod` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL,
  `thn_p` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penilaian_b`
--

CREATE TABLE `tbl_penilaian_b` (
  `id` bigint UNSIGNED NOT NULL,
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
  `akk` varchar(255) NOT NULL,
  `jak` varchar(255) NOT NULL,
  `ang` varchar(255) NOT NULL,
  `seb` varchar(255) NOT NULL,
  `pros` varchar(255) NOT NULL,
  `akm` varchar(255) NOT NULL,
  `akd` varchar(255) NOT NULL,
  `priod` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL,
  `thn_p` varchar(255) NOT NULL,
  `np` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penilaian_c`
--

CREATE TABLE `tbl_penilaian_c` (
  `id` bigint NOT NULL,
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
  `ang` varchar(255) NOT NULL,
  `seb` varchar(255) NOT NULL,
  `pros` varchar(255) NOT NULL,
  `akm` varchar(255) NOT NULL,
  `akd` varchar(255) NOT NULL,
  `priode` varchar(255) NOT NULL,
  `tgl_tetap_c` varchar(255) NOT NULL,
  `thn_p_a` varchar(255) NOT NULL,
  `thn_p_b` varchar(255) NOT NULL,
  `rekom` varchar(255) NOT NULL,
  `sak` varchar(255) NOT NULL,
  `akd_b` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unitkerja`
--

CREATE TABLE `tbl_unitkerja` (
  `id` bigint UNSIGNED NOT NULL,
  `u_k` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `ticket_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `category_id`, `ticket_id`, `title`, `priority`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'WBEHCZETRM', 'adsa', 'low', 'asdsad', 'Closed', '2023-01-03 23:27:52', '2023-01-04 01:23:47'),
(2, 1, 1, 'DJ4NHLDJYF', 'asdas', 'low', 'sadasda', 'Open', '2023-01-04 00:16:01', '2023-01-04 00:16:01'),
(3, 1, 1, 'PHGNUVOBYV', 'asds', 'medium', 'asdasda', 'Open', '2023-01-04 00:24:11', '2023-01-04 00:24:11'),
(4, 2, 1, 'BPTF74UCFZ', 'asdsad', 'low', 'asdsadasd', 'Open', '2023-01-04 01:13:21', '2023-01-04 01:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `nrk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ser_kar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_k` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmt_pang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmt_ting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_k` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nrk`, `nip`, `no_ser_kar`, `name`, `t_lahir`, `tgl_lahir`, `j_k`, `pang`, `gol`, `tmt_pang`, `ting`, `tmt_ting`, `u_k`, `inst`, `foto`, `email`, `email_verified_at`, `password`, `level`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, '177890', '197610102010011027', 'Q 090540', 'OKGANI SUHYOKO , S.S.', 'JAKARTA', '1976-10-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2019-04-01', 'AHLI MUDA', '2017-10-04', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1571972716_201931003 Okgani.jpg', 'okgani@ptsp.com', NULL, '$2y$10$AMjnBhSnHcG/PEPErmJQTOkkbq7xvBT4pE.NwOtLI6nxYt8aR4CBa', 'USERS', 0, NULL, '2019-08-26 08:04:03', '2020-04-29 03:13:14'),
(13, '177525', '198610132010011012', 'Q 243137', 'BANGUN WIRYAWAN, S.E.', 'JAKARTA', '1986-10-13', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2019-10-01', 'AHLI PERTAMA', '2018-05-09', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1571972739_201931034 Bangun Wiryawan fix.jpg', 'bangun@pstik.com', NULL, '$2y$10$h2jANVPuADsXui.hCToYdOLaz0kcJzHykRDEZ75ypKJrywIm76M/S', 'USERS', 0, NULL, '2019-08-26 08:56:31', '2020-04-29 03:06:33'),
(17, '332211', '198210092010011018', 'Q 240127', 'DIMAS OKTAVIANTO, S.KOM', 'JAKARTA', '1982-10-09', 'LAKI-LAKI', 'PENATA MUDA', 'III-b', '2019-10-01', 'AHLI PERTAMA', '2018-05-09', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1571972760_201931038 Dimas Oktavianto fix.jpg', 'dimas@pstik.com', NULL, '$2y$10$BWIpnqGHqfFzwKgpxAJJ0OHtGIMhxWfe/Spyng219C7PoirizCYyu', 'USERS', 0, NULL, '2019-08-27 17:16:04', '2020-04-29 03:15:16'),
(19, '', '196304241985032010', 'E 001079', 'PRATIWI, S.AP.', 'Jakarta', '1963-04-24', 'Perempuan', 'PENATA Tk.1', 'III-d', '2014-04-01', 'MAHIR', '2015-04-10', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '1571972772_201931006 Pratiwi, S.AP..jpg', 'pratiwi@walkotjaktim.com', NULL, '$2y$10$siOUrK0RumwBEMllvh3Ji.QbfGchnQOzg6g/XcikGySoA0AUqXgD6', 'USERS', 0, NULL, '2019-10-03 01:45:30', '2020-02-15 03:38:23'),
(22, '000000', '196407241987031004', 'E 474985', 'YULIANTO', 'JAKARTA', '1964-08-24', 'LAKI-LAKI', 'PENATA', 'III-b', '2009-10-01', 'MAHIR', '2019-08-09', 'UNIT PELAKSANA PTSP KOTA ADMINISTRASI JAKARTA BARAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1571972445_201931039 Yulianto.jpg', 'jhon@jhon.com', NULL, '$2y$10$PdfOcjT4IPkJ58lKG26dguN1jTcz73B1dstURSuLpVpH/S5frrw22', 'USERS', 0, NULL, '2019-10-04 19:50:13', '2020-05-11 04:46:57'),
(24, '000000', '196905171997031009', 'G 419176', 'JONRIADI', 'SIULAK GEDANG', '1969-05-17', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2012-04-01', 'MAHIR', '2019-03-04', 'BAGIAN UMUM DAN PEMASARAN', 'RSUD TARAKAN JAKARTA PUSAT', '1571207682_Jonriadi.jpeg', 'users@users.com', NULL, '$2y$10$4XRGEjcvtpgCU47rzxDlE.3V6MvYNIkEV9RDycV1Ba32KkiTJ9/kK', 'USERS', 0, NULL, '2019-10-06 14:20:07', '2020-04-17 08:08:17'),
(26, '3123', '196610281991091001', 'F 228740', 'SAFRINO OKMAN', 'JAKARTA', '1966-10-28', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2010-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1579829999_1572242690_201931023 Safrino Okman fix.jpg', 'users@users.id', NULL, '$2y$10$XIqMuBULYGeuekGhkzW80eUmC1AVOGYI9G1bzNPKfAlhkbN2Fp5WG', 'USERS', 0, NULL, '2019-10-16 06:40:12', '2020-02-18 06:26:44'),
(30, '164925', '197207182006042001', 'N 232181', 'ASTRIA ZOHRAT TAWANGRATNA, S.S.', 'KEBUMEN', '1972-07-18', 'PEREMPUAN', 'PENATA', 'III-c', '2019-10-01', 'PENYELIA', '2018-02-07', 'SEKRETARIAT', 'DINAS PARIWISATA DAN KEBUDAYAAN PROVINSI DKI JAKARTA', '1573008042_201931057 Astria Zohrat Tawangratna.jpg', 'users', NULL, '$2y$10$42LMIMgv3sZiG9VXWgT8F..sYad/u3w5jWykB3jlaRaCx1Cd1UzMm', 'USERS', 0, NULL, '2019-10-16 15:45:08', '2020-04-15 10:09:59'),
(34, '000000', '196810271997032003', 'G 415063', 'DWI ANUGRAHENI ANDAYANI', 'JAKARTA', '1968-10-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2013-04-01', 'MAHIR', '2019-07-26', 'SEKRETARIAT', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '1572320089_201931065 Dwi Anugraheni.jpg', 'G415063@dkijakarta.com', NULL, '$2y$10$Z7p2ZkJe1DXu7b.FUzfAn.t7Y6zsRdghVOsr1wnjHijc/Kk4k0d5q', 'USERS', 0, NULL, '2019-10-16 15:58:39', '2020-04-20 06:48:51'),
(35, '165290', '197408242006041013', 'P 020945', 'MOHAMAD HANAFI, A.MD.', 'SURABAYA', '1974-08-24', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2014-04-01', 'MAHIR', '2020-01-07', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '1572244331_201931005 Mohamad Hanafi.jpg', 'P020945@dkijakarta.com', NULL, '$2y$10$TCqcA0pAr1bF3qTPCigpj.XCsFLqRj1N1i5z71hGZMcrsmdEBmUxm', 'USERS', 0, NULL, '2019-10-16 16:01:12', '2020-04-15 09:21:34'),
(36, '178274', '198410302010012033', 'Q 089735', 'ELOK RISCA DAMAYANTI, S.E.', 'DEPOK', '1984-10-30', 'PEREMPUAN', 'PENATA', 'III-c', '2019-10-01', 'PENYELIA', '2019-07-26', 'SEKRETARIAT', 'SATUAN POLISI PAMONG PRAJA PROVINSI DKI JAKARTA', '1572244697_201931010 Elok Risca Damayanti.jpg', 'Q089735@dkijakarta.com', NULL, '$2y$10$APIz1B7DALihtkPzTg8kNuRIynDKQIaNhWfvJf4p6R2ofSnSdIXAO', 'USERS', 0, NULL, '2019-10-16 16:04:37', '2020-04-15 03:14:39'),
(37, '000000', '196602171987031005', 'E 388412', 'SUGIANTO, A.MD.', 'JAKARTA', '1966-02-17', 'LAKI-LAKI', 'PENATA', 'III-c', '2011-10-01', 'MAHIR', '2019-03-04', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '1572245175_201931017 Sugianto fix.jpg', 'E388412@dkijakarta.com', NULL, '$2y$10$64IQy.dmbH4hgDhQaP7rMOaiiSMHtfSkl8m8xtWDmldZ9lp3WIF.y', 'USERS', 0, NULL, '2019-10-16 16:27:32', '2020-04-20 03:50:50'),
(38, '000000', '196706271994012001', 'G 119134', 'YOSIFA ISMAYANTI, S.H.', 'JAKARTA', '1967-06-27', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2015-10-05', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '1572245645_201931036 Yosifa Ismayanti fix.jpg', 'G119134@dkijakarta.com', NULL, '$2y$10$fey1jZ8FuJu0aM8m0cXQpO1EepgW0db7Xse2gPmfLVtODghIPVqu6', 'USERS', 0, NULL, '2019-10-17 02:00:16', '2020-04-21 23:08:56'),
(39, '000000', '196512201985032002', 'B 372117', 'NINING KARTINI', 'KUNINGAN', '1965-12-20', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-10-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572245985_201931027 Nining Kartini fix.jpg', 'B372117@dkijakarta.com', NULL, '$2y$10$Mwo.v9vhreZF6zfVj7JeeuatedOm/GAwPubzz6jCx5gN1bbx6pt.i', 'USERS', 0, NULL, '2019-10-17 02:03:41', '2020-04-16 07:01:55'),
(40, '', '198207142010012034', 'A 0506320', 'DEVI RATNASARI', 'PEMALANG', '1982-07-14', 'PEREMPUAN', 'PENGATUR Tk.1', 'II-d', '2014-04-01', 'TERAMPIL', '2015-12-22', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '1571278065_girl.jpg', 'A0506320@dkijakarta.com', NULL, '$2y$10$5qZO7q3IasHtWlJkxzCcbeMfYvg/P2..T2NdjCsaCvIGVJisJGoGK', 'USERS', 0, NULL, '2019-10-17 02:07:45', '2019-10-28 07:05:22'),
(41, '', '196411191987011002', 'E 056760', 'FANDOLI', 'SIKUMPUL', '1964-11-19', 'LAKI-LAKI', 'PENATA Tk.1', 'III-d', '2017-04-01', 'PENYELIA', '2017-04-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572247128_201931004 Fandoli.jpg', 'E056760@dkijakarta.com', NULL, '$2y$10$G9BlfUf7IwVsnWx82SVOsuL8XAJdLskL6Vpz5xbmLK3J9KwyKQ3jK', 'USERS', 0, NULL, '2019-10-17 02:21:19', '2019-10-28 07:18:48'),
(42, '', '196204231984102001', 'D 106067', 'SRI SUTARSIH', 'JAKARTA', '1962-04-23', 'PEREMPUAN', 'PENATA Tk.1', 'III-d', '2017-04-01', 'PENYELIA', '2013-12-02', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572247096_201931046 Sri Sutarsih.jpg', 'D106067@dkijakarta.com', NULL, '$2y$10$s2FPbYogZUgDbC6IIcP/0eXqLBvMaYQnsHHn4Z2IS9hWGO8YW5mxO', 'USERS', 0, NULL, '2019-10-17 02:25:03', '2019-10-28 07:18:16'),
(43, '108652', '196608311986031002', 'E 434456', 'AGUS TANTYO', 'JAKARTA', '1966-08-31', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2018-04-01', 'PENYELIA', '2017-03-02', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1572247384_201931019 Agus Tantyo fix.jpg', 'E434456@dkijakarta.com', NULL, '$2y$10$S215DFBXvKYjGXdjk48imOnkT5OHzFxu0PCWxhImORFbzf.NqZQVK', 'USERS', 0, NULL, '2019-10-17 02:27:38', '2020-04-16 03:11:08'),
(44, '000000', '198602282010012041', 'A 05003296', 'WISE WINEKA', 'JAKARTA', '1986-02-28', 'PEREMPUAN', 'PENATA MUDA', 'III-a', '2018-04-01', 'AHLI PERTAMA', '2019-08-08', 'BAGIAN UMUM DAN PROTOKOL', 'WALIKOTA KOTA ADMINISTRASI JAKARTA TIMUR', '1572247994_201931002 Wise Wineka.jpg', 'A05003296@dkijakarta.com', NULL, '$2y$10$F5GU/0JImeAvPotkGr3op.n6nJ5Da232zkCTjfsrALyML/y.WaWJW', 'USERS', 0, NULL, '2019-10-17 02:30:37', '2020-04-29 04:46:17'),
(45, '', '198806042011011007', 'Q 356907', 'REZA PRIATNA', 'JAKARTA', '1988-06-04', 'LAKI-LAKI', 'PENGATUR Tk.1', 'II-d', '2017-10-01', 'TERAMPIL', '2014-11-07', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572313481_201931051 Reza Priatna.jpg', 'Q356907@dkijakarta.com', NULL, '$2y$10$g9RmfktLRMGnh7kfk0AMoOuBt/5xL0ZX/vDAtrBjL2fxawX/GO8KC', 'USERS', 0, NULL, '2019-10-17 02:33:25', '2019-10-29 01:44:41'),
(46, '000000', '196805201990111002', 'E 926758', 'SETIYONO, A.MD.', 'SIDOMULYO', '1968-05-20', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'MAHIR', '2015-07-10', 'SEKRETARIAT', 'DINAS PENANGGULANGAN KEBAKARAN DAN PENYELAMATAN PROVINSI DKI JAKARTA', '1571279816_man.jpg', 'E926758@dkijakarta.com', NULL, '$2y$10$3jm/.27lzyinci/tlw2C4OmkpAGFm.6JLvvtWyHUpIgqDQCBeCpfa', 'USERS', 0, NULL, '2019-10-17 02:36:56', '2020-04-21 03:40:37'),
(48, '000000', '197109262000121001', 'E 434456', 'JAYA SENTOSO', 'JAKARTA', '1971-09-26', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2018-04-01', 'PENYELIA', '2019-07-23', 'BIDANG PENDIDIK DAN TENAGA KEPENDIDIKAN', 'DINAS PENDIDIKAN PROVINSI DKI JAKARTA', '1573007965_201931020 Jaya Sentosa.jpg', 'E434453@dkijakarta.com', NULL, '$2y$10$MTock/sfMUU6jyNeiXLTFOwDNNCMLICBvJme3HzhNsqjjPfdNQjAO', 'USERS', 0, NULL, '2019-10-17 02:41:55', '2020-04-21 08:01:13'),
(49, '000000', '197303251997031002', 'G 419283', 'ENDI, S.AP.', 'RAJADESA', '1973-03-25', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-04-01', 'AHLI PERTAMA', '2017-08-25', 'SEKRETARIAT', 'DINAS KESEHATAN PROVINSI DKI JAKARTA', '1572314634_201931016 Endi Rajadesa fix.jpg', 'G419283@dkijakarta.com', NULL, '$2y$10$LyRiHLU4eWuMTPourp1AxO81Y1LjDSOuuLqMImEM6Ujw8fuKlUefa', 'USERS', 0, NULL, '2019-10-17 03:34:23', '2020-04-20 03:32:52'),
(50, '000000', '197111111996031002', 'G 415333', 'LUHUT SIHOMBING', 'BANJARBARU', '1971-11-11', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-10-01', 'AHLI MUDA', '2019-02-18', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572315722_201931015 Luhut Sihombing, S.S.T.Ars..jpg', 'G415333@dkijakarta.com', NULL, '$2y$10$p/l6Yi4e9qGzW0WGqAPknOdrsECL1n0/hs6x5tEb85oJpjhCEyXU6', 'USERS', 0, NULL, '2019-10-17 03:36:38', '2020-04-22 23:40:38'),
(51, '000000', '197702112010012010', 'Q 092057', 'DINI DWI UTARI HANDAYANTI, S.SOS.', 'BANDUNG', '1977-02-11', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-b', '2014-04-01', 'AHLI PERTAMA', '2014-10-03', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572316695_201931007 Dini Dwi Utari.jpg', 'Q092057@dkijakarta.com', NULL, '$2y$10$LBEDUrAhDoF0IhXN1hhlN.6JJ67O0ydjv7pfwQQ7.eyNQduR1dF8e', 'USERS', 0, NULL, '2019-10-17 03:39:34', '2020-04-22 23:20:43'),
(52, '', '196307141989101001', 'E 688033', 'HASAN', 'JAKARTA, 14-07-1963', '1963-07-14', 'LAKI-LAKI', 'PENATA MUDA Tk.1', 'III-b', '2017-10-01', 'MAHIR', '2013-08-02', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '1572317050_201931055 Hasan.jpg', 'E688033@dkijakarta.com', NULL, '$2y$10$9XANyQOcBcZuMVWO0EActuY6VY79hTcDQ4VIG7ml2p3NnSKjWu2n6', 'USERS', 0, NULL, '2019-10-17 03:42:32', '2019-10-29 02:44:10'),
(53, '000000', '196806151989101001', 'E 912043', 'PRAYITNO', 'JAKARTA', '1968-06-15', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-10-01', 'MAHIR', '2014-08-29', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '1572317516_201931054 Prayitno.jpg', 'E912043@dkijakarta.com', NULL, '$2y$10$kgn6.WTpaZRkdVIVOYQXyugGvO7eEZ3h/ar3UghsWwIjcCVbpxDhG', 'USERS', 0, NULL, '2019-10-17 03:45:04', '2020-04-15 10:19:10'),
(54, '000000', '196406291987032004', 'E 357509', 'WIWIK KURNIAWATI', 'JAKARTA', '1964-06-29', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2013-10-01', 'PENYELIA', '2010-07-07', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572318079_201931031 Wiwik Kurniawati.jpg', 'E357509@dkijakarta.com', NULL, '$2y$10$qaJeN///m1yBVxROiEfyt.MMnrf1Pz5rVPAWDeVhJrT.sJ4MAsDoi', 'USERS', 0, NULL, '2019-10-17 03:47:49', '2020-04-21 23:18:12'),
(55, '', '196403111985031011', 'D 350524', 'SUGENG LESTARI, S.E.', 'KULONPROGO', '1964-03-11', 'LAKI-LAKI', 'PENATA Tk.1', 'III-d', '2012-10-01', 'PENYELIA', '2011-12-07', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '1572318289_201931056 Sugeng Lestari.jpg', 'D350524@dkijakarta.com', NULL, '$2y$10$03QckMFu0IGe442KWopbseU5mxNJGwVGBkBaMmiRo8oZcQy6.s9rG', 'USERS', 0, NULL, '2019-10-17 03:50:45', '2019-10-29 03:04:49'),
(56, '', '196603051989031012', 'E 632330', 'MANSYUR, SP', 'KUNINGAN', '1966-03-05', 'LAKI-LAKI', 'PENATA', 'III-c', '2013-04-01', 'MAHIR', '2013-09-12', 'SEKRETARIAT', 'DINAS KELAUTAN DAN PERTANIAN PROVINSI DKI JAKARTA', '1571284416_man.jpg', 'E632330@dkijakarta.com', NULL, '$2y$10$XXHkc7aWWsE1WJt9UsODlelwclPKbm2uuUSDpiZ7RepHsd8ZP4Kf.', 'USERS', 0, NULL, '2019-10-17 03:53:36', '2019-10-17 03:53:36'),
(57, '000000', '196511101993101001', 'G 068740', 'SUYITNO', 'NGAWI', '1965-11-10', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-04-01', 'AHLI MUDA', '2015-11-09', 'BIRO UMUM', 'SEKRETARIAT DAERAH PROVINSI DKI JAKARTA', '1572318742_201931044 Suyitno.jpg', 'G068740@dkijakarta.com', NULL, '$2y$10$NnZxaUaFfUCHlvhxHia5jOc4Lt93CPu/EEQuNtxknrZPXOR1x8YHy', 'USERS', 0, NULL, '2019-10-17 03:56:10', '2020-04-22 07:23:26'),
(58, '000000', '196810151998032006', 'H 072714', 'SITI ZULAIKA ZAIN', 'JAKARTA', '1968-10-15', 'PEREMPUAN', 'PENATA TK.1', 'III-d', '2017-04-01', 'PENYELIA', '2014-02-10', 'BIDANG PEMBINAAN DAN PENGAWASAN KEARSIPAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1572316339_201931043 Siti Zulaika Zain fix.jpg', 'H072714@dkijakarta.com', NULL, '$2y$10$DNGiAzWd9bMNxyY/jsKZMOmZTIBk2BnrhXbhhtMzg84wjw4SNAls6', 'USERS', 0, NULL, '2019-10-17 03:58:46', '2020-04-16 04:36:13'),
(63, '434324', '34324', '324234', 'MASA', 'SADASD', '01-Jan-2020', 'LAKI-LAKI', 'PENGATUR', 'II-c', '2020-01-01', 'AHLI MUDA', '2020-01-31', 'BIRO UMUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '1579830537_1570371630_1570368049_Penguins.jpg', 'sda@sda.com', NULL, '$2y$10$8rPIPkpfAaMVYJL3Y5Vmtuh5W7h4ZT5E9mR9v.UnLclK0qV4Are8K', 'USERS', 0, NULL, '2020-01-24 01:48:57', '2020-01-24 01:48:57'),
(66, '123456', '123456', '123456', 'TIM PENILAI', 'JAKARTA', '1990-01-01', 'LAKI-LAKI', 'PENGATUR', 'III-d', '2020-01-01', 'AHLI MUDA', '2020-01-01', 'BIRO UMUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '1581947886_Admin.png', 'timpenilai@sipka.com', NULL, '$2y$10$bs1wa8no9RLWNt.gHeH/5.ZVh3yrJTyclG9oWhp.kgHQkvqKfOLFC', 'SUPERADMIN', 1, NULL, '2020-02-14 07:43:45', '2020-02-17 13:58:06'),
(67, '165616', '197311162006041015', 'N 583621', 'ARIS PANTOYO', 'JAKARTA', '1973-11-16', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2018-10-01', 'MAHIR', '2019-05-03', 'SEKRETARIAT', 'DINAS PENANAMAN MODAL DAN PTSP PROVINSI DKI JAKARTA', '1582598262_201931028 Aris Pantoyo.jpg', 'arsp763@gmail.com', NULL, '$2y$10$wKpPI0xDNK5/mDmwYGBsdOqrEe6O3pw4I2k3qqVhGTSWpcgh923aq', 'USERS', 0, NULL, '2020-02-25 02:37:42', '2020-04-16 04:16:06'),
(68, '127911', '196407121992031008', 'F 409504', 'ARIS WIDIANA', 'KUNINGAN', '1964-07-12', 'LAKI-LAKI', 'PENATA MUDA', 'III-a', '2009-04-01', 'AHLI PERTAMA', '2012-07-04', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1582699522_201931037 Aris Widiana fix.jpg', 'arisw@gmail.com', NULL, '$2y$10$eDSm2i0CWWM4DvG5c3.Q8OoLvRww/6SJcPEFX43VEQMS0P/1m93.q', 'USERS', 0, NULL, '2020-02-26 06:45:22', '2020-04-16 08:23:15'),
(69, '181383', '198103302011011007', 'Q 356483', 'ADE MARDIANSYAH', 'JAKARTA', '1981-03-30', 'LAKI-LAKI', 'PENGATUR TK.1', 'II-d', '2015-04-01', 'TERAMPIL', '2018-11-28', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1582701455_201931063 Ade Mardiansyah.jpeg', 'ade@gmail.com', NULL, '$2y$10$XPYgQbdYWPDTUpeVPwCNxukJFJVR2z3gZeGdgJpLqvb7/hm0rax16', 'USERS', 0, NULL, '2020-02-26 07:17:35', '2020-04-17 08:07:02'),
(70, '175080', '197004202009042001', 'Q 131926', 'TRI WAHYUNIATI', 'BLITAR', '1970-04-20', 'PEREMPUAN', 'PENATA MUDA TK.1', 'III-a', '2016-10-01', 'AHLI PERTAMA', '2019-02-13', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1583117037_201931030 Tri Wahyuniarti.jpg', 'triw@gmail.com', NULL, '$2y$10$yuBVHMId9MZws2zxdnAVaud8EyOnhqP6m75mkyy46MDWBV0LEGdZ2', 'USERS', 0, NULL, '2020-03-02 02:43:57', '2020-04-17 08:05:23'),
(71, '119959', '196801131996031002', 'G 353924', 'UUS SAEPUDIN, S.AP.', 'PURWAKARTA', '1968-01-13', 'LAKI-LAKI', 'PENATA MUDA TK.1', 'III-b', '2016-04-01', 'AHLI PERTAMA', '2016-10-20', 'SEKRETARIAT', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1583996919_201931014 Uus Saepudin.jpg', 'uussaepudin32@gmail.com', NULL, '$2y$10$GEmlT/0ntbBByNvX5ks8ZuTSGuTOnpEb5AkSXzl5HVG9einARwmyC', 'USERS', 0, NULL, '2020-03-12 07:08:39', '2020-03-12 07:08:39'),
(72, '195892', '196812182009041001', 'Q 356483', 'ASIKIN', 'BIMA', '1968-12-18', 'LAKI-LAKI', 'PENATA', 'III-c', '2016-10-01', 'AHLI MUDA', '2018-12-03', 'SUKU DINAS PERPUSTAKAAN DAN KEARSIPAN KOTA ADMINISTRASI JAKARTA SELATAN', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1584323085_201931013 Asikin.JPG', 'asikin.mr@gmail.com', NULL, '$2y$10$HD/PIVKTotmBgVp0xiy4J.ll/FTeKLeOwr8swPorfprDD2CGO5OBK', 'USERS', 0, NULL, '2020-03-16 01:44:46', '2020-03-16 01:44:46'),
(73, '101447', '196503091985032007', 'D 344426', 'SUHAINI, S.H.', 'JAKARTA', '1965-03-09', 'PEREMPUAN', 'PENATA', 'III-c', '2013-10-01', 'AHLI MUDA', '2018-11-29', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1585523128_201931042 Suhaini.jpg', 'esuhaini30@gmail.com', NULL, '$2y$10$b3neS7cj./m10WIvsVVw1OdOCPzVk373nFTGnvbyES.cjeL903KNO', 'USERS', 0, NULL, '2020-03-29 23:05:28', '2020-04-20 08:00:17'),
(74, '118026', '196907121993032006', 'G 044960', 'ENDANG PUJI ASTUTI', 'OGAN KOMERING ULU', '1969-07-12', 'PEREMPUAN', 'PENATA', 'III-c', '2017-10-01', 'AHLI MUDA', '2019-03-06', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1585523712_201931032 Endang Puji Astuti.jpg', 'endangpuji07@gmail.com', NULL, '$2y$10$3WtdhEzS0sQj9CTjZOLi6eUJvf9itCCTed392AeRinja.DjpooKce', 'USERS', 0, NULL, '2020-03-29 23:15:12', '2020-03-29 23:15:12'),
(75, '123456', '197806162006041022', 'N 231999', 'NURCAHYO', 'JAKARTA', '1978-06-16', 'LAKI-LAKI', 'PENATA', 'III-c', '2014-04-01', 'AHLI MUDA', '2017-10-04', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1585525044_201931040 Nurcahyo.jpg', 'inoengcahyo@gmail.com', NULL, '$2y$10$UwYT.C1pMcJ8TTxoQYAjPu.kmi/BxYyHTiyNizOy6ZF35PlIVzmY.', 'USERS', 0, NULL, '2020-03-29 23:37:24', '2020-03-29 23:37:24'),
(76, '119699', '197303211996031001', 'G 303292', 'AGUS, S.H.', 'TIGARAKSA', '1973-03-21', 'LAKI-LAKI', 'PENATA TK.1', 'III-d', '2017-04-01', 'AHLI MUDA', '2019-02-25', 'BAGIAN DOKUMENTASI DAN PUBLIKASI HUKUM', 'BIRO HUKUM SETDA PROVINSI DKI JAKARTA', '1585528584_201931025 Agus.jpeg', 'agusg598@gmail.com', NULL, '$2y$10$8Wr7KxRy/Vfxy0v2/fo4uOFximnEWP4mI6wtK8gucWOGS0Y1GBs9K', 'USERS', 0, NULL, '2020-03-30 00:36:24', '2020-03-30 00:48:46'),
(77, '000000', '198009092010012029', 'Q 092516', 'YUNIARTI, S.HUM.', 'JAKARTA', '1980-09-09', 'PEREMPUAN', 'PENATA', 'III-c', '2018-04-01', 'AHLI MUDA', '2019-03-01', 'BIDANG PENGELOLAAN ARSIP', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI DKI JAKARTA', '1587596489_201931033 Yuniarti.jpg', 'bella.yuni@gmail.com', NULL, '$2y$10$vEwTk47f7KuZURivaVg5sO.o3s.qhS/.Kz5hFxeDKzNYosHNGm8ci', 'USERS', 0, NULL, '2020-04-22 23:01:29', '2020-04-22 23:01:29');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- Indexes for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penilaian`
--
ALTER TABLE `tbl_penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penilaian_a`
--
ALTER TABLE `tbl_penilaian_a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penilaian_b`
--
ALTER TABLE `tbl_penilaian_b`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penilaian_c`
--
ALTER TABLE `tbl_penilaian_c`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_ticket_id_unique` (`ticket_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `halamans`
--
ALTER TABLE `halamans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori_postings`
--
ALTER TABLE `kategori_postings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postings`
--
ALTER TABLE `postings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_datamaster`
--
ALTER TABLE `tbl_datamaster`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `tbl_penilaian`
--
ALTER TABLE `tbl_penilaian`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `tbl_penilaian_a`
--
ALTER TABLE `tbl_penilaian_a`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_penilaian_b`
--
ALTER TABLE `tbl_penilaian_b`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_penilaian_c`
--
ALTER TABLE `tbl_penilaian_c`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_unitkerja`
--
ALTER TABLE `tbl_unitkerja`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;