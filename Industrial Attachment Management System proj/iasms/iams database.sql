-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2022 at 01:58 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance management`
--

-- --------------------------------------------------------

--
-- Table structure for table `industrial_registration`
--

CREATE TABLE `industrial_registration` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `other_name` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `programme` varchar(200) NOT NULL,
  `session` varchar(200) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `index_number` varchar(255) NOT NULL,
  `company_supervisor_grade` int(11) NOT NULL,
  `visiting_supervisor_grade` int(11) NOT NULL,
  `company_supervisor_name` varchar(100) NOT NULL DEFAULT 'unassigned',
  `visiting_supervisor_name` varchar(100) NOT NULL DEFAULT 'unassigned',
  `company_supervisor_contact` varchar(11) NOT NULL,
  `visiting_supervisor_contact` varchar(11) NOT NULL,
  `attachment_region` varchar(100) NOT NULL DEFAULT 'unassigned',
  `submitted_report` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industrial_registration`
--

INSERT INTO `industrial_registration` (`id`, `first_name`, `last_name`, `other_name`, `level`, `programme`, `session`, `faculty`, `date`, `index_number`, `company_supervisor_grade`, `visiting_supervisor_grade`, `company_supervisor_name`, `visiting_supervisor_name`, `company_supervisor_contact`, `visiting_supervisor_contact`, `attachment_region`, `submitted_report`) VALUES
(6, 'EMILY', 'WANYEKI', '', '100', 'Civil Engineering', 'Weekend', 'FAST', '2022-02-15 17:01:17', 'N16/3/0561/017', 0, 0, 'Ian Duncan', 'Alphus Lutere', '0747635373', '0720112194', 'Nyanza', NULL),
(7, 'EDWIN', 'MADEDA', '', '', 'Accountancy', 'Evening', 'FBMS', '2022-02-19 09:51:19', 'N16/3/1458/017', 0, 84, 'Ian Duncan', 'Salome ireri', '0747635373', '0720112194', 'Central', 'EMS   IAMS  PROJECT.docx'),
(8, 'FRANCIS', 'KAHATA', '', '', 'Computer Science', 'Morning', 'FAST', '2022-02-19 10:26:18', 'N16/3/5648/017', 0, 0, 'Wilson Maina', 'Alphus Lutere', '0747635373', '', 'Central', NULL),
(9, 'Gilbert', 'McKenzie', '', '', 'Purchasing and Supply', 'Weekend', 'FOE', '2022-02-19 18:15:23', 'N11/3/4343/017', 0, 0, 'Vince Mokeira', 'Vincent Ateya', '0747635373', '0720112194', 'Central', 'Anthony Report on nssf 2021.docx'),
(12, 'MAUREEN', 'GATHONI', '', '', 'Computer Science', 'Morning', 'FAST', '2022-02-20 11:18:10', 'N11/3/1004/016', 0, 0, 'EDWIN', 'Alphus Lutere', '0747635373', '0720112194', 'Coast', 'EMS   IAMS  PROJECT-1.docx'),
(13, 'DOREEN', 'MAKENA', '', '', 'Professional Studies', 'Weekend', 'FBMS', '2022-02-20 12:43:30', 'N16/3/5678/017', 0, 0, 'Alexander Indimuli', 'Salome ireri', '0778697585', '', 'Western', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `industrial_registration`
--
ALTER TABLE `industrial_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `industrial_registration`
--
ALTER TABLE `industrial_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
