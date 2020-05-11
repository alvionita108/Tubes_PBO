-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Bulan Mei 2020 pada 08.02
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beras`
--

CREATE TABLE `beras` (
  `merk_beras` varchar(10) NOT NULL,
  `harga` float NOT NULL,
  `jenis_beras` varchar(4) NOT NULL,
  `kode_beras` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `beras`
--

INSERT INTO `beras` (`merk_beras`, `harga`, `jenis_beras`, `kode_beras`) VALUES
('KOKI', 170000, '10kg', 'KK101'),
('KOKI', 90000, '5kg', 'KK102'),
('MERPATI', 145000, '10kg', 'MRP101'),
('MERPATI', 75000, '5kg', 'MRP102'),
('MUTIARA', 140000, '10kg', 'MT101'),
('MUTIARA', 70000, '5kg', 'MT102'),
('ROJO LELE', 180000, '10kg', 'RL101'),
('ROJO LELE', 80000, '5kg', 'RL102');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beras`
--
ALTER TABLE `beras`
  ADD PRIMARY KEY (`kode_beras`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
