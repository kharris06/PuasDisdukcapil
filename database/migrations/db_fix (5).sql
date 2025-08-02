-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2023 pada 11.20
-- Versi server: 10.11.2-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fix`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_produk_keluar`
--

CREATE TABLE `dim_produk_keluar` (
  `sk_produk_keluar` int(11) DEFAULT NULL,
  `kode_produk` varchar(255) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `jumlah_keluar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dim_produk_keluar`
--

INSERT INTO `dim_produk_keluar` (`sk_produk_keluar`, `kode_produk`, `nama_produk`, `kategori`, `jumlah_keluar`) VALUES
(1, 'TP001', 'Amelia Tote', 'Totebag', 110),
(2, 'TP002', 'Benjamin Selempang', 'Tas Selempang', 105),
(3, 'TP003', 'Chloe Ransel', 'Tas Ransel', 105),
(4, 'TP004', 'Daniel Pinggang', 'Tas Pinggang', 115),
(5, 'TP005', 'Emily Dompet', 'Dompet', 90),
(6, 'TP006', 'Felix Tote', 'Totebag', 100),
(7, 'TP007', 'Grace Selempang', 'Tas Selempang', 95),
(8, 'TP008', 'Henry Ransel', 'Tas Ransel', 75),
(9, 'TP009', 'Isabella Pinggang', 'Tas Pinggang', 90),
(10, 'TP010', 'Jack Dompet', 'Dompet', 95),
(11, 'TP011', 'Kayla Tote', 'Totebag', 110),
(12, 'TP012', 'Liam Selempang', 'Tas Selempang', 80),
(13, 'TP013', 'Mia Ransel', 'Tas Ransel', 95),
(14, 'TP014', 'Noah Pinggang', 'Tas Pinggang', 95),
(15, 'TP015', 'Olivia Dompet', 'Dompet', 75),
(16, 'TP016', 'Peyton Tote', 'Totebag', 85),
(17, 'TP017', 'Quinn Selempang', 'Tas Selempang', 105),
(18, 'TP018', 'Riley Ransel', 'Tas Ransel', 120),
(19, 'TP019', 'Sophia Pinggang', 'Tas Pinggang', 115),
(20, 'TP020', 'Theo Dompet', 'Dompet', 85),
(21, 'TP021', 'Violet Tote', 'Totebag', 120),
(22, 'TP022', 'Wyatt Selempang', 'Tas Selempang', 100),
(23, 'TP023', 'Xander Ransel', 'Tas Ransel', 100),
(24, 'TP024', 'Yara Pinggang', 'Tas Pinggang', 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dim_produk_masuk`
--

CREATE TABLE `dim_produk_masuk` (
  `sk_produk_masuk` int(11) DEFAULT NULL,
  `kode_produk` varchar(255) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `jumlah_masuk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dim_produk_masuk`
--

INSERT INTO `dim_produk_masuk` (`sk_produk_masuk`, `kode_produk`, `nama_produk`, `kategori`, `jumlah_masuk`) VALUES
(1, 'TP001', 'Amelia Tote', 'Totebag', 140),
(2, 'TP002', 'Benjamin Selempang', 'Tas Selempang', 140),
(3, 'TP003', 'Chloe Ransel', 'Tas Ransel', 120),
(4, 'TP004', 'Daniel Pinggang', 'Tas Pinggang', 190),
(5, 'TP005', 'Emily Dompet', 'Dompet', 120),
(6, 'TP006', 'Felix Tote', 'Totebag', 190),
(7, 'TP007', 'Grace Selempang', 'Tas Selempang', 180),
(8, 'TP008', 'Henry Ransel', 'Tas Ransel', 180),
(9, 'TP009', 'Isabella Pinggang', 'Tas Pinggang', 170),
(10, 'TP010', 'Jack Dompet', 'Dompet', 110),
(11, 'TP011', 'Kayla Tote', 'Totebag', 100),
(12, 'TP012', 'Liam Selempang', 'Tas Selempang', 120),
(13, 'TP013', 'Mia Ransel', 'Tas Ransel', 140),
(14, 'TP014', 'Noah Pinggang', 'Tas Pinggang', 160),
(15, 'TP015', 'Olivia Dompet', 'Dompet', 110),
(16, 'TP016', 'Peyton Tote', 'Totebag', 130),
(17, 'TP017', 'Quinn Selempang', 'Tas Selempang', 160),
(18, 'TP018', 'Riley Ransel', 'Tas Ransel', 200),
(19, 'TP019', 'Sophia Pinggang', 'Tas Pinggang', 160),
(20, 'TP020', 'Theo Dompet', 'Dompet', 170),
(21, 'TP021', 'Violet Tote', 'Totebag', 200),
(22, 'TP022', 'Wyatt Selempang', 'Tas Selempang', 150),
(23, 'TP023', 'Xander Ransel', 'Tas Ransel', 150),
(24, 'TP024', 'Yara Pinggang', 'Tas Pinggang', 170);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pesan` int(11) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `waktu_pesan` datetime NOT NULL DEFAULT current_timestamp(),
  `jumlah_pesan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesan`, `kode_produk`, `waktu_pesan`, `jumlah_pesan`) VALUES
(1, 'P003', '2023-09-01 00:00:00', 500),
(2, 'P008', '2023-09-01 00:00:00', 500),
(3, 'P004', '2023-09-01 00:00:00', 500),
(4, 'P009', '2023-09-01 00:00:00', 500),
(5, 'P001', '2023-09-01 00:00:00', 500),
(6, 'P006', '2023-09-01 00:00:00', 500),
(7, 'P002', '2023-09-01 00:00:00', 500),
(8, 'P007', '2023-09-01 00:00:00', 500),
(9, 'P005', '2023-09-01 00:00:00', 500),
(10, 'P010', '2023-09-01 00:00:00', 500),
(11, 'P001', '2023-10-01 00:00:00', 320),
(12, 'P002', '2023-10-01 00:00:00', 320),
(13, 'P010', '2023-10-01 00:00:00', 320),
(14, 'P003', '2023-10-01 00:00:00', 250),
(15, 'P008', '2023-10-01 00:00:00', 250),
(16, 'P004', '2023-10-01 00:00:00', 250),
(17, 'P009', '2023-10-01 00:00:00', 250),
(18, 'P006', '2023-10-01 00:00:00', 250),
(19, 'P007', '2023-10-01 00:00:00', 250),
(20, 'P005', '2023-10-01 00:00:00', 250),
(21, 'P002', '2023-11-01 00:00:00', 300),
(22, 'P007', '2023-11-01 00:00:00', 400),
(23, 'P001', '2023-11-01 00:00:00', 200),
(24, 'P003', '2023-11-01 00:00:00', 200),
(25, 'P004', '2023-11-01 00:00:00', 200),
(26, 'P005', '2023-11-01 00:00:00', 200),
(27, 'P006', '2023-11-01 00:00:00', 200),
(28, 'P008', '2023-11-01 00:00:00', 200),
(29, 'P009', '2023-11-01 00:00:00', 200),
(30, 'P010', '2023-11-01 00:00:00', 200),
(31, 'P008', '2023-12-01 00:00:00', 200),
(32, 'P003', '2023-12-01 00:00:00', 300),
(33, 'P009', '2023-12-01 00:00:00', 300),
(34, 'P007', '2023-12-01 00:00:00', 300),
(35, 'P005', '2023-12-01 00:00:00', 300),
(36, 'P001', '2023-12-01 00:00:00', 200),
(37, 'P002', '2023-12-01 00:00:00', 200),
(38, 'P004', '2023-12-01 00:00:00', 200),
(39, 'P005', '2023-12-01 00:00:00', 200),
(40, 'P006', '2023-12-01 00:00:00', 200),
(41, 'P010', '2023-12-01 00:00:00', 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL,
  `lokasi_rak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama_produk`, `kategori`, `harga_beli`, `harga_jual`, `deskripsi`, `stok`, `lokasi_rak`) VALUES
('P001', 'Taswan Seletan', 'Tas Selempang', 70000, 100000, 'Tas selempang elegan', 213, 'C1'),
('P002', 'Taser Ransel', 'Tas Ransel', 100000, 150000, 'Tas ransel untuk traveler', 194, 'D1'),
('P003', 'Dimas Dompet', 'Dompet', 60000, 90000, 'Dompet kulit dengan design modern', 129, 'A1'),
('P004', 'Toto Tote', 'Tote Bag', 80000, 120000, 'Tote bag multifungsi', 344, 'B1'),
('P005', 'Pinggang Purnomo', 'Tas Pinggang', 50000, 75000, 'Tas pinggang praktis', 322, 'E1'),
('P006', 'Seletan Satya', 'Tas Selempang', 65000, 95000, 'Tas selempang casual', 364, 'C2'),
('P007', 'Ransel Raditya', 'Tas Ransel', 110000, 160000, 'Ransel dengan banyak kompartemen', 449, 'D2'),
('P008', 'Dimas Dompeto', 'Dompet', 55000, 85000, 'Dompet simple namun stylish', 443, 'A2'),
('P009', 'Toto Toteo', 'Tote Bag', 85000, 125000, 'Tote bag dengan motif unik', 104, 'B2'),
('P010', 'Pinggang Putra', 'Tas Pinggang', 52000, 78000, 'Tas pinggang untuk sehari-hari', 284, 'E2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_keluar`
--

CREATE TABLE `produk_keluar` (
  `id_keluar` int(11) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `waktu_keluar` timestamp NOT NULL DEFAULT current_timestamp(),
  `jumlah_keluar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk_keluar`
--

INSERT INTO `produk_keluar` (`id_keluar`, `kode_produk`, `waktu_keluar`, `jumlah_keluar`) VALUES
(1, 'P003', '2023-09-06 17:00:00', 30),
(2, 'P008', '2023-09-06 17:00:00', 25),
(3, 'P004', '2023-09-06 17:00:00', 35),
(4, 'P009', '2023-09-06 17:00:00', 28),
(5, 'P001', '2023-09-07 17:00:00', 40),
(6, 'P006', '2023-09-07 17:00:00', 22),
(7, 'P002', '2023-09-07 17:00:00', 37),
(8, 'P007', '2023-09-07 17:00:00', 32),
(9, 'P005', '2023-09-08 17:00:00', 24),
(10, 'P010', '2023-09-08 17:00:00', 36),
(11, 'P003', '2023-09-08 17:00:00', 29),
(12, 'P008', '2023-09-09 17:00:00', 34),
(13, 'P004', '2023-09-09 17:00:00', 26),
(14, 'P009', '2023-09-09 17:00:00', 31),
(15, 'P001', '2023-09-10 17:00:00', 39),
(16, 'P006', '2023-09-10 17:00:00', 23),
(17, 'P002', '2023-09-10 17:00:00', 38),
(18, 'P007', '2023-09-10 17:00:00', 33),
(19, 'P005', '2023-09-11 17:00:00', 25),
(20, 'P010', '2023-09-11 17:00:00', 35),
(21, 'P003', '2023-09-11 17:00:00', 28),
(22, 'P008', '2023-09-12 17:00:00', 33),
(23, 'P004', '2023-09-12 17:00:00', 27),
(24, 'P009', '2023-09-12 17:00:00', 30),
(25, 'P001', '2023-09-13 17:00:00', 38),
(26, 'P006', '2023-09-13 17:00:00', 24),
(27, 'P002', '2023-09-13 17:00:00', 37),
(28, 'P007', '2023-09-13 17:00:00', 32),
(29, 'P005', '2023-09-14 17:00:00', 26),
(30, 'P010', '2023-09-14 17:00:00', 34),
(31, 'P003', '2023-09-14 17:00:00', 27),
(32, 'P008', '2023-09-15 17:00:00', 32),
(33, 'P004', '2023-09-15 17:00:00', 28),
(34, 'P009', '2023-09-15 17:00:00', 29),
(35, 'P001', '2023-09-16 17:00:00', 37),
(36, 'P006', '2023-09-16 17:00:00', 25),
(37, 'P002', '2023-09-16 17:00:00', 36),
(38, 'P007', '2023-09-16 17:00:00', 31),
(39, 'P005', '2023-09-17 17:00:00', 27),
(40, 'P010', '2023-09-17 17:00:00', 33),
(41, 'P003', '2023-09-17 17:00:00', 26),
(42, 'P008', '2023-09-18 17:00:00', 31),
(43, 'P004', '2023-09-18 17:00:00', 29),
(44, 'P009', '2023-09-18 17:00:00', 28),
(45, 'P001', '2023-09-19 17:00:00', 36),
(46, 'P006', '2023-09-19 17:00:00', 26),
(47, 'P002', '2023-09-19 17:00:00', 35),
(48, 'P007', '2023-09-19 17:00:00', 30),
(49, 'P005', '2023-09-20 17:00:00', 28),
(50, 'P010', '2023-09-20 17:00:00', 32),
(51, 'P003', '2023-09-20 17:00:00', 25),
(52, 'P008', '2023-09-21 17:00:00', 30),
(53, 'P004', '2023-09-21 17:00:00', 30),
(54, 'P009', '2023-09-21 17:00:00', 27),
(55, 'P001', '2023-09-22 17:00:00', 35),
(56, 'P006', '2023-09-22 17:00:00', 27),
(57, 'P002', '2023-09-22 17:00:00', 34),
(58, 'P007', '2023-09-22 17:00:00', 29),
(59, 'P005', '2023-09-23 17:00:00', 29),
(60, 'P010', '2023-09-23 17:00:00', 31),
(61, 'P003', '2023-09-23 17:00:00', 24),
(62, 'P008', '2023-09-24 17:00:00', 29),
(63, 'P004', '2023-09-24 17:00:00', 31),
(64, 'P009', '2023-09-24 17:00:00', 26),
(65, 'P001', '2023-09-25 17:00:00', 34),
(66, 'P006', '2023-09-25 17:00:00', 28),
(67, 'P002', '2023-09-25 17:00:00', 33),
(68, 'P007', '2023-09-25 17:00:00', 28),
(69, 'P005', '2023-09-26 17:00:00', 30),
(70, 'P010', '2023-09-26 17:00:00', 30),
(71, 'P003', '2023-09-26 17:00:00', 23),
(72, 'P008', '2023-09-27 17:00:00', 28),
(73, 'P004', '2023-09-27 17:00:00', 32),
(74, 'P009', '2023-09-27 17:00:00', 25),
(75, 'P001', '2023-09-28 17:00:00', 33),
(76, 'P006', '2023-09-28 17:00:00', 29),
(77, 'P002', '2023-09-28 17:00:00', 32),
(78, 'P007', '2023-09-28 17:00:00', 27),
(79, 'P005', '2023-09-29 17:00:00', 31),
(80, 'P010', '2023-09-29 17:00:00', 29),
(81, 'P003', '2023-09-29 17:00:00', 22),
(82, 'P002', '2023-09-30 17:00:00', 32),
(83, 'P003', '2023-09-30 17:00:00', 28),
(84, 'P004', '2023-09-30 17:00:00', 35),
(85, 'P005', '2023-09-30 17:00:00', 23),
(86, 'P002', '2023-10-01 17:00:00', 37),
(87, 'P003', '2023-10-01 17:00:00', 30),
(88, 'P006', '2023-10-01 17:00:00', 26),
(89, 'P007', '2023-10-01 17:00:00', 40),
(90, 'P008', '2023-10-02 17:00:00', 24),
(91, 'P009', '2023-10-02 17:00:00', 34),
(92, 'P010', '2023-10-02 17:00:00', 29),
(93, 'P001', '2023-10-02 17:00:00', 33),
(94, 'P002', '2023-10-03 17:00:00', 27),
(95, 'P003', '2023-10-03 17:00:00', 38),
(96, 'P004', '2023-10-03 17:00:00', 21),
(97, 'P005', '2023-10-03 17:00:00', 39),
(98, 'P006', '2023-10-04 17:00:00', 28),
(99, 'P007', '2023-10-04 17:00:00', 33),
(100, 'P008', '2023-10-04 17:00:00', 26),
(101, 'P009', '2023-10-04 17:00:00', 39),
(102, 'P010', '2023-10-05 17:00:00', 20),
(103, 'P001', '2023-10-06 17:00:00', 31),
(104, 'P002', '2023-10-06 17:00:00', 25),
(105, 'P003', '2023-10-06 17:00:00', 34),
(106, 'P004', '2023-10-06 17:00:00', 22),
(107, 'P005', '2023-10-07 17:00:00', 37),
(108, 'P006', '2023-10-07 17:00:00', 29),
(109, 'P007', '2023-10-07 17:00:00', 32),
(110, 'P008', '2023-10-07 17:00:00', 23),
(111, 'P009', '2023-10-08 17:00:00', 36),
(112, 'P010', '2023-10-08 17:00:00', 30),
(113, 'P001', '2023-10-08 17:00:00', 35),
(114, 'P002', '2023-10-08 17:00:00', 24),
(115, 'P003', '2023-10-09 17:00:00', 28),
(116, 'P004', '2023-10-09 17:00:00', 39),
(117, 'P005', '2023-10-09 17:00:00', 21),
(118, 'P006', '2023-10-09 17:00:00', 38),
(119, 'P007', '2023-10-10 17:00:00', 27),
(120, 'P008', '2023-10-10 17:00:00', 31),
(121, 'P009', '2023-10-10 17:00:00', 33),
(122, 'P010', '2023-10-10 17:00:00', 26),
(123, 'P001', '2023-10-11 17:00:00', 32),
(124, 'P002', '2023-10-11 17:00:00', 29),
(125, 'P003', '2023-10-11 17:00:00', 34),
(126, 'P004', '2023-10-11 17:00:00', 25),
(127, 'P005', '2023-10-12 17:00:00', 38),
(128, 'P006', '2023-10-12 17:00:00', 23),
(129, 'P007', '2023-10-12 17:00:00', 36),
(130, 'P008', '2023-10-12 17:00:00', 21),
(131, 'P009', '2023-10-13 17:00:00', 33),
(132, 'P010', '2023-10-13 17:00:00', 28),
(133, 'P001', '2023-10-14 17:00:00', 31),
(134, 'P002', '2023-10-14 17:00:00', 29),
(135, 'P010', '2023-10-15 17:00:00', 34),
(136, 'P004', '2023-10-15 17:00:00', 25),
(137, 'P005', '2023-10-16 17:00:00', 38),
(138, 'P006', '2023-10-16 17:00:00', 23),
(139, 'P007', '2023-10-17 17:00:00', 36),
(140, 'P008', '2023-10-17 17:00:00', 21),
(141, 'P009', '2023-10-18 17:00:00', 33),
(142, 'P010', '2023-10-18 17:00:00', 28),
(143, 'P001', '2023-10-19 17:00:00', 32),
(144, 'P002', '2023-10-19 17:00:00', 29),
(145, 'P007', '2023-10-20 17:00:00', 34),
(146, 'P004', '2023-10-20 17:00:00', 25),
(147, 'P005', '2023-10-21 17:00:00', 38),
(148, 'P006', '2023-10-21 17:00:00', 23),
(149, 'P007', '2023-10-22 17:00:00', 36),
(150, 'P008', '2023-10-22 17:00:00', 21),
(151, 'P009', '2023-10-23 17:00:00', 33),
(152, 'P010', '2023-10-23 17:00:00', 28),
(153, 'P009', '2023-10-24 17:00:00', 32),
(154, 'P002', '2023-10-24 17:00:00', 29),
(155, 'P003', '2023-10-25 17:00:00', 34),
(156, 'P004', '2023-10-25 17:00:00', 25),
(157, 'P005', '2023-10-26 17:00:00', 38),
(158, 'P006', '2023-10-26 17:00:00', 23),
(159, 'P007', '2023-10-27 17:00:00', 36),
(160, 'P008', '2023-10-27 17:00:00', 21),
(161, 'P007', '2023-10-28 17:00:00', 33),
(162, 'P010', '2023-10-28 17:00:00', 28),
(163, 'P001', '2023-10-29 17:00:00', 32),
(164, 'P002', '2023-10-29 17:00:00', 29),
(165, 'P003', '2023-10-30 17:00:00', 34),
(166, 'P002', '2023-10-30 17:00:00', 25),
(167, 'P006', '2023-10-30 17:00:00', 38),
(168, 'P006', '2023-10-31 17:00:00', 23),
(169, 'P007', '2023-10-31 17:00:00', 36),
(170, 'P008', '2023-11-01 17:00:00', 21),
(171, 'P009', '2023-11-01 17:00:00', 33),
(172, 'P010', '2023-11-02 17:00:00', 28),
(173, 'P001', '2023-11-02 17:00:00', 32),
(174, 'P002', '2023-11-03 17:00:00', 29),
(175, 'P003', '2023-11-03 17:00:00', 34),
(176, 'P004', '2023-11-04 17:00:00', 25),
(177, 'P005', '2023-11-04 17:00:00', 38),
(178, 'P006', '2023-11-05 17:00:00', 23),
(179, 'P007', '2023-11-05 17:00:00', 36),
(180, 'P008', '2023-11-06 17:00:00', 21),
(181, 'P009', '2023-11-06 17:00:00', 33),
(182, 'P010', '2023-11-07 17:00:00', 28),
(183, 'P001', '2023-11-07 17:00:00', 32),
(184, 'P002', '2023-11-08 17:00:00', 29),
(185, 'P003', '2023-11-08 17:00:00', 34),
(186, 'P004', '2023-11-09 17:00:00', 25),
(187, 'P005', '2023-11-09 17:00:00', 38),
(188, 'P006', '2023-11-10 17:00:00', 23),
(189, 'P007', '2023-11-10 17:00:00', 36),
(190, 'P008', '2023-11-11 17:00:00', 21),
(191, 'P009', '2023-11-11 17:00:00', 33),
(192, 'P010', '2023-11-12 17:00:00', 28),
(193, 'P001', '2023-11-12 17:00:00', 32),
(194, 'P002', '2023-11-13 17:00:00', 29),
(195, 'P003', '2023-11-13 17:00:00', 34),
(196, 'P004', '2023-11-14 17:00:00', 25),
(197, 'P005', '2023-11-14 17:00:00', 38),
(198, 'P006', '2023-11-15 17:00:00', 23),
(199, 'P007', '2023-11-15 17:00:00', 36),
(200, 'P008', '2023-11-15 17:00:00', 21),
(201, 'P009', '2023-11-15 17:00:00', 33),
(202, 'P010', '2023-11-16 17:00:00', 28),
(203, 'P001', '2023-11-16 17:00:00', 32),
(204, 'P002', '2023-11-16 17:00:00', 29),
(205, 'P003', '2023-11-16 17:00:00', 34),
(206, 'P004', '2023-11-17 17:00:00', 25),
(207, 'P005', '2023-11-17 17:00:00', 38),
(208, 'P006', '2023-11-17 17:00:00', 23),
(209, 'P007', '2023-11-17 17:00:00', 36),
(210, 'P008', '2023-11-18 17:00:00', 21),
(211, 'P009', '2023-11-18 17:00:00', 33),
(212, 'P010', '2023-11-18 17:00:00', 28),
(213, 'P001', '2023-11-18 17:00:00', 32),
(214, 'P002', '2023-11-19 17:00:00', 29),
(215, 'P003', '2023-11-19 17:00:00', 34),
(216, 'P004', '2023-11-19 17:00:00', 25),
(217, 'P005', '2023-11-19 17:00:00', 38),
(218, 'P006', '2023-11-20 17:00:00', 23),
(219, 'P007', '2023-11-20 17:00:00', 36),
(220, 'P008', '2023-11-20 17:00:00', 21),
(221, 'P009', '2023-11-20 17:00:00', 33),
(222, 'P010', '2023-11-21 17:00:00', 28),
(223, 'P001', '2023-11-21 17:00:00', 32),
(224, 'P002', '2023-11-21 17:00:00', 29),
(225, 'P003', '2023-11-21 17:00:00', 34),
(226, 'P004', '2023-11-22 17:00:00', 25),
(227, 'P005', '2023-11-22 17:00:00', 38),
(228, 'P006', '2023-11-22 17:00:00', 23),
(229, 'P007', '2023-11-22 17:00:00', 36),
(230, 'P008', '2023-11-23 17:00:00', 21),
(231, 'P009', '2023-11-23 17:00:00', 33),
(232, 'P010', '2023-11-23 17:00:00', 28),
(233, 'P001', '2023-11-23 17:00:00', 32),
(234, 'P002', '2023-11-24 17:00:00', 29),
(235, 'P003', '2023-11-24 17:00:00', 34),
(236, 'P004', '2023-11-24 17:00:00', 25),
(237, 'P005', '2023-11-24 17:00:00', 38),
(238, 'P006', '2023-11-25 17:00:00', 23),
(239, 'P007', '2023-11-25 17:00:00', 36),
(240, 'P008', '2023-11-25 17:00:00', 21),
(241, 'P009', '2023-11-25 17:00:00', 33),
(242, 'P010', '2023-11-26 17:00:00', 28),
(243, 'P001', '2023-11-26 17:00:00', 32),
(244, 'P002', '2023-11-26 17:00:00', 29),
(245, 'P003', '2023-11-26 17:00:00', 34),
(246, 'P004', '2023-11-27 17:00:00', 25),
(247, 'P005', '2023-11-27 17:00:00', 38),
(248, 'P006', '2023-11-27 17:00:00', 23),
(249, 'P007', '2023-11-27 17:00:00', 36),
(250, 'P008', '2023-11-28 17:00:00', 21),
(251, 'P009', '2023-11-28 17:00:00', 33),
(252, 'P010', '2023-11-28 17:00:00', 28),
(253, 'P001', '2023-11-28 17:00:00', 32),
(254, 'P002', '2023-11-29 17:00:00', 29),
(255, 'P003', '2023-11-29 17:00:00', 34),
(256, 'P004', '2023-11-29 17:00:00', 25),
(257, 'P005', '2023-11-29 17:00:00', 38),
(258, 'P006', '2023-11-30 17:00:00', 23),
(259, 'P007', '2023-11-30 17:00:00', 36),
(260, 'P008', '2023-11-30 17:00:00', 21),
(261, 'P009', '2023-11-30 17:00:00', 33),
(262, 'P010', '2023-12-01 17:00:00', 28),
(263, 'P001', '2023-12-01 17:00:00', 32),
(264, 'P002', '2023-12-01 17:00:00', 29),
(265, 'P003', '2023-12-01 17:00:00', 34),
(266, 'P004', '2023-12-02 17:00:00', 25),
(267, 'P005', '2023-12-02 17:00:00', 38),
(268, 'P006', '2023-12-02 17:00:00', 23),
(269, 'P007', '2023-12-02 17:00:00', 36),
(270, 'P008', '2023-12-03 17:00:00', 21),
(271, 'P009', '2023-12-03 17:00:00', 33),
(272, 'P010', '2023-12-03 17:00:00', 28),
(273, 'P001', '2023-12-03 17:00:00', 32),
(274, 'P002', '2023-12-04 17:00:00', 29),
(275, 'P003', '2023-12-04 17:00:00', 34),
(276, 'P004', '2023-12-04 17:00:00', 25),
(277, 'P005', '2023-12-04 17:00:00', 38),
(278, 'P006', '2023-12-05 17:00:00', 23),
(279, 'P007', '2023-12-05 17:00:00', 36),
(280, 'P008', '2023-12-05 17:00:00', 21),
(281, 'P009', '2023-12-05 17:00:00', 33),
(282, 'P010', '2023-12-06 17:00:00', 28),
(283, 'P001', '2023-12-06 17:00:00', 32),
(284, 'P002', '2023-12-06 17:00:00', 29),
(285, 'P003', '2023-12-06 17:00:00', 34),
(286, 'P004', '2023-12-07 17:00:00', 25),
(287, 'P005', '2023-12-07 17:00:00', 38),
(288, 'P006', '2023-12-07 17:00:00', 23),
(289, 'P007', '2023-12-07 17:00:00', 36),
(290, 'P008', '2023-12-08 17:00:00', 21),
(291, 'P009', '2023-12-08 17:00:00', 33),
(292, 'P010', '2023-12-08 17:00:00', 28),
(293, 'P001', '2023-12-08 17:00:00', 32),
(294, 'P002', '2023-12-09 17:00:00', 29),
(295, 'P003', '2023-12-09 17:00:00', 34),
(296, 'P004', '2023-12-09 17:00:00', 25),
(297, 'P005', '2023-12-09 17:00:00', 38),
(298, 'P006', '2023-12-10 17:00:00', 23),
(299, 'P007', '2023-12-10 17:00:00', 36),
(300, 'P008', '2023-12-10 17:00:00', 21),
(301, 'P009', '2023-12-10 17:00:00', 33),
(302, 'P010', '2023-12-11 17:00:00', 28),
(303, 'P001', '2023-12-11 17:00:00', 32),
(304, 'P002', '2023-12-11 17:00:00', 29),
(305, 'P003', '2023-12-11 17:00:00', 34),
(306, 'P004', '2023-12-12 17:00:00', 25),
(307, 'P005', '2023-12-12 17:00:00', 38),
(308, 'P006', '2023-12-12 17:00:00', 23),
(309, 'P007', '2023-12-12 17:00:00', 36),
(310, 'P008', '2023-12-13 17:00:00', 21),
(311, 'P009', '2023-12-13 17:00:00', 33),
(312, 'P010', '2023-12-13 17:00:00', 28),
(313, 'P001', '2023-12-13 17:00:00', 32),
(314, 'P002', '2023-12-14 17:00:00', 29),
(315, 'P003', '2023-12-14 17:00:00', 34),
(316, 'P004', '2023-12-14 17:00:00', 25),
(317, 'P005', '2023-12-14 17:00:00', 38),
(318, 'P006', '2023-12-15 17:00:00', 23),
(319, 'P007', '2023-12-15 17:00:00', 36),
(320, 'P008', '2023-12-15 17:00:00', 21),
(321, 'P009', '2023-12-15 17:00:00', 33),
(322, 'P010', '2023-12-16 17:00:00', 28),
(323, 'P001', '2023-12-16 17:00:00', 32),
(324, 'P002', '2023-12-16 17:00:00', 29),
(325, 'P003', '2023-12-16 17:00:00', 34),
(326, 'P004', '2023-12-17 17:00:00', 25),
(327, 'P005', '2023-12-17 17:00:00', 38),
(328, 'P006', '2023-12-17 17:00:00', 23),
(329, 'P007', '2023-12-17 17:00:00', 36),
(330, 'P008', '2023-12-18 17:00:00', 21),
(331, 'P009', '2023-12-18 17:00:00', 33),
(332, 'P010', '2023-12-18 17:00:00', 28),
(333, 'P001', '2023-12-18 17:00:00', 32),
(334, 'P002', '2023-12-19 17:00:00', 29),
(335, 'P003', '2023-12-19 17:00:00', 34),
(336, 'P004', '2023-12-19 17:00:00', 25),
(337, 'P005', '2023-12-19 17:00:00', 38),
(338, 'P006', '2023-12-20 17:00:00', 23),
(339, 'P007', '2023-12-20 17:00:00', 36),
(340, 'P008', '2023-12-20 17:00:00', 21),
(341, 'P009', '2023-12-20 17:00:00', 33),
(342, 'P010', '2023-12-21 17:00:00', 28),
(343, 'P001', '2023-12-21 17:00:00', 32),
(344, 'P002', '2023-12-21 17:00:00', 29),
(345, 'P003', '2023-12-21 17:00:00', 34),
(346, 'P004', '2023-12-22 17:00:00', 25),
(347, 'P005', '2023-12-22 17:00:00', 38),
(348, 'P006', '2023-12-22 17:00:00', 23),
(349, 'P007', '2023-12-22 17:00:00', 36),
(350, 'P008', '2023-12-23 17:00:00', 21),
(351, 'P009', '2023-12-23 17:00:00', 33),
(352, 'P010', '2023-12-23 17:00:00', 28),
(353, 'P001', '2023-12-23 17:00:00', 32),
(354, 'P002', '2023-12-24 17:00:00', 29),
(355, 'P003', '2023-12-24 17:00:00', 34),
(356, 'P004', '2023-12-24 17:00:00', 25),
(357, 'P005', '2023-12-24 17:00:00', 38),
(358, 'P006', '2023-12-25 17:00:00', 23),
(359, 'P007', '2023-12-25 17:00:00', 36),
(360, 'P008', '2023-12-25 17:00:00', 21),
(361, 'P009', '2023-12-25 17:00:00', 33),
(362, 'P010', '2023-12-26 17:00:00', 28),
(363, 'P001', '2023-12-26 17:00:00', 32),
(364, 'P002', '2023-12-26 17:00:00', 29),
(365, 'P003', '2023-12-26 17:00:00', 34),
(366, 'P004', '2023-12-27 17:00:00', 25),
(367, 'P005', '2023-12-27 17:00:00', 38),
(368, 'P006', '2023-12-27 17:00:00', 23),
(369, 'P007', '2023-12-27 17:00:00', 36),
(370, 'P008', '2023-12-28 17:00:00', 21),
(371, 'P009', '2023-12-28 17:00:00', 33),
(372, 'P010', '2023-12-28 17:00:00', 28),
(373, 'P001', '2023-12-28 17:00:00', 32),
(374, 'P002', '2023-12-29 17:00:00', 29),
(375, 'P003', '2023-12-29 17:00:00', 34),
(376, 'P004', '2023-12-29 17:00:00', 25),
(377, 'P005', '2023-12-29 17:00:00', 38),
(378, 'P006', '2023-12-30 17:00:00', 23),
(379, 'P007', '2023-12-30 17:00:00', 36),
(380, 'P008', '2023-12-30 17:00:00', 21),
(381, 'P009', '2023-12-30 17:00:00', 33);

--
-- Trigger `produk_keluar`
--
DELIMITER $$
CREATE TRIGGER `kurang_stok` AFTER INSERT ON `produk_keluar` FOR EACH ROW BEGIN
	UPDATE produk
    SET stok = stok - New.jumlah_keluar
    WHERE kode_produk = NEW.kode_produk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_masuk`
--

CREATE TABLE `produk_masuk` (
  `id_masuk` int(11) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `waktu_masuk` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `jumlah_masuk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk_masuk`
--

INSERT INTO `produk_masuk` (`id_masuk`, `kode_produk`, `waktu_masuk`, `jumlah_masuk`) VALUES
(1, 'P003', '2023-09-05 17:00:00', 500),
(2, 'P008', '2023-09-05 17:00:00', 499),
(3, 'P004', '2023-09-05 17:00:00', 498),
(4, 'P009', '2023-09-05 17:00:00', 497),
(5, 'P001', '2023-09-05 17:00:00', 496),
(6, 'P006', '2023-09-05 17:00:00', 495),
(7, 'P002', '2023-09-05 17:00:00', 494),
(8, 'P007', '2023-09-05 17:00:00', 493),
(9, 'P005', '2023-09-05 17:00:00', 492),
(10, 'P010', '2023-09-05 17:00:00', 491),
(11, 'P001', '2023-10-05 17:00:00', 318),
(12, 'P008', '2023-10-05 17:00:00', 247),
(13, 'P002', '2023-10-05 17:00:00', 316),
(14, 'P005', '2023-10-05 17:00:00', 243),
(15, 'P004', '2023-10-05 17:00:00', 241),
(16, 'P007', '2023-10-05 17:00:00', 240),
(17, 'P003', '2023-10-05 17:00:00', 245),
(18, 'P010', '2023-10-05 17:00:00', 315),
(19, 'P009', '2023-10-05 17:00:00', 244),
(20, 'P006', '2023-10-05 17:00:00', 249),
(21, 'P002', '2023-11-05 17:00:00', 298),
(22, 'P007', '2023-12-05 17:00:00', 397),
(23, 'P001', '2023-11-05 17:00:00', 296),
(24, 'P003', '2023-11-05 17:00:00', 295),
(25, 'P004', '2023-11-05 17:00:00', 294),
(26, 'P005', '2023-11-05 17:00:00', 293),
(27, 'P006', '2023-11-05 17:00:00', 292),
(28, 'P008', '2023-11-05 17:00:00', 291),
(29, 'P009', '2023-11-05 17:00:00', 290),
(30, 'P010', '2023-11-05 17:00:00', 289),
(31, 'P008', '2023-12-05 17:00:00', 298),
(32, 'P003', '2023-12-05 17:00:00', 297),
(33, 'P009', '2023-12-05 17:00:00', 296),
(34, 'P007', '2023-12-05 17:00:00', 295),
(35, 'P005', '2023-12-05 17:00:00', 294),
(36, 'P001', '2023-12-05 17:00:00', 293),
(37, 'P002', '2023-12-05 17:00:00', 292),
(38, 'P004', '2023-12-05 17:00:00', 291),
(39, 'P005', '2023-12-05 17:00:00', 290),
(40, 'P006', '2023-12-05 17:00:00', 289),
(41, 'P010', '2023-12-05 17:00:00', 288);

--
-- Trigger `produk_masuk`
--
DELIMITER $$
CREATE TRIGGER `tambah_stok` AFTER UPDATE ON `produk_masuk` FOR EACH ROW BEGIN
	UPDATE produk
    SET stok = stok + New.jumlah_masuk
    WHERE kode_produk = NEW.kode_produk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak_penyimpanan`
--

CREATE TABLE `rak_penyimpanan` (
  `kode_rak` varchar(255) NOT NULL,
  `kategori_rak` varchar(255) NOT NULL,
  `kapasitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rak_penyimpanan`
--

INSERT INTO `rak_penyimpanan` (`kode_rak`, `kategori_rak`, `kapasitas`) VALUES
('A1', 'A', '500'),
('A2', 'A', '500'),
('B1', 'B', '500'),
('B2', 'B', '500'),
('C1', 'C', '500'),
('C2', 'C', '500'),
('D1', 'D', '500'),
('D2', 'D', '500'),
('E1', 'E', '500'),
('E2', 'E', '500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `level`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$dgyVCk6phR5AwY5eBC0kZu2lU4hnIhzbBohYF0snIjvFghJQ5yNUC', NULL, 'admin', '2023-10-26 10:47:53', '2023-10-26 10:47:53'),
(2, 'kurir', 'kurir@admin.com', NULL, '$2y$10$L.porzuC.tj0ZwYFLfc2kee4L.kePt/SuqTGkIkFJdbRI0og8sLFG', NULL, 'kurir', '2023-10-26 18:07:49', '2023-10-26 18:07:49');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`),
  ADD KEY `lokasi_rak` (`lokasi_rak`);

--
-- Indeks untuk tabel `produk_keluar`
--
ALTER TABLE `produk_keluar`
  ADD PRIMARY KEY (`id_keluar`),
  ADD KEY `kode_produk` (`kode_produk`);

--
-- Indeks untuk tabel `produk_masuk`
--
ALTER TABLE `produk_masuk`
  ADD PRIMARY KEY (`id_masuk`),
  ADD KEY `kode_produk` (`kode_produk`);

--
-- Indeks untuk tabel `rak_penyimpanan`
--
ALTER TABLE `rak_penyimpanan`
  ADD PRIMARY KEY (`kode_rak`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk_keluar`
--
ALTER TABLE `produk_keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT untuk tabel `produk_masuk`
--
ALTER TABLE `produk_masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`lokasi_rak`) REFERENCES `rak_penyimpanan` (`kode_rak`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk_keluar`
--
ALTER TABLE `produk_keluar`
  ADD CONSTRAINT `produk_keluar_ibfk_1` FOREIGN KEY (`kode_produk`) REFERENCES `produk` (`kode_produk`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk_masuk`
--
ALTER TABLE `produk_masuk`
  ADD CONSTRAINT `produk_masuk_ibfk_1` FOREIGN KEY (`kode_produk`) REFERENCES `produk` (`kode_produk`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
