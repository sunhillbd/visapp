-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2016 at 06:33 PM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezcheck_old`
--

-- --------------------------------------------------------

--
-- Table structure for table `checklists`
--

CREATE TABLE `checklists` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `template` tinyint(4) NOT NULL DEFAULT '0',
  `archived` enum('notArchived','archived') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'notArchived',
  `start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `due_date_extension` int(11) NOT NULL,
  `link_to_folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `internal_notes` text COLLATE utf8_unicode_ci NOT NULL,
  `notes_to_client` text COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `status_` enum('Not Started','In Progress','Completed','Needs Review','On Hold') COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `visibility` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `completed_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `designation_id` int(11) NOT NULL,
  `budget` int(11) NOT NULL,
  `priority` enum('High','Medium','Low','Critical') COLLATE utf8_unicode_ci NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `checklists`
--

INSERT INTO `checklists` (`id`, `title`, `client_id`, `user_id`, `template`, `archived`, `start_date`, `due_date`, `due_date_extension`, `link_to_folder`, `description`, `internal_notes`, `notes_to_client`, `status_id`, `status_`, `created_by`, `visibility`, `organization_id`, `completed_at`, `designation_id`, `budget`, `priority`, `files`, `created_at`, `updated_at`) VALUES
(4133, 'Sales Tax - Quarterly', 0, 374, 1, 'notArchived', '2016-09-01', '2016-09-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2015-09-03 20:14:40', '2016-07-14 20:14:21'),
(5191, 'Sales Tax - Quarterly (R)', 7118, 374, 0, 'archived', '2015-11-30', '2015-12-20', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2015-11-30 12:00:03', '2016-07-14 20:13:08'),
(6336, 'Sales Tax - Quarterly (R)', 7118, 374, 0, 'archived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2016-02-28 12:00:03', '2016-07-14 20:13:02'),
(7615, 'Sales Tax - Quarterly (R)', 7118, 374, 0, 'archived', '2016-05-28', '2016-06-17', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2016-05-28 10:00:04', '2016-07-14 20:12:53'),
(8170, 'Quarterly Sales Tax', 7504, 374, 0, 'notArchived', '0000-00-00', '2016-12-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-14 20:11:38', '2016-09-15 14:54:45'),
(8171, 'Annual Sales Tax', 0, 374, 1, 'notArchived', '2017-03-01', '2017-03-11', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-14 20:15:08', '2016-07-14 20:15:08'),
(8172, 'Annual Sales Tax', 7118, 374, 0, 'notArchived', '2017-03-01', '2017-03-11', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-14 20:15:32', '2016-07-14 20:15:32'),
(8173, 'Monthly Checking account balanced', 0, 374, 1, 'notArchived', '2016-06-30', '2016-07-15', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-14 20:16:47', '2016-07-14 20:16:47'),
(8174, 'Quarterly Checking account balanced', 0, 374, 1, 'notArchived', '2016-07-01', '2016-07-31', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-14 20:17:22', '2016-07-14 20:17:22'),
(8175, 'Quarterly Payroll Returns', 0, 374, 1, 'notArchived', '2016-07-01', '2016-07-21', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-14 20:18:11', '2016-07-14 20:18:11'),
(8176, 'Quarterly Payroll Returns', 7505, 374, 0, 'notArchived', '0000-00-00', '2016-09-30', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-14 20:19:52', '2016-07-20 04:13:41'),
(8179, 'Quarterly Checking account balanced', 7506, 374, 0, 'notArchived', '2016-07-01', '2016-07-31', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-15 00:23:11', '2016-07-15 00:23:11'),
(8180, 'Sales Tax - Quarterly', 7506, 374, 0, 'notArchived', '0000-00-00', '2016-12-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2016-07-15 00:24:25', '2016-09-17 15:50:42'),
(8192, 'Quarterly Checking account balanced', 7507, 374, 0, 'notArchived', '2016-07-01', '2016-07-31', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-15 15:32:15', '2016-07-15 15:32:15'),
(8231, 'Quarterly Checking account balanced', 7508, 374, 0, 'notArchived', '2016-07-01', '2016-10-31', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-20 04:12:58', '2016-07-20 04:12:58'),
(8274, 'Sales Tax - Quarterly', 7509, 374, 0, 'notArchived', '0000-00-00', '2016-12-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2016-07-24 05:26:48', '2016-09-14 06:29:34'),
(8275, 'Sales Tax - Quarterly', 7510, 374, 0, 'notArchived', '0000-00-00', '2016-12-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2016-07-24 05:26:48', '2016-08-29 15:38:54'),
(8322, 'Quarterly Checking account balanced', 7512, 374, 0, 'notArchived', '2016-07-01', '2016-09-30', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-26 17:25:57', '2016-07-26 17:25:57'),
(8334, 'Quarterly Payroll Returns', 7513, 374, 0, 'notArchived', '2016-07-01', '2016-09-30', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-07-27 15:03:48', '2016-07-27 15:03:48'),
(8808, 'Sales Tax - Quarterly', 7519, 374, 0, 'notArchived', '0000-00-00', '2016-12-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2016-09-07 18:13:32', '2016-09-07 18:14:20'),
(8809, 'Sales Tax - Quarterly', 7520, 374, 0, 'notArchived', '0000-00-00', '2016-12-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2016-09-07 18:13:32', '2016-09-07 18:14:34'),
(8855, 'Sales Tax - Quarterly', 7524, 374, 0, 'notArchived', '0000-00-00', '2016-12-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2016-09-20 14:16:27', '2016-09-20 14:16:49'),
(8856, 'Sales Tax - Monthly', 0, 374, 1, 'notArchived', '2016-09-01', '2016-09-20', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-09-20 18:59:00', '2016-09-20 18:59:00'),
(8857, 'Sales Tax - Monthly', 7525, 374, 0, 'notArchived', '0000-00-00', '2016-10-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-09-20 18:59:18', '2016-09-20 18:59:47'),
(8858, 'Sales Tax - Quarterly', 7526, 374, 0, 'notArchived', '0000-00-00', '2016-12-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, 'High', '', '2016-09-27 00:14:24', '2016-09-27 00:14:42'),
(8859, 'Quarterly Checking account balanced', 7519, 374, 0, 'notArchived', '0000-00-00', '2016-10-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-09-28 15:26:31', '2016-09-28 15:27:12'),
(8860, 'Quarterly Checking account balanced', 7520, 374, 0, 'notArchived', '0000-00-00', '2016-10-01', 0, '', '', '', '', 1, 'Not Started', 374, NULL, 'tkubiak@accutaxny.com', '0000-00-00 00:00:00', 0, 0, '', '', '2016-09-28 15:26:31', '2016-09-28 15:26:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checklists`
--
ALTER TABLE `checklists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checklists`
--
ALTER TABLE `checklists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8861;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
