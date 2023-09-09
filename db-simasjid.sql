-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2023 at 12:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-simasjid`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `email`, `password`, `level`) VALUES
(1, 'Asep', 'admin@gmail.com', 'admin', 1),
(2, 'Budi', 'budi@gmail.com', 'budi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `id_agenda` int(11) NOT NULL,
  `nama_kegiatan` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`id_agenda`, `nama_kegiatan`, `tanggal`, `jam`) VALUES
(1, 'Maulid Nabi Muhammad Bersama Habib Jafar', '2023-06-21', '19:30:00'),
(2, 'Kajian Sholawatan Ibu-ibu', '2023-06-21', '16:30:00'),
(3, 'Kajian Al-Quran Anak-anak', '2023-06-21', '12:15:00'),
(5, 'Ceramah Bersama Ustad Adi Hidayat ', '2023-06-21', '19:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donasi`
--

CREATE TABLE `tbl_donasi` (
  `id_donasi` int(11) NOT NULL,
  `tgl` date DEFAULT NULL,
  `id_rekening` int(11) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `nama_pengirim` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `jenis_donasi` varchar(10) DEFAULT NULL,
  `bukti` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_donasi`
--

INSERT INTO `tbl_donasi` (`id_donasi`, `tgl`, `id_rekening`, `nama_bank`, `no_rek`, `nama_pengirim`, `jumlah`, `jenis_donasi`, `bukti`) VALUES
(1, '2023-02-16', 3, 'BCA', '8456-9325-5317-0124', 'George', 200000, 'Masjid', '1676519234_b0c4d15ed2f7f42db9b9.jpg'),
(2, '2023-02-16', 1, 'BJB', '8491-4235-0794-3251', 'Adel', 350000, 'Sosial', '1676524845_ad58cf182c8ff397973c.jpg'),
(4, '2023-06-29', 1, 'BCA', '8485-8957-0384-3991', 'George', 45000, 'Masjid', '1688051681_a2920ac6aa1f1cc00767.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kas_masjid`
--

CREATE TABLE `tbl_kas_masjid` (
  `id_kas_masjid` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `kas_masuk` int(11) DEFAULT NULL,
  `kas_keluar` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kas_masjid`
--

INSERT INTO `tbl_kas_masjid` (`id_kas_masjid`, `tanggal`, `ket`, `kas_masuk`, `kas_keluar`, `status`) VALUES
(1, '2023-06-21', 'Saldo Awal', 10000000, 0, 'Masuk'),
(2, '2023-06-21', 'Pembayaran Listrik', 0, 200000, 'Keluar'),
(3, '2023-04-27', 'Pembayaran PDAM', 0, 200000, 'Keluar'),
(4, '2023-06-21', 'Kotak Infaq Jumat', 450000, 0, 'Masuk'),
(5, '2023-06-21', 'Infak Pengajian', 250000, 0, 'Masuk'),
(6, '2023-04-27', 'Gaji Ustad Masjid', 0, 1200000, 'Keluar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kas_sosial`
--

CREATE TABLE `tbl_kas_sosial` (
  `id_kas_sosial` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `kas_masuk` int(11) DEFAULT NULL,
  `kas_keluar` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kas_sosial`
--

INSERT INTO `tbl_kas_sosial` (`id_kas_sosial`, `tanggal`, `ket`, `kas_masuk`, `kas_keluar`, `status`) VALUES
(1, '2023-06-21', 'Kas Sosial Awal', 6550000, 0, 'Masuk'),
(2, '2023-06-21', 'Sumbangan Warga', 550000, 0, 'Masuk'),
(4, '2023-06-21', 'Pembelian Beras 40 Kg Untuk Hataman Quran', 0, 650000, 'Keluar'),
(5, '2023-06-21', 'Membantu Anak Yatim', 0, 350000, 'Keluar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelompok`
--

CREATE TABLE `tbl_kelompok` (
  `id_kelompok` int(11) NOT NULL,
  `id_tahun` int(11) DEFAULT NULL,
  `nama_kelompok` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kelompok`
--

INSERT INTO `tbl_kelompok` (`id_kelompok`, `id_tahun`, `nama_kelompok`) VALUES
(1, 1, 'Kelompok 1'),
(2, 1, 'Kelompok 2'),
(5, 2, 'Kelompok 1'),
(8, 2, 'Kelompok 2'),
(9, 3, 'Kelompok 1'),
(10, 3, 'Kelompok 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peserta_kelompok`
--

CREATE TABLE `tbl_peserta_kelompok` (
  `id_peserta` int(11) NOT NULL,
  `id_kelompok` int(11) DEFAULT NULL,
  `nama_peserta` varchar(50) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_peserta_kelompok`
--

INSERT INTO `tbl_peserta_kelompok` (`id_peserta`, `id_kelompok`, `nama_peserta`, `biaya`) VALUES
(1, 1, 'Dea', 1700000),
(2, 1, 'Asep', 1900000),
(3, 1, 'Lili', 1300000),
(4, 2, 'Bima', 2400000),
(5, 2, 'Serena', 2100000),
(7, 2, 'Diki', 1300000),
(8, 5, 'Nanda', 800000),
(9, 5, 'Jessica', 750000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'Bank BJB', '3425-2176-9081-4633', 'Masjid Al Hidayah'),
(2, 'Bank BRI', '6490-3462-5782-1975', 'Masjid Al Hidayah'),
(3, 'Bank BCA', '6485-4135-0384-4677', 'Masjid Al Hidayah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_masjid` varchar(50) NOT NULL,
  `id_kota` varchar(5) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_masjid`, `id_kota`, `alamat`) VALUES
(1, 'Masjid Al Hidayah', '1211', 'Jl. Dewi Sartika No.15, Geresik');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tahun`
--

CREATE TABLE `tbl_tahun` (
  `id_tahun` int(11) NOT NULL,
  `tahun_h` varchar(4) DEFAULT NULL,
  `tahun_m` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tahun`
--

INSERT INTO `tbl_tahun` (`id_tahun`, `tahun_h`, `tahun_m`) VALUES
(1, '1444', 2023),
(2, '1445', 2024),
(3, '1446', 2025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `tbl_donasi`
--
ALTER TABLE `tbl_donasi`
  ADD PRIMARY KEY (`id_donasi`);

--
-- Indexes for table `tbl_kas_masjid`
--
ALTER TABLE `tbl_kas_masjid`
  ADD PRIMARY KEY (`id_kas_masjid`);

--
-- Indexes for table `tbl_kas_sosial`
--
ALTER TABLE `tbl_kas_sosial`
  ADD PRIMARY KEY (`id_kas_sosial`);

--
-- Indexes for table `tbl_kelompok`
--
ALTER TABLE `tbl_kelompok`
  ADD PRIMARY KEY (`id_kelompok`);

--
-- Indexes for table `tbl_peserta_kelompok`
--
ALTER TABLE `tbl_peserta_kelompok`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tahun`
--
ALTER TABLE `tbl_tahun`
  ADD PRIMARY KEY (`id_tahun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_donasi`
--
ALTER TABLE `tbl_donasi`
  MODIFY `id_donasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kas_masjid`
--
ALTER TABLE `tbl_kas_masjid`
  MODIFY `id_kas_masjid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_kas_sosial`
--
ALTER TABLE `tbl_kas_sosial`
  MODIFY `id_kas_sosial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_kelompok`
--
ALTER TABLE `tbl_kelompok`
  MODIFY `id_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_peserta_kelompok`
--
ALTER TABLE `tbl_peserta_kelompok`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tahun`
--
ALTER TABLE `tbl_tahun`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
