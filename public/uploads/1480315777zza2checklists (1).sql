-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2016 at 02:30 PM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezcheck_new`
--

--
-- Dumping data for table `checklists`
--

INSERT INTO `checklists` (`id`, `title`, `client_id`, `user_id`, `is_template`, `is_archived`, `start_date`, `expected_duration`, `due_date`, `due_date_extension`, `link_to_folder`, `description`, `internal_notes`, `notes_to_client`, `status_id`, `copied_from`, `created_by`, `is_visible`, `org_id`, `completed_at`, `files`, `url`, `file_custom_link`, `created_at`, `updated_at`, `deleted_at`, `budget`, `time`, `position`, `type`, `is_published`, `priority`, `email_count`, `client_email_status`) VALUES
(27, 'Sales Tax - Quarterly', 0, 0, 1, 0, '2016-09-01', 0, '2016-09-01', 0, '', '', '', '', 1, 0, 374, 0, 14, '0000-00-00 00:00:00', '', '', '', '2015-09-03 20:14:40', '2016-07-14 20:14:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'High', 0, 0),
(28, 'Sales Tax - Quarterly (R)', 0, 0, 0, 0, '2015-11-30', 0, '2015-12-20', 0, '', '', '', '', 1, 0, 374, 0, 14, '0000-00-00 00:00:00', '', '', '', '2015-11-30 12:00:03', '2016-07-14 20:13:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'High', 0, 0),
(29, 'Sales Tax - Quarterly (R)', 0, 0, 0, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-02-28 12:00:03', '2016-07-14 20:13:02', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(30, 'Sales Tax - Quarterly (R)', 0, 0, 0, 0, '2016-05-28', NULL, '2016-06-17', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-05-28 10:00:04', '2016-07-14 20:12:53', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(31, 'Quarterly Sales Tax', 0, 0, 0, 0, '0000-00-00', NULL, '2016-12-01', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-14 20:11:38', '2016-09-15 14:54:45', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(32, 'Quarterly Sales Tax', 0, 0, 1, 0, '2017-03-01', NULL, '2017-03-11', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-14 20:15:08', '2016-07-14 20:15:08', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(34, 'Quarterly Sales Tax', 0, 0, 1, 0, '2017-03-01', NULL, '2017-03-11', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-14 20:15:32', '2016-07-14 20:15:32', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(35, 'Monthly Checking account balanced', 0, 0, 1, 0, '2016-06-30', NULL, '2016-07-15', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-14 20:16:47', '2016-07-14 20:16:47', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(36, 'Quarterly Checking account balanced', 0, 0, 1, 0, '2016-07-01', NULL, '2016-07-31', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-14 20:17:22', '2016-07-14 20:17:22', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(37, 'Quarterly Payroll Returns', 0, 0, 1, 0, '2016-07-01', NULL, '2016-07-21', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-14 20:18:11', '2016-07-14 20:18:11', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(38, 'Quarterly Payroll Returns', 0, 0, 0, 0, '0000-00-00', NULL, '2016-09-30', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-14 20:19:52', '2016-07-20 04:13:41', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(39, 'Quarterly Checking account balanced', 0, 0, 0, 0, '2016-07-01', NULL, '2016-07-31', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-15 00:23:11', '2016-07-15 00:23:11', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(40, 'Sales Tax - Quarterly', 0, 0, 0, 0, '0000-00-00', NULL, '2016-12-01', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-15 00:24:25', '2016-09-17 15:50:42', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(41, 'Quarterly Checking account balanced', 0, 0, 0, 0, '2016-07-01', NULL, '2016-07-31', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-15 15:32:15', '2016-07-15 15:32:15', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(42, 'Quarterly Checking account balanced', 0, 0, 0, 0, '2016-07-01', NULL, '2016-10-31', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-20 04:12:58', '2016-07-20 04:12:58', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(43, 'Quarterly Checking account balanced', 0, 0, 0, 0, '2016-07-01', NULL, '2016-10-31', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-20 04:12:58', '2016-07-20 04:12:58', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(44, 'Sales Tax - Quarterly', 0, 0, 0, 0, '0000-00-00', NULL, '2016-12-01', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-24 05:26:48', '2016-09-14 06:29:34', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(45, 'Sales Tax - Quarterly', 0, 0, 0, 0, '0000-00-00', NULL, '2016-12-01', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-24 05:26:48', '2016-08-29 15:38:54', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(46, 'Quarterly Checking account balanced', 0, 0, 0, 0, '2016-07-01', NULL, '2016-09-30', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-26 17:25:57', '2016-07-26 17:25:57', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(47, 'Quarterly Payroll Returns', 0, 0, 0, 0, '2016-07-01', NULL, '2016-09-30', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-07-27 15:03:48', '2016-07-27 15:03:48', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1),
(48, 'Sales Tax - Quarterly', 0, 0, 0, 0, '0000-00-00', NULL, '2016-12-01', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-09-07 18:13:32', '2016-09-07 18:14:20', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(49, 'Sales Tax - Quarterly', 0, 0, 0, 0, '0000-00-00', NULL, '2016-12-01', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-09-07 18:13:32', '2016-09-07 18:14:34', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(50, 'Sales Tax - Quarterly', 0, 0, 0, 0, '0000-00-00', NULL, '2016-12-01', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-09-20 14:16:27', '2016-09-20 14:16:49', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(51, 'Sales Tax - Monthly', 0, 0, 1, 0, '2016-09-01', NULL, '2016-09-20', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-09-20 18:59:00', '2016-09-20 18:59:00', NULL, NULL, NULL, NULL, 'normal', 0, 'High', 0, 1),
(52, 'Sales Tax - Monthly', 0, 0, 0, 0, '0000-00-00', NULL, '2016-10-01', 0, '', '', '', '', 1, NULL, 374, 0, 14, NULL, '', NULL, NULL, '2016-09-20 18:59:18', '2016-09-20 18:59:47', NULL, NULL, NULL, NULL, 'normal', 0, '', 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
