-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 05:33 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `spesialis` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_telp`) VALUES
('9d4417be-8c25-47a1-805e-2a0a30e72cb9', 'Muhammad Farhan', 'Jantung', 'Cikoko', '085710316215');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `ket_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `ket_obat`) VALUES
('26feae87-9b8c-11ea-a0ac-30d16bf3adce', 'Ultraflu', 'Obat flu'),
('26fed132-9b8c-11ea-a0ac-30d16bf3adce', 'Komix', 'Obat batuk'),
('26fef19f-9b8c-11ea-a0ac-30d16bf3adce', 'Paramex', 'Obat sakit kepala'),
('26ff0ff4-9b8c-11ea-a0ac-30d16bf3adce', 'Oskadon', 'Obat sakit kepala'),
('425dd355-9b73-11ea-a0ac-30d16bf3adce', 'Paracetamol', 'Obat demam'),
('6f777c79-9b8c-11ea-a0ac-30d16bf3adce', 'Sanmol', 'Obat demam'),
('6f779dbd-9b8c-11ea-a0ac-30d16bf3adce', 'Amoxilin', 'Obat anti biotik');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nomor_identitas` varchar(100) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nomor_identitas`, `nama_pasien`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
('8a2b3a84-4c2e-489a-8e78-6c43a6f5567e', '1218271827192819829', 'Udin', 'L', 'Cikoko Barat 2', '0212345678'),
('bf1f8b6d-5496-4a63-9d30-d0857e843202', '3074082903950001', 'Muhammad Farhan', 'L', 'Cikoko', '085710316215');

-- --------------------------------------------------------

--
-- Table structure for table `tb_poliklinik`
--

CREATE TABLE `tb_poliklinik` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(100) NOT NULL,
  `lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_poliklinik`
--

INSERT INTO `tb_poliklinik` (`id_poli`, `nama_poli`, `lokasi`) VALUES
('953e0d15-5467-49e6-a30e-766963079a3d', 'gigi', 'jakarta'),
('ae5035d2-9c95-4c7c-967e-98713ef3f616', 'test', 'test1'),
('b37b9d88-309c-4020-84cd-0caf3a3f5c3d', 'jantung', 'bandung');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekammedis`
--

CREATE TABLE `tb_rekammedis` (
  `uuid` int(11) NOT NULL,
  `tgl` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `poli` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `pasien` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `keluhan` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `dokter` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `diagnosa` varchar(128) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rekammedis`
--

INSERT INTO `tb_rekammedis` (`uuid`, `tgl`, `poli`, `pasien`, `keluhan`, `dokter`, `diagnosa`) VALUES
(0, '2021-06-04 00:00:00.000000', 'ae5035d2-9c95-4c7c-967e-98713ef3f616', 'bf1f8b6d-5496-4a63-9d30-d0857e843202', '<p>pusing</p>\r\n', '9d4417be-8c25-47a1-805e-2a0a30e72cb9', 'corona'),
(9, '2021-06-04 00:00:00.000000', 'ae5035d2-9c95-4c7c-967e-98713ef3f616', 'bf1f8b6d-5496-4a63-9d30-d0857e843202', '<p>pusing</p>\r\n', '9d4417be-8c25-47a1-805e-2a0a30e72cb9', 'corona'),
(330, '2021-06-04 00:00:00.000000', 'ae5035d2-9c95-4c7c-967e-98713ef3f616', 'bf1f8b6d-5496-4a63-9d30-d0857e843202', '<p>pusing</p>\r\n', '9d4417be-8c25-47a1-805e-2a0a30e72cb9', 'corona'),
(18692886, '2021-06-05 00:00:00.000000', 'ae5035d2-9c95-4c7c-967e-98713ef3f616', 'bf1f8b6d-5496-4a63-9d30-d0857e843202', '<p>sqxsq</p>\r\n', '9d4417be-8c25-47a1-805e-2a0a30e72cb9', 'qsxq');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rm_obat`
--

CREATE TABLE `tb_rm_obat` (
  `id` int(8) NOT NULL,
  `id_rm` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_obat` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rm_obat`
--

INSERT INTO `tb_rm_obat` (`id`, `id_rm`, `id_obat`) VALUES
(0, '18692886-d2da-40d2-af9a-a24ef83db655', '26fed132-9b8c-11ea-a0ac-30d16bf3adce');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
('', 'Yola', 'yola1996', 'a9573217994b9a6b35bce220e5a670a86a2b8b4f', '1'),
('98731216336846848', 'Arif Rusman', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `id_obat_2` (`id_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tb_poliklinik`
--
ALTER TABLE `tb_poliklinik`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `keluhan` (`keluhan`),
  ADD KEY `tb_rekammedis_ibfk_2` (`diagnosa`),
  ADD KEY `tb_rekammedis_ibfk_1` (`poli`),
  ADD KEY `tb_rekammedis_ibfk_3` (`pasien`),
  ADD KEY `dokter` (`dokter`);

--
-- Indexes for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD CONSTRAINT `tb_rekammedis_ibfk_1` FOREIGN KEY (`poli`) REFERENCES `tb_poliklinik` (`id_poli`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_3` FOREIGN KEY (`pasien`) REFERENCES `tb_pasien` (`id_pasien`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_4` FOREIGN KEY (`dokter`) REFERENCES `tb_dokter` (`id_dokter`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
