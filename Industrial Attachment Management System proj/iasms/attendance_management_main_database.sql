-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 10:33 AM
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
-- Table structure for table `assigned_lecturers`
--

CREATE TABLE `assigned_lecturers` (
  `id` int(11) NOT NULL,
  `regions` varchar(255) NOT NULL,
  `first_supervisor_fast` varchar(255) NOT NULL,
  `second_supervisor_fast` varchar(255) NOT NULL,
  `first_supervisor_fbms` varchar(255) NOT NULL,
  `second_supervisor_fbms` varchar(255) NOT NULL,
  `first_supervisor_foe` varchar(100) NOT NULL,
  `second_supervisor_foe` varchar(100) NOT NULL,
  `first_supervisor_fbne` varchar(100) NOT NULL,
  `second_supervisor_fbne` varchar(100) NOT NULL,
  `first_supervisor_fhas` varchar(100) NOT NULL,
  `second_supervisor_fhas` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assigned_lecturers`
--

INSERT INTO `assigned_lecturers` (`id`, `regions`, `first_supervisor_fast`, `second_supervisor_fast`, `first_supervisor_fbms`, `second_supervisor_fbms`, `first_supervisor_foe`, `second_supervisor_foe`, `first_supervisor_fbne`, `second_supervisor_fbne`, `first_supervisor_fhas`, `second_supervisor_fhas`, `date`) VALUES
(2, 'Eastern', 'Texxas Ranger', 'Alphus Lutere', 'Elizabeth Keen', 'Salome ireri', 'Jim Reeves', 'Vincent Ateya', 'Steve Bosire', 'Albert Einstein', 'Morris Washuka', 'Morris Washuka', '0000-00-00 00:00:00'),
(3, 'North Eastern', 'Alphus Lutere', 'Alphus Lutere', 'John F. Kennedy', 'John F. Kennedy', 'Vincent Ateya', 'Vincent Ateya', 'Albert Einstein', 'Albert Einstein', 'Morris Washuka', 'Morris Washuka', '0000-00-00 00:00:00'),
(4, 'Nyanza', 'Alphus Lutere', 'Ingrid Navaro', 'Elizabeth Keen', 'John F. Kennedy', 'Jim Reeves', 'Vincent Ateya', 'Albert Einstein', 'Albert Einstein', 'Morris Washuka', 'Morris Washuka', '0000-00-00 00:00:00'),
(5, 'Central', 'Alphus Lutere', 'Alphus Lutere', 'Salome ireri', 'John F. Kennedy', 'Vincent Ateya', 'Sandra Kageni', 'Albert Einstein', 'Albert Einstein', 'Morris Washuka', 'Morris Washuka', '0000-00-00 00:00:00'),
(6, 'Coast', 'Alphus Lutere', 'Alphus Lutere', 'Elizabeth Keen', 'John F. Kennedy', 'Vincent Ateya', 'Vincent Ateya', 'Albert Einstein', 'Albert Einstein', 'Morris Washuka', 'Morris Washuka', '0000-00-00 00:00:00'),
(7, 'Western', 'Alphus Lutere', 'Alphus Lutere', 'Salome ireri', 'John F. Kennedy', 'Vincent Ateya', 'Vincent Ateya', 'Albert Einstein', 'Albert Einstein', 'Morris Washuka', 'Morris Washuka', '0000-00-00 00:00:00'),
(8, 'Rift Valley', 'Alphus Lutere', 'Alphus Lutere', 'John F. Kennedy', 'John F. Kennedy', 'Vincent Ateya', 'Vincent Ateya', 'Albert Einstein', 'Albert Einstein', 'Morris Washuka', 'Morris Washuka', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `company_supervisor_grade`
--

CREATE TABLE `company_supervisor_grade` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_index` varchar(100) NOT NULL,
  `specific_skill_1` varchar(100) NOT NULL,
  `specific_skill_1_score` int(11) NOT NULL,
  `specific_skill_2` varchar(100) NOT NULL,
  `specific_skill_2_score` int(11) NOT NULL,
  `specific_skill_3` varchar(100) NOT NULL,
  `specific_skill_3_score` int(11) NOT NULL,
  `specific_skill_4` varchar(100) NOT NULL,
  `specific_skill_4_score` int(11) NOT NULL,
  `specific_skill_5` varchar(100) NOT NULL,
  `specific_skill_5_score` int(5) NOT NULL,
  `ability_to_complete_work_on_time` int(5) NOT NULL,
  `ability_to_follow_instructions_carefully` int(5) NOT NULL,
  `ability_to_take_initiatives` int(5) NOT NULL,
  `ability_to_work_with_little_supervision` int(5) NOT NULL,
  `adherence_to_organizations_rules` int(5) NOT NULL,
  `adherence_to_safety` int(5) NOT NULL,
  `resourcefulness` int(5) NOT NULL,
  `attendance_to_work` int(5) NOT NULL,
  `punctuality` int(5) NOT NULL,
  `desire_to_work` int(5) NOT NULL,
  `williness_to_accept_new_ideas` int(5) NOT NULL,
  `relationship_with_colleagues` int(5) NOT NULL,
  `relationship_with_supervisors` int(5) NOT NULL,
  `ability_to_control_emotions_when_provoked` int(5) NOT NULL,
  `grade` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_supervisor_grade`
--

INSERT INTO `company_supervisor_grade` (`id`, `username`, `user_index`, `specific_skill_1`, `specific_skill_1_score`, `specific_skill_2`, `specific_skill_2_score`, `specific_skill_3`, `specific_skill_3_score`, `specific_skill_4`, `specific_skill_4_score`, `specific_skill_5`, `specific_skill_5_score`, `ability_to_complete_work_on_time`, `ability_to_follow_instructions_carefully`, `ability_to_take_initiatives`, `ability_to_work_with_little_supervision`, `adherence_to_organizations_rules`, `adherence_to_safety`, `resourcefulness`, `attendance_to_work`, `punctuality`, `desire_to_work`, `williness_to_accept_new_ideas`, `relationship_with_colleagues`, `relationship_with_supervisors`, `ability_to_control_emotions_when_provoked`, `grade`, `date`) VALUES
(1, 'LiousVuiton', '04/2013/0688D', 'Home', 5, 'is', 5, 'sweet', 5, 'papa', 5, 'hmmm', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-18 18:25:00'),
(2, 'KingShabo', '04/2014/0099D', 'po', 5, 'pi', 5, 'ty', 5, 'gh', 5, 'we', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-22 20:14:47'),
(3, 'PriscillaAwuku', '04/2014/0666D', 'GH', 5, 'Ph', 5, 'Wh', 5, 'Zh', 5, 'QH', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-23 05:34:39'),
(4, 'LiousVuiton', '04/2013/0688D', 'a', 5, 'b', 5, 'c', 5, 'd', 5, 'e', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-23 15:32:18'),
(5, 'CHARITYNJERI', 'N16/3/0897/017', 'Hardworking', 5, 'Resourceful', 4, 'Problem solving', 3, 'Team work', 5, 'Planning and organizing', 2, 5, 5, 5, 4, 5, 4, 5, 5, 4, 5, 4, 5, 5, 5, 90, '2022-02-19 10:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `added_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `added_at`) VALUES
(2, 'Computer Science', '2022-02-18 20:49:16'),
(3, 'Hospitality', '2022-02-18 20:49:16'),
(4, 'Marketing', '2022-02-18 20:49:16'),
(5, 'Accountancy', '2022-02-18 20:49:16'),
(6, 'Professional Studies', '2022-02-18 20:49:16'),
(7, 'Liberal Studies', '2022-02-18 20:49:16'),
(8, 'Secretariaship', '2022-02-18 20:49:16'),
(9, 'Management Studies', '2022-02-18 20:49:16'),
(10, 'Purchasing and Supply', '2022-02-18 20:49:16'),
(11, 'Electrical/Electronic Engineering', '2022-02-18 20:49:16'),
(12, 'Civil Engineering', '2022-02-18 20:49:16'),
(13, 'Energy Systems Engineering', '2022-02-18 20:49:16'),
(14, 'Automotive Engineering', '2022-02-18 20:49:16'),
(17, 'Mechanical Engineering', '2022-02-19 12:15:33'),
(18, 'Applied Mathematics', '2022-02-19 12:16:18');

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
(12, 'MAUREEN', 'GATHONI', '', '', 'Computer Science', 'Morning', 'FAST', '2022-02-20 11:18:10', 'N11/3/1004/016', 0, 0, 'EDWIN', 'Alphus Lutere', '0747635373', '0720112194', 'Coast', 'EMS   IAMS  PROJECT-1.docx');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `region_name` text NOT NULL,
  `added_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `region_name`, `added_at`) VALUES
(1, 'Eastern', '2022-02-15 00:06:58'),
(2, 'North Eastern', '2022-02-15 00:06:58'),
(3, 'Nyanza', '2022-02-15 00:06:58'),
(4, 'Central', '2022-02-15 00:06:58'),
(5, 'Coast', '2022-02-15 00:06:58'),
(6, 'Western', '2022-02-15 00:06:58'),
(7, 'Rift Valley', '2022-02-15 00:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `registered_students`
--

CREATE TABLE `registered_students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `index_number` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_students`
--

INSERT INTO `registered_students` (`id`, `first_name`, `last_name`, `index_number`, `password`) VALUES
(1, 'EMILY', 'WANYEKI', 'N16/3/0561/017', '2345678'),
(2, 'EDWIN', 'MADEDA', 'N16/3/1458/017', '2345678'),
(3, 'CHARITY', 'NJERI', 'N16/3/0897/017', '2345678'),
(4, 'FRANCIS', 'KAHATA', 'N16/3/5648/017', '2345678'),
(5, 'SPENCE', 'OWINO', 'N16/3/1887/017', '2345678'),
(6, 'Gilbert', 'McKenzie', 'N11/3/4343/017', '2345678'),
(7, 'Robert', 'Ken', 'N16/3/0788/017', '2345678'),
(8, 'BRIAN', 'JUMBA', 'N16/3/0097/017', '2345678'),
(9, 'MAUREEN', 'GATHONI', 'N11/3/1004/016', '12345678'),
(10, 'ALEXIS', 'MWAKULILA', 'N11/3/2323/017', '2345678'),
(11, 'PETER ', 'SEGNE', 'N16/3/2345/017', '2345678'),
(12, 'DOREEN', 'MAKENA', 'N16/3/5678/017', '2345678'),
(13, 'MARY', 'WANGECHI', 'N16/3/1824/017', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `students_assumption`
--

CREATE TABLE `students_assumption` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `other_name` varchar(200) NOT NULL,
  `index_number` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `programme` varchar(200) NOT NULL,
  `session` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `supervisor_name` varchar(200) NOT NULL,
  `supervisor_contact` int(20) NOT NULL,
  `supervisor_email` varchar(100) NOT NULL,
  `company_region` varchar(200) NOT NULL,
  `company_address` mediumtext NOT NULL,
  `registration_type` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_assumption`
