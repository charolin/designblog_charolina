-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 11:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas5d`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `ID_AUTHOR` int(11) NOT NULL,
  `NAMA_AUTHOR` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`ID_AUTHOR`, `NAMA_AUTHOR`) VALUES
(5, 'Charolina'),
(6, 'Novena'),
(7, 'Marimbunna ');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `ID_PESAN` int(11) NOT NULL,
  `NAMA` varchar(100) NOT NULL,
  `MAIL` varchar(100) NOT NULL,
  `TOPIK` varchar(100) NOT NULL,
  `ISI` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`ID_PESAN`, `NAMA`, `MAIL`, `TOPIK`, `ISI`) VALUES
(8, 'coba', 'coba@gmail.com', 'cobacoba', 'coba buatkan postingan'),
(9, 'tes', 'tes@gmail.com', 'tester', 'tes pesan'),
(10, 'human', 'human@gmail.com', 'layanan website', 'kurang puas dengan layanan yang diberikan');

-- --------------------------------------------------------

--
-- Table structure for table `postingan`
--

CREATE TABLE `postingan` (
  `ID_POST` int(11) NOT NULL,
  `KATEGORI` varchar(50) NOT NULL,
  `JUDUL` varchar(100) NOT NULL,
  `GAMBAR` varchar(255) DEFAULT NULL,
  `ISI` text NOT NULL,
  `ID_AUTHOR` int(11) DEFAULT NULL,
  `BIDANG` varchar(50) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL,
  `DILIHAT` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postingan`
--

