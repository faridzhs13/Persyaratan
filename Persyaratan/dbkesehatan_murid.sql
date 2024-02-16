-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2023 pada 06.43
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
-- Database: `kesehatan_murid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`) VALUES
(901, 'Farid'),
(902, 'Devandra'),
(903, 'Ariq'),
(904, 'Rafa'),
(905, 'Ruslan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `jabatan` varchar(11) NOT NULL,
  `nama_wk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`, `jabatan`, `nama_wk`) VALUES
('admin', 'admin', 'walikelas', 'aflah'),
('admin', 'admin', 'walikelas', 'desta'),
('admin', 'admin', 'walikelas', 'kasyaf'),
('admin', 'admin', 'walikelas', 'linar'),
('admin', 'admin', 'walikelas', 'pasya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `murid`
--

CREATE TABLE `murid` (
  `nisn` int(11) NOT NULL,
  `nama_murid` varchar(11) NOT NULL,
  `kelas` varchar(11) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `murid`
--

INSERT INTO `murid` (`nisn`, `nama_murid`, `kelas`, `tanggal_lahir`, `jenis_kelamin`) VALUES
(1001, 'herlan', '11 oracle', '2007-05-22', 'laki-laki'),
(1002, 'Ariq', '11 oracle', '2007-02-11', 'laki-laki'),
(1003, 'rayyis', '11 PPLG A', '2005-09-03', 'laki-laki'),
(1004, 'rangga', '11 PPLG A', '2007-01-12', 'laki-laki'),
(1005, 'wahdi', '11 PPLG A', '2004-09-07', 'laki-laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `NISN_murid` int(11) NOT NULL,
  `id_pemeriksa` int(11) NOT NULL,
  `tinggi_badan` varchar(11) NOT NULL,
  `berat_badan` varchar(11) NOT NULL,
  `tekanan_darah` varchar(20) NOT NULL,
  `riwayat_penyakit` varchar(30) NOT NULL,
  `catatan_pemeriksaan` varchar(30) NOT NULL,
  `hasil_pemeriksaan` varchar(30) NOT NULL,
  `tanggal_pemeriksaan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`NISN_murid`, `id_pemeriksa`, `tinggi_badan`, `berat_badan`, `tekanan_darah`, `riwayat_penyakit`, `catatan_pemeriksaan`, `hasil_pemeriksaan`, `tanggal_pemeriksaan`) VALUES
(1001, 111, '165 ', '57', 'Normal', 'Tidak Ada', 'Kurangi Makanan Manis', 'Kurang Baik', '2023-09-08'),
(1002, 112, '160', '60', 'Kurang Normal', 'Jantung', 'Rutin Cek Kesehatan', 'Sangat Kurang Baik', '2023-09-14'),
(1003, 113, '167', '63', 'Baik', 'Tidak Ada', 'Tetap Jaga Kesehatan', 'Sangat Baik', '2023-08-03'),
(1004, 114, '170', '70', 'Normal', 'Tidak Ada', 'Jaga Kesehatan', 'Baik', '2023-08-18'),
(1005, 115, '175', '68', 'Sangat Normal', 'Tidak Ada', 'Rutin Berolahraga', 'Sangat Baik', '2023-07-05');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vmurid`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vmurid` (
`nama_murid` varchar(11)
,`kelas` varchar(11)
,`tanggal_pemeriksaan` date
,`berat_badan` varchar(11)
,`tinggi_badan` varchar(11)
,`tekanan_darah` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vmurid1`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vmurid1` (
`nama_murid` varchar(11)
,`kelas` varchar(11)
,`tanggal_pemeriksaan` date
,`berat_badan` varchar(11)
,`tinggi_badan` varchar(11)
,`tekanan_darah` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vwalikelas`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vwalikelas` (
`nama_murid` varchar(11)
,`Kelas` varchar(11)
,`nama` varchar(11)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(11) NOT NULL,
  `walikelas` varchar(11) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `jabatan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `nama`, `walikelas`, `jenis_kelamin`, `jabatan`) VALUES
(1, 'desta', '11 oracle', 'laki-laki', 'walikelas'),
(2, 'Pasya', '11 PPLG A', 'laki-laki', 'walikelas'),
(3, 'linar', '11 oracle', 'laki-laki', 'walikelas'),
(4, 'kasyaf', '11 PPLG A', 'laki-laki', 'walikelas'),
(5, 'aflah', '11 oracle', 'laki-laki', 'walikelas');

-- --------------------------------------------------------

--
-- Struktur untuk view `vmurid`
--
DROP TABLE IF EXISTS `vmurid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vmurid`  AS SELECT `murid`.`nama_murid` AS `nama_murid`, `murid`.`kelas` AS `kelas`, `pemeriksaan`.`tanggal_pemeriksaan` AS `tanggal_pemeriksaan`, `pemeriksaan`.`berat_badan` AS `berat_badan`, `pemeriksaan`.`tinggi_badan` AS `tinggi_badan`, `pemeriksaan`.`tekanan_darah` AS `tekanan_darah` FROM (`murid` join `pemeriksaan` on(`murid`.`nisn` = `pemeriksaan`.`NISN_murid`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vmurid1`
--
DROP TABLE IF EXISTS `vmurid1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vmurid1`  AS SELECT `murid`.`nama_murid` AS `nama_murid`, `murid`.`kelas` AS `kelas`, `pemeriksaan`.`tanggal_pemeriksaan` AS `tanggal_pemeriksaan`, `pemeriksaan`.`berat_badan` AS `berat_badan`, `pemeriksaan`.`tinggi_badan` AS `tinggi_badan`, `pemeriksaan`.`tekanan_darah` AS `tekanan_darah` FROM (`murid` join `pemeriksaan` on(`murid`.`nisn` = `pemeriksaan`.`NISN_murid`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vwalikelas`
--
DROP TABLE IF EXISTS `vwalikelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwalikelas`  AS SELECT `murid`.`nama_murid` AS `nama_murid`, `murid`.`kelas` AS `Kelas`, `wali_kelas`.`nama` AS `nama` FROM (`murid` join `wali_kelas` on(`murid`.`kelas` = `wali_kelas`.`walikelas`))  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`nama_wk`);

--
-- Indeks untuk tabel `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`NISN_murid`);

--
-- Indeks untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
