-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2023 pada 06.42
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
-- Database: `dbkebersihan_faridz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `Guru_ID` int(11) NOT NULL,
  `Nama_Guru` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`Guru_ID`, `Nama_Guru`) VALUES
(1101, 'Agus'),
(1102, 'Bagas'),
(1103, 'Kahfi'),
(1104, 'Angga'),
(1105, 'Wahdi'),
(1106, 'Rafa'),
(1107, 'Rasya'),
(1108, 'Faisal'),
(1109, 'Ardi'),
(1110, 'Febri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `Kelas_ID` int(11) NOT NULL,
  `Nama_Kelas` varchar(11) NOT NULL,
  `Nama_Walikelas` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`Kelas_ID`, `Nama_Kelas`, `Nama_Walikelas`) VALUES
(1, 'XI ORACLE', 'Agus'),
(2, 'XI PPLG A', 'Bagas'),
(3, 'XI PPLG B', 'Kahfi'),
(4, 'XI TEI A', 'Angga'),
(5, 'XI TEI B', 'Wahdi'),
(6, 'XI TJKT A', 'Rafa'),
(7, 'XI PM A', 'Rasya'),
(8, 'XI PM B', 'Faisal'),
(9, 'XI AXIO', 'Ardi'),
(10, 'XI ATPH A', 'Febri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `pengumuman` varchar(11) NOT NULL,
  `tanggal_pengumuman` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `Penilaian_ID` int(11) NOT NULL,
  `Tanggal_Penilaian` date NOT NULL,
  `Guru_ID` int(11) NOT NULL,
  `Kelas_ID` int(11) NOT NULL,
  `nLantai` int(2) NOT NULL,
  `nRuangan` int(2) NOT NULL,
  `nJendela` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`Penilaian_ID`, `Tanggal_Penilaian`, `Guru_ID`, `Kelas_ID`, `nLantai`, `nRuangan`, `nJendela`) VALUES
(121, '2023-09-01', 1101, 1, 75, 85, 79),
(122, '2023-09-08', 1102, 3, 80, 82, 80),
(123, '2023-09-15', 1103, 2, 78, 83, 80),
(124, '2023-09-22', 1104, 1, 80, 81, 85),
(125, '2023-10-02', 1101, 4, 82, 84, 85),
(126, '2023-10-09', 1108, 6, 87, 82, 80),
(127, '2023-10-16', 1109, 10, 90, 81, 78),
(128, '2023-10-23', 1109, 7, 75, 80, 78),
(129, '2023-11-03', 1103, 5, 82, 79, 85),
(130, '2023-11-10', 1101, 6, 78, 82, 80);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vkelas`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vkelas` (
`Nama_Kelas` varchar(11)
,`Nama_Walikelas` varchar(11)
,`nLantai` int(2)
,`nRuangan` int(2)
,`nJendela` int(2)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vrata`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vrata` (
`Nama_Kelas` varchar(11)
,`Tanggal_Penilaian` date
,`Rata_nlantai` decimal(14,4)
,`Rata_nruangan` decimal(14,4)
,`Rata_njendela` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `vkelas`
--
DROP TABLE IF EXISTS `vkelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vkelas`  AS SELECT `kelas`.`Nama_Kelas` AS `Nama_Kelas`, `kelas`.`Nama_Walikelas` AS `Nama_Walikelas`, `penilaian`.`nLantai` AS `nLantai`, `penilaian`.`nRuangan` AS `nRuangan`, `penilaian`.`nJendela` AS `nJendela` FROM (`penilaian` left join `kelas` on(`kelas`.`Kelas_ID` = `penilaian`.`Kelas_ID`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vrata`
--
DROP TABLE IF EXISTS `vrata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vrata`  AS SELECT `kelas`.`Nama_Kelas` AS `Nama_Kelas`, `penilaian`.`Tanggal_Penilaian` AS `Tanggal_Penilaian`, avg(`penilaian`.`nLantai`) AS `Rata_nlantai`, avg(`penilaian`.`nRuangan`) AS `Rata_nruangan`, avg(`penilaian`.`nJendela`) AS `Rata_njendela` FROM (`kelas` join `penilaian` on(`kelas`.`Kelas_ID` = `penilaian`.`Kelas_ID`)) GROUP BY `kelas`.`Nama_Kelas`, `penilaian`.`Tanggal_Penilaian``Tanggal_Penilaian`  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`Guru_ID`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`Kelas_ID`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`Penilaian_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