INSERT INTO `postingan` (`ID_POST`, `KATEGORI`, `JUDUL`, `GAMBAR`, `ISI`, `ID_AUTHOR`, `BIDANG`, `TANGGAL`, `DILIHAT`) VALUES
(9, 'Technology', 'Perkembangan Teknologi Gadget', '1730398825_1730270765_1691239134865.jpg', 'Perkembangan teknologi, terutama dalam bentuk gadget, telah mengubah cara hidup masyarakat modern. Gadget seperti smartphone, tablet, dan laptop kini menjadi bagian integral dari kehidupan sehari-hari, memfasilitasi komunikasi dan akses informasi dengan mudah.', 5, 'Teknologi', '2024-10-31', 0),
(10, 'lifestyle', 'Gaya Hidup Sehat: Kunci Menuju Kebahagiaan', '1730801152_7.jpg', 'Gaya hidup sehat adalah fondasi penting untuk mencapai kebahagiaan dan kesejahteraan. Dalam dunia yang semakin sibuk, penting bagi kita untuk mengadopsi kebiasaan yang mendukung kesehatan fisik dan mental', 5, 'kesehatan', '2024-11-05', 0),
(11, 'technology', 'Kecerdasan Buatan dalam Kehidupan Sehari-hari', '1730794954_8.jpg', 'Kecerdasan buatan (AI) semakin terintegrasi dalam kehidupan kita. Dari asisten virtual seperti Siri dan Google Assistant hingga rekomendasi produk di e-commerce, AI membantu mempermudah tugas sehari-hari dan meningkatkan efisiensi.', 6, 'AI', '2024-11-04', 0),
(12, 'Technology', 'Internet of Things (IoT)', '1730795074_1730270765_1691239134865.jpg', 'IoT menghubungkan berbagai perangkat ke internet, memungkinkan mereka saling berkomunikasi. Contohnya termasuk smart home devices seperti lampu pintar dan termostat yang dapat diatur dari jarak jauh, meningkatkan kenyamanan dan efisiensi energi.', 5, 'Teknologi', '2024-11-05', 0),
(13, 'lifestyle', 'Kekuatan Tidur Siang', '1730795187_p.jpg', 'Tidur siang singkat dapat meningkatkan produktivitas dan konsentrasi. Cobalah tidur siang selama 20-30 menit untuk mengembalikan energi Anda di siang hari.', 6, 'kesehatan', '2024-11-01', 0),
(14, 'lifestyle', 'Mengurangi Penggunaan Media Sosial', '1730795283_2.jpg', 'Media sosial bisa menjadi sumber stres dan kecemasan. Batasi waktu penggunaan media sosial Anda untuk menjaga kesehatan mental dan meningkatkan interaksi langsung dengan orang-orang terdekat.', 6, 'kesehatan', '2024-11-03', 0),
(15, 'technology', 'Keamanan Siber', '1730800221_1730795074_1730270765_1691239134865.jpg', 'Dengan meningkatnya penggunaan teknologi, keamanan siber menjadi sangat penting. Pengguna harus menjaga data pribadi mereka dengan menggunakan kata sandi yang kuat, autentikasi dua faktor, dan perangkat lunak antivirus untuk melindungi diri dari serangan siber.', 7, 'Teknologi', '2024-11-05', 0),
(16, 'technology', 'Perkembangan Teknologi Wearable', '1730800324_11.jpg', 'Perangkat wearable seperti smartwatch dan fitness tracker semakin populer. Mereka tidak hanya membantu memantau kesehatan dan kebugaran, tetapi juga memungkinkan pengguna untuk tetap terhubung dengan notifikasi langsung dari smartphone.', 7, 'Teknologi', '2024-11-04', 0),
(17, 'technology', 'Augmented Reality dalam Pendidikan', '1730800396_7.jpg', 'Augmented reality (AR) mulai digunakan dalam pendidikan untuk menciptakan pengalaman belajar yang interaktif. Dengan AR, siswa dapat melihat objek tiga dimensi di dunia nyata, meningkatkan pemahaman konsep-konsep kompleks.', 6, 'Teknologi', '2024-11-04', 0),
(18, 'lifestyle', 'Mindfulness dalam Kehidupan Sehari-hari', '1730800492_4.jpg', 'Mindfulness adalah praktik kesadaran penuh yang membantu mengurangi stres dan meningkatkan fokus. Luangkan waktu setiap hari untuk meditasi atau sekadar menikmati momen tanpa gangguan.', 6, 'kesehatan', '2024-11-03', 0),
(19, 'lifestyle', 'Aktivitas Fisik di Rumah', '1730800670_13.jpg', 'Tidak perlu ke gym untuk berolahraga. Anda bisa melakukan berbagai aktivitas fisik di rumah seperti yoga, zumba, atau latihan kekuatan menggunakan berat badan tubuh.', 5, 'kesehatan', '2024-11-04', 0),
(20, 'lifestyle', 'Membangun Kebiasaan Membaca', '1730800726_1.jpg', 'Membaca buku tidak hanya memperluas wawasan tetapi juga meningkatkan keterampilan berpikir kritis. Luangkan waktu setiap hari untuk membaca, baik itu buku fiksi maupun non-fiksi.', 6, 'Pendidikan', '2024-11-05', 0),
(21, 'lifestyle', ' Menjaga Kesehatan Mental', '1730800883_20.jpg', 'Kesehatan mental sama pentingnya dengan kesehatan fisik. Luangkan waktu untuk diri sendiri, lakukan hobi yang Anda nikmati, dan jangan ragu untuk mencari bantuan profesional jika diperlukan.', 5, 'kesehatan', '2024-11-03', 0),
(22, 'lifestyle', 'Menjaga Kesehatan Mental', '1730801026_9.jpg', 'Kesehatan mental sama pentingnya dengan kesehatan fisik. Luangkan waktu untuk diri sendiri, lakukan hobi yang Anda nikmati, dan jangan ragu untuk mencari bantuan profesional jika diperlukan.', 6, 'kesehatan', '2024-11-01', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`ID_AUTHOR`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`ID_PESAN`);

--
-- Indexes for table `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`ID_POST`),
  ADD KEY `ID_AUTHOR` (`ID_AUTHOR`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `ID_AUTHOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `ID_PESAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `postingan`
--
ALTER TABLE `postingan`
  MODIFY `ID_POST` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `postingan`
--
ALTER TABLE `postingan`
  ADD CONSTRAINT `postingan_ibfk_1` FOREIGN KEY (`ID_AUTHOR`) REFERENCES `author` (`ID_AUTHOR`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
