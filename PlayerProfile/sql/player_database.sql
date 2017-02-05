-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2017 at 01:59 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `player_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attribute`
--

CREATE TABLE `tbl_attribute` (
  `attribute_id` int(11) NOT NULL,
  `player_name` varchar(100) NOT NULL,
  `sprint_speed` int(11) NOT NULL,
  `acceleration` int(11) NOT NULL,
  `finishing` int(11) NOT NULL,
  `shot_power` int(11) NOT NULL,
  `heading` int(11) NOT NULL,
  `positioning` int(11) NOT NULL,
  `ball_controll` int(11) NOT NULL,
  `dribbling` int(11) NOT NULL,
  `reaction` int(11) NOT NULL,
  `free_kick` int(11) NOT NULL,
  `crossing` int(11) NOT NULL,
  `short_passing` int(11) NOT NULL,
  `long_passing` int(11) NOT NULL,
  `marking` int(11) NOT NULL,
  `tackling` int(11) NOT NULL,
  `reflexes` int(11) NOT NULL,
  `diving` int(11) NOT NULL,
  `handling` int(11) NOT NULL,
  `strength` int(11) NOT NULL,
  `aggression` int(11) NOT NULL,
  `awareness` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attribute`
--

INSERT INTO `tbl_attribute` (`attribute_id`, `player_name`, `sprint_speed`, `acceleration`, `finishing`, `shot_power`, `heading`, `positioning`, `ball_controll`, `dribbling`, `reaction`, `free_kick`, `crossing`, `short_passing`, `long_passing`, `marking`, `tackling`, `reflexes`, `diving`, `handling`, `strength`, `aggression`, `awareness`, `added_date`, `status`) VALUES
(1, 'Shinji Kagawa', 78, 85, 85, 82, 80, 88, 89, 88, 80, 78, 87, 91, 79, 79, 75, 60, 25, 30, 77, 75, 86, '2017-02-03 07:32:52', 1),
(2, 'Wayne Rooney', 79, 85, 90, 92, 87, 88, 86, 87, 79, 82, 83, 85, 89, 72, 74, 50, 27, 25, 83, 84, 76, '2017-02-03 07:36:43', 1),
(3, 'David De Gea', 55, 60, 70, 92, 60, 90, 90, 55, 93, 82, 65, 77, 86, 34, 40, 87, 94, 96, 85, 75, 90, '2017-02-05 00:11:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_players`
--

CREATE TABLE `tbl_players` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `height` varchar(20) NOT NULL,
  `weight` varchar(20) NOT NULL,
  `position` enum('GK','LWB','LB','CB','RB','RWB','CDM','LM','CM','RM','CAM','LW','LF','CF','RF','RW','ST') NOT NULL,
  `foot` enum('RIGHT','LEFT','BOTH') NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `club` varchar(100) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_players`
--

INSERT INTO `tbl_players` (`player_id`, `player_name`, `age`, `height`, `weight`, `position`, `foot`, `nationality`, `club`, `attribute_id`, `added_date`, `status`, `image`) VALUES
(1, 'Shinji Kagawa', 25, '5''10 ft', '70 Kg', 'CAM', 'BOTH', 'Japan', 'Borrusia Dortmund', 1, '2017-02-03 07:34:18', 1, '/Shinji Kagawa.png'),
(2, 'Wayne Rooney', 29, '5''9 ft', '80 Kg', 'CF', 'RIGHT', 'England', 'Manchester United Football Club', 2, '2017-02-03 07:38:09', 1, '/Wayne Rooney.png'),
(3, 'David De Gea', 26, '6''3 ft', '71 Kg', 'GK', 'RIGHT', 'Spain', 'Manchester United Football Club', 3, '2017-02-05 00:15:52', 1, '/David De Gea.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_attribute`
--
ALTER TABLE `tbl_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `tbl_players`
--
ALTER TABLE `tbl_players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_attribute`
--
ALTER TABLE `tbl_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_players`
--
ALTER TABLE `tbl_players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_players`
--
ALTER TABLE `tbl_players`
  ADD CONSTRAINT `tbl_players_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `tbl_attribute` (`attribute_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
