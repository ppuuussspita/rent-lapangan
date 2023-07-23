-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 23 Jul 2023 pada 23.52
-- Versi server: 10.5.21-MariaDB-cll-lve
-- Versi PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renq3144_futsal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama_album` char(50) NOT NULL,
  `slug_album` char(50) NOT NULL,
  `foto` text NOT NULL,
  `created_by` char(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `slug_album`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Percobaan', 'percobaan', 'percobaan20180411012221.jpg', 'amperakoding', '2018-04-11 06:14:08', 'amperakoding', '2021-05-17 19:57:25'),
(2, 'Percobaan ke2', 'percobaan-ke2', 'percobaan-ke220180414141810.jpg', 'amperakoding', '2018-04-11 06:20:52', 'amperakoding', '2021-05-17 19:57:25'),
(3, 'Coba Lagi', 'coba-lagi', 'coba-lagi20180414141800.jpg', 'amperakoding', '2018-04-11 06:23:01', 'amperakoding', '2021-05-17 19:57:25'),
(4, 'Lagi coba', 'lagi-coba', 'lagi-coba20180414141618.jpg', 'amperakoding', '2018-04-11 06:23:11', 'amperakoding', '2021-05-17 19:57:25'),
(5, 'Scenery', 'scenery', 'scenery20180414141646.jpg', 'amperakoding', '2018-04-14 19:16:46', 'amperakoding', '2021-05-17 19:57:28'),
(6, 'Lake House', 'lake-house', 'lake-house20180414141705.jpg', 'amperakoding', '2018-04-14 19:17:05', 'amperakoding', '2021-05-17 19:57:28'),
(7, 'House', 'house', 'house20180414141719.jpg', 'amperakoding', '2018-04-14 19:17:19', 'amperakoding', '2021-05-17 19:57:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `atas_nama` varchar(100) NOT NULL,
  `norek` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `atas_nama`, `norek`, `logo`) VALUES
(1, 'BNI', 'Microtron', '12345678', 'bni.png'),
(2, 'BRI', 'Microtron', '87873412323', 'bri.png'),
(3, 'Mandiri', 'Microtron', '778734098', 'mandiri.png'),
(4, 'BCA', 'Microtron', '998980342487', 'bca.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_desc` text NOT NULL,
  `company_address` text NOT NULL,
  `company_maps` text NOT NULL,
  `company_phone` char(30) NOT NULL,
  `company_phone2` char(30) NOT NULL,
  `company_fax` char(30) NOT NULL,
  `company_email` char(30) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL,
  `created_by` char(50) NOT NULL,
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `company`
--

