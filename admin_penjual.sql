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
-- Struktur dari tabel `admin_penjual`
--

CREATE TABLE `admin_penjual` (
  `username` char(6) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `Jenis_kelamin` varchar(6) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `password` char(8) NOT NULL,
  `id_penjual` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin_penjual`
--

INSERT INTO `admin_penjual` (`username`, `nama_lengkap`, `no_hp`, `Jenis_kelamin`, `alamat`, `password`, `id_penjual`) VALUES
('Admin', 'Joko Suseno', '081265758383', 'Pria', 'Jl. Burung Merpati, Gg. Kelapa, No 5, Lampung', 'J_123456', 332211);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_penjual`
--
ALTER TABLE `admin_penjual`
  ADD PRIMARY KEY (`id_penjual`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_penjual`
--
ALTER TABLE `admin_penjual`
  MODIFY `id_penjual` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332212;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
