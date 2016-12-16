-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2016 at 09:28 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_pulsaku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_groups`
--

CREATE TABLE IF NOT EXISTS `tb_groups` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_groups`
--

INSERT INTO `tb_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `tb_harga`
--

CREATE TABLE IF NOT EXISTS `tb_harga` (
`id_harga` int(30) NOT NULL,
  `harga` decimal(7,0) DEFAULT NULL,
  `uid` int(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_harga`
--

INSERT INTO `tb_harga` (`id_harga`, `harga`, `uid`) VALUES
(1, '11000', 7),
(2, '6000', 7),
(3, '300000', 7),
(4, '30000', 1),
(5, '11000', 1),
(6, '51000', 1),
(7, '6000', 1),
(8, '21000', 9),
(9, '7000', 7),
(10, '6000', 9),
(11, '11000', 9),
(12, '6000', 10),
(13, '11000', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_login_attempts`
--

CREATE TABLE IF NOT EXISTS `tb_login_attempts` (
`id` int(11) unsigned NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE IF NOT EXISTS `tb_menu` (
`id_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `link` varchar(30) NOT NULL,
  `parent` int(11) NOT NULL,
  `role` enum('Administrator','Admin') DEFAULT 'Admin',
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `nama_menu`, `icon`, `link`, `parent`, `role`, `aktif`) VALUES
(1, 'Dashboard', 'fa fa-dashboard', 'dashboard', 0, 'Admin', 'Y'),
(2, 'Master', 'fa fa-suitcase', '#', 0, 'Admin', 'Y'),
(4, 'Pelanggan', 'fa fa-user text-aqua', 'pelanggan', 2, 'Admin', 'Y'),
(5, 'Nominal', 'fa fa-usd text-aqua', 'nominal', 2, 'Admin', 'Y'),
(6, 'Harga', 'fa  fa-usd text-aqua', 'harga', 2, 'Admin', 'Y'),
(12, 'Transaksi', 'fa fa-th-list', '#', 0, 'Admin', 'Y'),
(13, 'Tambah Baru', 'fa fa-shopping-cart text-aqua', 'transaksi/create', 12, 'Admin', 'Y'),
(14, 'Semua', 'fa fa-minus-square text-aqua', 'transaksi', 12, 'Admin', 'Y'),
(16, 'Lunas', 'fa fa-th-large text-aqua', 'transaksi/lunas', 12, 'Admin', 'Y'),
(22, 'Seting', 'fa fa-gears', '#', 0, 'Administrator', 'Y'),
(23, 'Menu seting', 'fa  fa-bars text-aqua', 'menu', 22, 'Administrator', 'Y'),
(24, 'User Seting', 'fa fa-users text-aqua', 'auth/member', 22, 'Administrator', 'Y'),
(26, 'Group Member', 'fa  fa-bars text-aqua', 'groups', 22, 'Admin', 'Y'),
(27, 'Hutang', 'fa fa-sticky-note-o text-aqua', 'transaksi/hutang', 12, 'Admin', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nominal`
--

CREATE TABLE IF NOT EXISTS `tb_nominal` (
`id_nominal` int(30) NOT NULL,
  `nominal` varchar(12) DEFAULT NULL,
  `uid` int(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nominal`
--

INSERT INTO `tb_nominal` (`id_nominal`, `nominal`, `uid`) VALUES
(1, '2 Ribu', 1),
(2, '5 Ribu', 1),
(3, '20 Ribu', 1),
(4, '10 Ribu', 1),
(5, '10 ribu', 7),
(6, '10 ribu', 9),
(7, '6 ribu', 9),
(8, '5 ribu', 9),
(9, '10 ribu', 10),
(10, '5 ribu', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE IF NOT EXISTS `tb_pelanggan` (
`id_pelanggan` int(50) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telpn` varchar(15) DEFAULT NULL,
  `uid` int(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telpn`, `uid`) VALUES
(2, 'Leny Yuliani', 'Pekajangan Buaran', '0898989', 7),
(3, 'Arif Rahman', 'Buaran Pekalongan', '08989780989', 7),
(4, 'Danang', 'Wiradesa', '0867676767', 1),
(5, 'Agga', 'Bligo', '089787878', 1),
(6, 'Inva', 'Bojong', '08989786', 7),
(7, 'ely', 'pekalongan', '089898', 9),
(8, 'andre', 'pekalongan', '0898978678', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
`id_transaksi` int(50) NOT NULL,
  `kode_transaksi` varchar(15) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_nominal` int(30) DEFAULT NULL,
  `id_harga` int(30) DEFAULT NULL,
  `status` enum('LUNAS','HUTANG') DEFAULT NULL,
  `tgl_transaksi` datetime DEFAULT NULL,
  `tgl_tempo` datetime NOT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `uid` int(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `kode_transaksi`, `no_telp`, `id_pelanggan`, `id_nominal`, `id_harga`, `status`, `tgl_transaksi`, `tgl_tempo`, `tgl_bayar`, `uid`) VALUES
(1, '71605001', '8967677', 2, 5, 1, 'LUNAS', '2016-05-16 11:46:38', '0000-00-00 00:00:00', '2016-05-16 11:46:38', 7),
(2, '71605002', '2147483647', 6, 5, 1, 'HUTANG', '2016-05-23 11:05:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7),
(3, '91605001', '0', 7, 6, 11, 'LUNAS', '2016-05-16 11:48:59', '0000-00-00 00:00:00', '2016-05-16 11:48:59', 9),
(4, '91605002', '8989', 7, 7, 8, 'HUTANG', '2016-05-16 11:49:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9),
(5, '101605001', '2147483647', 8, 9, 13, 'LUNAS', '2016-05-16 11:51:33', '0000-00-00 00:00:00', '2016-05-16 11:51:33', 10),
(6, '101605501', '2147483647', 8, 9, 13, 'HUTANG', '2016-05-16 11:51:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10),
(7, '101605551', '808978678', 8, 10, 12, 'LUNAS', '2016-05-16 11:53:04', '0000-00-00 00:00:00', '2016-05-16 11:53:04', 10),
(8, '11605001', '2147483647', 4, 2, 7, 'LUNAS', '2016-05-16 12:30:28', '0000-00-00 00:00:00', '2016-05-16 12:30:28', 1),
(9, '11605002', '89786786', 5, 4, 5, 'HUTANG', '2016-05-16 12:30:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(10, '11605003', '2147483647', 4, 2, 7, 'LUNAS', '2016-05-21 08:46:18', '0000-00-00 00:00:00', '2016-05-21 08:46:18', 1),
(11, '11605004', '2147483647', 1, 2, 7, 'LUNAS', '2016-05-25 09:01:32', '0000-00-00 00:00:00', '2016-05-25 09:01:32', 1),
(12, '11605005', '6850898989787', 4, 4, 5, 'HUTANG', '2016-05-25 09:45:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(13, '11605006', '6850898989', 5, 4, 5, 'LUNAS', '2016-05-25 10:01:28', '0000-00-00 00:00:00', '2016-05-25 10:01:28', 1),
(14, '11605007', '0950898989787', 4, 2, 7, 'LUNAS', '2016-05-25 10:16:48', '0000-00-00 00:00:00', '2016-05-25 10:16:48', 1),
(15, '11605008', '+6850898989787', 4, 3, 5, 'LUNAS', '2016-05-25 10:19:08', '0000-00-00 00:00:00', '2016-05-25 10:19:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE IF NOT EXISTS `tb_users` (
`id` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$Kpso52jO/ld.bHeDSE5hPO2x9qsIdnVhEVlgFqrZ3c8TIq6zuNLze', '', 'admin@admin.com', '86ed629d0fc67b65fa78a1f7b776dd9c56032abb', NULL, NULL, 'G.WaoqYoZ/Zq6l6VddiHGe', '0000-00-00 00:00:00', '2016-12-16 09:26:50', 1, 'Administrator', 'utama', 'NEXTER-CELL', '0'),
(7, '::1', 'member2', '$2y$08$PR5Bshqw/ICo9/3X/9Sdn.DbdNP9D0efVQhpSxLfEEblKvbUV/DqG', NULL, 'mara@gmail.com', NULL, NULL, NULL, NULL, '2016-05-13 11:41:01', '2016-05-20 11:30:08', 1, 'mara', 'andre', 'maracell', '0898989'),
(8, '::1', 'coba saja', '$2y$08$rrhYyW215HV/K5WoH1E2CuH.6buDwe4EsQRYGyMqj641f6x15qm5q', NULL, 'coba@gmail.com', '219de4ce2713319e792fb6011ee6e2a87a88bd08', NULL, NULL, NULL, '2016-07-26 13:49:12', NULL, 0, 'coba', 'saja', 'coba saja', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users_groups`
--

CREATE TABLE IF NOT EXISTS `tb_users_groups` (
`id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_users_groups`
--

INSERT INTO `tb_users_groups` (`id`, `user_id`, `group_id`) VALUES
(37, 1, 1),
(38, 1, 2),
(34, 7, 2),
(39, 8, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_groups`
--
ALTER TABLE `tb_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_harga`
--
ALTER TABLE `tb_harga`
 ADD PRIMARY KEY (`id_harga`);

--
-- Indexes for table `tb_login_attempts`
--
ALTER TABLE `tb_login_attempts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
 ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tb_nominal`
--
ALTER TABLE `tb_nominal`
 ADD PRIMARY KEY (`id_nominal`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
 ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
 ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tb_users_groups`
--
ALTER TABLE `tb_users_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`), ADD KEY `fk_users_groups_users1_idx` (`user_id`), ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_groups`
--
ALTER TABLE `tb_groups`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_harga`
--
ALTER TABLE `tb_harga`
MODIFY `id_harga` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb_login_attempts`
--
ALTER TABLE `tb_login_attempts`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tb_nominal`
--
ALTER TABLE `tb_nominal`
MODIFY `id_nominal` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
MODIFY `id_pelanggan` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
MODIFY `id_transaksi` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_users_groups`
--
ALTER TABLE `tb_users_groups`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_users_groups`
--
ALTER TABLE `tb_users_groups`
ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `tb_groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `tb_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
