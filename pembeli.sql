-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2020 pada 15.58
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
  `nama_lengkap` varchar(25) NOT NULL,
  `Jenis_kelamin` varchar(6) NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_lengkap`, `Jenis_kelamin`, `no_hp`) VALUES
(1234, 'Susi Budianti', 'Wanita', '082147483647'),
(1235, 'Setyo Binojo', 'pria', '088877665544'),
(1236, 'Melati Budiana', 'Wanita', '081234567890'),
(1237, 'Clowy Clain', 'Wanita', '081312345678'),
(1238, 'David Bambang', 'Pria', '081343215678'),
(1239, 'Bunga Bestari', 'Wanita', '085212345678'),
(1240, 'Cemara Indah', 'Wanita', '081277775678'),
(1241, 'Joko Hariyanto', 'Pria', '082312345678'),
(1242, 'Tantri Widodo', 'Pria', '081334345678'),
(1244, 'Budi Leo', 'Pria', '081234342222'),
(1245, 'Keke Yidan', 'Pria', '081123456789'),
(1246, 'Nola Laila', 'Wanita', '087721212323'),
(1247, 'Hari Manto', 'Pria', '081221213434'),
(1249, 'Boboi Boysan', 'Pria', '081723456543'),
(1250, 'Heri Sentosa', 'Pria', '087765554566'),
(1251, 'Budi', 'Pria', '081122212134'),
(1252, 'Herman Santoso', 'Pria', '087766557788'),
(1253, 'Rahmat', 'Pria', '088276647223'),
(1254, 'Setiawan', 'Pria', '088675542234'),
(1255, 'Nilham Perdana', 'Pria', '087865446533'),
(1256, 'Vina Al', 'Wanita', '099876546789'),
(1257, 'Deo Alif', 'Pria', '088876657654');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD UNIQUE KEY `no_hp` (`no_hp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1258;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
