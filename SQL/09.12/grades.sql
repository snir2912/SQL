-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 05:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_of_rock`
--

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `ID` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `students_id` int(11) NOT NULL,
  `lessons_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`ID`, `grade`, `students_id`, `lessons_id`) VALUES
(1, 95, 1, 3),
(2, 70, 1, 1),
(3, 90, 1, 2),
(4, 99, 6, 2),
(5, 65, 6, 3),
(6, 100, 6, 1),
(7, 70, 8, 2),
(8, 60, 8, 1),
(9, 55, 8, 3),
(10, 100, 5, 2),
(11, 100, 5, 1),
(12, 100, 5, 3),
(13, 78, 2, 2),
(14, 100, 2, 1),
(15, 90, 2, 3),
(16, 90, 3, 2),
(17, 85, 3, 1),
(18, 100, 3, 3),
(19, 60, 4, 2),
(20, 100, 4, 3),
(21, 100, 4, 1),
(22, 90, 7, 2),
(23, 78, 7, 1),
(24, 81, 7, 3),
(25, 70, 9, 2),
(26, 80, 9, 1),
(27, 80, 9, 3),
(28, 70, 10, 2),
(29, 80, 10, 1),
(30, 75, 10, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `lessons_id` (`lessons_id`),
  ADD KEY `students_id` (`students_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`lessons_id`) REFERENCES `lessons` (`ID`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`students_id`) REFERENCES `students` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SELECT * FROM `students` WHERE students.name;
SELECT * FROM `lessons` WHERE lessons.name;
SELECT * FROM `grades` WHERE grades.grade;
SELECT MAX(grade)FROM `grades` WHERE grade;
SELECT MIN(grade)FROM `grades` WHERE grade;
SELECT * FROM `students` WHERE students.ID ORDER BY students.birthday LIMIT 1;
SELECT * FROM `students` ORDER by students.ID DESC LIMIT 1;
