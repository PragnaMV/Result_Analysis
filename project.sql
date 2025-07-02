-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 13, 2024 at 09:22 AM
-- Server version: 8.0.36
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `extracted_data`
--

DROP TABLE IF EXISTS `extracted_data`;
CREATE TABLE IF NOT EXISTS `extracted_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Usn` varchar(255) DEFAULT NULL,
  `Semester` varchar(255) DEFAULT NULL,
  `StudentName` varchar(255) DEFAULT NULL,
  `SubjectCode` varchar(255) DEFAULT NULL,
  `SubjectName` varchar(255) DEFAULT NULL,
  `InternalMarks` int DEFAULT NULL,
  `ExternalMarks` int DEFAULT NULL,
  `TotalMarks` int DEFAULT NULL,
  `Result` varchar(255) DEFAULT NULL,
  `AnnouncedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_usn` (`Usn`),
  KEY `idx_semester` (`Semester`),
  KEY `idx_student_name` (`StudentName`),
  KEY `idx_subject_code` (`SubjectCode`),
  KEY `idx_subject_name` (`SubjectName`)
) ENGINE=InnoDB AUTO_INCREMENT=248285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

DROP TABLE IF EXISTS `scheme`;
CREATE TABLE IF NOT EXISTS `scheme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `credits` int NOT NULL,
  `year` int NOT NULL,
  `sem` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `scheme`
--
-- --------------------------------------------------------

--
-- Table structure for table `sgpa_data`
--

DROP TABLE IF EXISTS `sgpa_data`;
CREATE TABLE IF NOT EXISTS `sgpa_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Usn` varchar(255) DEFAULT NULL,
  `Semester` varchar(255) DEFAULT NULL,
  `StudentName` varchar(255) DEFAULT NULL,
  `SGPA` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sgpa` (`SGPA`),
  KEY `Usn` (`Usn`),
  KEY `Semester` (`Semester`),
  KEY `StudentName` (`StudentName`)
) ENGINE=InnoDB AUTO_INCREMENT=24691 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topper_data`
--

DROP TABLE IF EXISTS `topper_data`;
CREATE TABLE IF NOT EXISTS `topper_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Usn` varchar(255) DEFAULT NULL,
  `Semester` varchar(255) DEFAULT NULL,
  `StudentName` varchar(255) DEFAULT NULL,
  `SGPA` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_usn` (`Usn`),
  KEY `idx_semester` (`Semester`),
  KEY `idx_student_name` (`StudentName`),
  KEY `SGPA` (`SGPA`)
) ENGINE=InnoDB AUTO_INCREMENT=850 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sgpa_data`
--
ALTER TABLE `sgpa_data`
  ADD CONSTRAINT `sgpa_data_ibfk_1` FOREIGN KEY (`Usn`) REFERENCES `extracted_data` (`Usn`),
  ADD CONSTRAINT `sgpa_data_ibfk_2` FOREIGN KEY (`Semester`) REFERENCES `extracted_data` (`Semester`),
  ADD CONSTRAINT `sgpa_data_ibfk_3` FOREIGN KEY (`StudentName`) REFERENCES `extracted_data` (`StudentName`);

--
-- Constraints for table `topper_data`
--
ALTER TABLE `topper_data`
  ADD CONSTRAINT `topper_data_ibfk_1` FOREIGN KEY (`Usn`) REFERENCES `extracted_data` (`Usn`),
  ADD CONSTRAINT `topper_data_ibfk_2` FOREIGN KEY (`Semester`) REFERENCES `extracted_data` (`Semester`),
  ADD CONSTRAINT `topper_data_ibfk_3` FOREIGN KEY (`StudentName`) REFERENCES `extracted_data` (`StudentName`),
  ADD CONSTRAINT `topper_data_ibfk_4` FOREIGN KEY (`SGPA`) REFERENCES `sgpa_data` (`SGPA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
