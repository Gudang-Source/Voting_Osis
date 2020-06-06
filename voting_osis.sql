-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 04:04 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_osis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kandidat`
--

CREATE TABLE `tb_kandidat` (
  `id_kandidat` smallint(4) NOT NULL,
  `nama_calon` varchar(50) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `misi` varchar(255) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `suara` int(10) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kandidat`
--

INSERT INTO `tb_kandidat` (`id_kandidat`, `nama_calon`, `visi`, `misi`, `periode`, `suara`, `foto`) VALUES
(10, 'deni', 'oiaduogwqudgqwougdouqwgdoug2qowudgoquwgdou2gqowudgquwgdu2gqorug12ougruo12', 'yipw0oudhqwudoquwdug2qwugdqwugidqwgriyqwiyrvqiywrviqywrvqjwcrugqcwrcqwrcuq3gjwr', '2018/2019', 1, '5eb721d212796.png'),
(11, 'Fajar cahyadi', 'lgugo', 'p0ugogo', '2018/2019', 0, '5eb721f579a08.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemilih`
--

CREATE TABLE `tb_pemilih` (
  `id` int(11) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `status_aktif` enum('aktif','tidak') NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `terakhir_login` datetime NOT NULL,
  `alamat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemilih`
--

INSERT INTO `tb_pemilih` (`id`, `nis`, `nama`, `username`, `password`, `email`, `no_hp`, `status_aktif`, `tanggal_daftar`, `jenis_kelamin`, `terakhir_login`, `alamat`) VALUES
(9, 'SIS001', 'pemilih', 'pemilih', '8cb2237d0679ca88db6464eac60da96345513964', 'fajar@gmail.com', '0895284264', 'aktif', '2020-05-05', 'laki-laki', '0000-00-00 00:00:00', 'jakarta'),
(18, 'sis002', 'Fajar cahyadi', 'fajar cahyadi', '8cb2237d0679ca88db6464eac60da96345513964', 'fajar@gmail.com', '089528426482642', 'aktif', '2020-05-08', 'laki-laki', '0000-00-00 00:00:00', 'bekasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `status_aktif` enum('tidak','aktif') NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nis`, `nama`, `jenis_kelamin`, `jurusan`, `status_aktif`, `email`, `no_hp`) VALUES
(1, 'SIS001', 'pemilih', 'laki-laki', 'tkr', 'aktif', 'pemilih@gmail.com', '03808308'),
(3, 'SIS002', 'Fajar cahyadi', 'laki-laki', 'oye', 'aktif', 'fajar@gmail.com', '089528426482642'),
(4, 'SIS003', 'asep', 'laki-laki', 'SI', 'aktif', 'asep@tajh.jhduw', '089528426482642');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `kode_user` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status_aktif` enum('aktif','tidak') NOT NULL,
  `tanggal_buat` date NOT NULL,
  `role` enum('panitia','admin') NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `kode_user`, `nama`, `username`, `password`, `email`, `status_aktif`, `tanggal_buat`, `role`, `jenis_kelamin`) VALUES
(1, 'US001', 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@gmail.com', 'aktif', '2020-05-13', 'admin', 'laki-laki'),
(2, 'us002', 'panitia', 'panitia', 'de4479cc0ae5c7465a9d6a0e19edee0c08d5d9c3', 'panitia@gmail.com', 'aktif', '2020-05-12', 'panitia', 'perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_voting`
--

CREATE TABLE `tb_voting` (
  `id` int(11) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `id_kandidat` varchar(50) NOT NULL,
  `nama_pemilih` varchar(50) NOT NULL,
  `pilihan` varchar(50) NOT NULL,
  `tanggal_milih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_voting`
--

INSERT INTO `tb_voting` (`id`, `nis`, `id_kandidat`, `nama_pemilih`, `pilihan`, `tanggal_milih`) VALUES
(1, 'SIS001', '10', 'pemilih', 'deni', '2020-05-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kandidat`
--
ALTER TABLE `tb_kandidat`
  ADD PRIMARY KEY (`id_kandidat`);

--
-- Indexes for table `tb_pemilih`
--
ALTER TABLE `tb_pemilih`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_voting`
--
ALTER TABLE `tb_voting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kandidat`
--
ALTER TABLE `tb_kandidat`
  MODIFY `id_kandidat` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_pemilih`
--
ALTER TABLE `tb_pemilih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_voting`
--
ALTER TABLE `tb_voting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
