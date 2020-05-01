-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Bulan Mei 2020 pada 12.07
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renjana dev`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas_barang`
--

CREATE TABLE `identitas_barang` (
  `ID_BARANG` int(11) NOT NULL,
  `Nama_Barang` varchar(100) NOT NULL,
  `Harga_Barang` int(100) NOT NULL,
  `Stok_Barang` int(100) NOT NULL,
  `ID_Penjual` int(50) NOT NULL,
  `Jenis_Barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `identitas_barang`
--

INSERT INTO `identitas_barang` (`ID_BARANG`, `Nama_Barang`, `Harga_Barang`, `Stok_Barang`, `ID_Penjual`, `Jenis_Barang`) VALUES
(1, 'LAPTOP', 1000000, 1, 1, 'ELEKTRONIK'),
(2, 'LEMARI PAKAIAN', 75000, 1, 2, 'PERABOTAN'),
(3, 'GOPRO-7', 6500000, 1, 3, 'ELEKTRONIK'),
(4, 'Camera DSLR', 5000000, 1, 4, 'ELEKTRONIK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `Jenis_Barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`Jenis_Barang`) VALUES
('ELEKTRONIK'),
('PERABOTAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik_barang`
--

CREATE TABLE `pemilik_barang` (
  `Nama_Penjual` varchar(100) NOT NULL,
  `ID_Penjual` int(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `No_Telpon` varchar(20) NOT NULL,
  `NIM` int(20) NOT NULL,
  `Alamat_Penjual` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemilik_barang`
--

INSERT INTO `pemilik_barang` (`Nama_Penjual`, `ID_Penjual`, `Email`, `No_Telpon`, `NIM`, `Alamat_Penjual`) VALUES
('FEBI GANDA PUTRA', 1, 'febigandapp@gmail.com', '081266823230', 1800018218, 'Perumahan Gumuk Indah, Sidoarum Godean, Sleman Yogyakarta'),
('Alwan Maulana Zidane', 2, 'alwanmaulanz@gmail.com', '087734228988', 1800018219, 'Banguntapan, Rt4 RW5, Yogyakarta'),
('Darlian Ramadhani', 3, 'darliantc@gmail.com', '082189765234', 1800018220, 'Kerapyak,Yogyakarta'),
('REXA BANGKIT BANYURAGA', 4, 'Rexxabbg@gmail.com', '081192345543', 1800018222, 'Alun-alun kidul Yogyakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `identitas_barang`
--
ALTER TABLE `identitas_barang`
  ADD PRIMARY KEY (`ID_BARANG`),
  ADD KEY `ID_Penjual` (`ID_Penjual`),
  ADD KEY `Jenis_Barang` (`Jenis_Barang`);

--
-- Indeks untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`Jenis_Barang`);

--
-- Indeks untuk tabel `pemilik_barang`
--
ALTER TABLE `pemilik_barang`
  ADD PRIMARY KEY (`ID_Penjual`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `identitas_barang`
--
ALTER TABLE `identitas_barang`
  MODIFY `ID_BARANG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pemilik_barang`
--
ALTER TABLE `pemilik_barang`
  MODIFY `ID_Penjual` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `identitas_barang`
--
ALTER TABLE `identitas_barang`
  ADD CONSTRAINT `identitas_barang_ibfk_1` FOREIGN KEY (`ID_Penjual`) REFERENCES `pemilik_barang` (`ID_Penjual`),
  ADD CONSTRAINT `identitas_barang_ibfk_2` FOREIGN KEY (`Jenis_Barang`) REFERENCES `jenis_barang` (`Jenis_Barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
