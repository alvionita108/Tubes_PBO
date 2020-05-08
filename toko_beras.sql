-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Bulan Mei 2020 pada 21.24
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_beras`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_penjual`
--

CREATE TABLE `admin_penjual` (
  `username` varchar(15) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `Jenis_kelamin` varchar(6) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `id_penjual` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin_penjual`
--

INSERT INTO `admin_penjual` (`username`, `nama_lengkap`, `no_hp`, `Jenis_kelamin`, `alamat`, `password`, `id_penjual`) VALUES
('Admin', 'Joko Suseno', '081265758383', 'Pria', 'Jl. Burung Merpati, Gg. Kelapa, No 5, Perumahan Ma', 'J_123456', 332211);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(5) NOT NULL,
  `username` varchar(6) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `Jenis_kelamin` varchar(6) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `username`, `nama_lengkap`, `Jenis_kelamin`, `no_hp`, `password`) VALUES
(1234, 'susi_i', 'Susi Budianti', 'Wanita', '082147483647', 'hello123'),
(1235, 'Setyo', 'Setyo Binojo', 'pria', '088877665544', 'Setyoo00');

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
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `password` (`password`);
ALTER TABLE `pembeli` ADD FULLTEXT KEY `username_2` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_penjual`
--
ALTER TABLE `admin_penjual`
  MODIFY `id_penjual` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332212;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1236;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
