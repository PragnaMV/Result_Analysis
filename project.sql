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

INSERT INTO `scheme` (`id`, `code`, `name`, `credits`, `year`, `sem`) VALUES
(1, 'BMATS101', 'Mathematics-I for CSE Stream', 4, 2022, 1),
(2, 'BPHYS102', 'Applied Physics for CSE stream', 4, 2022, 1),
(3, 'BPOPS103', 'Principles of Programming Using C', 3, 2022, 1),
(4, 'BESCK104C', 'Introduction to Electronics Communication', 3, 2022, 1),
(5, 'BETCK105I', 'Introduction to Cyber Security', 3, 2022, 1),
(6, 'BENGK106', 'Communicative English', 1, 2022, 1),
(7, 'BICOK107', 'Indian Constitution', 1, 2022, 1),
(8, 'BIDTK158', 'Innovation and Design Thinking', 1, 2022, 1),
(9, 'BMATS201', 'Mathematics-II forCSE Stream', 4, 2022, 2),
(10, 'BCHES202', 'Applied Chemistry for CSE Stream', 4, 2022, 2),
(11, 'BCEDK203', 'Computer-Aided Engineering Drawing', 3, 2022, 2),
(12, 'BESCK204B', 'Introduction to Electrical Engineering', 3, 2022, 2),
(13, 'BPLCK205B', 'Introduction to Python Programming', 2, 2022, 2),
(14, 'BPWSK206', 'Professional Writing Skills in English', 1, 2022, 2),
(15, 'BKSKK207', 'Samskrutika Kannada', 1, 2022, 2),
(16, 'BKBKK207', 'Balake Kannada', 1, 2022, 2),
(17, 'BSFHK258', 'Scientific Foundations of Health', 1, 2022, 2),
(18, 'BCS301', 'Mathematics for Computer Science', 4, 2022, 3),
(19, 'BCS302', 'Digital Design & ComputerOrganization', 4, 2022, 3),
(20, 'BCS303', 'Operating Systems', 4, 2022, 3),
(21, 'BCS304', 'Data Structures and Applications', 3, 2022, 3),
(22, 'BCSL305', 'Data Structures Lab', 1, 2022, 3),
(23, 'BCS306A', 'Object Oriented Programming with Java', 3, 2022, 3),
(24, 'BDS306B', 'Python Programming for Data Science', 3, 2022, 3),
(25, 'BDS306C', 'Data Analytics with R', 3, 2022, 3),
(26, 'BCS358A', 'Data Analytics with Excel', 1, 2022, 3),
(27, 'BAI358B', 'Ethics and Public Policy for AI', 1, 2022, 3),
(28, 'BCS358C', 'Project Managementwith Git', 1, 2022, 3),
(29, 'BAI358D', 'PHP Programming', 1, 2022, 3),
(30, 'BSCK307', 'Social Connect and Responsibility', 1, 2022, 3),
(31, 'BNSK359', 'National Service Scheme (NSS)', 0, 2022, 3),
(32, 'BPEK359', 'Physical Education (PE) (Sports and Athletics)', 0, 2022, 3),
(33, 'BYOK359', 'Yoga', 0, 2022, 3),
(34, 'BCS401', 'Analysis & Design of Algorithms', 3, 2022, 4),
(35, 'BAD402', 'Artificial Intelligence', 4, 2022, 4),
(36, 'BCS403', 'Database Management Systems', 4, 2022, 4),
(37, 'BCSL404', 'Analysis & Design of Algorithms Lab', 1, 2022, 4),
(38, 'BCS405A', 'Discrete Mathematical Structures', 3, 2022, 4),
(39, 'BAI405B', 'Metric Spaces', 3, 2022, 4),
(40, 'BCS405C', 'Optimization Technique', 3, 2022, 4),
(41, 'BAI405D', 'Algorithmic Game Theory', 3, 2022, 4),
(42, 'BDSL456A', 'Scala', 1, 2022, 4),
(43, 'BDSL456B', 'Mango DB', 1, 2022, 4),
(44, 'BDSL456C', ' MERN ', 1, 2022, 4),
(45, 'BCS4L56D', 'Technical writing using LATEX (Lab)', 1, 2022, 4),
(46, 'BBOK407', 'Biology For Engineers', 2, 2022, 4),
(47, 'BUHK408', 'Universal human values course', 1, 2022, 4),
(48, 'BNSK459', 'National Service Scheme (NSS)', 0, 2022, 4),
(49, 'BPEK459', 'Physical Education (PE) (Sports and Athletics)', 0, 2022, 4),
(50, 'BYOK459', 'Yoga', 0, 2022, 4),
(51, 'BCI501', 'Software Engineering & Project Management', 3, 2022, 5),
(52, 'BCI502', 'Computer Networks', 4, 2022, 5),
(53, 'BCI503', 'Theory of Computation', 4, 2022, 5),
(54, 'BCIL504', 'Data Visualization Lab', 1, 2022, 5),
(55, 'BCI515A', 'Computer Vision', 3, 2022, 5),
(56, 'BCI515B', 'Information Retrieval', 3, 2022, 5),
(57, 'BCI515C', 'Nonlinear Control Techniques', 3, 2022, 5),
(58, 'BCI515D', 'Image and Video Processing', 3, 2022, 5),
(59, 'BCI586', 'Mini Project', 2, 2022, 5),
(60, 'BRMK557', 'Research Methodology and IPR', 3, 2022, 5),
(61, 'BESK508', 'Environmental Studies', 2, 2022, 5),
(62, 'BNSK559', 'National Service Scheme (NSS)', 0, 2022, 5),
(63, 'BPEK559', 'Physical Education (PE) (Sports and Athletics)', 0, 2022, 5),
(64, 'BYOK559', 'Yoga', 0, 2022, 5),
(65, 'BCI601', 'Microcontrollers& Embedded Systems', 4, 2022, 6),
(66, 'BCI602', 'Machine Learning -I', 4, 2022, 6),
(67, 'BCI613A', 'Human-Centered AI', 3, 2022, 6),
(68, 'BCI613B', 'Cloud Computing', 3, 2022, 6),
(69, 'BCI613C', 'Blockchain Technology', 3, 2022, 6),
(70, 'BCI613D', 'Time Series Analysis', 3, 2022, 6),
(71, 'BCI654A', 'Introduction to Data Structures', 3, 2022, 6),
(72, 'BCI654B', 'Fundamentals of Operating Systems', 3, 2022, 6),
(73, 'BCI654C', 'Mobile Application Development', 3, 2022, 6),
(74, 'BCI654D', 'Introduction to AI', 3, 2022, 6),
(75, 'BCI685', 'Project Phase I', 2, 2022, 6),
(76, 'BCIL606', 'Machine Learning lab', 1, 2022, 6),
(77, 'BCI657A', 'Explainable AI', 1, 2022, 6),
(78, 'BCI657B', 'PyTorch', 1, 2022, 6),
(79, 'BCI657C', 'Generative AI', 1, 2022, 6),
(80, 'BCI657D', 'Devops', 1, 2022, 6),
(81, 'BNSK659', 'National Service Scheme (NSS)', 0, 2022, 6),
(82, 'BPEK659', 'Physical Education (PE) (Sports and Athletics)', 0, 2022, 6),
(83, 'BYOK659', 'Yoga', 0, 2022, 6),
(84, 'BCI701', 'Natural Language Processing', 4, 2022, 7),
(85, 'BCI702', 'Machine Learning -II', 4, 2022, 7),
(86, 'BCI703', 'Information &Network Security', 4, 2022, 7),
(87, 'BCI714A', 'AI of Things', 3, 2022, 7),
(88, 'BCI714B', 'High Performance Computing', 3, 2022, 7),
(89, 'BCI714C', 'Data Engineering & MLOps', 3, 2022, 7),
(90, 'BCI714D', 'Big Data Analytics', 3, 2022, 7),
(91, 'BCI755A', 'Introduction to DBMS', 3, 2022, 7),
(92, 'BCI755B', 'Introduction to Algorithms', 3, 2022, 7),
(93, 'BCI755C', 'Software Engineering', 3, 2022, 7),
(94, 'BCI755D', 'Introduction to Machine Learning', 3, 2022, 7),
(95, 'BCI786', 'Major Project Phase-II', 6, 2022, 7),
(96, 'BCI8011', 'Professional Elective throughNPTEL', 3, 2022, 8),
(97, 'BCI8022', 'Open Elective (Online Courses) Only through NPTEL', 3, 2022, 8),
(98, 'BCI803', 'Internship', 10, 2022, 8),
(99, '21CS51', 'Automata Theory and compiler\r\nDesign\r\n', 3, 2021, 5),
(100, '21CS52', 'Computer Networks\r\n', 4, 2021, 5),
(101, '21CS53', 'Database Management Systems\r\n', 3, 2021, 5),
(102, '21AI54', 'Principles of Artificial Intelligence\r\n', 3, 2021, 5),
(103, '21CSL55', 'Database Management Systems\r\nLaboratory with Mini Project\r\n', 1, 2021, 5),
(104, '21RMI56', 'Research Methodology & Intellectual Property Rights\r\n', 2, 2021, 5),
(105, '21CIV57', 'Environmental Studies\r\n\r\n', 1, 2021, 5),
(106, '21CSL581', 'Angular Js and NodeJS\r\n\r\n', 1, 2021, 5),
(107, '21CSL582', 'C# and .Net Framework', 1, 2021, 5),
(108, '21MATCS41', 'MATHEMATICAL\r\nFOUNDATIONS FOR\r\nCOMPUTING\r\nPROBABILITY \r\nSTATISTICS', 3, 2021, 4),
(109, '21CS42', 'DESIGN AND ANALYSIS\r\nOF ALGORITHMS', 4, 2021, 4),
(110, '21CS43', 'MICROCONTROLLER\r\nAND EMBEDDED\r\nSYSTEM', 4, 2021, 4),
(111, '21CS44', 'OPERATING SYSTEM\r\n', 3, 2021, 4),
(112, '21BE45', 'BIOLOGY FOR\r\nENGINEERS', 2, 2021, 4),
(113, '21CSL46', 'PYTHON\r\nPROGRAMMING\r\nLABORATORY', 1, 2021, 4),
(114, '21KSK47', 'SAMSKRUTIKA\r\nKANNADA', 1, 2021, 4),
(115, '21KBK47', 'BALAKE KANNADA', 1, 2021, 4),
(116, '21CIP47', 'UNIVERSAL HUMAN\r\nVALUES AND\r\nPROFESSIONAL ETHICS', 1, 2021, 4),
(117, '21CSL481', 'Web Programming\r\n', 1, 2021, 4),
(118, '21CS482', 'UNIX SHELL\r\nPROGRAMMING\r\n', 1, 2021, 4),
(119, '21CSL483', 'R Programming\r\n', 1, 2021, 4),
(120, '21UH49', 'Universal Human Values\r\n', 1, 2021, 4),
(121, '21INT49', 'Inter/Intra Institutional Internship\r\n', 2, 2021, 4),
(122, '21ELE13', 'Basic Electrical Engineering\r\n', 3, 2021, 1),
(123, '21CS33', 'Analog and Digital Electronics', 4, 2021, 3),
(124, '21MAT11', 'Calculus & Differential Equations', 3, 2021, 1),
(125, '21PHY12	', 'Engineering Physics\r\n', 3, 2021, 1),
(126, '21ELE13', 'Basic Electrical Engineering', 3, 2021, 1),
(127, '21CIV14', 'Elements of Civil Engineering and Mechanics', 3, 2021, 1),
(128, '21EVNL15', 'Engineering Visualization', 3, 2021, 1),
(129, '21PHYL16', 'Engineering Physics Laboratory', 1, 2021, 1),
(130, '21ELEL17', 'Basic Electrical Engineering Laboratory', 1, 2021, 1),
(131, '21EGH18', 'Communicative English', 2, 2021, 1),
(132, '21IDT19', 'Innovation and Design Thinking', 1, 2021, 1),
(133, '21SFH19', 'Scientific Foundations of Health', 1, 2021, 1),
(134, '21MAT21', 'Advanced Calculus and Numerical Methods', 3, 2021, 2),
(135, '21CHE22', 'Engineering Chemistry', 3, 2021, 2),
(136, '21PSP23', 'Problem-Solving through Programming ', 3, 2021, 2),
(137, '21ELN24', 'Basic Electronics & Communication Engineering	', 3, 2021, 2),
(138, '21EME25', 'Elements of MechanicalEngineering', 3, 2021, 2),
(139, '21CHEL26', 'Engineering Chemistry Laboratory ', 1, 2021, 2),
(140, '21CPL27', 'Computer Programming Laboratory', 1, 2021, 2),
(141, '21EGH28', 'Professional Writing Skills in English', 2, 2021, 2),
(142, '21SFH29', 'Scientific Foundations of Health', 1, 2021, 2),
(143, '21IDT29', 'Innovation and Design Thinking', 1, 2021, 2),
(144, '21MAT31', 'Transform Calculus, Fourier Series and Numerical Techniques', 3, 2021, 3),
(145, '21CS32', 'Data Structures and  Applications', 4, 2021, 3),
(146, '21CS33', 'Analog and Digital Electronics', 4, 2021, 3),
(147, '21CS34', 'Computer Organization and Architecture', 3, 2021, 3),
(148, '21CSL35', 'Object Oriented Programming with JAVA Laboratory', 1, 2021, 3),
(149, '21UH36', 'Social Connect and Responsibility', 1, 2021, 3),
(150, '21KSK37', 'Samskrutika Kannada', 1, 2021, 3),
(151, '21KBK37', 'Balake Kannada', 1, 2021, 3),
(152, '21CIP37', 'Constitution of India and Professional Ethics', 1, 2021, 3),
(153, '21CS382', 'Programming in C++', 1, 2021, 3),
(154, '21CSL381', 'Mastering Office', 1, 2021, 3);

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
