-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: sql1.njit.edu
-- Generation Time: Dec 20, 2023 at 05:31 PM
-- Server version: 8.0.17
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dsg2`
--

-- --------------------------------------------------------

--
-- Table structure for table `finalTHREE`
--

CREATE TABLE IF NOT EXISTS `finalTHREE` (
`finalID` int(11) NOT NULL,
  `userID` varchar(60) NOT NULL,
  `userPW` varchar(60) NOT NULL,
  `userfirstname` varchar(60) NOT NULL,
  `userlastname` varchar(60) NOT NULL,
  `usercollege` varchar(60) NOT NULL,
  `usermajor` varchar(60) NOT NULL,
  `hashPW` varchar(60) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `finalTHREE`
--

INSERT INTO `finalTHREE` (`finalID`, `userID`, `userPW`, `userfirstname`, `userlastname`, `usercollege`, `usermajor`, `hashPW`) VALUES
(1, 'mp98@njit.edu', 'man', 'man', 'man', 'man', 'man', '$2y$10$0T2Uq5uEVMRGH21W/oPcrejdDdzxapEXShFK0tVk8vqkzKTJXq8vG'),
(3, 'gojover@gmail.com', 'man', 'gojo', 'satoru', 'jujutsu ', 'infinity', '$2y$10$3R7.seEjnNIGHKV21vEUUuroKJIEeO3Y.m8HloaLA3mdRwiKp6gQe'),
(5, 'god', 'damn', 'them', 'all', 'ahhh', 'ahh', '$2y$10$mJ/g1/Z/6ehzBHwHKyZJaOkdId.sQn9UdKgYZKsFKrnZbqv1DVJpG'),
(6, 'godit', 'damn', 'them', 'all', 'ahhh', 'ahh', '$2y$10$lNw/k8IEk345D0Glc89gB.gxN1cnmsTNGAMmsyPDtAtoJVHxvYqe.'),
(7, 'manman@gmail.com', 'man', 'man', 'man', 'man', 'man', '$2y$10$EbwoYh5du57hJutzgEW8/OcAznNnhgGfPxL5EXchRbQYEI1twGWwW'),
(10, 'dan@gmail', 'no', 'no', 'no', 'no', 'no', '$2y$10$1s1RUr8dtiNHlDScDkyR6OfoirKuIYA59dXEtcYYZ1ZX6algt9E5m'),
(11, 'nohope@gmail.com', 'nohope', 'nohope', 'nohope', 'nohope', 'IT', '$2y$10$9FZojOkmWrLluvQjBd2VDerSDQilbeOs.lNRgIPhlCuGAvIS14zhG'),
(12, 'g@gmail.com', 'noone', 'no', 'no', 'no', 'no', '$2y$10$fGyztHBsGBy8Ld5vWr9IOu2NJ.phG9VakhvFCIG2nalMKAPnqAVRO'),
(13, 'boing', 'boing', 'boing', 'boing', 'boing', 'boing', '$2y$10$nt4pQR./QnJjYfa42obEV.uNZszRS/dDNJ56mHWTTh786d0mdH0iy'),
(14, 'no', 'notatall', 'dan', 'g', 'njit', 'balling', '$2y$10$77Wh1XjLMZOVs06ahaINbOMnOW0WzZIizBJia.SAUfPK7rE5UJmu6'),
(15, 'rampage', 'thisisit', 'dan', 'edge', 'no', 'wait', '$2y$10$UbEa6Qdut2mx5llBz/1CW.CscOkVPG2jxjJw95nZak7E6iQ8uHKQC'),
(16, 'rampage', 'thisisit', 'dan', 'edge', 'no', 'wait', '$2y$10$tsU5U0RYX2YSg8gADL7kmeGbISmWLoHYKIdlW43WjoRgfgOavPxgG'),
(17, 'justice', 'blackrequiem', 'dog', 'cat', 'njit', 'no', '$2y$10$Ic02.TekemcB8l8PwcA.4uwM.0dOQCVaDRiIHkon15yaIBWL6L/fC'),
(18, 'nohope@gmail.com', 'bruh', 'Big', 'Depression', 'NJIT', 'Architecture', '$2y$10$8gp4q9OntAkm0JGY.Oa8TuEvj0HJztyohZ2tdbT98JnsvXDt2Y7Sq'),
(19, 'nohope@gmail.com', 'bruh', 'Big', 'Depression', 'NJIT', 'Architecture', '$2y$10$F5v7TXhDhK.XYSiVwdgqxO.0q5PY/rxKdNIq7yaum2SuENgLu4zvW'),
(20, 'im266@njit.edu', 'money', 'no', 'cat', 'njit', 'no', '$2y$10$gcQoLDEdh8Lo1rxljVCEwu9BRgL2lV0JYbiqf2C112owtxDTJjjM6'),
(21, 'icemisajon@gmail.com', 'money', 'no', 'cat', 'njit', 'no', '$2y$10$KTmnt1In3QFXaE5B8Segh.xfkFG1gACsuMU0J4vSQtLX3PjCEHzle'),
(22, 'paul@gmail.com', 'man', 'Manwinder', 'Paul', 'Njit', 'IT', '$2y$10$zOVjynz3fJo1BYVqoA7oUeM3HIK3qoQ29DWcbHOGRuLVAe3lk0Ksm'),
(24, 'godzilla', 'alight', 'dan', 'Guarino', '', '', '$2y$10$3xlr.sGQFL3BMQwtFEwzbut70EV9waVQhaCymG4OICweFFdsWAa7.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `finalTHREE`
--
ALTER TABLE `finalTHREE`
 ADD PRIMARY KEY (`finalID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `finalTHREE`
--
ALTER TABLE `finalTHREE`
MODIFY `finalID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
