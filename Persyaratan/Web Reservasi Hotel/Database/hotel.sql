-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Feb 2024 pada 04.44
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_admin`) VALUES
('admin', 'admin', 'Farid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_reservasi`
--

CREATE TABLE `detail_reservasi` (
  `id_detail_reservasi` int(11) NOT NULL,
  `no_reservasi` varchar(12) NOT NULL,
  `no_kamar` varchar(5) NOT NULL,
  `harga_kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_reservasi`
--

INSERT INTO `detail_reservasi` (`id_detail_reservasi`, `no_reservasi`, `no_kamar`, `harga_kamar`) VALUES
(5, '201807090002', 'A02', 420000),
(6, '201807090003', 'A02', 1680000),
(8, '201807090004', 'A01', 120000),
(9, '202309250001', 'A01', 2500000),
(10, '202309260001', 'A02', 5000000),
(11, '202309260002', 'A06', 3500000),
(13, '202309260003', 'A03', 2500000),
(14, '202309260004', 'A04', 2500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `no_kamar` varchar(5) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `status_kamar` varchar(8) NOT NULL,
  `dari` datetime NOT NULL,
  `sampai` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`no_kamar`, `kelas`, `harga`, `status_kamar`, `dari`, `sampai`) VALUES
('A01', 'Low Budget', 2500000, 'Checkin', '2023-09-25 14:00:00', '2023-09-26 12:00:00'),
('A02', 'Low Budget', 2500000, 'Checkin', '2023-09-26 14:00:00', '2023-09-28 12:00:00'),
('A03', 'Low Budget', 2500000, 'Checkin', '2023-09-26 14:00:00', '2023-09-27 12:00:00'),
('A04', 'Low Budget', 2500000, 'Kosong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('A05', 'Low Budget', 2500000, 'Kosong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('A06', 'Full Service', 3500000, 'Kosong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('A07', 'Full Service', 3500000, 'Kosong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('A08', 'Full Service', 3500000, 'Kosong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('A09', 'Full Service', 3500000, 'Kosong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('A10', 'Full Service', 3500000, 'Kosong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('A11', 'Full Service', 3500000, 'Kosong', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `no_reservasi` varchar(12) NOT NULL,
  `tgl_reservasi` datetime NOT NULL,
  `tgl_checkin` datetime NOT NULL,
  `tgl_checkout` datetime NOT NULL,
  `id_tamu` varchar(8) NOT NULL,
  `jumlah_hari` int(11) NOT NULL,
  `jumlah_kamar` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`no_reservasi`, `tgl_reservasi`, `tgl_checkin`, `tgl_checkout`, `id_tamu`, `jumlah_hari`, `jumlah_kamar`, `jumlah_bayar`, `status`) VALUES
('201807090002', '2018-07-09 01:10:10', '2018-07-09 00:00:00', '2018-07-11 14:00:00', 'T0000001', 2, 1, 420000, 'Checkout'),
('201807090003', '2018-07-09 01:11:37', '2018-07-09 14:00:00', '2018-07-17 12:00:00', 'T0000002', 8, 1, 1680000, 'Checkout'),
('201807090004', '2018-07-09 15:00:23', '2018-07-09 14:00:00', '2018-07-10 12:00:00', 'T0000002', 1, 1, 120000, 'Checkout'),
('202309250001', '2023-09-25 20:57:36', '2023-09-25 14:00:00', '2023-09-26 12:00:00', 'T0000003', 1, 1, 2500000, 'Checkin'),
('202309260001', '2023-09-26 06:36:58', '2023-09-26 14:00:00', '2023-09-28 12:00:00', 'T0000004', 2, 1, 5000000, 'Checkin'),
('202309260002', '2023-09-26 07:39:44', '2023-09-26 14:00:00', '2023-09-27 12:00:00', 'T0000006', 1, 1, 3500000, 'Checkout'),
('202309260003', '2023-09-26 10:57:03', '2023-09-26 14:00:00', '2023-09-27 12:00:00', 'T0000006', 1, 1, 2500000, 'Checkin'),
('202309260004', '2023-09-26 11:43:35', '2023-09-26 14:00:00', '2023-09-27 12:00:00', 'T0000007', 1, 1, 2500000, 'Booked');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` varchar(8) NOT NULL,
  `no_identitas` varchar(16) NOT NULL,
  `nama_tamu` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` varchar(9) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomer_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `no_identitas`, `nama_tamu`, `tanggal_lahir`, `jk`, `alamat`, `nomer_hp`) VALUES
('T0000001', '3202280103950005', 'Herlan', '1995-03-01', 'Laki-laki', 'Citatah', '085724299950'),
('T0000002', '3202280103950006', 'Kasyaf', '1992-05-05', 'Laki-laki', 'Caringin', '085785445874'),
('T0000003', '3202280103950008', 'faridz', '2023-09-01', 'Laki-laki', 'ciburial', '082343123'),
('T0000004', '3202280103950009', 'devandra', '2023-09-01', 'Laki-laki', 'cijeunjing', '0821324312'),
('T0000005', '3202280103950010', 'pasya a', '2005-03-10', 'Laki-laki', 'cipatat', '08213261673'),
('T0000006', '3202280103950011', 'kaka', '2007-11-22', 'Laki-laki', 'cimahi', '0832727363'),
('T0000007', '3202280103950015', 'ivana', '2007-07-18', 'Laki-laki', 'sodong', '082132431234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_reservasi`
--

CREATE TABLE `tmp_reservasi` (
  `id_tmp` int(11) NOT NULL,
  `no_kamar` varchar(6) NOT NULL,
  `kelas` varchar(15) NOT NULL,
  `harga` int(11) NOT NULL,
  `lama` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_reservasi`
--

INSERT INTO `tmp_reservasi` (`id_tmp`, `no_kamar`, `kelas`, `harga`, `lama`, `jumlah_harga`) VALUES
(11, 'A04', 'Low Budget', 2500000, 1, 2500000);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vtamu`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vtamu` (
`no_identitas` varchar(16)
,`nama_tamu` varchar(40)
,`tanggal_lahir` date
,`nomer_hp` varchar(13)
,`tgl_reservasi` datetime
,`tgl_checkin` datetime
,`tgl_checkout` datetime
,`jumlah_hari` int(11)
,`status` varchar(20)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `vtamu`
--
DROP TABLE IF EXISTS `vtamu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtamu`  AS SELECT `tamu`.`no_identitas` AS `no_identitas`, `tamu`.`nama_tamu` AS `nama_tamu`, `tamu`.`tanggal_lahir` AS `tanggal_lahir`, `tamu`.`nomer_hp` AS `nomer_hp`, `reservasi`.`tgl_reservasi` AS `tgl_reservasi`, `reservasi`.`tgl_checkin` AS `tgl_checkin`, `reservasi`.`tgl_checkout` AS `tgl_checkout`, `reservasi`.`jumlah_hari` AS `jumlah_hari`, `reservasi`.`status` AS `status` FROM (`tamu` join `reservasi` on(`reservasi`.`id_tamu` = `tamu`.`id_tamu`))  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `detail_reservasi`
--
ALTER TABLE `detail_reservasi`
  ADD PRIMARY KEY (`id_detail_reservasi`),
  ADD KEY `no_reservasi` (`no_reservasi`),
  ADD KEY `no_kamar` (`no_kamar`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`no_kamar`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`no_reservasi`),
  ADD KEY `id_tamu` (`id_tamu`);

--
-- Indeks untuk tabel `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indeks untuk tabel `tmp_reservasi`
--
ALTER TABLE `tmp_reservasi`
  ADD PRIMARY KEY (`id_tmp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_reservasi`
--
ALTER TABLE `detail_reservasi`
  MODIFY `id_detail_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tmp_reservasi`
--
ALTER TABLE `tmp_reservasi`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
