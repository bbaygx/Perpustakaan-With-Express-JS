-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 06:57 AM
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `name_books` varchar(255) NOT NULL,
  `kepengarangan` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `isbn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `name_books`, `kepengarangan`, `penerbit`, `isbn`) VALUES
(1, '20 peluang menjadi sukses dengan usaha sederhana', 'Ligar Haryana; editor, Yuda Hergana', 'CV. Media Sarana Cerdas (pelaporan)	', '978-602-9108-51-4'),
(2, 'Seni memberi [sumber elektronis] : hal-hal yang akan berbalik menjadi sukses, ketika engkau mulai memberi', 'Era Findiani ; penyunting, Herman Adamson', 'Anak Hebat Indonesia', '978-623-244-898-8 (PDF)'),
(3, 'Kerja keras : kunci menjadi sukses', 'Oman S', 'CV. Amanah Bandung', '978-602-60881-2-3'),
(4, 'Kreatif dan inovatif modal menjadi sukses [sumber elektronis]', 'Ida Daryati ; penyunting, tim KJ', 'CV. Media Makalangan', '978-623-94219-4-6 (PDF)'),
(5, 'Statistika deskriptif untuk ekonomi dan bisnis', 'Daniel', 'PT. Umitoha Ukhuwah Grafika Makassar', '978-602-8828-65-9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
