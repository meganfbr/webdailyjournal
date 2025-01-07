-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2025 at 01:00 PM
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
-- Database: `webadailyjournal`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `judul` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `isi` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_swedish_ci,
  `tanggal` datetime DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(1, 'Going Rangers Right Here', 'Going Rangers siap melawan musuh, monster, dan memnghibur kalian. Salah satu konten seventeen kali ini menghadirkan hiburan terbaru. Fans mengatakan konten kali ini seru dan menghibur. Jangan lupa saksikan konten Going Seventeen selanjutnya di chanel youtube Seventeen', 'goingrangers.jpg', '2025-01-03 23:12:21', ''),
(2, 'Ketua HIMA Teknik Informatika Angkat Bicara Terkait KOMINFO', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'jhhima.jpg', '2025-01-01 21:57:59', 'admin'),
(28, 'Pecel Lele Favorit Sejateng', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'pecellele.jpg', '2025-01-01 20:03:36', 'admin'),
(29, 'PKM Pengabdian Masyarakat SM', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'pkm1.jpg', '2025-01-01 21:53:14', 'admin'),
(30, 'Es Dawet Mang Jaehyun', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'esdawet1.jpg', '2025-01-01 21:54:07', 'admin'),
(34, 'Terungkap Pekerjaan Changbin Stray Kids sebelum Debut', 'Siapa sangka changbin salah satu member Stray Kids dulu adalah Penjual Air Galon. Salah satu pembeli mengaku sering melihat changbin mengantarkan air galon di tempat kost an nya.', 'abingalon.jpg', '2025-01-03 22:58:53', 'admin'),
(35, 'Mingyu Tercyduk Makan Bubur Ayam pinggir jalan', 'Seorang mingyu salah satu member seventeen tercyduk sedang makan bubur ayam di warung pinggir jalan. Pak Sandy pemilik Warung Bubur Ayam tersebut mengaku besoknya bubur ayam beliau laris manis.', 'mingyuseblak.jpg', '2025-01-03 22:55:16', 'admin'),
(36, 'Ternyata Hyunjin Pernah Jadi Penjaga Warnet', 'Salah satu remaja tidak sengaja mampir ke salah satu warnet, dimana yang bikin gagal fokus penjaga tersebut adalah Hyunjin dari Boy Group Kpop Stray Kids.', 'hyunjinwarnet.jpg', '2025-01-03 22:57:05', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `foto` text COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
