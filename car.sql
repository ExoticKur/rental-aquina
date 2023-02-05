-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2023 pada 15.50
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `nama_rental` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `foto` varchar(256) DEFAULT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `nama_rental`, `username`, `alamat`, `gender`, `no_telp`, `no_ktp`, `foto`, `password`, `role_id`) VALUES
(6, 'Admin', 'Aquina Ratu Jambi', 'admin', 'Jalan Kabia RT 003 No. 69 Kelurahan Handil Jaya, Kec.amatan Jelutung, Kota Jambi, Jambi', 'Laki-laki', '000', '000', 'logo1.png', '16ca55b4f29157780eabc6244f49d442', 1),
(21, 'Kurniawan', '', 'Kurniawan', 'JL. Marene', 'Laki-laki', '08978645911', '1571020507010041', 'kur.jpg', '16ca55b4f29157780eabc6244f49d442', 2),
(33, 'Arief', '', 'Arief', 'JL. Marene', 'Laki-laki', '0852000000', '1571011304970041', 'DSC_4730.JPG', '2fab7eefb328d669c8dde67a91528eb9', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `nama_rental` varchar(120) NOT NULL,
  `kode_type` varchar(120) NOT NULL,
  `merk` varchar(120) NOT NULL,
  `no_plat` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `supir` int(11) NOT NULL,
  `mp3_player` int(11) NOT NULL,
  `central_lock` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nama_rental`, `kode_type`, `merk`, `no_plat`, `warna`, `tahun`, `status`, `harga`, `denda`, `ac`, `supir`, `mp3_player`, `central_lock`, `gambar`) VALUES
(23, 'Aquina Ratu Jambi', 'CC', 'Honda Brio', 'BH 1884 NY', 'Grey', '2021', '1', 300000, 300000, 1, 1, 1, 1, 'mobil_81.jpg'),
(24, 'Aquina Ratu Jambi', 'MPV', 'Daihatsu Xenia', 'BH 1028 GP', 'Silver', '2022', '0', 400000, 400000, 1, 1, 1, 1, 'mobil_61.jpg'),
(25, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza Veloz', 'B 2109 TYN', 'Silver', '2019', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_73.jpg'),
(26, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza Veloz', 'BH 1789 NV', 'Hitam', '2020', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_102.jpg'),
(27, 'Aquina Ratu Jambi', 'SUV', 'Toyota Fortuner', 'T 1528 FS', 'Putih', '2020', '1', 2400000, 2400000, 1, 1, 1, 1, 'mobil_11.jpg'),
(28, 'Aquina Ratu Jambi', 'HB', 'Toyota Yaris', 'BH 1098 ND', 'Merah', '2017', '1', 400000, 400000, 1, 1, 1, 1, 'mobil_(3)1.jpg'),
(29, 'Aquina Ratu Jambi', 'HB', 'Toyota Yaris', 'BH 1147 NA', 'Hitam', '2017', '1', 400000, 400000, 1, 1, 1, 1, 'mobil_91.jpg'),
(30, 'Aquina Ratu Jambi', 'MPV', 'Daihatsu Xenia', 'BG 1268 OH ', 'Putih', '2018', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_51.jpg'),
(31, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza', 'D 1650 VBD', 'Silver', '2016', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_31.jpg'),
(32, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza', 'BH 1740 BK', 'Merah', '2015', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_41.jpg'),
(33, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza', 'F 1277 NW', 'Putih', '2016', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_(2)1.jpg'),
(34, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza Veloz', 'F 1830 JO', 'Putih', '2019', '1', 350000, 350000, 1, 1, 1, 1, 'mobil1.jpg'),
(35, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza', 'B 2667 SRC', 'Silver', '2020', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_191.jpg'),
(36, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza', 'BH 1694 NZ', 'Putih', '2021', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_131.jpg'),
(37, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza', 'BH 1332 NQ', 'Hitam', '2019', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_121.jpg'),
(38, 'Aquina Ratu Jambi', 'MPV', 'INNOVA REBORN', 'BH 1109 NZ', 'Hitam', '2021', '1', 650000, 650000, 1, 1, 1, 1, 'mobil_(1)3.jpg'),
(39, 'Aquina Ratu Jambi', 'MPV', 'INNOVA REBORN', 'BH 1151 YB', 'Grey', '2021', '1', 650000, 650000, 1, 1, 1, 1, 'mobil_222.jpg'),
(40, 'Aquina Ratu Jambi', 'SUV', 'Pajero Sport', 'B 599 DSY', 'Hitam', '2021', '1', 2400000, 2400000, 1, 1, 1, 1, 'mobil_231.jpg'),
(41, 'Aquina Ratu Jambi', 'CC', 'Mazda 2', 'BH 1463 HM', 'Merah', '2012', '1', 300000, 300000, 1, 1, 1, 1, 'mobil_151.jpg'),
(42, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza', 'B 2410 KOG', 'Hitam', '2019', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_161.jpg'),
(43, 'Aquina Ratu Jambi', 'SUV', 'Pajero Sport', 'BM 1656 BJ', 'Hitam', '2019', '1', 2400000, 2400000, 1, 1, 1, 1, 'mobil_171.jpg'),
(44, 'Aquina Ratu Jambi', 'MPV', 'INNOVA REBORN', 'B 2192 PFB', 'Silver', '2018', '1', 650000, 650000, 1, 1, 1, 1, 'mobil_181.jpg'),
(45, 'Aquina Ratu Jambi', 'MPV', 'Toyota Avanza', 'BH 1930 SK', 'Silver', '2016', '1', 350000, 350000, 1, 1, 1, 1, 'mobil_2.jpg'),
(46, 'Aquina Ratu Jambi', 'MPV', 'Daihatsu Terios', 'BH 1759 YF', 'Putih', '2022', '1', 400000, 400000, 1, 1, 1, 1, 'mobil_202.jpg'),
(47, 'Aquina Ratu Jambi', 'CC', 'Honda Brio', 'BH 1703 YC', 'Kuning', '2022', '1', 300000, 300000, 1, 1, 1, 1, 'mobil_211.jpg'),
(48, 'Aquina Ratu Jambi', 'MPV', 'Mitsubishi Xpander', 'BH 1042 DN', 'Putih', '2021', '1', 400000, 400000, 1, 1, 1, 1, 'mobil_241.jpg'),
(49, 'Aquina Ratu Jambi', 'CC', 'Honda Brio', 'BH 1683 YF', 'Merah', '2022', '1', 300000, 300000, 1, 1, 1, 1, 'mobil_251.jpg'),
(50, 'Aquina Ratu Jambi', 'MV', 'Toyota Hiace', 'B 7111 EDA', 'Silver', '2017', '1', 2400000, 2400000, 1, 1, 1, 1, 'mobil_261.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id_payment` int(11) NOT NULL,
  `nama_payment` varchar(120) NOT NULL,
  `key_payment` varchar(120) NOT NULL,
  `atas_nama` varchar(120) DEFAULT NULL,
  `nama_rental` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`id_payment`, `nama_payment`, `key_payment`, `atas_nama`, `nama_rental`) VALUES
