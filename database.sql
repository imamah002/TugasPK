-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootstrap`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `level_user` varchar(150) NOT NULL DEFAULT 'member',
  `foto_profil` varchar(100) NOT NULL DEFAULT 'admin.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- 
-- Structure table untuk produk
-- 


CREATE TABLE `produk` (
  `id_produk` int(11) UNSIGNED NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(100) NOT NULL,
  `gambar_produk` varchar(100) NOT NULL,
  PRIMARY KEY(`id_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Isi untuk table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level_user`, `foto_profil`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'fotoProfil.jpeg'), 
(2, 'member', 'member', 'aa08769cdcb26674c6706093503ff0a3', 'member', 'admin.jpg');

--
-- Isi untuk table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `gambar_produk`) VALUES
(1, 'Jam1', '650000', 'produk1.jpeg'),
(2, 'Jam2', '500000', 'produk2.jpeg'),
(3, 'Jam3', '500000', 'produk3.jpeg'),
(4, 'Jam4', '500000', 'produk4.jpeg'),
(5, 'Jam5', '500000', 'produk5.jpeg'),
(6, 'Jam6', '550000', 'produk6.jpeg'),
(7, 'Jam7', '550000', 'produk7.jpeg'),
(8, 'Jam8', '550000', 'produk8.jpeg');


--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

ALTER TABLE `produk`
  MODIFY `id_produk` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;