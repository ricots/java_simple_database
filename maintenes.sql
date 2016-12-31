-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 31 Des 2016 pada 11.48
-- Versi Server: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `maintenes`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_komp`
--
CREATE TABLE IF NOT EXISTS `detail_komp` (
`tgl` date
,`id_ruang` varchar(10)
,`id_komputer` varchar(10)
,`ket` varchar(10)
,`ket_pr` varchar(10)
,`ket_of` varchar(10)
,`windows` varchar(12)
,`antivirus` varchar(20)
,`program_web` varchar(20)
,`program_office` varchar(30)
,`id_tehnisi` varchar(10)
,`nama_ruang` varchar(20)
,`spesifikasi` varchar(30)
,`hdd` varchar(20)
,`ram` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_komputer`
--
CREATE TABLE IF NOT EXISTS `detail_komputer` (
`id_ruang` varchar(10)
,`id_tehnisi` varchar(10)
,`nama_ruang` varchar(20)
,`id_komputer` varchar(10)
,`spesifikasi` varchar(30)
,`hdd` varchar(20)
,`ram` varchar(20)
,`nama_tehnisi` varchar(30)
,`alamat` text
,`password` varchar(10)
,`windows` varchar(12)
,`antivirus` varchar(20)
,`program_web` varchar(20)
,`program_office` varchar(30)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `komputer_software`
--
CREATE TABLE IF NOT EXISTS `komputer_software` (
`id_ruang` varchar(10)
,`id_komputer` varchar(10)
,`spesifikasi` varchar(30)
,`hdd` varchar(20)
,`ram` varchar(20)
,`windows` varchar(12)
,`antivirus` varchar(20)
,`program_web` varchar(20)
,`program_office` varchar(30)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `maintenes_komputer`
--
CREATE TABLE IF NOT EXISTS `maintenes_komputer` (
`tanggal` date
,`id_ruang` varchar(10)
,`id_komputer` varchar(10)
,`kondisi` varchar(30)
,`tindakan` varchar(50)
,`spesifikasi` varchar(30)
,`hdd` varchar(20)
,`ram` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `maintenes_ruang`
--
CREATE TABLE IF NOT EXISTS `maintenes_ruang` (
`tanggal` date
,`id_ruang` varchar(10)
,`id_komputer` varchar(10)
,`kondisi` varchar(30)
,`tindakan` varchar(50)
,`spesifikasi` varchar(30)
,`hdd` varchar(20)
,`ram` varchar(20)
,`id_tehnisi` varchar(10)
,`nama_ruang` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `maintenes_soft`
--
CREATE TABLE IF NOT EXISTS `maintenes_soft` (
`tgl` date
,`id_ruang` varchar(10)
,`id_komputer` varchar(10)
,`ket` varchar(10)
,`ket_pr` varchar(10)
,`ket_of` varchar(10)
,`windows` varchar(12)
,`antivirus` varchar(20)
,`program_web` varchar(20)
,`program_office` varchar(30)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `maintenes_soft_ruang`
--
CREATE TABLE IF NOT EXISTS `maintenes_soft_ruang` (
`tgl` date
,`id_ruang` varchar(10)
,`id_komputer` varchar(10)
,`ket` varchar(10)
,`ket_pr` varchar(10)
,`ket_of` varchar(10)
,`windows` varchar(12)
,`antivirus` varchar(20)
,`program_web` varchar(20)
,`program_office` varchar(30)
,`id_tehnisi` varchar(10)
,`nama_ruang` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `maintenes_soft_tehnisi`
--
CREATE TABLE IF NOT EXISTS `maintenes_soft_tehnisi` (
`tgl` date
,`id_ruang` varchar(10)
,`id_komputer` varchar(10)
,`ket` varchar(10)
,`ket_pr` varchar(10)
,`ket_of` varchar(10)
,`windows` varchar(12)
,`antivirus` varchar(20)
,`program_web` varchar(20)
,`program_office` varchar(30)
,`id_tehnisi` varchar(10)
,`nama_ruang` varchar(20)
,`nama_tehnisi` varchar(30)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `maintenes_tehnisi`
--
CREATE TABLE IF NOT EXISTS `maintenes_tehnisi` (
`tanggal` date
,`id_ruang` varchar(10)
,`id_komputer` varchar(10)
,`kondisi` varchar(30)
,`tindakan` varchar(50)
,`spesifikasi` varchar(30)
,`hdd` varchar(20)
,`ram` varchar(20)
,`id_tehnisi` varchar(10)
,`nama_ruang` varchar(20)
,`nama_tehnisi` varchar(30)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ruang_komputer`
--
CREATE TABLE IF NOT EXISTS `ruang_komputer` (
`id_ruang` varchar(10)
,`id_tehnisi` varchar(10)
,`nama_ruang` varchar(20)
,`id_komputer` varchar(10)
,`spesifikasi` varchar(30)
,`hdd` varchar(20)
,`ram` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ruang_tehnisi`
--
CREATE TABLE IF NOT EXISTS `ruang_tehnisi` (
`id_ruang` varchar(10)
,`id_tehnisi` varchar(10)
,`nama_ruang` varchar(20)
,`id_komputer` varchar(10)
,`spesifikasi` varchar(30)
,`hdd` varchar(20)
,`ram` varchar(20)
,`nama_tehnisi` varchar(30)
,`alamat` text
,`password` varchar(10)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `software_komputer`
--
CREATE TABLE IF NOT EXISTS `software_komputer` (
`id_ruang` varchar(10)
,`id_komputer` varchar(10)
,`spesifikasi` varchar(30)
,`hdd` varchar(20)
,`ram` varchar(20)
,`windows` varchar(12)
,`antivirus` varchar(20)
,`program_web` varchar(20)
,`program_office` varchar(30)
,`id_tehnisi` varchar(10)
,`nama_ruang` varchar(20)
);
-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_info_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_info_admin` (
  `id_admin` varchar(10) NOT NULL DEFAULT '',
  `nama_admin` varchar(30) DEFAULT NULL,
  `alamat` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_info_tehnisi`
--

CREATE TABLE IF NOT EXISTS `tbl_info_tehnisi` (
  `id_tehnisi` varchar(10) NOT NULL DEFAULT '',
  `nama_tehnisi` varchar(30) DEFAULT NULL,
  `alamat` text,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_info_tehnisi`
--

INSERT INTO `tbl_info_tehnisi` (`id_tehnisi`, `nama_tehnisi`, `alamat`, `password`) VALUES
('ast1', 'tes', NULL, '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komputer`
--

CREATE TABLE IF NOT EXISTS `tbl_komputer` (
  `id_ruang` varchar(10) NOT NULL DEFAULT '',
  `id_komputer` varchar(10) NOT NULL DEFAULT '',
  `spesifikasi` varchar(30) DEFAULT NULL,
  `hdd` varchar(20) DEFAULT NULL,
  `ram` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komputer`
--

INSERT INTO `tbl_komputer` (`id_ruang`, `id_komputer`, `spesifikasi`, `hdd`, `ram`) VALUES
('apli2', 'a1', 'tes', 'tes', 'tes'),
('apli1', 'apli1-1', 'tes', 'tes', 'tes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_maintenes`
--

CREATE TABLE IF NOT EXISTS `tbl_maintenes` (
  `tanggal` date DEFAULT NULL,
  `id_ruang` varchar(10) DEFAULT NULL,
  `id_komputer` varchar(10) DEFAULT NULL,
  `kondisi` varchar(30) DEFAULT NULL,
  `tindakan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_maintenes`
--

INSERT INTO `tbl_maintenes` (`tanggal`, `id_ruang`, `id_komputer`, `kondisi`, `tindakan`) VALUES
('2016-12-29', 'apli1', 'apli1-1', 'rusak', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_maintenes_soft`
--

CREATE TABLE IF NOT EXISTS `tbl_maintenes_soft` (
  `tgl` date DEFAULT NULL,
  `id_ruang` varchar(10) DEFAULT NULL,
  `id_komputer` varchar(10) DEFAULT NULL,
  `ket` varchar(10) DEFAULT NULL,
  `ket_pr` varchar(10) DEFAULT NULL,
  `ket_of` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_maintenes_soft`
--

INSERT INTO `tbl_maintenes_soft` (`tgl`, `id_ruang`, `id_komputer`, `ket`, `ket_pr`, `ket_of`) VALUES
('2016-12-29', 'apli1', 'apli1-1', 'ada', 'kosong', 'ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ruang`
--

CREATE TABLE IF NOT EXISTS `tbl_ruang` (
  `id_ruang` varchar(10) NOT NULL DEFAULT '',
  `id_tehnisi` varchar(10) NOT NULL DEFAULT '',
  `nama_ruang` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_ruang`
--

INSERT INTO `tbl_ruang` (`id_ruang`, `id_tehnisi`, `nama_ruang`) VALUES
('apli1', 'ast1', 'aplikasi 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_software`
--

CREATE TABLE IF NOT EXISTS `tbl_software` (
  `id_komputer` varchar(10) NOT NULL DEFAULT '',
  `windows` varchar(12) DEFAULT NULL,
  `antivirus` varchar(20) DEFAULT NULL,
  `program_web` varchar(20) DEFAULT NULL,
  `program_office` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_software`
--

INSERT INTO `tbl_software` (`id_komputer`, `windows`, `antivirus`, `program_web`, `program_office`) VALUES
('a1', '7', 'avast', 'dreamwever', '2007'),
('apli1-1', '7', 'tes', 'tes', 'tes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tehnisi`
--

CREATE TABLE IF NOT EXISTS `tbl_tehnisi` (
  `id_tehnisi` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tehnisi`
--

INSERT INTO `tbl_tehnisi` (`id_tehnisi`, `password`) VALUES
('ast1', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tindakan`
--

CREATE TABLE IF NOT EXISTS `tbl_tindakan` (
  `id_tindakan` varchar(10) NOT NULL DEFAULT '',
  `tindakan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `test_komputer`
--

CREATE TABLE IF NOT EXISTS `test_komputer` (
  `id_ruang` varchar(10) NOT NULL DEFAULT '',
  `nama_ruang` varchar(20) DEFAULT NULL,
  `id_komputer` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur untuk view `detail_komp`
--
DROP TABLE IF EXISTS `detail_komp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_komp` AS select `maintenes_soft_ruang`.`tgl` AS `tgl`,`maintenes_soft_ruang`.`id_ruang` AS `id_ruang`,`maintenes_soft_ruang`.`id_komputer` AS `id_komputer`,`maintenes_soft_ruang`.`ket` AS `ket`,`maintenes_soft_ruang`.`ket_pr` AS `ket_pr`,`maintenes_soft_ruang`.`ket_of` AS `ket_of`,`maintenes_soft_ruang`.`windows` AS `windows`,`maintenes_soft_ruang`.`antivirus` AS `antivirus`,`maintenes_soft_ruang`.`program_web` AS `program_web`,`maintenes_soft_ruang`.`program_office` AS `program_office`,`maintenes_soft_ruang`.`id_tehnisi` AS `id_tehnisi`,`maintenes_soft_ruang`.`nama_ruang` AS `nama_ruang`,`tbl_komputer`.`spesifikasi` AS `spesifikasi`,`tbl_komputer`.`hdd` AS `hdd`,`tbl_komputer`.`ram` AS `ram` from (`maintenes_soft_ruang` join `tbl_komputer`) where (`maintenes_soft_ruang`.`id_komputer` = `tbl_komputer`.`id_komputer`);

-- --------------------------------------------------------

--
-- Struktur untuk view `detail_komputer`
--
DROP TABLE IF EXISTS `detail_komputer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_komputer` AS select `ruang_tehnisi`.`id_ruang` AS `id_ruang`,`ruang_tehnisi`.`id_tehnisi` AS `id_tehnisi`,`ruang_tehnisi`.`nama_ruang` AS `nama_ruang`,`ruang_tehnisi`.`id_komputer` AS `id_komputer`,`ruang_tehnisi`.`spesifikasi` AS `spesifikasi`,`ruang_tehnisi`.`hdd` AS `hdd`,`ruang_tehnisi`.`ram` AS `ram`,`ruang_tehnisi`.`nama_tehnisi` AS `nama_tehnisi`,`ruang_tehnisi`.`alamat` AS `alamat`,`ruang_tehnisi`.`password` AS `password`,`komputer_software`.`windows` AS `windows`,`komputer_software`.`antivirus` AS `antivirus`,`komputer_software`.`program_web` AS `program_web`,`komputer_software`.`program_office` AS `program_office` from (`ruang_tehnisi` join `komputer_software`) where (`ruang_tehnisi`.`id_ruang` = `komputer_software`.`id_ruang`);

-- --------------------------------------------------------

--
-- Struktur untuk view `komputer_software`
--
DROP TABLE IF EXISTS `komputer_software`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `komputer_software` AS select `tbl_komputer`.`id_ruang` AS `id_ruang`,`tbl_komputer`.`id_komputer` AS `id_komputer`,`tbl_komputer`.`spesifikasi` AS `spesifikasi`,`tbl_komputer`.`hdd` AS `hdd`,`tbl_komputer`.`ram` AS `ram`,`tbl_software`.`windows` AS `windows`,`tbl_software`.`antivirus` AS `antivirus`,`tbl_software`.`program_web` AS `program_web`,`tbl_software`.`program_office` AS `program_office` from (`tbl_komputer` join `tbl_software`) where (`tbl_komputer`.`id_komputer` = `tbl_software`.`id_komputer`);

-- --------------------------------------------------------

--
-- Struktur untuk view `maintenes_komputer`
--
DROP TABLE IF EXISTS `maintenes_komputer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_komputer` AS select `tbl_maintenes`.`tanggal` AS `tanggal`,`tbl_maintenes`.`id_ruang` AS `id_ruang`,`tbl_maintenes`.`id_komputer` AS `id_komputer`,`tbl_maintenes`.`kondisi` AS `kondisi`,`tbl_maintenes`.`tindakan` AS `tindakan`,`tbl_komputer`.`spesifikasi` AS `spesifikasi`,`tbl_komputer`.`hdd` AS `hdd`,`tbl_komputer`.`ram` AS `ram` from (`tbl_maintenes` join `tbl_komputer`) where (`tbl_maintenes`.`id_komputer` = `tbl_komputer`.`id_komputer`);

-- --------------------------------------------------------

--
-- Struktur untuk view `maintenes_ruang`
--
DROP TABLE IF EXISTS `maintenes_ruang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_ruang` AS select `maintenes_komputer`.`tanggal` AS `tanggal`,`maintenes_komputer`.`id_ruang` AS `id_ruang`,`maintenes_komputer`.`id_komputer` AS `id_komputer`,`maintenes_komputer`.`kondisi` AS `kondisi`,`maintenes_komputer`.`tindakan` AS `tindakan`,`maintenes_komputer`.`spesifikasi` AS `spesifikasi`,`maintenes_komputer`.`hdd` AS `hdd`,`maintenes_komputer`.`ram` AS `ram`,`tbl_ruang`.`id_tehnisi` AS `id_tehnisi`,`tbl_ruang`.`nama_ruang` AS `nama_ruang` from (`maintenes_komputer` join `tbl_ruang`) where (`maintenes_komputer`.`id_ruang` = `tbl_ruang`.`id_ruang`);

-- --------------------------------------------------------

--
-- Struktur untuk view `maintenes_soft`
--
DROP TABLE IF EXISTS `maintenes_soft`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_soft` AS select `tbl_maintenes_soft`.`tgl` AS `tgl`,`tbl_maintenes_soft`.`id_ruang` AS `id_ruang`,`tbl_maintenes_soft`.`id_komputer` AS `id_komputer`,`tbl_maintenes_soft`.`ket` AS `ket`,`tbl_maintenes_soft`.`ket_pr` AS `ket_pr`,`tbl_maintenes_soft`.`ket_of` AS `ket_of`,`tbl_software`.`windows` AS `windows`,`tbl_software`.`antivirus` AS `antivirus`,`tbl_software`.`program_web` AS `program_web`,`tbl_software`.`program_office` AS `program_office` from (`tbl_maintenes_soft` join `tbl_software`) where (`tbl_maintenes_soft`.`id_komputer` = `tbl_software`.`id_komputer`);

-- --------------------------------------------------------

--
-- Struktur untuk view `maintenes_soft_ruang`
--
DROP TABLE IF EXISTS `maintenes_soft_ruang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_soft_ruang` AS select `maintenes_soft`.`tgl` AS `tgl`,`maintenes_soft`.`id_ruang` AS `id_ruang`,`maintenes_soft`.`id_komputer` AS `id_komputer`,`maintenes_soft`.`ket` AS `ket`,`maintenes_soft`.`ket_pr` AS `ket_pr`,`maintenes_soft`.`ket_of` AS `ket_of`,`maintenes_soft`.`windows` AS `windows`,`maintenes_soft`.`antivirus` AS `antivirus`,`maintenes_soft`.`program_web` AS `program_web`,`maintenes_soft`.`program_office` AS `program_office`,`tbl_ruang`.`id_tehnisi` AS `id_tehnisi`,`tbl_ruang`.`nama_ruang` AS `nama_ruang` from (`maintenes_soft` join `tbl_ruang`) where (`maintenes_soft`.`id_ruang` = `tbl_ruang`.`id_ruang`);

-- --------------------------------------------------------

--
-- Struktur untuk view `maintenes_soft_tehnisi`
--
DROP TABLE IF EXISTS `maintenes_soft_tehnisi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_soft_tehnisi` AS select `maintenes_soft_ruang`.`tgl` AS `tgl`,`maintenes_soft_ruang`.`id_ruang` AS `id_ruang`,`maintenes_soft_ruang`.`id_komputer` AS `id_komputer`,`maintenes_soft_ruang`.`ket` AS `ket`,`maintenes_soft_ruang`.`ket_pr` AS `ket_pr`,`maintenes_soft_ruang`.`ket_of` AS `ket_of`,`maintenes_soft_ruang`.`windows` AS `windows`,`maintenes_soft_ruang`.`antivirus` AS `antivirus`,`maintenes_soft_ruang`.`program_web` AS `program_web`,`maintenes_soft_ruang`.`program_office` AS `program_office`,`maintenes_soft_ruang`.`id_tehnisi` AS `id_tehnisi`,`maintenes_soft_ruang`.`nama_ruang` AS `nama_ruang`,`tbl_info_tehnisi`.`nama_tehnisi` AS `nama_tehnisi` from (`maintenes_soft_ruang` join `tbl_info_tehnisi`) where (`maintenes_soft_ruang`.`id_tehnisi` = `tbl_info_tehnisi`.`id_tehnisi`);

-- --------------------------------------------------------

--
-- Struktur untuk view `maintenes_tehnisi`
--
DROP TABLE IF EXISTS `maintenes_tehnisi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_tehnisi` AS select `maintenes_ruang`.`tanggal` AS `tanggal`,`maintenes_ruang`.`id_ruang` AS `id_ruang`,`maintenes_ruang`.`id_komputer` AS `id_komputer`,`maintenes_ruang`.`kondisi` AS `kondisi`,`maintenes_ruang`.`tindakan` AS `tindakan`,`maintenes_ruang`.`spesifikasi` AS `spesifikasi`,`maintenes_ruang`.`hdd` AS `hdd`,`maintenes_ruang`.`ram` AS `ram`,`maintenes_ruang`.`id_tehnisi` AS `id_tehnisi`,`maintenes_ruang`.`nama_ruang` AS `nama_ruang`,`tbl_info_tehnisi`.`nama_tehnisi` AS `nama_tehnisi` from (`maintenes_ruang` join `tbl_info_tehnisi`) where (`maintenes_ruang`.`id_tehnisi` = `tbl_info_tehnisi`.`id_tehnisi`);

-- --------------------------------------------------------

--
-- Struktur untuk view `ruang_komputer`
--
DROP TABLE IF EXISTS `ruang_komputer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ruang_komputer` AS select `tbl_ruang`.`id_ruang` AS `id_ruang`,`tbl_ruang`.`id_tehnisi` AS `id_tehnisi`,`tbl_ruang`.`nama_ruang` AS `nama_ruang`,`tbl_komputer`.`id_komputer` AS `id_komputer`,`tbl_komputer`.`spesifikasi` AS `spesifikasi`,`tbl_komputer`.`hdd` AS `hdd`,`tbl_komputer`.`ram` AS `ram` from (`tbl_ruang` left join `tbl_komputer` on((`tbl_ruang`.`id_ruang` = `tbl_komputer`.`id_ruang`)));

-- --------------------------------------------------------

--
-- Struktur untuk view `ruang_tehnisi`
--
DROP TABLE IF EXISTS `ruang_tehnisi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ruang_tehnisi` AS select `ruang_komputer`.`id_ruang` AS `id_ruang`,`ruang_komputer`.`id_tehnisi` AS `id_tehnisi`,`ruang_komputer`.`nama_ruang` AS `nama_ruang`,`ruang_komputer`.`id_komputer` AS `id_komputer`,`ruang_komputer`.`spesifikasi` AS `spesifikasi`,`ruang_komputer`.`hdd` AS `hdd`,`ruang_komputer`.`ram` AS `ram`,`tbl_info_tehnisi`.`nama_tehnisi` AS `nama_tehnisi`,`tbl_info_tehnisi`.`alamat` AS `alamat`,`tbl_info_tehnisi`.`password` AS `password` from (`ruang_komputer` left join `tbl_info_tehnisi` on((`ruang_komputer`.`id_tehnisi` = `tbl_info_tehnisi`.`id_tehnisi`)));

-- --------------------------------------------------------

--
-- Struktur untuk view `software_komputer`
--
DROP TABLE IF EXISTS `software_komputer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `software_komputer` AS select `komputer_software`.`id_ruang` AS `id_ruang`,`komputer_software`.`id_komputer` AS `id_komputer`,`komputer_software`.`spesifikasi` AS `spesifikasi`,`komputer_software`.`hdd` AS `hdd`,`komputer_software`.`ram` AS `ram`,`komputer_software`.`windows` AS `windows`,`komputer_software`.`antivirus` AS `antivirus`,`komputer_software`.`program_web` AS `program_web`,`komputer_software`.`program_office` AS `program_office`,`tbl_ruang`.`id_tehnisi` AS `id_tehnisi`,`tbl_ruang`.`nama_ruang` AS `nama_ruang` from (`komputer_software` join `tbl_ruang`) where (`komputer_software`.`id_ruang` = `tbl_ruang`.`id_ruang`);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_info_admin`
--
ALTER TABLE `tbl_info_admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_info_tehnisi`
--
ALTER TABLE `tbl_info_tehnisi`
 ADD PRIMARY KEY (`id_tehnisi`);

--
-- Indexes for table `tbl_komputer`
--
ALTER TABLE `tbl_komputer`
 ADD PRIMARY KEY (`id_komputer`), ADD KEY `id_ruang` (`id_ruang`);

--
-- Indexes for table `tbl_maintenes`
--
ALTER TABLE `tbl_maintenes`
 ADD KEY `id_ruang` (`id_ruang`), ADD KEY `id_komputer` (`id_komputer`);

--
-- Indexes for table `tbl_maintenes_soft`
--
ALTER TABLE `tbl_maintenes_soft`
 ADD KEY `id_ruang` (`id_ruang`), ADD KEY `id_komputer` (`id_komputer`);

--
-- Indexes for table `tbl_ruang`
--
ALTER TABLE `tbl_ruang`
 ADD PRIMARY KEY (`id_tehnisi`,`id_ruang`);

--
-- Indexes for table `tbl_software`
--
ALTER TABLE `tbl_software`
 ADD PRIMARY KEY (`id_komputer`);

--
-- Indexes for table `tbl_tehnisi`
--
ALTER TABLE `tbl_tehnisi`
 ADD PRIMARY KEY (`id_tehnisi`);

--
-- Indexes for table `tbl_tindakan`
--
ALTER TABLE `tbl_tindakan`
 ADD PRIMARY KEY (`id_tindakan`);

--
-- Indexes for table `test_komputer`
--
ALTER TABLE `test_komputer`
 ADD PRIMARY KEY (`id_ruang`), ADD KEY `id_komputer` (`id_komputer`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