(2, 'Bank BRI', '42367482374', 'Mang Group', 'Jaya Rental');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rental`
--

CREATE TABLE `rental` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `tanggal_rental` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `nama_rental` varchar(120) NOT NULL,
  `tanggal_rental` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `total_denda` varchar(120) NOT NULL DEFAULT '0',
  `tanggal_pengembalian` date NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(130) NOT NULL,
  `status_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_rental`, `id_customer`, `id_mobil`, `nama_rental`, `tanggal_rental`, `tanggal_kembali`, `harga`, `denda`, `total_denda`, `tanggal_pengembalian`, `status_pengembalian`, `status_rental`, `bukti_pembayaran`, `status_pembayaran`) VALUES
(10, 9, 17, 'Sejahtera Travel', '2020-06-08', '2020-06-12', 800000, 100000, '58604166.666667', '2022-01-19', 'Kembali', 'Selesai', '009.PNG', 1),
(15, 20, 9, 'Putra Riau Travel', '2022-01-09', '2022-01-12', 300000, 45000, '90000', '2022-01-14', 'Kembali', 'Selesai', 'Bukti_Pembayaran_Contoh.jpg', 1),
(16, 6, 19, 'Sejahtera Travel', '2022-12-03', '2022-12-03', 300000, 40000, '0', '0000-00-00', 'Belum Kembali', 'Belum Selesai', '', 0),
(18, 6, 10, 'Putra Riau Travel', '2022-12-15', '2022-12-20', 250000, 30000, '0', '0000-00-00', 'Belum Kembali', 'Belum Selesai', '', 0),
(19, 21, 21, 'Aquina Ratu Jambi', '2022-12-14', '2022-12-28', 2000, 0, '0', '2022-12-26', 'Kembali', 'Selesai', 'ANDI6574.JPG', 1),
(20, 6, 22, 'Aquina Ratu Jambi', '2022-12-22', '2022-12-16', 200000, 0, '0', '0000-00-00', 'Kembali', 'Selesai', 'ANDI65741.JPG', 1),
(22, 21, 22, 'Aquina Ratu Jambi', '2022-12-17', '2022-12-30', 200000, 0, '0', '2022-12-14', 'Kembali', 'Selesai', 'ANDI6570.JPG', 1),
(28, 21, 40, 'Aquina Ratu Jambi', '2023-01-06', '2023-01-10', 2400000, 0, '0', '2023-01-10', 'Kembali', 'Selesai', 'UNAMA_LOGO.png', 1),
(38, 21, 23, 'Aquina Ratu Jambi', '2023-01-26', '2023-01-28', 300000, 0, '0', '0000-00-00', 'Kembali', 'Selesai', '0e95090bde504ad5908f.jpg', 1),
(40, 6, 25, 'Aquina Ratu Jambi', '2023-01-01', '2023-01-23', 350000, 350000, '1050000', '2023-01-26', 'Kembali', 'Selesai', '', 0),
(41, 6, 26, 'Aquina Ratu Jambi', '2023-01-20', '2023-01-24', 350000, 0, '0', '0000-00-00', 'Belum Kembali', 'Belum Selesai', '', 0),
(42, 6, 28, 'Aquina Ratu Jambi', '2023-01-20', '2023-01-24', 400000, 0, '0', '2023-01-24', 'Kembali', 'Selesai', '', 0),
(43, 21, 25, 'Aquina Ratu Jambi', '2023-01-15', '2023-01-22', 350000, 350000, '1400000', '2023-01-26', 'Kembali', 'Selesai', 'Capture1.PNG', 1),
(44, 21, 24, 'Aquina Ratu Jambi', '2023-01-23', '2023-01-26', 400000, 400000, '0', '0000-00-00', 'Belum Kembali', 'Belum Selesai', 'ANDI6565.JPG', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `kode_type` varchar(10) NOT NULL,
  `nama_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `type`
--

INSERT INTO `type` (`id_type`, `kode_type`, `nama_type`) VALUES
(1, 'SDN', 'Sedan'),
(2, 'HB', 'Hatchback'),
(3, 'MPV', 'Multi Purpose Vehicle'),
(4, 'SUV', 'Sport Utility Vehicle'),
(5, 'PUS', 'Pick-Up Single Cabin'),
(6, 'PUD', 'Pick-Up Double Cabin'),
(7, 'JEEP', 'JEEP'),
(8, 'CC', 'City Car'),
(9, 'MV', 'Mini Vans');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indeks untuk tabel `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indeks untuk tabel `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `rental`
--
ALTER TABLE `rental`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
