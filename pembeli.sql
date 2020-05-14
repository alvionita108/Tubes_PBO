-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Bulan Mei 2020 pada 10.39
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoberas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(4) NOT NULL,
  `username` char(6) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `Jenis_kelamin` varchar(6) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `password` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `username`, `nama_lengkap`, `Jenis_kelamin`, `no_hp`, `password`) VALUES
(1234, 'susi_i', 'Susi Budianti', 'Wanita', '082147483647', 'hello123'),
(1235, 'Setyo0', 'Setyo Binojo', 'pria', '088877665544', 'Setyoo00'),
(1236, 'Melati', 'Melati Budiana', 'Wanita', '081234567890', 'Hehehe12'),
(1237, 'Clowyy', 'Clowy Clain', 'Wanita', '081312345678', 'CCLLWW00'),
(1238, 'Davidd', 'David Bambang', 'Pria', '081343215678', 'Davvvv12'),
(1239, 'Bunga4', 'Bunga Bestari', 'Wanita', '085212345678', 'Bunga456'),
(1240, 'cemara', 'Cemara Indah', 'Wanita', '081277775678', 'Cema2424'),
(1241, 'Joko12', 'Joko Harianto', 'Pria', '082312345678', 'Joko4321'),
(1242, 'Tantri', 'Tantri Widodo', 'Pria', '081334345678', 'Tantri32'),
(1243, 'Olympa', 'Olympa Budiono', 'Pria', '0882987645678', 'OLympa56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `no_hp` (`no_hp`);
ALTER TABLE `pembeli` ADD FULLTEXT KEY `username_2` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1244;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
