-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2014 at 12:49 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vendingmachine`
--
CREATE DATABASE IF NOT EXISTS `vendingmachine` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vendingmachine`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `kode_barang` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama`, `harga`, `stok`) VALUES
('BM1', 'air mineral', 3000, 95),
('BM10', 'Indomilk', 4500, 150),
('BM2', 'Pulpy', 6000, 95),
('BM3', 'Coca Cola', 3000, 100),
('BM4', 'Fanta', 3000, 100),
('BM5', 'Sprite', 3000, 100),
('BM6', 'Pepsi', 4000, 100),
('BM7', 'Fresh Tea', 6000, 100),
('BM8', 'Mizone', 3000, 100),
('BM9', 'UC 1000', 6000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `kd_member` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_emoney` varchar(100) NOT NULL,
  `saldo` double NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  PRIMARY KEY (`kd_member`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`kd_member`, `nama`, `no_emoney`, `saldo`, `alamat`, `no_telp`, `tempat_lahir`, `tgl_lahir`) VALUES
('B6', 'Khumaeroh', 'K0123456', 100000, 'Bandung', '085647053481', 'Kebumen', '2014-02-20'),
('M1', 'Nita', '01234567', 100000, 'kebumen', '089654926627', 'kebumen', '1993-02-20'),
('M2', 'sovy', '12334567', 100000, 'BANDUNG', '081322432800', 'BANDUNG', '1994-01-13'),
('M3', 'Ivan', '01234578', 90000, 'purwokerto', '085227227649', 'Purwokerto', '1994-07-18'),
('M4', 'Bambang', '734538843', 10000, 'bandung', '08965327', 'bandung', '1992-07-15'),
('M5', 'Yunita', 'N1234567', 2000000, 'Kebumen', '089654926627', 'Kebumen', '1993-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `no` int(11) NOT NULL,
  `Id_transaksi` varchar(100) NOT NULL,
  `tanggalPembelian` date NOT NULL,
  `barang` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin1'),
('nita', 'admin2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