INSERT INTO `company` (`id_company`, `company_name`, `company_desc`, `company_address`, `company_maps`, `company_phone`, `company_phone2`, `company_fax`, `company_email`, `foto`, `foto_type`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 'BLUE LOCK ARENA', 'BLUE LOCK ARENA adalah platform penyewaan lapangan futsal yang menyediakan fasilitas dan layanan untuk para pemain futsal. Website ini didesain untuk memudahkan pengguna dalam mencari dan memesan lapangan futsal secara online. Blue Lock Arena memiliki antarmuka pengguna yang modern dan intuitif. Pengguna dapat dengan mudah menjelajahi situs web ini dan menemukan informasi yang mereka butuhkan. Tersedia navigasi yang jelas dan menu yang mengarahkan pengguna ke bagian yang berbeda, seperti beranda, lapangan, harga, ketersediaan, dan kontak. Informasi ini membantu pengguna untuk memilih lapangan yang sesuai dengan kebutuhan mereka.\r\nBlue Lock Arena menyediakan fitur pemesanan online yang memudahkan pengguna untuk memesan lapangan futsal secara langsung melalui situs web. Pengguna dapat memilih tanggal dan waktu yang diinginkan, melihat ketersediaan lapangan secara real-time, dan melakukan pembayaran saat datang ke lapangan.\r\nBlue Lock Arena memiliki tim layanan pelanggan yang siap membantu pengguna dalam hal pertanyaan, keluhan, atau bantuan lainnya. Pengguna dapat menghubungi tim ini melalui nomor telepon atau melalui formulir kontak yang tersedia di situs web.\r\n\r\nDengan Blue Lock Arena, penyewaan lapangan futsal menjadi lebih mudah dan efisien bagi para pemain futsal. Situs web ini menyediakan pengalaman yang nyaman dan terpercaya dalam menyewa lapangan futsal sesuai dengan kebutuhan pengguna.', 'Jl. Sepak Bola no.02 Kota 2 Dimensi', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16327777.649419477!2d108.84621849858628!3d-2.415291213289622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2c4c07d7496404b7%3A0xe37b4de71badf485!2sIndonesia!5e0!3m2!1sen!2sid!4v1506312173230\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '081241412', '0711412402', '12414', 'BlueLock@gmail.com', 'blue-lock-arena20230714102925', '.jpg', '2017-11-09 06:45:34', NULL, 'amperakoding', 'superadmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `diskon`
--

INSERT INTO `diskon` (`id`, `harga`) VALUES
(1, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(100) NOT NULL,
  `slug_event` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `foto_type` char(10) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id_event`, `nama_event`, `slug_event`, `deskripsi`, `kategori`, `foto`, `foto_type`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(2, 'What is Lorem Ipsum?', 'what-is-lorem-ipsum', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><img src=\"http://localhost/olshop2/assets/images/upload/Screenshot_from_2018-03-22_20-37-321.png\" width=\"500\" height=\"200\"></p>\r\n<p>Why do we use it?<br>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Why do we use it?<br>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 1, 'what-is-lorem-ipsum20180723083417', '.jpg', '2018-04-02 20:21:59', 'amperakoding', '2021-05-17 19:58:08', 'amperakoding'),
(3, 'Why do we use it?', 'why-do-we-use-it', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 2, 'why-do-we-use-it20180723083427', '.jpg', '2018-04-02 21:13:48', 'amperakoding', '2021-05-17 19:58:08', 'amperakoding'),
(4, 'Where does it come from?', 'where-does-it-come-from', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 1, 'where-does-it-come-from20180723083441', '.jpg', '2018-04-02 21:14:39', 'amperakoding', '2021-05-17 19:58:08', 'amperakoding'),
(5, 'Where does it come froms?', 'where-does-it-come-froms', '<p>What is Lorem Ipsum?<br>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Why do we use it?<br>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>Where does it come from?<br>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 'where-does-it-come-froms20180723083339', '.jpg', '2018-04-03 10:03:54', 'amperakoding', '2021-05-17 19:58:08', 'amperakoding'),
(6, 'Aliquam ullamcorper', 'aliquam-ullamcorper', '<p>Aliquam ullamcorper magna consectetur augue laoreet luctus. Duis id nisi eleifend, vestibulum justo eget, scelerisque purus. Pellentesque non risus nec eros ultricies euismod. Donec ullamcorper auctor diam ut fermentum. Maecenas mollis neque magna. Pellentesque blandit arcu mi, vel consequat orci dapibus vel. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus rutrum, risus vitae venenatis efficitur, arcu metus blandit erat, quis pharetra neque leo non quam. Vestibulum imperdiet eleifend rhoncus. Nunc condimentum tellus vel ullamcorper iaculis. Vivamus vitae lorem sem.</p>\r\n<p>Donec lorem diam, rhoncus at tempus eget, dignissim quis nulla. Donec consequat malesuada lacinia. Mauris eget ipsum eget mauris tristique lobortis vel vel turpis. Pellentesque accumsan metus nisi, non molestie diam hendrerit eu. Sed eget lacinia elit. Nulla lobortis diam sed nunc malesuada cursus. Mauris ac maximus tellus.</p>', 2, 'aliquam-ullamcorper20180723083358', '.png', '2018-04-03 11:08:48', 'amperakoding', '2021-05-17 19:58:08', 'amperakoding'),
(7, 'In fermentum scelerisqu', 'in-fermentum-scelerisqu', '<p>In fermentum scelerisque neque. Integer fermentum semper lacinia. Donec porttitor accumsan sem, eget fringilla nisl blandit a. Nam pulvinar faucibus velit, eget vestibulum erat aliquet ac. Maecenas imperdiet felis vitae orci laoreet fermentum. Fusce dui neque, volutpat ac fermentum quis, maximus id diam. Nullam eros urna, tempus tempor vehicula sit amet, sollicitudin quis massa. Mauris metus ex, eleifend nec aliquam a, ullamcorper et leo. Sed convallis, est vitae tincidunt ultrices, orci diam hendrerit magna, ut molestie dui nisl non quam.</p>\r\n<p>Pellentesque in egestas tellus, eget cursus odio. Morbi mollis diam turpis, id luctus leo consequat eu. Integer felis neque, iaculis eget vulputate et, congue pharetra elit. Morbi lacinia lacus vel elit suscipit euismod. Ut tellus leo, sodales ac suscipit in, semper eget sem. Curabitur ultrices, sem id dapibus semper, lectus erat vehicula magna, eu accumsan tellus leo at orci. Fusce rutrum tincidunt tristique. Suspendisse ac cursus libero. Donec aliquet accumsan ex in dignissim. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vel dignissim velit. Vestibulum mattis malesuada euismod. Praesent in vehicula dui, sit amet fringilla leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec imperdiet hendrerit neque, at ultricies neque eleifend in.</p>\r\n<p>Sed rutrum egestas diam, vitae sodales odio vulputate id. Phasellus felis risus, varius eget dolor ac, fringilla dapibus risus. Pellentesque ante nulla, egestas ac fermentum suscipit, aliquam ac eros. Mauris elementum justo nec leo imperdiet hendrerit. Praesent ut augue sit amet massa sollicitudin maximus quis eget augue. Etiam malesuada dictum sem, ut ullamcorper diam mattis ut. Morbi non imperdiet ante, ac fermentum justo. Nulla congue magna vel lectus elementum laoreet. Suspendisse ante ipsum, eleifend vel condimentum eu, varius non dolor.</p>', 1, 'in-fermentum-scelerisqu20180413030957', '.jpeg', '2018-04-03 11:11:51', 'amperakoding', '2021-05-17 19:58:08', 'amperakoding');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `nama_foto` char(100) NOT NULL,
  `slug_foto` char(100) NOT NULL,
  `foto` text NOT NULL,
  `created_by` char(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(20) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`id_foto`, `album_id`, `nama_foto`, `slug_foto`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 1, 'Testing Saja Cuis', 'testing-saja-cuis', 'testing-saja-cuis20180411025319.jpg', 'amperakoding', '2018-04-11 07:41:29', 'amperakoding', '2021-05-17 19:57:13'),
(2, 4, 'Foto Lagi Coba', 'foto-lagi-coba', 'foto-lagi-coba20180411024503.jpg', 'amperakoding', '2018-04-11 07:45:03', 'amperakoding', '2021-05-17 19:58:17'),
(3, 3, 'Foto Coba Lagi Saja', 'foto-coba-lagi-saja', 'foto-coba-lagi-saja20180411024712.jpg', 'amperakoding', '2018-04-11 07:47:12', 'amperakoding', '2021-05-17 19:58:17'),
(4, 1, 'Teasdasd', 'teasdasd', 'teasdasd20180414101405.png', 'amperakoding', '2018-04-14 15:13:17', 'amperakoding', '2021-05-17 19:57:13'),
(5, 3, 'Agains', 'agains', 'agains20180414101428.jpg', 'amperakoding', '2018-04-14 15:14:29', 'amperakoding', '2021-05-17 19:58:17'),
(6, 4, 'Waasd', 'waasd', 'waasd20180414101515.jpg', 'amperakoding', '2018-04-14 15:15:15', 'amperakoding', '2021-05-17 19:58:17'),
(7, 1, 'ASczxc', 'asczxc', 'asczxc20180414101545.jpg', 'amperakoding', '2018-04-14 15:15:45', 'amperakoding', '2021-05-17 19:58:17'),
(8, 1, 'ASXzc', 'asxzc', 'asxzc20180414101604.jpg', 'amperakoding', '2018-04-14 15:16:05', 'amperakoding', '2021-05-17 19:58:17'),
(9, 2, 'ASczxcacasc', 'asczxcacasc', 'asczxcacasc20180414101613.png', 'amperakoding', '2018-04-14 15:16:13', 'amperakoding', '2021-05-17 19:58:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE `jam` (
  `id` int(11) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `is_available` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`id`, `jam`, `is_available`) VALUES
(1, '06:00:00', 1),
(2, '07:00:00', 1),
(3, '08:00:00', 1),
(4, '09:00:00', 1),
(5, '10:00:00', 1),
(6, '11:00:00', 1),
(7, '12:00:00', 1),
(8, '13:00:00', 1),
(9, '14:00:00', 1),
(10, '15:00:00', 1),
(11, '16:00:00', 1),
(12, '17:00:00', 1),
(13, '18:00:00', 1),
(14, '19:00:00', 1),
(15, '20:00:00', 1),
(16, '21:00:00', 1),
(17, '22:00:00', 1),
(18, '23:00:00', 1),
(19, '24:00:00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL,
  `slug_kat` varchar(20) NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug_kat`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Turnamen', 'turnamen', 'amperakoding', '2018-07-23 08:38:39', 'amperakoding', '2021-05-17 19:58:57'),
(2, 'Kerja Sama', 'kerja-sama', 'amperakoding', '2018-07-23 08:38:39', 'amperakoding', '2021-05-17 19:58:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama_kontak` char(50) NOT NULL,
  `nohp` char(50) NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama_kontak`, `nohp`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Azmi', '6281228289766', 'amperakoding', '2018-07-23 11:16:57', 'amperakoding', '2021-05-17 19:59:04'),
(2, 'Budi', '6282184082336', 'amperakoding', '2018-07-23 11:16:57', 'amperakoding', '2021-05-17 19:59:04'),
(3, 'Puspita', '62819481471', 'amperakoding', '2018-07-23 11:20:44', 'superadmin', '2023-07-14 10:41:15'),
(4, 'Sheila', '6289876567555', 'superadmin', '2023-07-12 15:38:51', '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `provinsi_id`, `nama_kota`) VALUES
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(12, 32, 'Agam'),
(13, 23, 'Alor'),
(14, 19, 'Ambon'),
(15, 34, 'Asahan'),
(16, 24, 'Asmat'),
(17, 1, 'Badung'),
(18, 13, 'Balangan'),
(19, 15, 'Balikpapan'),
(20, 21, 'Banda Aceh'),
(21, 18, 'Bandar Lampung'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(31, 11, 'Bangkalan'),
(32, 1, 'Bangli'),
(33, 13, 'Banjar'),
(34, 9, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(37, 10, 'Banjarnegara'),
(38, 28, 'Bantaeng'),
(39, 5, 'Bantul'),
(40, 33, 'Banyuasin'),
(41, 10, 'Banyumas'),
(42, 11, 'Banyuwangi'),
(43, 13, 'Barito Kuala'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(47, 28, 'Barru'),
(48, 17, 'Batam'),
(49, 10, 'Batang'),
(50, 8, 'Batang Hari'),
(51, 11, 'Batu'),
(52, 34, 'Batu Bara'),
(53, 30, 'Bau-Bau'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(58, 23, 'Belu'),
(59, 21, 'Bener Meriah'),
(60, 26, 'Bengkalis'),
(61, 12, 'Bengkayang'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(66, 15, 'Berau'),
(67, 24, 'Biak Numfor'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(70, 34, 'Binjai'),
(71, 17, 'Bintan'),
(72, 21, 'Bireuen'),
(73, 31, 'Bitung'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(76, 10, 'Blora'),
(77, 7, 'Boalemo'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(80, 11, 'Bojonegoro'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(85, 30, 'Bombana'),
(86, 11, 'Bondowoso'),
(87, 28, 'Bone'),
(88, 7, 'Bone Bolango'),
(89, 15, 'Bontang'),
(90, 24, 'Boven Digoel'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(93, 32, 'Bukittinggi'),
(94, 1, 'Buleleng'),
(95, 28, 'Bulukumba'),
(96, 16, 'Bulungan (Bulongan)'),
(97, 8, 'Bungo'),
(98, 29, 'Buol'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(105, 10, 'Cilacap'),
(106, 3, 'Cilegon'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(110, 34, 'Dairi'),
(111, 24, 'Deiyai (Deliyai)'),
(112, 34, 'Deli Serdang'),
(113, 10, 'Demak'),
(114, 1, 'Denpasar'),
(115, 9, 'Depok'),
(116, 32, 'Dharmasraya'),
(117, 24, 'Dogiyai'),
(118, 22, 'Dompu'),
(119, 29, 'Donggala'),
(120, 26, 'Dumai'),
(121, 33, 'Empat Lawang'),
(122, 23, 'Ende'),
(123, 28, 'Enrekang'),
(124, 25, 'Fakfak'),
(125, 23, 'Flores Timur'),
(126, 9, 'Garut'),
(127, 21, 'Gayo Lues'),
(128, 1, 'Gianyar'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(132, 28, 'Gowa'),
(133, 11, 'Gresik'),
(134, 10, 'Grobogan'),
(135, 5, 'Gunung Kidul'),
(136, 14, 'Gunung Mas'),
(137, 34, 'Gunungsitoli'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(146, 34, 'Humbang Hasundutan'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(149, 9, 'Indramayu'),
(150, 24, 'Intan Jaya'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(156, 8, 'Jambi'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(160, 11, 'Jember'),
(161, 1, 'Jembrana'),
(162, 28, 'Jeneponto'),
(163, 10, 'Jepara'),
(164, 11, 'Jombang'),
(165, 25, 'Kaimana'),
(166, 26, 'Kampar'),
(167, 14, 'Kapuas'),
(168, 12, 'Kapuas Hulu'),
(169, 10, 'Karanganyar'),
(170, 1, 'Karangasem'),
(171, 9, 'Karawang'),
(172, 17, 'Karimun'),
(173, 34, 'Karo'),
(174, 14, 'Katingan'),
(175, 4, 'Kaur'),
(176, 12, 'Kayong Utara'),
(177, 10, 'Kebumen'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(180, 24, 'Keerom'),
(181, 10, 'Kendal'),
(182, 30, 'Kendari'),
(183, 4, 'Kepahiang'),
(184, 17, 'Kepulauan Anambas'),
(185, 19, 'Kepulauan Aru'),
(186, 32, 'Kepulauan Mentawai'),
(187, 26, 'Kepulauan Meranti'),
(188, 31, 'Kepulauan Sangihe'),
(189, 6, 'Kepulauan Seribu'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(191, 20, 'Kepulauan Sula'),
(192, 31, 'Kepulauan Talaud'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(194, 8, 'Kerinci'),
(195, 12, 'Ketapang'),
(196, 10, 'Klaten'),
(197, 1, 'Klungkung'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(203, 13, 'Kotabaru'),
(204, 31, 'Kotamobagu'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(207, 26, 'Kuantan Singingi'),
(208, 12, 'Kubu Raya'),
(209, 10, 'Kudus'),
(210, 5, 'Kulon Progo'),
(211, 9, 'Kuningan'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(220, 33, 'Lahat'),
(221, 14, 'Lamandau'),
(222, 11, 'Lamongan'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(228, 12, 'Landak'),
(229, 34, 'Langkat'),
(230, 21, 'Langsa'),
(231, 24, 'Lanny Jaya'),
(232, 3, 'Lebak'),
(233, 4, 'Lebong'),
(234, 23, 'Lembata'),
(235, 21, 'Lhokseumawe'),
(236, 32, 'Lima Puluh Koto/Kota'),
(237, 17, 'Lingga'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(242, 33, 'Lubuk Linggau'),
(243, 11, 'Lumajang'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(251, 11, 'Magetan'),
(252, 9, 'Majalengka'),
(253, 27, 'Majene'),
(254, 28, 'Makassar'),
(255, 11, 'Malang'),
(256, 11, 'Malang'),
(257, 16, 'Malinau'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(262, 27, 'Mamasa'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(267, 31, 'Manado'),
(268, 34, 'Mandailing Natal'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(274, 24, 'Mappi'),
(275, 28, 'Maros'),
(276, 22, 'Mataram'),
(277, 25, 'Maybrat'),
(278, 34, 'Medan'),
(279, 12, 'Melawi'),
(280, 8, 'Merangin'),
(281, 24, 'Merauke'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(284, 24, 'Mimika'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(291, 29, 'Morowali'),
(292, 33, 'Muara Enim'),
(293, 8, 'Muaro Jambi'),
(294, 4, 'Muko Muko'),
(295, 30, 'Muna'),
(296, 14, 'Murung Raya'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(299, 24, 'Nabire'),
(300, 21, 'Nagan Raya'),
(301, 23, 'Nagekeo'),
(302, 17, 'Natuna'),
(303, 24, 'Nduga'),
(304, 23, 'Ngada'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(311, 16, 'Nunukan'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(317, 11, 'Pacitan'),
(318, 32, 'Padang'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(323, 34, 'Padang Sidempuan'),
(324, 33, 'Pagar Alam'),
(325, 34, 'Pakpak Bharat'),
(326, 14, 'Palangka Raya'),
(327, 33, 'Palembang'),
(328, 28, 'Palopo'),
(329, 29, 'Palu'),
(330, 11, 'Pamekasan'),
(331, 3, 'Pandeglang'),
(332, 9, 'Pangandaran'),
(333, 28, 'Pangkajene Kepulauan'),
(334, 2, 'Pangkal Pinang'),
(335, 24, 'Paniai'),
(336, 28, 'Parepare'),
(337, 32, 'Pariaman'),
(338, 29, 'Parigi Moutong'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(341, 15, 'Paser'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(344, 10, 'Pati'),
(345, 32, 'Payakumbuh'),
(346, 25, 'Pegunungan Arfak'),
(347, 24, 'Pegunungan Bintang'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(352, 10, 'Pemalang'),
(353, 34, 'Pematang Siantar'),
(354, 15, 'Penajam Paser Utara'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(357, 32, 'Pesisir Selatan'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(360, 28, 'Pinrang'),
(361, 7, 'Pohuwato'),
(362, 27, 'Polewali Mandar'),
(363, 11, 'Ponorogo'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(366, 29, 'Poso'),
(367, 33, 'Prabumulih'),
(368, 18, 'Pringsewu'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(371, 14, 'Pulang Pisau'),
(372, 20, 'Pulau Morotai'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(375, 10, 'Purbalingga'),
(376, 9, 'Purwakarta'),
(377, 10, 'Purworejo'),
(378, 25, 'Raja Ampat'),
(379, 4, 'Rejang Lebong'),
(380, 10, 'Rembang'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(383, 23, 'Rote Ndao'),
(384, 21, 'Sabang'),
(385, 23, 'Sabu Raijua'),
(386, 10, 'Salatiga'),
(387, 15, 'Samarinda'),
(388, 12, 'Sambas'),
(389, 34, 'Samosir'),
(390, 11, 'Sampang'),
(391, 12, 'Sanggau'),
(392, 24, 'Sarmi'),
(393, 8, 'Sarolangun'),
(394, 32, 'Sawah Lunto'),
(395, 12, 'Sekadau'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(397, 4, 'Seluma'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(404, 34, 'Serdang Bedagai'),
(405, 14, 'Seruyan'),
(406, 26, 'Siak'),
(407, 34, 'Sibolga'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(409, 11, 'Sidoarjo'),
(410, 29, 'Sigi'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(412, 23, 'Sikka'),
(413, 34, 'Simalungun'),
(414, 21, 'Simeulue'),
(415, 12, 'Singkawang'),
(416, 28, 'Sinjai'),
(417, 12, 'Sintang'),
(418, 11, 'Situbondo'),
(419, 5, 'Sleman'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(423, 28, 'Soppeng'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(427, 10, 'Sragen'),
(428, 9, 'Subang'),
(429, 21, 'Subulussalam'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(432, 14, 'Sukamara'),
(433, 10, 'Sukoharjo'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(440, 9, 'Sumedang'),
(441, 11, 'Sumenep'),
(442, 8, 'Sungaipenuh'),
(443, 24, 'Supiori'),
(444, 11, 'Surabaya'),
(445, 10, 'Surakarta (Solo)'),
(446, 13, 'Tabalong'),
(447, 1, 'Tabanan'),
(448, 28, 'Takalar'),
(449, 25, 'Tambrauw'),
(450, 16, 'Tana Tidung'),
(451, 28, 'Tana Toraja'),
(452, 13, 'Tanah Bumbu'),
(453, 32, 'Tanah Datar'),
(454, 13, 'Tanah Laut'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(458, 18, 'Tanggamus'),
(459, 34, 'Tanjung Balai'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(462, 17, 'Tanjung Pinang'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(466, 13, 'Tapin'),
(467, 16, 'Tarakan'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(470, 34, 'Tebing Tinggi'),
(471, 8, 'Tebo'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(476, 10, 'Temanggung'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(481, 34, 'Toba Samosir'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(484, 24, 'Tolikara'),
(485, 31, 'Tomohon'),
(486, 28, 'Toraja Utara'),
(487, 11, 'Trenggalek'),
(488, 19, 'Tual'),
(489, 11, 'Tuban'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(492, 11, 'Tulungagung'),
(493, 28, 'Wajo'),
(494, 30, 'Wakatobi'),
(495, 24, 'Waropen'),
(496, 18, 'Way Kanan'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(501, 5, 'Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lapangan`
--

CREATE TABLE `lapangan` (
  `id_lapangan` int(11) NOT NULL,
  `nama_lapangan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `foto` text NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` varchar(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `lapangan`
--

INSERT INTO `lapangan` (`id_lapangan`, `nama_lapangan`, `harga`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Lapangan A', 100000, 'lapangan-a20180610164236.jpg', 'amperakoding', '2018-06-10 15:37:43', 'amperakoding', '2021-05-17 19:59:32'),
(2, 'Lapangan B', 150000, 'lapangan-b20180610164255.jpg', 'amperakoding', '2018-06-10 16:02:44', 'amperakoding', '2021-05-17 19:59:32'),
(3, 'Lapangan C', 80000, 'lapangan-a20180610164250.jpg', 'amperakoding', '2018-06-10 16:16:17', 'amperakoding', '2021-05-17 19:59:32'),
(4, 'Lapangan D', 100000, 'lapangan-b20180610164305.jpg', 'amperakoding', '2018-06-10 16:25:05', 'amperakoding', '2021-05-17 19:59:32'),
(5, 'Lapangan E', 200000, 'lapangan-c20180610164320.jpg', 'amperakoding', '2018-06-10 16:38:10', 'amperakoding', '2021-05-17 19:59:32'),
(6, 'Lapangan F', 150000, 'lapangan-c20180610164329.jpg', 'amperakoding', '2018-06-10 16:54:28', 'amperakoding', '2021-05-17 19:59:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `page`
--

CREATE TABLE `page` (
  `id_page` int(11) NOT NULL,
  `judul_page` varchar(50) NOT NULL,
  `judul_seo` varchar(50) NOT NULL,
  `isi_page` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `page`
--

INSERT INTO `page` (`id_page`, `judul_page`, `judul_seo`, `isi_page`, `gambar`) VALUES
(1, 'Home', 'home', '', ''),
(2, 'Download', 'download', 'download', ''),
(3, 'Kontak', 'kontak', '<p style=\"text-align: center;\">&nbsp;<img src=\"http://localhost/tol/assets/images/upload/whatsapp.png\" /><br /><strong>SMS/ Call/ Whatsapp</strong></p>\r\n<p style=\"text-align: center;\">0853-6873-3631</p>\r\n<p style=\"text-align: center;\">0822-8155-1666</p>', ''),
(4, 'Profil', 'profil', '<p style=\"text-align: justify;\">Kami merupakan toko yang menyediakan berbagai macam parfum, obat-obatan herbal, baju koko, dan aksesoris muslim lainnya. Toko kami beralamat di Jl. Dr. M. Isa No.1109, Kuto Batu, Ilir Tim. II, Kota Palembang, Sumatera Selatan 30114.</p>\r\n<p style=\"text-align: justify;\">Berikut adalah foto toko kami:</p>', ''),
(5, 'Order', 'order', '<p>Anda dapat menghubungi&nbsp;kami melalui tombol order via whatsapp di masing-masing produk atau melalui customer service/ kontak yang telah disediakan di sisi kanan website ini</p>', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `nama_slider` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `foto_size` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `no_urut`, `nama_slider`, `link`, `foto`, `foto_type`, `foto_size`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 1, 'Slider 1', 'http://www.yahoo.com ', '120180610164516', '.jpg', 203, '2017-11-25 08:05:03', 'amperakoding', '2021-05-17 20:00:16', 'amperakoding'),
(2, 2, 'Slider 2', 'http://www.google.com ', '220180610164521', '.jpg', 833, '2017-11-25 08:05:03', 'amperakoding', '2021-05-17 20:00:16', 'amperakoding'),
(3, 3, 'XXZ', 'http://www.facebook.com', '320180610164527', '.jpg', 167, '2017-11-25 08:05:03', 'amperakoding', '2021-05-17 20:00:16', 'amperakoding');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscriber`
--

CREATE TABLE `subscriber` (
  `id_subscriber` int(11) NOT NULL,
  `email` char(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` int(11) NOT NULL,
  `id_invoice` char(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `deadline` datetime NOT NULL,
  `catatan` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_trans`, `id_invoice`, `user_id`, `subtotal`, `diskon`, `grand_total`, `deadline`, `catatan`, `status`, `created_date`, `created_time`) VALUES
(1, 'J-210517-0001', 3, 100000, 0, 100000, '2021-05-17 21:03:57', '', 2, '2021-05-17', '08:03:19'),
(2, 'J-210517-0002', 4, 260000, 50000, 210000, '2021-05-17 21:10:50', 'takada', 2, '2021-05-17', '08:09:54'),
(3, 'J-210516-0003', 3, 300000, 0, 300000, '2021-05-16 21:20:17', '', 2, '2021-05-16', '08:20:09'),
(4, 'J-210408-0001', 3, 330000, 0, 330000, '2021-04-08 21:21:53', '', 2, '2021-04-08', '08:21:35'),
(5, 'J-210408-0002', 3, 150000, 0, 150000, '2021-04-08 21:22:35', '', 2, '2021-04-08', '08:22:29'),
(6, 'J-210408-0003', 3, 300000, 0, 300000, '2021-04-08 21:23:15', '', 2, '2021-04-08', '08:23:09'),
(7, 'J-210410-0004', 3, 300000, 0, 300000, '2021-04-10 21:24:07', '', 2, '2021-04-10', '08:23:52'),
(8, 'J-210517-0003', 3, 150000, 0, 150000, '2021-05-17 21:23:05', '', 1, '2021-05-17', '08:23:01'),
(11, 'J-230711-0003', 1, 200000, 0, 200000, '2023-07-11 19:18:45', '', 2, '2023-07-11', '06:17:45'),
(12, 'J-230711-0004', 6, 200000, 0, 200000, '2023-07-11 19:21:32', '', 2, '2023-07-11', '06:21:27'),
(13, 'J-230711-0005', 6, 80000, 0, 80000, '2023-07-11 19:50:30', '', 2, '2023-07-11', '06:50:25'),
(14, 'J-230711-0006', 1, 100000, 0, 100000, '2023-07-14 00:35:28', '', 2, '2023-07-11', '08:45:31'),
(16, 'J-230713-0008', 1, 100000, 0, 100000, '2023-07-17 11:53:10', '', 1, '2023-07-13', '11:38:15'),
(17, 'J-230716-0009', 7, 150000, 0, 150000, '2023-07-16 20:17:02', 'ok ok', 1, '2023-07-16', '05:45:47'),
(18, 'J-230716-0010', 8, 150000, 0, 150000, '2023-07-16 18:53:01', '', 1, '2023-07-16', '05:52:22'),
(19, 'J-230716-0011', 8, 150000, 0, 150000, '2023-07-16 18:55:03', '', 1, '2023-07-16', '05:53:52'),
(21, 'J-230716-0013', 8, 150000, 0, 150000, '2023-07-16 19:20:52', '', 1, '2023-07-16', '06:14:44'),
(22, 'J-230716-0014', 8, 150000, 0, 150000, '2023-07-16 19:26:54', '', 1, '2023-07-16', '06:26:43'),
(23, 'J-230716-0015', 8, 150000, 0, 150000, '2023-07-16 19:27:52', '', 1, '2023-07-16', '06:26:56'),
(24, 'J-230716-0016', 8, 0, 0, 0, '0000-00-00 00:00:00', '', 2, '2023-07-16', '06:27:57'),
(26, 'J-230716-0018', 8, 200000, 0, 200000, '2023-07-16 19:43:02', '', 1, '2023-07-16', '06:42:18'),
(27, 'J-230716-0019', 8, 150000, 0, 150000, '2023-07-16 20:10:43', '', 1, '2023-07-16', '07:10:32'),
(28, 'J-230716-0020', 7, 600000, 0, 600000, '2023-07-17 09:05:21', '', 1, '2023-07-16', '07:20:30'),
(29, 'J-230717-0021', 8, 150000, 0, 150000, '2023-07-17 11:50:24', '', 1, '2023-07-17', '10:45:00'),
(30, 'J-230717-0022', 8, 0, 0, 0, '0000-00-00 00:00:00', '', 2, '2023-07-17', '10:50:28'),
(31, 'J-230717-0023', 1, 150000, 0, 150000, '2023-07-17 12:42:48', '', 1, '2023-07-17', '10:53:17'),
(32, 'J-230717-0024', 1, 150000, 0, 150000, '2023-07-17 12:45:32', '', 1, '2023-07-17', '11:44:27'),
(33, 'J-230717-0025', 1, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-07-17', '11:45:34'),
(39, 'J-230717-0031', 9, 0, 0, 0, '2023-07-17 18:09:08', '', 2, '2023-07-17', '04:20:52'),
(42, 'J-230717-0034', 7, 150000, 0, 150000, '2023-07-17 17:33:59', '', 1, '2023-07-17', '04:33:44'),
(43, 'J-230717-0035', 7, 150000, 0, 150000, '2023-07-17 17:41:21', '', 2, '2023-07-17', '04:40:52'),
(45, 'J-230717-0037', 7, 0, 0, 0, '2023-07-17 18:08:33', '', 1, '2023-07-17', '05:06:23'),
(46, 'J-230717-0038', 9, 0, 0, 0, '2023-07-17 18:58:37', '', 1, '2023-07-17', '05:58:25'),
(47, 'J-230717-0039', 9, 150000, 0, 150000, '2023-07-18 16:36:10', '', 1, '2023-07-17', '06:01:39'),
(48, 'J-230717-0040', 6, 80000, 0, 80000, '2023-07-17 19:09:47', '', 1, '2023-07-17', '06:09:37'),
(49, 'J-230717-0041', 6, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-07-17', '06:45:31'),
(50, 'J-230718-0042', 8, 100000, 0, 100000, '2023-07-19 20:40:11', '', 1, '2023-07-18', '12:16:18'),
(51, 'J-230718-0043', 11, 150000, 0, 150000, '2023-07-18 17:37:53', '', 1, '2023-07-18', '04:37:36'),
(52, 'J-230718-0044', 11, 100000, 0, 100000, '2023-07-18 18:05:48', '', 2, '2023-07-18', '05:05:37'),
(53, 'J-230718-0045', 10, 100000, 0, 100000, '2023-07-18 23:58:27', '', 1, '2023-07-18', '07:29:09'),
(54, 'J-230718-0046', 11, 100000, 0, 100000, '2023-07-20 16:48:59', '', 1, '2023-07-18', '07:40:40'),
(55, 'J-230718-0047', 12, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-07-18', '07:48:48'),
(56, 'J-230718-0048', 13, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-07-18', '07:57:35'),
(57, 'J-230718-0049', 10, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-07-18', '10:59:36'),
(58, 'J-230719-0050', 14, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-07-19', '12:10:06'),
(59, 'J-230719-0051', 15, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-07-19', '12:28:57'),
(60, 'J-230720-0052', 16, 100000, 0, 100000, '2023-07-20 15:52:37', 'sang badas', 1, '2023-07-20', '02:50:06'),
(61, 'J-230720-0053', 7, 150000, 0, 150000, '2023-07-20 16:01:04', '', 2, '2023-07-20', '02:51:15'),
(62, 'J-230720-0054', 7, 300000, 0, 300000, '2023-07-20 16:16:43', '', 2, '2023-07-20', '03:16:16'),
(81, 'J-230720-0055', 5, 150000, 0, 150000, '2023-07-20 20:04:34', '', 1, '2023-07-20', '05:30:58'),
(82, 'J-230720-0056', 17, 80000, 0, 80000, '2023-07-20 20:04:11', '', 1, '2023-07-20', '07:03:33'),
(83, 'J-230723-0057', 5, 100000, 0, 100000, '2023-07-23 23:28:39', '', 1, '2023-07-23', '10:28:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transdet` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `lapangan_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time DEFAULT NULL,
  `durasi` int(11) NOT NULL,
  `jam_selesai` time DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transdet`, `trans_id`, `lapangan_id`, `tanggal`, `jam_mulai`, `durasi`, `jam_selesai`, `harga_jual`, `total`, `created_at`) VALUES
(1, 1, 1, '2021-05-18', '07:00:00', 1, '08:00:00', 100000, 100000, '2021-05-17 20:03:19'),
(2, 2, 1, '2021-05-18', '08:00:00', 1, '09:00:00', 100000, 100000, '2021-05-17 20:09:54'),
(3, 2, 3, '2021-05-17', '10:00:00', 2, '12:00:00', 80000, 160000, '2021-05-17 20:09:55'),
(4, 3, 4, '2021-05-16', '13:00:00', 3, '16:00:00', 100000, 300000, '2021-05-16 20:20:09'),
(5, 4, 1, '2021-04-09', '22:00:00', 1, '23:00:00', 100000, 100000, '2021-04-08 20:21:35'),
(6, 4, 2, '2021-04-11', '21:00:00', 1, '22:00:00', 150000, 150000, '2021-04-08 20:21:36'),
(7, 4, 3, '2021-04-13', '21:00:00', 1, '22:00:00', 80000, 80000, '2021-04-08 20:21:36'),
(8, 5, 6, '2021-04-08', '10:00:00', 1, '11:00:00', 150000, 150000, '2021-04-08 20:22:29'),
(9, 6, 2, '2021-04-10', '10:00:00', 2, '12:00:00', 150000, 300000, '2021-04-08 20:23:09'),
(10, 7, 2, '2021-04-10', '08:00:00', 2, '10:00:00', 150000, 300000, '2021-04-10 20:23:52'),
(11, 8, 2, '2021-05-18', '10:00:00', 1, '11:00:00', 150000, 150000, '2021-05-17 20:23:01'),
(16, 11, 1, '2023-07-11', '07:00:00', 2, '09:00:00', 100000, 200000, '2023-07-11 18:17:45'),
(17, 12, 1, '2023-07-27', '21:00:00', 2, '23:00:00', 100000, 200000, '2023-07-11 18:21:27'),
(18, 13, 3, '2023-07-20', '22:00:00', 1, '23:00:00', 80000, 80000, '2023-07-11 18:50:25'),
(25, 14, 1, '2023-07-18', '18:00:00', 1, '19:00:00', 100000, 100000, '2023-07-13 23:35:16'),
(26, 16, 1, '2023-07-26', '07:00:00', 1, '08:00:00', 100000, 100000, '2023-07-13 23:38:15'),
(28, 17, 2, '2023-07-17', '12:00:00', 1, '13:00:00', 150000, 150000, '2023-07-16 17:45:47'),
(29, 18, 2, '2023-07-26', '23:00:00', 1, '24:00:00', 150000, 150000, '2023-07-16 17:52:22'),
(30, 19, 2, '2023-07-26', '24:00:00', 1, '25:00:00', 150000, 150000, '2023-07-16 17:53:52'),
(32, 21, 2, '2023-07-26', '22:00:00', 1, '23:00:00', 150000, 150000, '2023-07-16 18:14:44'),
(33, 22, 2, '2023-07-26', '09:00:00', 1, '10:00:00', 150000, 150000, '2023-07-16 18:26:43'),
(34, 23, 2, '2023-08-01', '23:00:00', 1, '00:00:24', 150000, 150000, '2023-07-16 18:26:56'),
(35, 24, 2, '0000-00-00', NULL, 0, NULL, 150000, 150000, '2023-07-16 18:27:57'),
(42, 26, 5, '2023-08-05', '23:00:00', 1, '24:00:00', 200000, 200000, '2023-07-16 18:42:51'),
(43, 27, 2, '2023-07-26', '11:00:00', 1, '12:00:00', 150000, 150000, '2023-07-16 19:10:32'),
(44, 28, 2, '2023-07-25', '06:00:00', 4, '10:00:00', 150000, 600000, '2023-07-16 19:20:30'),
(46, 29, 2, '2023-07-26', '10:00:00', 1, '11:00:00', 150000, 150000, '2023-07-17 10:45:00'),
(48, 31, 2, '2023-09-08', '09:00:00', 1, '10:00:00', 150000, 150000, '2023-07-17 10:53:17'),
(49, 32, 2, '2023-08-02', '11:00:00', 1, '12:00:00', 150000, 150000, '2023-07-17 11:44:27'),
(50, 33, 2, '0000-00-00', NULL, 0, NULL, 150000, 150000, '2023-07-17 11:45:34'),
(68, 42, 2, '2023-07-25', '11:00:00', 1, '12:00:00', 150000, 150000, '2023-07-17 16:33:44'),
(70, 43, 6, '2023-07-18', '06:00:00', 1, '07:00:00', 150000, 150000, '2023-07-17 16:40:52'),
(77, 30, 1, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2023-07-17 16:41:19'),
(86, 39, 4, '2023-08-05', '22:00:00', 1, '23:00:00', 0, 0, '2023-07-17 17:07:18'),
(87, 45, 2, '2023-07-24', '08:00:00', 1, '09:00:00', 0, 0, '2023-07-17 17:08:12'),
(90, 46, 2, '2023-07-19', '12:00:00', 1, '13:00:00', 0, 0, '2023-07-17 17:58:25'),
(95, 48, 3, '2023-08-03', '12:00:00', 1, '13:00:00', 80000, 80000, '2023-07-17 18:09:37'),
(116, 47, 2, '2023-08-04', '23:00:00', 1, '24:00:00', 150000, 150000, '2023-07-18 15:36:04'),
(117, 50, 1, '2023-08-04', '20:00:00', 1, '21:00:00', 100000, 100000, '2023-07-18 15:50:59'),
(121, 51, 2, '2023-08-03', '09:00:00', 1, '10:00:00', 150000, 150000, '2023-07-18 16:37:36'),
(123, 52, 1, '2023-09-09', '23:00:00', 1, '24:00:00', 100000, 100000, '2023-07-18 17:05:40'),
(124, 53, 1, '2023-07-19', '08:00:00', 1, '09:00:00', 100000, 100000, '2023-07-18 19:29:09'),
(125, 54, 1, '2023-08-04', '22:00:00', 1, '23:00:00', 100000, 100000, '2023-07-18 19:40:40'),
(126, 55, 1, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2023-07-18 19:48:48'),
(127, 56, 1, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2023-07-18 19:57:35'),
(129, 57, 1, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2023-07-18 22:59:36'),
(130, 58, 1, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2023-07-19 00:10:06'),
(131, 59, 1, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2023-07-19 00:28:57'),
(135, 61, 2, '2023-07-20', '16:00:00', 1, '17:00:00', 150000, 150000, '2023-07-20 14:51:15'),
(136, 60, 1, '2023-07-20', '19:00:00', 1, '20:00:00', 100000, 100000, '2023-07-20 14:51:49'),
(138, 62, 2, '2023-07-25', '12:00:00', 2, '14:00:00', 150000, 300000, '2023-07-20 15:16:16'),
(162, 82, 3, '2023-08-04', '21:00:00', 1, '22:00:00', 80000, 80000, '2023-07-20 19:03:33'),
(163, 81, 2, '2023-08-03', '23:00:00', 1, '24:00:00', 150000, 150000, '2023-07-20 19:04:27'),
(164, 83, 1, '2023-07-25', '10:00:00', 1, '11:00:00', 100000, 100000, '2023-07-23 22:28:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kota` int(11) DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usertype` int(11) NOT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT NULL,
  `photo` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `photo_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activation_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `provinsi`, `kota`, `address`, `usertype`, `active`, `photo`, `photo_type`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `last_login`, `created_on`, `modified`) VALUES
(1, 'SuperAdmin', 'superadmin', '$2y$08$TWMdtdacqPE5yEz9n1LwFuhEVmiDTTsupl12M45tCQihzF1tu2N/6', 'superadmin@gmail.com', '081228289766', 6, 151, 'Jl. Rawisari Kota Malang', 1, 1, 'superadmin20230714104013', '.png', '::1', NULL, 'c6ad242e6fd3de875568c7de5ba23af4a24137ef', 'F3vjUJN5Xn-yaA3vfmjPvub674fefa2c66d8dbdb', 1689001409, NULL, 1690126185, 2147483647, '2023-07-23 22:29:45'),
(2, 'Admin', 'administrator', '$2y$08$rnCngWyQhFLdVJijctNDKuwJZ8o9VfcSsZ9IM9XN71ugxIpQFeCWe', 'administrator@gmail.com', '08124124', NULL, NULL, 'kaldjlas', 2, 1, 'admin20180424102408', '.jpeg', '::1', NULL, NULL, NULL, NULL, NULL, 1621252084, 1524551716, '2021-05-17 18:48:04'),
(3, 'Batistuta', 'batistuta', '$2y$08$.5EYrM8S8Up0LcpFiEmjauyPVdWOmylLZ.MqM0zBKyDVKniwdVbYi', 'batistuta@gmail.com', '0812412414', 33, 327, 'Jl. Skdlajsdlasjkdl', 4, 1, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 1621257779, 1528634033, '2021-05-17 20:22:59'),
(4, 'User Premium', 'userpremium', '$2y$08$Wv3MA.DnwTNzBeF62o9neuSXeVdIA/bjlxOzSxtD6DtgStEBn//s.', 'userpremium@gmail.com', '0812412412', 3, 106, 'kaljdklasjdkl', 3, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1621252638, 1531807819, '2021-05-17 18:57:18'),
(5, 'puspita', 'puspita', '$2y$08$qp9e4sSD12sk8f4gmGG9zuNyWlOibr6m9HqokLVxs8wth6JPzUiCy', 'puspita@gmail.com', '056465465', 11, 75, 'Blitar', 4, 1, NULL, NULL, '::1', NULL, NULL, 'C45Zkb9xBZXEBrn5jyq-Ve0f332ac1c24d95f9ce', 1689303775, NULL, 1690126095, 1688999965, '2023-07-23 22:28:15'),
(6, 'fajar', 'fajar', '$2y$08$piD1IlyzvByt38zGPcjFk.L1qkYd3FLpSWUUsZbwBH0od5ZxEfdQu', 'fajar@gmail.com', '', 16, 96, '', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1689672241, 1689074468, '2023-07-18 16:24:01'),
(7, 'banana', 'banana', '$2y$08$THq5c4PIbcM/xYp8CDy/6.RFapvHcPqQLT9jeFQ1ZKLOmHmHfANC.', 'banana@gmail.com', '085655322344', 11, 256, 'pisang candi', 4, 1, NULL, NULL, '125.166.0.44', NULL, NULL, NULL, NULL, NULL, 1689841317, 1689504318, '2023-07-20 15:21:57'),
(8, 'hanum', 'hanum', '$2y$08$eSHhSo.dFHEaAdXl2Iw9h.qr0IWjdrXoiZevrzWIK3O6TRKvU5viy', 'hanum@gmail.com', '908098080', 11, 255, 'malang', 4, 1, NULL, NULL, '125.166.1.129', NULL, NULL, NULL, NULL, NULL, 1689770398, 1689504705, '2023-07-19 19:39:58'),
(9, 'encus', 'encus', '$2y$08$Y6em249ruzeHoozQNpL8LuwXs.5RcRM.ZurdvfEW7MSHOUP2SAhF.', 'encus@gmail.com', '089765345213', 11, 255, 'malang', 4, 1, NULL, NULL, '66.96.225.108', NULL, NULL, NULL, NULL, NULL, 1689672255, 1689585628, '2023-07-18 16:24:15'),
(10, 'tes', 'tes', '$2y$08$G4/82YO0P8FtzvFLC52weeGSI2rgeCtS.I7kgiuJ5YG9.qMyrWBlC', 'robertusmarioputra@gmail.com', '23231312', 13, 18, '', 4, 1, NULL, NULL, '202.80.216.193', NULL, NULL, NULL, NULL, NULL, 1689696032, 1689666528, '2023-07-18 23:00:32'),
(11, 'winky', 'winky', '$2y$08$fXd0DJky6vvoMt2bvMiJFO5RUEFPxeOr2tlRXZgOO8qiln0isYeW6', 'winky@gmail.com', '324322423', 11, 255, 'asdasdas', 4, 1, NULL, NULL, '66.96.225.84', NULL, NULL, NULL, NULL, NULL, 1689842930, 1689672352, '2023-07-20 15:48:50'),
(12, 'candra', 'candra', '$2y$08$zJT.CpLpY3G5Dx.eVcbBOuFVomO3tAOwW3ERVvlFmpLmfmvF/1ZgG', 'candra1@gmail.com', '08765938638', 11, 255, 'gading', 4, 1, NULL, NULL, '103.184.19.212', NULL, NULL, NULL, NULL, NULL, 1689701272, 1689684505, '2023-07-19 00:27:52'),
(13, 'candra2', 'candra2', '$2y$08$uo0vhvK3lsDGgig.u7xlOudnZOK3eWUMhlnhI./.Tnt0oFOtCI63C', 'candra2@gmail.com', '56657684', 10, 92, '', 4, 1, NULL, NULL, '103.184.19.212', NULL, NULL, NULL, NULL, NULL, 1689685054, 1689685043, '2023-07-18 19:57:34'),
(14, 'zidan', 'zidan', '$2y$08$Z4jjhImv9wuKuAzduAMCGuVtlTBAorduTZl.DK3nl93oeV3Fglkcm', 'zidan@gmail.com', '4790437777', 3, 456, 'fguiokjc', 4, 1, NULL, NULL, '140.213.48.175', NULL, NULL, NULL, NULL, NULL, 1689700204, 1689700184, '2023-07-19 00:10:04'),
(15, 'candra3', 'candra3', '$2y$08$vhgZ.GohSQuxBq6F1ReO0uHmThqDGIgz29xaef5JSsVoGGoYRrbXW', 'candra3@gmail.com', '08284048929', 6, 151, '', 4, 1, NULL, NULL, '103.184.19.212', NULL, NULL, NULL, NULL, NULL, 1689701336, 1689701319, '2023-07-19 00:28:56'),
(16, 'badasss', 'badas', '$2y$08$QJ2dofMaPBLe06FmRLbS3OkL2eYqJiMfWIA6Ywu5CoRQ0uf0RzHE6', 'badas@gmail.com', '080000', 12, 168, '---', 4, 1, NULL, NULL, '182.4.133.239', NULL, NULL, NULL, NULL, NULL, 1689839404, 1689839393, '2023-07-20 14:50:04'),
(17, 'agung', 'agung', '$2y$08$dXwd337mGXlOPWn42ToKx.0uajR38WKnCaWkFdfiIkUOmcQVuVz1S', 'agung@gmail.com', '98798778798', 11, 255, 'malang', 4, 1, NULL, NULL, '202.80.215.98', NULL, NULL, NULL, NULL, NULL, 1689854609, 1689854597, '2023-07-20 19:03:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_group`
--

CREATE TABLE `users_group` (
  `id_group` int(11) NOT NULL,
  `name_group` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users_group`
--

INSERT INTO `users_group` (`id_group`, `name_group`) VALUES
(1, 'SuperAdmin'),
(2, 'Administrator'),
(3, 'Member Premium'),
(4, 'Member Biasa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indeks untuk tabel `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `foto_FK` (`album_id`);

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`id_lapangan`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id_subscriber`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `transaksi_FK` (`user_id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transdet`),
  ADD KEY `transaksi_detail_FK` (`lapangan_id`),
  ADD KEY `transaksi_detail_FK_1` (`trans_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id_group`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jam`
--
ALTER TABLE `jam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `lapangan`
--
ALTER TABLE `lapangan`
  MODIFY `id_lapangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id_subscriber` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transdet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_FK` FOREIGN KEY (`album_id`) REFERENCES `album` (`id_album`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_FK` FOREIGN KEY (`lapangan_id`) REFERENCES `lapangan` (`id_lapangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_detail_FK_1` FOREIGN KEY (`trans_id`) REFERENCES `transaksi` (`id_trans`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
