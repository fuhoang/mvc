-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2013 at 05:41 PM
-- Server version: 5.5.32
-- PHP Version: 5.5.4-1+debphp.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `new_era_geeks`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `role` enum('default','admin','owner') NOT NULL DEFAULT 'default',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `role`) VALUES
(1, 'fu', '447347ac18872dc26907c5b709aec3ebbd33b86a83813c7a5318dd2e879c3d97', 'owner'),
(9, 'hello', 'eca84698820b17c0c9f6b93f8edbd346061b96a57669531f277bdbf3c1c80409', 'default'),
(13, 'hi1234', '868c073d19752075dcb7ae91ddce360dd532808b0850af7eb3d6881056257c5e', 'default'),
(15, 'duane', '5dbccb11ad5227cdb341126fdd8dd8ef390d9405f3b2de6b63e314e7920aa057', 'default'),
(16, 'fu1', '998c3e21df1cfc2744046d27a3dffe3cec4d998e0f17705792ff4806c32e4832', 'default'),
(17, NULL, 'f30aed9e913f39818fc0c108ae813b1815cf4e0a0c1179cbfa2e615499e5e4a1', 'default');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
