-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 05, 2018 at 01:00 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` varchar(255) DEFAULT NULL,
  `content` text,
  `thumb_url` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `excerpt`, `content`, `thumb_url`, `img_url`, `created_at`, `updated_at`) VALUES
(1, 'Luhut Turun Tangan, Garuda Pastikan Layanan Lebaran Normal', 'Maskapai nasional, Garuda Indonesia, memastikan layanan operasional penerbangan jelang lebaran tetap berjalan normal.', '<p>Jakarta, CNN Indonesia -- Maskapai nasional, Garuda Indonesia, memastikan layanan operasional penerbangan jelang lebaran tetap berjalan normal menyusul komitmen dari Asosiasi Pilot Garuda Indonesia (APG) dan Serikat Karyawan Garuda Indonesia (Sekarga) untuk tidak melaksanakan aksi mogok pada periode sibuk libur Lebaran tahun ini.</p>\r\n\r\n<p>"Kami juga menyampaikan apresiasi terhadap APG dan Sekarga yang tetap mengedepankan kepentingan nasional dan komitmen pelayanan operasional terhadap konsumen di periode peak season ini," ujar Dirut Garuda Indonesia Pahala N. Mansury dalam rilis yang diterima CNNIndonesia.com, Sabtu (2/6).</p>\r\n\r\n<p>Pahala mengatakan urungnya ancaman mogok itu dilaksanakan tidak lepas dari andil Menko Maritim Luhut B Panjaitan.</p>\r\n\r\n<p>Sebelumnya, atas ancaman mogok yang akan dilakukan pada periode peak season lebaran itu, pengurus APG dan Sekarga telah dipanggil Menko Maritim Luhut B Panjaitan karena aksi itu akan mengganggu ketertiban umum dan mengganggu hak-hak pelayanan konsumen. Luhut pun menginstruksikan mengutamakan jalan dialog dengan manajemen.</p>\r\n\r\n<p>"Pada kesempatan ini kami menyambut baik komitmen dan dukungan Menko Maritim dalam mendukung upaya peningkatan kinerja operasional Garuda Indonesia khususnya terkait penyelarasan dinamika hubungan industrial melalui jalur dialog," kata Pahala</p>\r\n\r\n<p>Pahala menegaskan manajemen Garuda telah berkali-kali membuka ruang diskusi kepada APG dan Sekarga untuk mencapai titik temu terkait keberlangsungan operasional perusahaan. Ia mengatakan lebih dari 90 persen aspirasi tuntutan karyawan kepada perusahaan telah dipenuhi manajemen, dan tidak ada persoalan kesejahteraan karyawan yang menjadi penyebab rencana mogok APG dan Sekarga.</p>\r\n\r\n<p>"Sejak awal kami terus membuka diri untuk berdiskusi bersama rekan rekan Sekarga dan APG yang juga turut didukung dan difasilitasi oleh pemerintah. Dapat kami pastikan komitmen akan ruang diskusi tersebut tetap kami kedepankan hingga saat ini, khususnya dalam menyelaraskan aspirasi APG dan Sekarga dengan upaya peningkatan kinerja operasional perusahaan," ujar Pahala.</p>\r\n\r\n<p>Kini, setelah ancaman mogok berhasil diminta tak dilaksanakan, Pahala menyampaikan jaminan layanan Garuda terhadap para konsumen terutama yang akan melakukan perjalanan mudik lebaran.</p>\r\n\r\n<p>"Kami harapkan agar para pengguna jasa tetap tenang dan tidak perlu kuatir tentang rencana mogok di Garuda Indonesia. Kami pastikan layanan operasional penerbangan tetap berlangsung normal. Seluruh awak pesawat dan jajaran karyawan Garuda Indonesia juga telah turut bersiap dalam mengamankan operasional penerbangan pada periode peak season ini," kata Pahala.</p>\r\n\r\n<p>Untuk mendukung operasional pada saat periode sibuk perjalanan Lebaran 2018 ini, Pahala menerangkan Garuda Indonesia Group menyiapkan sedikitnya 150.510 kursi penerbangan ekstra untuk mengantisipasi peningkatan trafik penumpang. Periode arus mudik dan arus balik Lebaran 2018, yang diperkirakan akan berlangsung pada tanggal 8 Juni 2018 hingga 24 Juni 2018 (H-7 s.d H+9) baik untuk rute domestik dan internasional. </p>\r\n\r\n<p>Kapasitas penerbangan tambahan tersebut terdiri dari 768 frekuensi penerbangan tambahan yaitu 480 penerbangan Citilink dan 288 penerbangan Garuda Indonesia. Kapasitas tambahan tersebut meningkat sebesar 39 persen dibandingkan tahun lalu yang sebesar 107.750 kursi. </p>\r\n\r\n<p>Pahala menyatakan maskapainya terus berupaya meningkatkan kinerja operasional dan layanan kepada pengguna jasa. Selain itu, sambungnya, dari sisi kinerja keuangan meski telah terjadi depresiasi rupiah serta kenaikan harga avtur, potensi kerugian perusahaan berhasil ditekan hingga 36 persen dan EBITDAR margin membaik ke 23 persen dari sekitar 19 persen. </p>\r\n\r\n<p>Garuda Indonesia juga berhasil menekan kerugian pada Kuartal I-2018 dibandingkan dengan periode yang sama tahun lalu. Pada Januari - Maret 2018 kerugian tercatat US$64,3 juta (Rp868 miliar), atau turun 36 persen dibandingkan dengan Januari - Maret 2017 mencapai US$101,2 juta (Rp1,36 triliun). (kid)</p>', 'thumb_garuda.jpg', 'garuda.jpg', '2018-06-04 17:00:00', '2018-06-04 17:00:00'),
(2, 'Microsoft Akuisisi GitHub Senilai Rp 104 Triliun', 'Microsoft akhirnya mengkonfirmasi kalau mereka mengakuisisi GitHub. Mahar yang disetorkan Microsoft dalam akuisisi tersebut adalah USD 7,5 miliar atau sekitar Rp 104 triliun.', '<p>Jakarta - Microsoft akhirnya mengkonfirmasi kalau mereka mengakuisisi GitHub. Mahar yang disetorkan Microsoft dalam akuisisi tersebut adalah USD 7,5 miliar atau sekitar Rp 104 triliun.</p>\r\n\r\n<p>Ini adalah akuisisi besar kedua selama Microsoft dipimpin oleh Satya Nadella sebagai CEO. Sebelumnya, perusahaan asal Redmond, Amerika Serikat itu juga mengakuisisi LinkedIn senilai USd 26,2 miliar, tepatnya pada 2016 lalu.</p>\r\n\r\n<p>Sementara GitHub, pada 2015 lalu valuasinya \'hanya\' USD 2 miliar, dan kini Microsoft membayar USD 7,5 miliar untuk mengakuisisinya. Transaksinya sendiri baru akan selesai pada akhir tahun 2018 ini.</p>\r\n\r\n<p>GitHub adalah repository kode yang sangat populer di kalangan developer dan perusahaan untuk memajang kode, dokumentasi, ataupun proyeknya secara keseluruhan. Perusahaan seperti Apple, Amazon, Google dan banyak perusahaan teknologi besar lain pun menggunakan GitHub.</p>\r\n\r\n<p>Setidaknya ada 85 juta repository yang disimpan di dalam GitHub, dan 28 juta developer yang berkontribusi di dalamnya. GitHub kini akan dipimpin oleh CEO Nat Friedmand, yang merupakan pendiri Xamarin, yang akan bertanggung jawab langsung pada bos Cloud dan AI Scott Guthrie.</p>\r\n\r\n<p>CEO dan pendiri GitHub Chris Wanstrath akan menjadi pekerja teknis di Microsoft, yang akan bekerja di bawah kepemimpinan Guthrie, demikian dikutip detikINET dari The Verge, Selasa (5/6/2018).	(asj/fyk)</p>', 'thumb_ms.jpg', 'ms.jpg', '2018-06-04 17:00:00', '2018-06-04 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
