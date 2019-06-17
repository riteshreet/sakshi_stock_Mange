-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 01:13 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `company_name` varchar(2000) NOT NULL,
  `company_address` varchar(2000) NOT NULL,
  `gst_no` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`company_name`, `company_address`, `gst_no`) VALUES
('rsgss', 'namkum', '123'),
('hansSquadRoboTechPvt.ltd', 'jaspur Road', '203'),
('de', 'were', '234'),
('asb', 'xyz', '666'),
('q', 'wqww', '64'),
('rsg', 'namkum', '566656');

-- --------------------------------------------------------

--
-- Table structure for table `remaining_stock`
--

CREATE TABLE `remaining_stock` (
  `date` varchar(10000) NOT NULL,
  `invoice_no` varchar(2000) NOT NULL,
  `company_name` varchar(2000) NOT NULL,
  `company_address` varchar(2000) NOT NULL,
  `gst_no` varchar(2000) NOT NULL,
  `pipe_type` varchar(2000) NOT NULL,
  `diameter` varchar(2000) NOT NULL,
  `weight` varchar(2000) NOT NULL,
  `stock_in_piece` varchar(2000) NOT NULL,
  `stock_out_piece` varchar(2000) NOT NULL,
  `remaining_stock_piece` varchar(2000) NOT NULL,
  `alert_point` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remaining_stock`
--

INSERT INTO `remaining_stock` (`date`, `invoice_no`, `company_name`, `company_address`, `gst_no`, `pipe_type`, `diameter`, `weight`, `stock_in_piece`, `stock_out_piece`, `remaining_stock_piece`, `alert_point`) VALUES
('2019-06-15', '445632', 'rsgss', 'namkum', '123', 'RETANGLE', '1x1', '2000', '10000', '2005', '7995', '200'),
('2019-06-15', '445632', 'rsgss', 'namkum', '123', 'RETANGLE', '2x2', '20', '10', '5', '5', '1'),
('2019-06-15', '12345', 'rsgss', 'namkum', '123', 'RETANGLE', '9x9', '2000', '10000', '5200', '4800', '1000'),
('2019-06-15', '12345', 'rsgss', 'namkum', '123', 'RETANGLE', '9x9', '2000', '10000', '5200', '4800', '1000'),
('2019-06-15', '12345', 'rsgss', 'namkum', '123', 'SQUARE', '7x7', '100', '1000', '0', '1000', '50'),
('2019-06-15', '7856', 'hansSquadRoboTechPvt.ltd', 'jaspur Road', '203', 'TRIANGLE', '8x8', '100', '100', '145', '-45', '10'),
('2019-06-15', '3565', 'q', 'wqww', '64', 'SQUARE', '8x8', '202', '100', '0', '100', '10'),
('2019-06-15', '2019', 'rsgss', 'namkum', '123', 'RETANGLE', '8x8', '200', '100', '0', '100', '50'),
('2019-06-15', '2019', 'rsgss', 'namkum', '123', 'TRIANGLE', '5x5', '300', '100', '0', '100', '50');

-- --------------------------------------------------------

--
-- Table structure for table `size_weight`
--

CREATE TABLE `size_weight` (
  `diameter` varchar(2000) NOT NULL,
  `weight` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size_weight`
--

INSERT INTO `size_weight` (`diameter`, `weight`) VALUES
('2x2', '20'),
('5x5', '50'),
('7x7', '70'),
('8x8', '80'),
('9x9', '90'),
('1x1', '10'),
('10x10', '100');

-- --------------------------------------------------------

--
-- Table structure for table `stock_in`
--

CREATE TABLE `stock_in` (
  `date` varchar(10000) DEFAULT NULL,
  `invoice_no` varchar(2000) NOT NULL,
  `company_name` varchar(20000) NOT NULL,
  `company_address` varchar(20000) NOT NULL,
  `gst_no` varchar(2000) NOT NULL,
  `pipe_type` varchar(2000) NOT NULL,
  `diameter` varchar(1000) DEFAULT NULL,
  `weight` varchar(1000) DEFAULT NULL,
  `piece` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

INSERT INTO `stock_in` (`date`, `invoice_no`, `company_name`, `company_address`, `gst_no`, `pipe_type`, `diameter`, `weight`, `piece`) VALUES
('2019-06-15', '445632', 'rsgss', 'namkum', '123', 'RETANGLE', '1x1', '2000', '10000'),
('2019-06-15', '445632', 'rsgss', 'namkum', '123', 'RETANGLE', '2x2', '20', '10'),
('2019-06-15', '12345', 'rsgss', 'namkum', '123', 'RETANGLE', '9x9', '2000', '10000'),
('2019-06-15', '12345', 'rsgss', 'namkum', '123', 'RETANGLE', '9x9', '2000', '10000'),
('2019-06-15', '12345', 'rsgss', 'namkum', '123', 'SQUARE', '7x7', '100', '1000'),
('2019-06-15', '7856', 'hansSquadRoboTechPvt.ltd', 'jaspur Road', '203', 'TRIANGLE', '8x8', '100', '100'),
('2019-06-15', '3565', 'q', 'wqww', '64', 'SQUARE', '8x8', '202', '100'),
('2019-06-15', '2019', 'rsgss', 'namkum', '123', 'RETANGLE', '8x8', '200', '100'),
('2019-06-15', '2019', 'rsgss', 'namkum', '123', 'TRIANGLE', '5x5', '300', '100');

-- --------------------------------------------------------

--
-- Table structure for table `stock_out`
--

CREATE TABLE `stock_out` (
  `date` varchar(2000) NOT NULL,
  `invoice_no` varchar(2000) NOT NULL,
  `company_name` varchar(2000) NOT NULL,
  `pipe_type` varchar(2000) NOT NULL,
  `diameter` varchar(2000) NOT NULL,
  `weight` varchar(2000) NOT NULL,
  `piece_out` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out`
--

INSERT INTO `stock_out` (`date`, `invoice_no`, `company_name`, `pipe_type`, `diameter`, `weight`, `piece_out`) VALUES
('2019-06-15', '5659', 'hansSquadRoboTechPvt.ltd', 'RETANGLE', '1x1', '2000', '1000'),
('2019-06-15', '56595', 'rsgss', 'RETANGLE', '1x1', '2000', '1000'),
('2019-06-15', '2', 'de', 'RETANGLE', '1x1', '2000', '5'),
('2019-06-15', '665', 'rsg', 'RETANGLE', '2x2', '20', '5'),
('2019-06-15', '54321', 'q', 'RETANGLE', '9x9', '2000', '5000'),
('2019-06-15', '3', 'de', 'TRIANGLE', '8x8', '100', '50'),
('2019-06-15', '55555', 'rsgss', 'TRIANGLE', '8x8', '100', '25'),
('2019-06-15', '36', 'asb', 'RETANGLE', '9x9', '2000', '200'),
('2019-06-15', '6563', 'de', 'TRIANGLE', '8x8', '100', '20'),
('2019-06-15', '200', 'hansSquadRoboTechPvt.ltd', 'RETANGLE', '8x8', '100', '50');

-- --------------------------------------------------------

--
-- Table structure for table `totalremaingstockin`
--

CREATE TABLE `totalremaingstockin` (
  `pipe_type` varchar(2000) NOT NULL,
  `diameter` varchar(2000) NOT NULL,
  `stock_in` varchar(2000) NOT NULL,
  `stock_out` varchar(2000) NOT NULL,
  `total_remaining_piece` varchar(2000) NOT NULL,
  `alert` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `totalremaingstockin`
--

INSERT INTO `totalremaingstockin` (`pipe_type`, `diameter`, `stock_in`, `stock_out`, `total_remaining_piece`, `alert`) VALUES
('RETANGLE', '1x1', '10000', '2005', '7995', '200'),
('RETANGLE', '2x2', '10', '5', '5', '1'),
('RETANGLE', '9x9', '10000', '5200', '14800', '2000'),
('SQUARE', '7x7', '1000', '0', '1000', '50'),
('TRIANGLE', '8x8', '100', '95', '5', '4'),
('SQUARE', '8x8', '100', '0', '100', '10'),
('RETANGLE', '8x8', '100', '50', '50', '20'),
('TRIANGLE', '5x5', '100', '0', '100', '50');

-- --------------------------------------------------------

--
-- Table structure for table `totalstockin`
--

CREATE TABLE `totalstockin` (
  `pipe_type` varchar(2000) NOT NULL,
  `diameter` varchar(2000) NOT NULL,
  `total_piece` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `totalstockin`
--

INSERT INTO `totalstockin` (`pipe_type`, `diameter`, `total_piece`) VALUES
('RETANGLE', '1x1', '10000'),
('RETANGLE', '2x2', '10'),
('RETANGLE', '9x9', '20000'),
('SQUARE', '7x7', '1000'),
('TRIANGLE', '8x8', '100'),
('SQUARE', '8x8', '100'),
('RETANGLE', '8x8', '100'),
('TRIANGLE', '5x5', '100');

-- --------------------------------------------------------

--
-- Table structure for table `totalstockout`
--

CREATE TABLE `totalstockout` (
  `pipe_type` varchar(2000) NOT NULL,
  `diameter` varchar(2000) NOT NULL,
  `total_piece_out` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `totalstockout`
--

INSERT INTO `totalstockout` (`pipe_type`, `diameter`, `total_piece_out`) VALUES
('RETANGLE', '1x1', '2005'),
('RETANGLE', '2x2', '5'),
('RETANGLE', '9x9', '5200'),
('TRIANGLE', '8x8', '95'),
('RETANGLE', '8x8', '50');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