--

INSERT INTO `students_assumption` (`id`, `first_name`, `last_name`, `other_name`, `index_number`, `level`, `programme`, `session`, `company_name`, `supervisor_name`, `supervisor_contact`, `supervisor_email`, `company_region`, `company_address`, `registration_type`, `date`) VALUES
(10, 'Peter', 'Donk', '', '04/2014/0688D', '200', 'Computer Science', 'Evening', 'Scynett', 'Chris', 2147483647, 'gh@gmail.com', 'Eastern', 'Something', 'VIRA REGISTRATION', '2022-02-14 22:38:36'),
(15, 'King', 'Shabo', '', '04/2014/0099D', '100', 'Building Technology', 'Morning', 'Donk Enterprise1', 'PeterDonk2', 2147483647, 'donk172@gmail.com', 'Nyanza', 'Opposide', 'VIRA REGISTRATION', '2022-02-14 22:38:44'),
(16, 'Don', 'Little', '', '04/2014/0000D', '100', 'Computer Science', 'Morning', 'Ponkey', 'Josh', 2147483647, 'ht@gmail.com', 'Rift Valley', 'Bingo', 'INDUSTRIAL REGISTRATION', '2022-02-14 22:39:13'),
(17, 'Priscilla', 'Awuku', '', '04/2014/0666D', '200', 'Computer Science', 'Morning', 'Koforidua Technical University', 'Sackey Tego', 2147483647, 'peterdonk@gmail.com', 'Central', 'Koforidua Technical University', 'VIRA REGISTRATION', '2022-02-14 22:39:00'),
(19, 'Lious', 'Vuiton', '', '04/2013/0688D', '100', 'Accountancy', 'Morning', 'Koforidua Technical University', 'Ahitpogeah', 2147483647, 'peterdonk@gmail.com', 'Western', 'Opposite', 'INDUSTRIAL REGISTRATION', '2022-02-14 22:39:26'),
(20, 'EMILY', 'WANYEKI', '', 'N16/3/0561/017', '100', 'Civil Engineering', 'Weekend', 'Coca Cola LTD', 'Ian Duncan', 747635373, 'ianduncan@gmail.com', 'Nyanza', '1289', 'INDUSTRIAL REGISTRATION', '2022-02-15 17:04:49'),
(21, 'EDWIN', 'MADEDA', '', 'N16/3/1458/017', '', 'Accountancy', 'Evening', 'Coca Cola LTD', 'Ian Duncan', 747635373, 'ianduncan@gmail.com', 'Central', '1100', 'INDUSTRIAL REGISTRATION', '2022-02-19 10:17:07'),
(22, 'CHARITY', 'NJERI', '', 'N16/3/0897/017', '', 'Computer Science', 'Weekend', 'Coca Cola LTD', 'Ian Duncan', 747635373, 'ianduncan@gmail.com', 'Eastern', '45454', 'VIRA REGISTRATION', '2022-02-19 10:21:24'),
(23, 'FRANCIS', 'KAHATA', '', 'N16/3/5648/017', '', 'Computer Science', 'Morning', 'NSSF', 'Wilson Maina', 747635373, 'wilsonmaina@gmail.com', 'Central', '45353', 'INDUSTRIAL REGISTRATION', '2022-02-19 10:26:47'),
(24, 'SPENCE', 'OWINO', '', 'N16/3/1887/017', '', 'Applied Mathematics', 'Evening', 'Bidco', 'Melvin Kiano', 747635373, 'melvin@gmail.com', 'Coast', '8796', 'VIRA REGISTRATION', '2022-02-19 17:25:51'),
(25, 'Gilbert', 'McKenzie', '', 'N11/3/4343/017', '', 'Purchasing and Supply', 'Weekend', 'Royal Mabati', 'Vince Mokeira', 747635373, 'vince@gmail.com', 'Central', '8976', 'INDUSTRIAL REGISTRATION', '2022-02-19 18:16:31'),
(26, 'Robert', 'Ken', '', 'N16/3/0788/017', '', 'Computer Science', 'Evening', 'Coca Cola LTD', 'Wilson Maina', 747635373, 'wilsonmaina@gmail.com', 'Western', '4545', 'VIRA REGISTRATION', '2022-02-19 19:59:40'),
(27, 'BRIAN', 'JUMBA', '', 'N16/3/0097/017', '', '', '', 'Coca Cola LTD', 'Wilson Maina', 747635373, 'vince@gmail.com', 'Eastern', '4545', '', '2022-02-20 11:07:09'),
(28, 'MAUREEN', 'GATHONI', '', 'N11/3/1004/016', '', 'Computer Science', 'Morning', 'JTL KENYA', 'EDWIN', 747635373, 'edwin23@gmail.com', 'Coast', '2323', 'INDUSTRIAL REGISTRATION', '2022-02-20 11:19:07'),
(29, 'ALEXIS', 'MWAKULILA', '', 'N11/3/2323/017', '', 'Marketing', 'Weekend', 'Bamburi Cement', 'Robert Chesa', 747635373, 'rob@gmail.com', 'North Eastern', '3625', 'VIRA REGISTRATION', '2022-02-20 12:13:56'),
(30, 'PETER ', 'SEGNE', '', 'N16/3/2345/017', '', 'Building Technology', 'Evening', 'KCC', 'Jack Imbati', 778697585, 'imbatijack@gmail.com', 'Rift Valley', '7865', 'VIRA REGISTRATION', '2022-02-20 12:28:16'),
(31, 'DOREEN', 'MAKENA', '', 'N16/3/5678/017', '', 'Professional Studies', 'Weekend', 'Zalego Institute', 'Alexander Indimuli', 778697585, 'indimuli@yahoo.com', 'Western', '7565', 'INDUSTRIAL REGISTRATION', '2022-02-20 12:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `supervisors_login`
--

CREATE TABLE `supervisors_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisors_login`
--

INSERT INTO `supervisors_login` (`id`, `username`, `password`, `date`, `status`) VALUES
(1, 'Emily', 'wanyeki', '2017-03-16 20:16:58', 'Visiting');

-- --------------------------------------------------------

--
-- Table structure for table `system_admin`
--

CREATE TABLE `system_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_admin`
--

INSERT INTO `system_admin` (`id`, `username`, `password`) VALUES
(1, 'Micheal', 'dzelu'),
(2, 'Emily', 'wanyeki');

-- --------------------------------------------------------

--
-- Table structure for table `vira_receipts_paid`
--

CREATE TABLE `vira_receipts_paid` (
  `id` int(11) NOT NULL,
  `receipt_number` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vira_receipts_paid`
--

INSERT INTO `vira_receipts_paid` (`id`, `receipt_number`, `date`) VALUES
(1, '255', '2017-03-15 10:39:14'),
(2, '889', '2022-02-19 09:07:00'),
(3, '786', '2022-02-19 09:07:00'),
(4, '654', '2022-02-19 09:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `vira_registration`
--

CREATE TABLE `vira_registration` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `other_name` varchar(255) NOT NULL,
  `index_number` varchar(200) NOT NULL,
  `programme` varchar(200) NOT NULL,
  `level` varchar(100) NOT NULL,
  `session` varchar(200) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `visiting_supervisor_grade` int(100) NOT NULL,
  `company_supervisor_grade` int(11) NOT NULL,
  `visiting_supervisor_name` varchar(100) NOT NULL DEFAULT 'unassigned',
  `company_supervisor_name` varchar(100) NOT NULL DEFAULT 'unassigned',
  `company_supervisor_contact` varchar(11) NOT NULL,
  `visiting_supervisor_contact` varchar(11) NOT NULL,
  `attachment_region` varchar(100) NOT NULL DEFAULT 'unassigned',
  `submitted_report` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vira_registration`
--

INSERT INTO `vira_registration` (`id`, `first_name`, `last_name`, `other_name`, `index_number`, `programme`, `level`, `session`, `faculty`, `date`, `visiting_supervisor_grade`, `company_supervisor_grade`, `visiting_supervisor_name`, `company_supervisor_name`, `company_supervisor_contact`, `visiting_supervisor_contact`, `attachment_region`, `submitted_report`) VALUES
(7, 'CHARITY', 'NJERI', '', 'N16/3/0897/017', 'Computer Science', '', 'Weekend', 'FAST', '2022-02-19 10:20:32', 78, 90, 'Texxas Ranger', 'Ian Duncan', '0747635373', '', 'Eastern', NULL),
(8, 'SPENCE', 'OWINO', '', 'N16/3/1887/017', 'Applied Mathematics', '', 'Evening', 'FHAS', '2022-02-19 17:18:55', 0, 0, 'Morris Washuka', 'Melvin Kiano', '0747635373', '0720112194', 'Coast', NULL),
(9, 'Robert', 'Ken', '', 'N16/3/0788/017', 'Computer Science', '', 'Evening', 'FBMS', '2022-02-19 19:58:19', 0, 0, 'Elizabeth Keen', 'Wilson Maina', '0747635373', '', 'Nyanza', NULL),
(12, 'ALEXIS', 'MWAKULILA', '', 'N11/3/2323/017', 'Marketing', '', 'Weekend', 'FOE', '2022-02-20 12:12:27', 0, 0, 'Vincent Ateya', 'Robert Chesa', '0747635373', '0720112194', 'North Eastern', NULL),
(13, 'PETER ', 'SEGNE', '', 'N16/3/2345/017', 'Building Technology', '', 'Evening', 'FOE', '2022-02-20 12:26:32', 0, 0, 'Vincent Ateya', 'Jack Imbati', '0778697585', '', 'Rift Valley', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visiting_lecturers`
--

CREATE TABLE `visiting_lecturers` (
  `id` int(11) NOT NULL,
  `lecturer_name` varchar(255) NOT NULL,
  `lecturer_faculty` varchar(255) NOT NULL,
  `lecturer_phone_number` varchar(11) NOT NULL,
  `lecturer_region_residence` varchar(255) NOT NULL,
  `lecturer_department` varchar(255) NOT NULL,
  `lecturer_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visiting_lecturers`
--

INSERT INTO `visiting_lecturers` (`id`, `lecturer_name`, `lecturer_faculty`, `lecturer_phone_number`, `lecturer_region_residence`, `lecturer_department`, `lecturer_email`) VALUES
(29, 'Alphus Lutere', 'FAST', '0720112194', 'Rift Valley', 'Computer Science', 'lutere@nutjail.com'),
(31, 'John F. Kennedy', 'FBMS', '0720112194', 'North Eastern', 'Electrical/Electronic Engineering', 'johni@mcquikee.org'),
(33, 'Albert Einstein', 'FBNE', '0720112194', 'Central', 'Liberal Studies', 'albatross@mcmende.co.tz'),
(35, 'Morris Washuka', 'FHAS', '0720112194', 'Coast', 'Secretariaship', 'kamatu@nutjail.com'),
(37, 'Vincent Ateya', 'FOE', '0720112194', 'Central', 'Accountancy', 'vinnie@quickie.com'),
(39, 'Ingrid Navaro', 'FAST', '0720112194', 'Western', 'Management Studies', 'ingo@gmail.com'),
(41, 'Elizabeth Keen', 'FBMS', '0720112194', 'Coast', 'Purchasing and Supply', 'eliza@jmat.com'),
(43, 'Jim Reeves', 'FOE', '0720112194', 'Central', 'Civil Engineering', 'jimmie@kihoto.org'),
(45, 'Texxas Ranger', 'FAST', '0720112194', 'Western', 'Energy Systems Engineering', 'texie@junkyard.com'),
(46, 'Simba Arati', 'FBMS', '0720112194', 'Central', 'Secretariaship', 'simbax@keeper.org'),
(47, 'Steve Bosire', 'FBNE', '0720112194', 'Nyanza', 'Energy Systems Engineering', 'ignitus@pipi.com'),
(50, 'Salome ireri', 'FBMS', '0720112194', 'North Eastern', 'Computer Science', 'salomeireri@gmail.com'),
(51, 'Emily Wanyeki', 'FAST', '0720112194', 'North Eastern', 'Applied Mathematics', 'emilywanyeki93@gmail.com'),
(52, 'Sandra Kageni', 'FOE', '0720112194', 'Central', 'Mechanical Engineering', 'sandar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `visiting_supervisor_grade`
--

CREATE TABLE `visiting_supervisor_grade` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_index` varchar(100) NOT NULL,
  `specific_skill_1` varchar(100) NOT NULL,
  `specific_skill_1_score` int(11) NOT NULL,
  `specific_skill_2` varchar(100) NOT NULL,
  `specific_skill_2_score` int(11) NOT NULL,
  `specific_skill_3` varchar(100) NOT NULL,
  `specific_skill_3_score` int(11) NOT NULL,
  `specific_skill_4` varchar(100) NOT NULL,
  `specific_skill_4_score` int(11) NOT NULL,
  `specific_skill_5` varchar(100) NOT NULL,
  `specific_skill_5_score` int(5) NOT NULL,
  `ability_to_complete_work_on_time` int(5) NOT NULL,
  `ability_to_follow_instructions_carefully` int(5) NOT NULL,
  `ability_to_take_initiatives` int(5) NOT NULL,
  `ability_to_work_with_little_supervision` int(5) NOT NULL,
  `adherence_to_organizations_rules` int(5) NOT NULL,
  `adherence_to_safety` int(5) NOT NULL,
  `resourcefulness` int(5) NOT NULL,
  `attendance_to_work` int(5) NOT NULL,
  `punctuality` int(5) NOT NULL,
  `desire_to_work` int(5) NOT NULL,
  `williness_to_accept_new_ideas` int(5) NOT NULL,
  `relationship_with_colleagues` int(5) NOT NULL,
  `relationship_with_supervisors` int(5) NOT NULL,
  `ability_to_control_emotions_when_provoked` int(5) NOT NULL,
  `grade` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visiting_supervisor_grade`
--

INSERT INTO `visiting_supervisor_grade` (`id`, `username`, `user_index`, `specific_skill_1`, `specific_skill_1_score`, `specific_skill_2`, `specific_skill_2_score`, `specific_skill_3`, `specific_skill_3_score`, `specific_skill_4`, `specific_skill_4_score`, `specific_skill_5`, `specific_skill_5_score`, `ability_to_complete_work_on_time`, `ability_to_follow_instructions_carefully`, `ability_to_take_initiatives`, `ability_to_work_with_little_supervision`, `adherence_to_organizations_rules`, `adherence_to_safety`, `resourcefulness`, `attendance_to_work`, `punctuality`, `desire_to_work`, `williness_to_accept_new_ideas`, `relationship_with_colleagues`, `relationship_with_supervisors`, `ability_to_control_emotions_when_provoked`, `grade`, `date`) VALUES
(2, 'MichealFaraday', '04/2014/0690D', 'Peter', 5, 'Is', 5, 'A', 5, 'Good', 5, 'Friendly', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 95, '2017-04-16 13:19:17'),
(3, 'LiousVuiton', '04/2013/0688D', 'we', 5, 'too', 5, 'never', 5, 'say', 5, 'die', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-18 18:25:59'),
(4, 'KingShabo', '04/2014/0099D', 'cv', 5, 'as', 5, 'rt', 5, 'qw', 5, 'op', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-22 20:16:03'),
(5, 'PriscillaAwuku', '04/2014/0666D', 'Wz', 5, 'Pz', 5, 'Qz', 5, 'Gz', 5, 'Oz', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-23 05:35:34'),
(6, 'LiousVuiton', '04/2013/0688D', 'a', 5, 'b', 5, 'c', 5, 'd', 5, 'e', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-23 15:32:55'),
(7, 'EDWINMADEDA', 'N16/3/1458/017', 'Hardworking', 5, 'Resourceful', 4, 'Problem solving', 4, 'Team work', 5, 'Planning and organizing', 3, 5, 4, 4, 3, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 84, '2022-02-19 10:36:20'),
(8, 'CHARITYNJERI', 'N16/3/0897/017', 'Hardworking', 5, 'Resourceful', 5, 'Problem solving', 4, 'Team work', 2, 'Planning and organizing', 5, 2, 4, 2, 5, 5, 5, 0, 5, 4, 5, 2, 3, 5, 5, 78, '2022-02-19 10:40:00'),
(9, 'CHARITYNJERI', 'N16/3/0897/017', 'Hardworking', 5, 'Resourceful', 5, 'Problem solving', 4, 'Team work', 2, 'Planning and organizing', 5, 2, 4, 2, 5, 5, 5, 0, 5, 4, 5, 2, 3, 5, 5, 78, '2022-02-19 10:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `week1_table`
--

CREATE TABLE `week1_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week1_table`
--

INSERT INTO `week1_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown');

-- --------------------------------------------------------

--
-- Table structure for table `week2_table`
--

CREATE TABLE `week2_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week2_table`
--

INSERT INTO `week2_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown');

-- --------------------------------------------------------

--
-- Table structure for table `week3_table`
--

CREATE TABLE `week3_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week3_table`
--

INSERT INTO `week3_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown');

-- --------------------------------------------------------

--
-- Table structure for table `week4_table`
--

CREATE TABLE `week4_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week4_table`
--

INSERT INTO `week4_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown');

-- --------------------------------------------------------

--
-- Table structure for table `week5_table`
--

CREATE TABLE `week5_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week5_table`
--

INSERT INTO `week5_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown');

-- --------------------------------------------------------

--
-- Table structure for table `week6_table`
--

CREATE TABLE `week6_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week6_table`
--

INSERT INTO `week6_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown');

-- --------------------------------------------------------

--
-- Table structure for table `week7_table`
--

CREATE TABLE `week7_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week7_table`
--

INSERT INTO `week7_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown');

-- --------------------------------------------------------

--
-- Table structure for table `week8_table`
--

CREATE TABLE `week8_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week8_table`
--

INSERT INTO `week8_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown');

-- --------------------------------------------------------

--
-- Table structure for table `week9_table`
--

CREATE TABLE `week9_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week9_table`
--

INSERT INTO `week9_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown');

-- --------------------------------------------------------

--
-- Table structure for table `week10_table`
--

CREATE TABLE `week10_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week10_table`
--

INSERT INTO `week10_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_lecturers`
--
ALTER TABLE `assigned_lecturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_supervisor_grade`
--
ALTER TABLE `company_supervisor_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industrial_registration`
--
ALTER TABLE `industrial_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered_students`
--
ALTER TABLE `registered_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_assumption`
--
ALTER TABLE `students_assumption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisors_login`
--
ALTER TABLE `supervisors_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_admin`
--
ALTER TABLE `system_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vira_receipts_paid`
--
ALTER TABLE `vira_receipts_paid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vira_registration`
--
ALTER TABLE `vira_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visiting_lecturers`
--
ALTER TABLE `visiting_lecturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visiting_supervisor_grade`
--
ALTER TABLE `visiting_supervisor_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week1_table`
--
ALTER TABLE `week1_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week2_table`
--
ALTER TABLE `week2_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week3_table`
--
ALTER TABLE `week3_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week4_table`
--
ALTER TABLE `week4_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week5_table`
--
ALTER TABLE `week5_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week6_table`
--
ALTER TABLE `week6_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week7_table`
--
ALTER TABLE `week7_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week8_table`
--
ALTER TABLE `week8_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week9_table`
--
ALTER TABLE `week9_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week10_table`
--
ALTER TABLE `week10_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_lecturers`
--
ALTER TABLE `assigned_lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company_supervisor_grade`
--
ALTER TABLE `company_supervisor_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `industrial_registration`
--
ALTER TABLE `industrial_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `registered_students`
--
ALTER TABLE `registered_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students_assumption`
--
ALTER TABLE `students_assumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `supervisors_login`
--
ALTER TABLE `supervisors_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_admin`
--
ALTER TABLE `system_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vira_receipts_paid`
--
ALTER TABLE `vira_receipts_paid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vira_registration`
--
ALTER TABLE `vira_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `visiting_lecturers`
--
ALTER TABLE `visiting_lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `visiting_supervisor_grade`
--
ALTER TABLE `visiting_supervisor_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `week1_table`
--
ALTER TABLE `week1_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `week2_table`
--
ALTER TABLE `week2_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `week3_table`
--
ALTER TABLE `week3_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `week4_table`
--
ALTER TABLE `week4_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `week5_table`
--
ALTER TABLE `week5_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `week6_table`
--
ALTER TABLE `week6_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `week7_table`
--
ALTER TABLE `week7_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `week8_table`
--
ALTER TABLE `week8_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `week9_table`
--
ALTER TABLE `week9_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `week10_table`
--
ALTER TABLE `week10_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
