-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 22, 2019 at 08:42 AM
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `claim`
--

INSERT INTO `claim` (`id`, `policyNo`, `name`, `surname`, `natID`, `proof`, `burial`, `claim`) VALUES
(1, 'FPS199922A', 'Mako', 'hodzongi', 'claim/64513715_2329697937285500_767717492830240768_o.jpg', 'claim/Capture.PNG', 'claim/name.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg` varchar(255) NOT NULL,
  `comment` varchar(25555) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `reg`, `comment`) VALUES
(1, 'FPS199922A', 'ui9nh,'),
(2, 'FPS199922A', 'volume boe here');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `suffix`, `phone`, `address`) VALUES
(1, 'Old mutual', 'om', '775125004', 'harare'),
(2, 'nyaradzo', 'ny', '0732125004', 'harare');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `depend`
--

INSERT INTO `depend` (`id`, `policyNo`, `name`, `surname`, `rship`, `policy`) VALUES
(1, 'FPS199922A', 'Inasem', 'Hodzongi', 'Father', 'Basic'),
(2, 'FPS199922A', 'keylar', 'chioto', 'Daughter', 'Basic'),
(4, 'FPS199922A', 'Melody', 'Ngorima', 'Mother', 'Basic');

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
  `cover` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`id`, `policyNo`, `amt`, `cover`, `date`, `time`) VALUES
(1, 'FPS199922A', 70, 100000, '2019-10-21', '00:00:00'),
(2, 'FPS199922A', 70, 100000, '2019-10-21', '00:00:00'),
(3, 'FPS199922A', 5, 9000, '2019-10-21', '00:00:00'),
(4, 'FPS199922A', 5, 9000, '2019-10-21', '00:00:00'),
(5, 'FPS199922A', 5, 9000, '2019-10-21', '00:00:00'),
(6, 'FPS199922A', 5, 9000, '2019-10-21', '00:00:00'),
(7, 'FPS199922A', 5, 9000, '2019-10-21', '00:00:00'),
(8, 'FPS199922A', 5, 9000, '2019-10-21', '00:00:00'),
(9, 'FPS199922A', 5, 9000, '2019-10-21', '06:41:46'),
(10, 'FPS199922A', 5, 9000, '2019-10-21', '06:41:46'),
(11, 'FPS199922A', 5, 9000, '2019-10-21', '08:50:47'),
(12, 'FPS199922A', 5, 9000, '2019-10-21', '08:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `reg` varchar(255) DEFAULT NULL,
  `capturer` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reg`, `capturer`, `date`, `level`, `id`, `state`) VALUES
('s1', 'Tatenda Dombo', '09/06/2013', '2.2', 1, '0'),
('s4', 'Tatenda Dombo', '09/07/2013', '1.2', 2, '0'),
('s2', 'Tatenda Dombo', '09/07/2013', '2.2', 3, '0'),
('s3', 'Tatenda Dombo', '09/07/2013', '2.2', 4, '0'),
('R139859F', 'Tatenda Dombo', '09/19/2013', '1.1', 5, '0');

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
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `reg` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `script` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `idnum` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `pcontact` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`reg`, `name`, `surname`, `script`, `address`, `idnum`, `email`, `contact`, `sex`, `pcontact`, `id`, `state`) VALUES
('s1', 'Chido', 'Tapfuma', 'student/getstudentpicture.jpg', 'Northlea Gweru', '11-11111111-A-11', 'chido@facebook.com', '0772222666', 'female', '772273774', 1, 0),
('s2', 'Tafadzwa', 'Chihota', 'student/IMG-20130512-WA0001.jpg', 'Mkoba 1 high school', '22-22222222-A-22', 'tc@yahoo.com', '0711662533', 'male', '0773336666', 2, 0),
('s3', 'Tafadzwa', 'Chibanda', 'student/Kudzi.jpg', 'Nashville Gweru', '33-33333333-A-33', 'tgchibanda@gmail.com', '0712345677', 'male', '0774444666', 3, 0),
('s4', 'Gire', 'Jobo', 'student/zvaraya.jpg', '23 Mambo', '23-32323232-A-33', 'gire@msu.com', '0773364636', 'male', '0773374657', 4, 0),
('R131479L', 'Trust', 'Usai', 'student/pita.jpg', 'Mkoba 1', '44-11111111-A-22', 'trust@yahoo.com', '0735544545', 'male', '0772273777', 5, 0),
('R139859F', 'Done', 'Mpasi', 'student/Ernest.png', 'Ascot', '55-11122111-A-11', 'done@gmail.com', '0712884959', 'male', '0772112332', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE IF NOT EXISTS `subscriber` (
  `reg` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `fone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `policy` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`reg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`reg`, `name`, `surname`, `fone`, `address`, `user`, `password`, `email`, `policy`, `path`) VALUES
('FPS199922A', 'Mako', 'hodzongi', '03569545', '1663 MKoba 12 Gweru Zimbabwe', 'mako', 'mako', 'mako@crust.com', 'Basic', 'images/1.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `surname`, `contact`, `email`, `sex`, `access`, `username`, `password`, `id`) VALUES
('LennaTo', 'Takashi', 773747838, 'tate@gmail.com', 'Male', 0, 'admin', 'admin', 1),
('Trust', 'Matanga', 772273744, 'trust@gmail.com', 'Female', 1, 'head', 'head', 2),
('James', 'White', 776665556, 'james@yahoo.com', 'Male', 2, 'james', 'james', 3),
('Lenie', 'Moyo', 773384756, 'leni@yahoo.com', 'Male', 3, 'leni', 'leni', 4),
('wellington', 'ganzio', 2147483647, 'welly@crustcore.com', 'male', 5, 'welly', 'welly', 5),
('teddy', 'magwere', 2147483647, 'teddy@gmail.com', 'male', 4, 'teddy', 'teddy', 6),
('esilida', 'hodzongi', 732125004, 'essy@gmail.com', 'Female', 0, 'essy', 'essy', 7),
('Mako', 'hodzongi', 732125004, 'mako@gmail.com', 'FPS19580O', 0, 'mako', 'mako', 8),
('ranga', 'maggie', 732125004, 'ranga@crustfps.com', 'Male', 3, 'ranga', 'ranga', 9);
