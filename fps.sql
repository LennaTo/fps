-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 28, 2019 at 09:57 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fps`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE IF NOT EXISTS `agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `clents` int(11) NOT NULL,
  `commission` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `agents`
--


-- --------------------------------------------------------

--
-- Table structure for table `claim`
--

CREATE TABLE IF NOT EXISTS `claim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policyNo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `natID` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `burial` varchar(255) NOT NULL,
  `claim` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `claim`
--

INSERT INTO `claim` (`id`, `policyNo`, `name`, `surname`, `natID`, `proof`, `burial`, `claim`, `status`) VALUES
(1, 'FPS199922A', 'Mako', 'hodzongi', 'claim/64513715_2329697937285500_767717492830240768_o.jpg', 'claim/Capture.PNG', 'claim/name.png', 0, 'Approved'),
(8, 'FPS199922A', 'Mako', 'hodzongi', 'claim/unnamed.jpg', 'claim/cover.jpg', 'claim/images.jpg', 15000, 'Pending'),
(7, 'CC19109V', 'linda', 'chishakwe', 'claim/Screenshot (1).png', 'claim/Screenshot (2).png', 'claim/Screenshot (3).png', 9000, 'pending'),
(11, 'CC199459', 'BELINDA', 'LUNGU', 'claim/Number 5.PNG', 'claim/TEST SCORE.PNG', 'claim/number 1.PNG', 35000, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg` varchar(255) NOT NULL,
  `comment` varchar(25555) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `reg`, `comment`) VALUES
(1, 'FPS199922A', 'ui9nh,'),
(2, 'FPS199922A', 'volume boe here'),
(3, 'CC194895K', 'gOOD SERVICES .. KEEP UP THE GOOD WORK');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `suffix`, `phone`, `address`) VALUES
(1, 'Old mutual', 'om', '775125004', 'harare'),
(2, 'nyaradzo', 'ny', '0732125004', 'harare'),
(3, 'CRUST CORE', 'CC', '7123562158', 'GWERU');

-- --------------------------------------------------------

--
-- Table structure for table `depend`
--

CREATE TABLE IF NOT EXISTS `depend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policyNo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `rship` varchar(255) NOT NULL,
  `policy` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `depend`
--

INSERT INTO `depend` (`id`, `policyNo`, `name`, `surname`, `rship`, `policy`) VALUES
(1, 'FPS199922A', 'Inasem', 'Hodzongi', 'Father', 'Basic'),
(2, 'FPS199922A', 'keylar', 'chioto', 'Daughter', 'Basic'),
(4, 'FPS199922A', 'Melody', 'Ngorima', 'Mother', 'Basic'),
(5, 'CC19109V', 'clive', 'kasichi', 'Son', 'Platnum'),
(6, 'CC194895K', 'martin', 'rubaya', 'Father', 'Basic'),
(7, 'CC194895K', 'robert', 'chabata', 'Nephew', 'Basic'),
(8, 'CC199459', 'martha', 'kadoom', 'Daughter', 'Standard');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE IF NOT EXISTS `policy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `premium` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`id`, `type`, `premium`, `cover`) VALUES
(1, 'Lite', 5, 9000),
(2, 'Basic', 10, 15000),
(3, 'Standard', 20, 35000),
(4, 'Platnum', 70, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE IF NOT EXISTS `premium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policyNo` varchar(255) NOT NULL,
  `amt` int(11) NOT NULL,
  `cover` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`id`, `policyNo`, `amt`, `cover`, `date`, `time`) VALUES
(1, 'FPS199922A', 10, 15000, '2019-10-26', '03:35:11'),
(2, 'FPS199922A', 10, 15000, '2019-10-26', '03:35:11'),
(3, 'FPS199922A', 10, 15000, '2019-10-26', '03:35:11'),
(4, 'CC199459', 20, 35000, '2019-10-28', '09:33:52'),
(5, 'CC19109V', 70, 100000, '2019-10-28', '10:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `regs`
--

CREATE TABLE IF NOT EXISTS `regs` (
  `reg` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `regs`
--


-- --------------------------------------------------------

--
-- Table structure for table `rship`
--

CREATE TABLE IF NOT EXISTS `rship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rship` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rship`
--

INSERT INTO `rship` (`id`, `rship`) VALUES
(1, 'Son'),
(2, 'Daughter'),
(3, 'Father'),
(4, 'Mother');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE IF NOT EXISTS `subscriber` (
  `reg` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `fone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `policy` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `pathe` varchar(255) NOT NULL,
  PRIMARY KEY (`reg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`reg`, `name`, `surname`, `sex`, `fone`, `address`, `user`, `password`, `email`, `policy`, `company`, `pathe`) VALUES
('FPS199922A', 'Mako', 'hodzongi', 'Male', '03569545', '1663 MKoba 12 Gweru Zimbabwe', 'mako', 'mako', 'mako@crust.com', 'Basic', '', 'images/1.JPG'),
('CC19109V', 'linda', 'chishakwe', 'Female', '071235894', 'mabvuku', 'linda', 'linda', 'linda@gmail.com', 'Platnum', 'CRUST CORE', 'images/cover.jpg'),
('CC194895K', 'RUSO', 'SIBANDA', 'Male', '071254863', 'RBZ', 'RUSO', 'RUSO', 'RUSO@GMAIL.COM', 'Basic', 'CRUST CORE', '../subscriber/images/72065391_10162268847090262_8993994334839767040_n.jpg'),
('CC199459', 'BELINDA', 'LUNGU', 'Female', '077796543', 'GREENDALE', 'BELINDA', 'BELINDA', 'BELINDA@GMAIL.COM', 'Standard', 'CRUST CORE', '../subscriber/images/72039238_1591433987674529_6169470248664694784_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `company` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `contact` int(25) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `access` int(25) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`company`, `name`, `surname`, `contact`, `email`, `sex`, `access`, `username`, `password`, `id`) VALUES
('nyaradzo', 'LennaTo', 'Takashi', 773747838, 'tate@gmail.com', 'Male', 0, 'admin', 'admin', 1),
('CRUST CORE', 'Trust', 'Matanga', 772273744, 'trust@gmail.com', 'Female', 1, 'head', 'head', 2),
('nyaradzo', 'James', 'White', 776665556, 'james@yahoo.com', 'Male', 2, 'james', 'james', 3),
('CRUST CORE', 'Lenie', 'Moyo', 773384756, 'leni@yahoo.com', 'Male', 3, 'leni', 'leni', 4),
('Old mutual', 'wellington', 'ganzio', 2147483647, 'welly@crustcore.com', 'male', 5, 'welly', 'welly', 5),
('CRUST CORE', 'teddy', 'magwere', 2147483647, 'teddy@gmail.com', 'male', 4, 'teddy', 'teddy', 6),
('Old mutual', 'esilida', 'hodzongi', 732125004, 'essy@gmail.com', 'Female', 1, 'essy', 'essy', 7),
('nyaradzo', 'Mako', 'hodzongi', 732125004, 'mako@gmail.com', 'FPS19580O', 1, 'mako', 'mako', 8),
('Old mutual', 'ranga', 'maggie', 732125004, 'ranga@crustfps.com', 'Male', 3, 'ranga', 'ranga', 9),
('nyaradzo', 'LAWRENCE', 'MUPARUTSA', 2147483647, 'uchihas327@gmail.com', 'Male', 2, 'lawrie', 'lawrie', 10);
