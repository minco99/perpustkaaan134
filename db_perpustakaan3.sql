-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2020 at 03:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus_jatim`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(2) NOT NULL,
  `nm_admin` varchar(25) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `password_admin` varchar(200) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status_admin` enum('Aktif','Tidak Aktif') NOT NULL,
  `tgl_gabung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nm_admin`, `email_admin`, `password_admin`, `role_id`, `status_admin`, `tgl_gabung`) VALUES
(1, 'Dzulfikar Fitriana', 'admin@gmail.com', '$2y$10$HEUcNZ2VCRpCPeR0CJwRhOssgatXk7buzuKH.D85TFimO.O3Wpzl2', 1, 'Aktif', '2020-04-04'),
(2, 'Nurfadilah Fitriani', 'petugas@gmail.com', '$2y$10$mFaSxdpVb.Y3klqL.QxPu.gZB6xOpX4muTlhdFlF4pAPPq1DEw/Iu', 2, 'Aktif', '2020-04-04'),
(3, 'Fikri Firmansyah', 'kepala@gmail.com', '$2y$10$.mIQq5bNFj4ZidI1Lf9XEutvRcErecUNlat3byHOA9SEGNGqn6uP2', 3, 'Aktif', '2020-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` varchar(25) NOT NULL,
  `nm_anggota` varchar(50) NOT NULL,
  `jk_anggota` enum('Laki-laki','Perempuan') NOT NULL,
  `almt_anggota` varchar(100) NOT NULL,
  `email_anggota` varchar(100) NOT NULL,
  `hp_anggota` varchar(13) NOT NULL,
  `pass_anggota` varchar(200) NOT NULL,
  `smt_anggota` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_anggota`, `nm_anggota`, `jk_anggota`, `almt_anggota`, `email_anggota`, `hp_anggota`, `pass_anggota`, `smt_anggota`, `id_prodi`, `tgl_daftar`) VALUES
('30814160', 'Fikri Firmansyah', 'Laki-laki', 'Majalengka', 'fikri@gmail.com', '089777888333', '$2y$10$f.N86l3cXXesxhCpvJJjP.ghhpcbSX/5LjwEIyi2oTWdS3mcdQzgu', 1, 1, '2020-04-11 12:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` char(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isbn` varchar(40) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `halaman` int(4) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `thn_terbit` char(4) NOT NULL,
  `sinopsis` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `ebook` varchar(100) NOT NULL,
  `id_kategori` char(3) NOT NULL,
  `id_penerbit` char(3) NOT NULL,
  `id_rak` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `isbn`, `pengarang`, `halaman`, `jumlah`, `thn_terbit`, `sinopsis`, `gambar`, `ebook`, `id_kategori`, `id_penerbit`, `id_rak`) VALUES
('B0001', 'Membangun Aplikasi Dengan PHP, Codeigniter, Dan Ajax', '978-602-04-8600-0', 'Sandi F R Dan Uus R', 192, 11, '2018', 'Pemahaman konsep ujian online, pemahaman struktur database ujian online, penggunaan dasar codeigniter, penggunaan dasar ajax.', '', '26d42cddc856bfe6f4e89b1d98322343.pdf', 'K01', 'P02', 1),
('B0002', 'Sistem Informasi Perpustakaan', '978-602-6948-10-6', 'Nunafit Nugroho', 384, -2, '2016', 'Manajemen data penerbit, manajemen data kategori, manajemen data buku, dan lain-lain.', '', 'c4cf7f6e58e9edbf7587456341cbec5f.pdf', 'K01', 'P01', 1),
('B0003', 'Buku Pintar Web Design Dan SEO Wordpress 5 Plus', '978-623-00-0148-2', 'Su Rahman', 410, -2, '2019', 'Wordpress adalah CMS paling populer sekarang ini.', '', '', 'K01', 'P02', 1),
('B0004', 'Pengenalan Teknologi Informasi', '978-602-04-8600-1', 'Abdul K', 100, 0, '2003', 'Belajar ilmu', '', '', 'K08', 'P04', 1),
('B0005', 'Pengenalan Sistem Informasi', '978-602-04-8600-3', 'Abdul K', 150, 0, '2003', 'Belajar sistem informasi', '', '', 'K01', 'P04', 1),
('B0006', 'Belajar Bahasa Indonesia', '978-604-03-98796-2', 'Dzulfikar', 50, 0, '2020', 'Belajar mencari inspirasi sambil ngopi di malam hari', '', '', 'K06', 'P02', 1),
('B0007', 'Belajar Mencari Inspirasi Sambil Ngopi Di Malam Hari', '978-604-04-8976-0', 'Dzulfikar Cs', 100, 0, '2020', 'Belajar mencari inspirasi sambil ngopi di malam hari', '', '', 'K02', 'P03', 1),
('B0008', 'Belajar Mewujudkan Mimpi-mimpi Kecil', '978-604-09-5555-9', 'Dzulfikar Cs', 2, -1, '2020', 'Belajar mewujudkan mimpi-mimpi kecil', '', '', 'K12', 'P03', 1),
('B0009', 'Ngopi Di Malam Hari Sambil Nyari Inspirasi', '123-321-345-51-309', 'Dzulfikar', 1, -1, '2020', 'Cerita tentang ngopi', '', '', 'K02', 'P15', 1),
('B0010', 'Sistem Imunisasi', '123-321-345-51-309', 'Dzulfikar', 44, 42, '2020', 'Sistem imuni', '', '', 'K01', 'P02', 1),
('B0011', 'Sistem Informasi Akademik Berbasis Web', '123-321-345-51-309', 'Dzulfikar', 2, 0, '2020', 'Sistem informasi akademik berbasis web', '', '', 'K01', 'P16', 1),
('B0012', 'Sistem Pakar Diagnosa Penyakit Diabetes Dengan Metode Certainty Factor Berbasis Web', '123-321-345-51-309', 'Dzulfikar', 2, -1, '2020', 'Sistem pakar diagnosa penyakit diabetes dengan metode certainty factor berbasis web', '', '', 'K01', 'P02', 1),
('B0013', 'Sistem Informasi Pendaftaran Siswa Baru Berbasis Web', '123-321-345-51-309', 'Dzulfikar', 44, 38, '2020', 'Sistem informasi pendaftaran siswa baru berbasis web', '', '', 'K01', 'P04', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku_keluar`
--

CREATE TABLE `tb_buku_keluar` (
  `id_bkeluar` int(11) NOT NULL,
  `tgl_bkeluar` date NOT NULL,
  `id_buku` char(5) NOT NULL,
  `jml_bkeluar` int(11) NOT NULL,
  `ket_bkeluar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku_masuk`
--

CREATE TABLE `tb_buku_masuk` (
  `id_bmasuk` int(11) NOT NULL,
  `tgl_bmasuk` date NOT NULL,
  `id_buku` char(5) NOT NULL,
  `asal_bmasuk` varchar(100) NOT NULL,
  `jml_bmasuk` int(11) NOT NULL,
  `ket_bmasuk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku_tamu`
--

CREATE TABLE `tb_buku_tamu` (
  `id_tamu` int(11) NOT NULL,
  `tgl_tamu` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_anggota` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_pinjam`
--

CREATE TABLE `tb_detail_pinjam` (
  `id_peminjaman` char(6) NOT NULL,
  `id_buku` char(5) NOT NULL,
  `qty` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_detail_pinjam`
--

INSERT INTO `tb_detail_pinjam` (`id_peminjaman`, `id_buku`, `qty`) VALUES
('P00001', 'B0001', 1),
('P00001', 'B0002', 1),
('P00002', 'B0001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurnal`
--

CREATE TABLE `tb_jurnal` (
  `id_jurnal` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `nm_jurnal` varchar(150) NOT NULL,
  `url_jurnal` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jurnal`
--

INSERT INTO `tb_jurnal` (`id_jurnal`, `id_prodi`, `nm_jurnal`, `url_jurnal`) VALUES
(5, 3, 'TEFLIN Journal', 'http://journal.teflin.org/index.php/journal'),
(6, 2, 'The Journal of Asia TEFL', 'http://journal.asiatefl.org/'),
(7, 1, 'Journal of Economics, Business & Accountancy Ventura', 'https://journal.perbanas.ac.id/index.php/jebav/issue/archive');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` char(3) NOT NULL,
  `nm_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nm_kategori`) VALUES
('K01', 'Sistem Informasi'),
('K02', 'Umum'),
('K03', 'Filsafat Dan Psikologi'),
('K04', 'Agama'),
('K05', 'Sosial'),
('K06', 'Bahasa'),
('K07', 'Sains Dan Matematika'),
('K08', 'Teknologi'),
('K09', 'Seni Dan Rekreasi'),
('K10', 'Literatur Dan Sastra'),
('K11', 'Sejarah Dan Geografi'),
('K12', 'Khusus Pemula'),
('K13', 'Khusus Master'),
('K14', 'Khusus Suhu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `menu_url` varchar(100) NOT NULL,
  `menu_icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`menu_id`, `menu_name`, `menu_url`, `menu_icon`) VALUES
(1, 'Dashboard', 'admin/dashboard', 'fa fa-dashboard'),
(2, 'Inventori Buku', '#', 'fa fa-book'),
(3, 'Data Pengguna', 'admin/pengguna', 'fa fa-user'),
(4, 'Data Master', '#', 'fa fa-edit'),
(5, 'Data Transaksi', '#', 'fa fa-laptop'),
(6, 'Laporan', '#', 'fa fa-line-chart'),
(7, 'Pengaturan', '#', 'fa fa-gear');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `id_peminjaman` char(6) NOT NULL,
  `id_anggota` varchar(25) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `status` enum('Pinjam','Kembali','Menunggu Verifikasi') NOT NULL,
  `perpanjang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`id_peminjaman`, `id_anggota`, `tgl_pinjam`, `tgl_kembali`, `keterangan`, `status`, `perpanjang`) VALUES
('P00001', '30814160', '2020-04-11', '2020-04-16', 'Pinjam', 'Kembali', 1),
('P00002', '30814160', '2020-04-21', '2020-04-23', 'Wokeh', 'Pinjam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penerbit`
--

CREATE TABLE `tb_penerbit` (
  `id_penerbit` char(3) NOT NULL,
  `nm_penerbit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penerbit`
--

INSERT INTO `tb_penerbit` (`id_penerbit`, `nm_penerbit`) VALUES
('P01', 'Gava Media'),
('P02', 'Kompas Gramedia Building'),
('P03', 'Elexmedia Komputindo'),
('P04', 'Andi Publisher'),
('P05', 'Gagas Media'),
('P06', 'Gramedia Widia Sarana Indonesia (Grasindo)'),
('P07', 'Gramedia Pustaka Utama'),
('P08', 'Agro Media'),
('P09', 'Erlangga'),
('P10', 'Mizan'),
('P11', 'Andi Offset'),
('P12', 'As Books'),
('P13', 'Balai Pustaka'),
('P14', 'Galang Press'),
('P15', 'Dzulfikar Media Cs'),
('P16', 'Fikri Media Cetak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengembalian`
--

CREATE TABLE `tb_pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` char(6) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `denda` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `id_prodi` int(11) NOT NULL,
  `nm_prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`id_prodi`, `nm_prodi`) VALUES
(1, 'Sistem Informasi'),
(2, 'Sistem Komputer'),
(3, 'Sistem Akuntansi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rak`
--

CREATE TABLE `tb_rak` (
  `id_rak` int(3) NOT NULL,
  `nm_rak` varchar(10) NOT NULL,
  `ket_rak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rak`
--

INSERT INTO `tb_rak` (`id_rak`, `nm_rak`, `ket_rak`) VALUES
(1, 'A01', 'Sistem Informasi'),
(3, 'A02', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_set_pinjam`
--

CREATE TABLE `tb_set_pinjam` (
  `sp_id` int(11) NOT NULL,
  `sp_tgl` date NOT NULL,
  `maks_lama_pinjam` int(11) NOT NULL,
  `maks_buku_pinjam` int(11) NOT NULL,
  `sp_denda` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_set_pinjam`
--

INSERT INTO `tb_set_pinjam` (`sp_id`, `sp_tgl`, `maks_lama_pinjam`, `maks_buku_pinjam`, `sp_denda`) VALUES
(1, '2020-04-06', 2, 5, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sub_menu`
--

CREATE TABLE `tb_sub_menu` (
  `sub_menu_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sub_menu_name` varchar(50) NOT NULL,
  `sub_menu_url` varchar(100) NOT NULL,
  `sub_menu_icon` varchar(50) NOT NULL,
  `sub_menu_numb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sub_menu`
--

INSERT INTO `tb_sub_menu` (`sub_menu_id`, `menu_id`, `sub_menu_name`, `sub_menu_url`, `sub_menu_icon`, `sub_menu_numb`) VALUES
(1, 4, 'Anggota', 'admin/anggota', 'fa fa-circle-o', 1),
(2, 4, 'Buku', 'admin/buku', 'fa fa-circle-o', 2),
(3, 4, 'Kategori', 'admin/kategori', 'fa fa-circle-o', 3),
(4, 4, 'Penerbit', 'admin/penerbit', 'fa fa-circle-o', 4),
(5, 4, 'Rak', 'admin/rak', 'fa fa-circle-o', 5),
(6, 5, 'Peminjaman Buku', 'admin/peminjaman', 'fa fa-circle-o', 0),
(7, 5, 'Pengembalian Buku', 'admin/pengembalian', 'fa fa-circle-o', 0),
(8, 6, 'Buku Masuk', 'admin/laporan', 'fa fa-circle-o', 1),
(9, 6, 'Peminjaman Buku', 'admin/laporan/peminjaman', 'fa fa-circle-o', 3),
(13, 7, 'Menu', 'admin/menu', 'fa fa-circle-o', 2),
(14, 7, 'Menu Pengguna', 'admin/role', 'fa fa-circle-o', 3),
(21, 2, 'Buku Masuk', 'admin/inventori', 'fa fa-circle-o', 0),
(22, 2, 'Buku Keluar', 'admin/inventori/buku_keluar', 'fa fa-circle-o', 0),
(23, 6, 'Buku Keluar', 'admin/laporan/buku_keluar', 'fa fa-circle-o', 2),
(25, 7, 'Profil Website', 'admin/wp', 'fa fa-circle-o', 1),
(26, 6, 'Pengembalian Buku', 'admin/laporan/pengembalian', 'fa fa-circle-o', 4),
(27, 6, 'Pengunjung', 'admin/laporan/pengunjung', 'fa fa-circle-o', 5),
(28, 7, 'Peminjaman', 'admin/sp', 'fa fa-circle-o', 4),
(29, 4, 'Program Studi', 'admin/prodi', 'fa fa-circle-o', 6),
(30, 4, 'Jurnal', 'admin/jurnal', 'fa fa-circle-o', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tmp_token`
--

CREATE TABLE `tb_tmp_token` (
  `id_token` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_access`
--

CREATE TABLE `tb_user_access` (
  `access_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user_access`
--

INSERT INTO `tb_user_access` (`access_id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 3, 1),
(9, 3, 6),
(10, 2, 1),
(11, 2, 2),
(12, 2, 4),
(13, 2, 5),
(17, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_role`
--

CREATE TABLE `tb_user_role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user_role`
--

INSERT INTO `tb_user_role` (`role_id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Petugas'),
(3, 'Kepala');

-- --------------------------------------------------------

--
-- Table structure for table `tb_web_profil`
--

CREATE TABLE `tb_web_profil` (
  `wp_id` int(11) NOT NULL,
  `wp_tgl` timestamp NOT NULL DEFAULT current_timestamp(),
  `wp_logo` varchar(100) NOT NULL,
  `wp_favicon` varchar(100) NOT NULL,
  `wp_judul` varchar(50) NOT NULL,
  `wp_nama` varchar(100) NOT NULL,
  `wp_alamat` text NOT NULL,
  `wp_telp` varchar(30) NOT NULL,
  `wp_hp` varchar(13) NOT NULL,
  `wp_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_web_profil`
--

INSERT INTO `tb_web_profil` (`wp_id`, `wp_tgl`, `wp_logo`, `wp_favicon`, `wp_judul`, `wp_nama`, `wp_alamat`, `wp_telp`, `wp_hp`, `wp_email`) VALUES
(1, '2020-04-03 06:59:42', 'b313bc03cb620888276454e16bdc58a3.png', 'f836681cd5a99e10d4371442111d1572.png', 'Perpustakaan', 'Universitas Terbuka Indonesia', 'Jl. Pahalawan Kemerdekaan Indonesia No. 45', '021 9999999', '082217604816', 'dzulfikarnurfikri01@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_penerbit` (`id_penerbit`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_rak` (`id_rak`);

--
-- Indexes for table `tb_buku_keluar`
--
ALTER TABLE `tb_buku_keluar`
  ADD PRIMARY KEY (`id_bkeluar`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `tb_buku_masuk`
--
ALTER TABLE `tb_buku_masuk`
  ADD PRIMARY KEY (`id_bmasuk`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `tb_buku_tamu`
--
ALTER TABLE `tb_buku_tamu`
  ADD PRIMARY KEY (`id_tamu`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `tb_detail_pinjam`
--
ALTER TABLE `tb_detail_pinjam`
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_peminjaman` (`id_peminjaman`);

--
-- Indexes for table `tb_jurnal`
--
ALTER TABLE `tb_jurnal`
  ADD PRIMARY KEY (`id_jurnal`),
  ADD KEY `tb_jurnal_online_ibfk_1` (`id_prodi`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `tb_penerbit`
--
ALTER TABLE `tb_penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indexes for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `tb_rak`
--
ALTER TABLE `tb_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- Indexes for table `tb_set_pinjam`
--
ALTER TABLE `tb_set_pinjam`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `tb_sub_menu`
--
ALTER TABLE `tb_sub_menu`
  ADD PRIMARY KEY (`sub_menu_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `tb_tmp_token`
--
ALTER TABLE `tb_tmp_token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indexes for table `tb_user_access`
--
ALTER TABLE `tb_user_access`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `menu_id_2` (`menu_id`);

--
-- Indexes for table `tb_user_role`
--
ALTER TABLE `tb_user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tb_web_profil`
--
ALTER TABLE `tb_web_profil`
  ADD PRIMARY KEY (`wp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_buku_keluar`
--
ALTER TABLE `tb_buku_keluar`
  MODIFY `id_bkeluar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_buku_masuk`
--
ALTER TABLE `tb_buku_masuk`
  MODIFY `id_bmasuk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_buku_tamu`
--
ALTER TABLE `tb_buku_tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jurnal`
--
ALTER TABLE `tb_jurnal`
  MODIFY `id_jurnal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_rak`
--
ALTER TABLE `tb_rak`
  MODIFY `id_rak` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_set_pinjam`
--
ALTER TABLE `tb_set_pinjam`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_sub_menu`
--
ALTER TABLE `tb_sub_menu`
  MODIFY `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_tmp_token`
--
ALTER TABLE `tb_tmp_token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_user_access`
--
ALTER TABLE `tb_user_access`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_user_role`
--
ALTER TABLE `tb_user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_web_profil`
--
ALTER TABLE `tb_web_profil`
  MODIFY `wp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD CONSTRAINT `tb_admin_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_user_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD CONSTRAINT `tb_buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_buku_ibfk_2` FOREIGN KEY (`id_penerbit`) REFERENCES `tb_penerbit` (`id_penerbit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_buku_ibfk_3` FOREIGN KEY (`id_rak`) REFERENCES `tb_rak` (`id_rak`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_buku_keluar`
--
ALTER TABLE `tb_buku_keluar`
  ADD CONSTRAINT `tb_buku_keluar_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `tb_buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_buku_masuk`
--
ALTER TABLE `tb_buku_masuk`
  ADD CONSTRAINT `tb_buku_masuk_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `tb_buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_buku_tamu`
--
ALTER TABLE `tb_buku_tamu`
  ADD CONSTRAINT `tb_buku_tamu_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `tb_anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_detail_pinjam`
--
ALTER TABLE `tb_detail_pinjam`
  ADD CONSTRAINT `tb_detail_pinjam_ibfk_1` FOREIGN KEY (`id_peminjaman`) REFERENCES `tb_peminjaman` (`id_peminjaman`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_detail_pinjam_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `tb_buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_jurnal`
--
ALTER TABLE `tb_jurnal`
  ADD CONSTRAINT `tb_jurnal_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD CONSTRAINT `tb_peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `tb_anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD CONSTRAINT `tb_pengembalian_ibfk_1` FOREIGN KEY (`id_peminjaman`) REFERENCES `tb_peminjaman` (`id_peminjaman`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pengembalian_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `tb_admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
