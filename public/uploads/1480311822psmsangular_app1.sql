-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2016 at 07:05 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `angular_app1`
--

-- --------------------------------------------------------

--
-- Table structure for table `checklistables`
--

CREATE TABLE IF NOT EXISTS `checklistables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checklist_id` int(10) unsigned NOT NULL,
  `checklistable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checklistable_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `checklistables`
--

INSERT INTO `checklistables` (`id`, `checklist_id`, `checklistable_type`, `checklistable_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'App\\User', 7, '2016-09-13 02:54:58', '2016-09-13 02:54:58'),
(2, 3, 'App\\User', 10, '2016-09-13 19:48:38', '2016-09-13 19:48:38'),
(4, 5, 'App\\User', 3, '2016-09-15 02:28:21', '2016-09-15 02:28:21'),
(5, 7, 'App\\User', 3, '2016-09-15 04:53:12', '2016-09-15 04:53:12'),
(6, 10, 'App\\User', 12, '2016-09-17 20:38:50', '2016-09-17 20:38:50'),
(9, 13, 'App\\User', 3, '2016-09-18 19:38:14', '2016-09-18 19:38:14'),
(10, 15, 'App\\User', 15, '2016-09-19 18:48:45', '2016-09-19 18:48:45'),
(11, 19, 'App\\Team', 2, '2016-09-19 20:36:51', '2016-09-19 20:36:51'),
(12, 18, 'App\\Team', 2, '2016-09-19 20:37:04', '2016-09-19 20:37:04'),
(13, 20, 'App\\Team', 2, '2016-09-19 20:38:38', '2016-09-19 20:38:38'),
(14, 21, 'App\\User', 19, '2016-09-20 19:24:01', '2016-09-20 19:24:01'),
(15, 22, 'App\\User', 19, '2016-09-20 19:29:17', '2016-09-20 19:29:17'),
(16, 23, 'App\\User', 19, '2016-09-20 19:32:41', '2016-09-20 19:32:41'),
(17, 24, 'App\\User', 19, '2016-09-20 21:53:32', '2016-09-20 21:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `checklists`
--

CREATE TABLE IF NOT EXISTS `checklists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_template` tinyint(1) NOT NULL,
  `is_archived` tinyint(1) NOT NULL,
  `start_date` date NOT NULL,
  `expected_duration` int(11) DEFAULT NULL,
  `due_date` date NOT NULL,
  `due_date_extension` int(11) NOT NULL,
  `link_to_folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `internal_notes` text COLLATE utf8_unicode_ci NOT NULL,
  `notes_to_client` text COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `copied_from` int(10) unsigned DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `org_id` int(11) NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_custom_link` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `budget` datetime DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `type` enum('normal','system_template','user_template','internal_template') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'normal',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_count` smallint(6) NOT NULL,
  `client_email_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `checklists`
--

INSERT INTO `checklists` (`id`, `title`, `client_id`, `user_id`, `is_template`, `is_archived`, `start_date`, `expected_duration`, `due_date`, `due_date_extension`, `link_to_folder`, `description`, `internal_notes`, `notes_to_client`, `status_id`, `copied_from`, `created_by`, `is_visible`, `org_id`, `completed_at`, `files`, `url`, `file_custom_link`, `created_at`, `updated_at`, `deleted_at`, `budget`, `time`, `position`, `type`, `is_published`, `priority`, `email_count`, `client_email_status`) VALUES
(1, 'chek1', 2, 0, 0, 0, '2016-09-11', NULL, '2016-09-13', 0, '', '', '', '', 1, NULL, 1, 0, 1, NULL, '', 'f21af5d994652f8dce4f8e2085f815ee', NULL, '2016-09-11 17:22:51', '2016-09-11 17:22:58', NULL, NULL, NULL, 0, 'normal', 0, NULL, 0, 1),
(2, 'my First Checklist', 0, 0, 0, 0, '2016-09-12', NULL, '2016-09-16', 0, '', '', '', '', 4, NULL, 0, 0, 6, NULL, '', 'fc5a0ade0a9889a65831910a27b352cd', NULL, '2016-09-13 02:50:19', '2016-09-13 02:55:24', NULL, NULL, NULL, 0, 'normal', 0, 'None', 0, 1),
(3, 'Get quotes from other web designers', 0, 0, 0, 0, '2016-09-13', NULL, '2016-09-15', 0, '', '', '', '', 1, NULL, 0, 0, 8, NULL, '', '5358188c18014392b64e4a91517a06ab', NULL, '2016-09-13 19:46:46', '2016-09-13 19:48:01', NULL, NULL, NULL, 1, 'normal', 0, 'Medium', 0, 0),
(4, 'Complete Aetna Modules', 3, 0, 0, 0, '2016-09-13', NULL, '2016-09-16', 0, '', '', '', '', 1, NULL, 9, 0, 8, NULL, '', '423d8e3ddb0526326d760605e4da7691', NULL, '2016-09-13 19:48:01', '2016-09-13 19:48:03', NULL, NULL, NULL, 0, 'normal', 0, 'Medium', 0, 1),
(5, 'Michael''s Task List', 0, 0, 0, 0, '2016-09-14', NULL, '2016-09-24', 0, '', '', '', '', 5, NULL, 0, 0, 2, NULL, '', '5be51da161b05c27aa8f3be4e490ae5a', NULL, '2016-09-15 02:18:54', '2016-09-18 19:36:43', NULL, NULL, NULL, 4, 'normal', 0, 'None', 0, 1),
(6, 'App Notes', 7, 0, 0, 0, '2016-09-14', NULL, '2017-01-01', 0, '', '', '', '', 0, NULL, 3, 0, 2, NULL, '', NULL, NULL, '2016-09-15 02:32:25', '2016-09-18 20:22:05', NULL, NULL, NULL, 3, 'normal', 0, NULL, 0, 1),
(7, 'Website', 7, 0, 0, 0, '2016-09-14', NULL, '2016-10-01', 0, '', '', '', '', 0, NULL, 3, 0, 2, NULL, '', '2cf870ab68ff735ea713cf0664317e45', NULL, '2016-09-15 04:51:03', '2016-09-18 20:23:27', NULL, NULL, NULL, 2, 'normal', 0, 'None', 0, 1),
(8, 'Interview Process-Financial Karma', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 0, NULL, 14, 0, 10, NULL, '', NULL, NULL, '2016-09-16 00:15:02', '2016-09-16 00:15:02', NULL, NULL, NULL, 0, 'user_template', 0, NULL, 0, 1),
(9, 'Monthly Bookkeeping', 0, 0, 0, 0, '2016-09-17', NULL, '2016-09-17', 0, '', '', '', '', 3, NULL, 0, 0, 11, '2016-09-19 14:45:50', '', '2eaf53aa65deeaae288de67d2f014dd7', NULL, '2016-09-17 15:53:37', '2016-09-19 18:46:03', '2016-09-19 18:46:03', NULL, NULL, 1, 'normal', 0, 'None', 0, 1),
(10, 'Marketing Funnel', 7, 0, 0, 0, '2016-09-17', NULL, '2016-09-19', 0, '', '', '', '', 0, NULL, 3, 0, 2, NULL, '', 'd9ed0414f101e2effc012fba9e5ed5fe', 'http://www.digitalmarketer.com/ecommerce-advertising/?utm_source=newsletter-email-broadcast&utm_medium=email&utm_term=newsletter&utm_content=ecommerce-advertising&utm_campaign=Blog%20Post%20Featured%20Emails', '2016-09-17 20:31:09', '2016-09-18 20:18:21', NULL, NULL, NULL, 1, 'normal', 0, 'None', 0, 1),
(11, 'Marketing Funnel', 7, 0, 1, 0, '2016-09-17', 0, '2016-09-17', 0, '', '', '', '', 0, NULL, 3, 0, 2, NULL, '', '0b533b3e7f4b167e83c13142059a76cf', 'http://www.digitalmarketer.com/ecommerce-advertising/?utm_source=newsletter-email-broadcast&utm_medium=email&utm_term=newsletter&utm_content=ecommerce-advertising&utm_campaign=Blog%20Post%20Featured%20Emails', '2016-09-17 21:13:57', '2016-09-18 19:30:02', NULL, NULL, NULL, 1, 'user_template', 0, 'None', 0, 1),
(12, 'SEO Keyword Research', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 0, NULL, 3, 0, 2, NULL, '', NULL, NULL, '2016-09-18 19:30:02', '2016-09-18 19:30:02', NULL, NULL, NULL, 0, 'user_template', 0, NULL, 0, 1),
(13, 'SEO Keyword Research', 7, 0, 0, 0, '2016-09-18', NULL, '2016-09-24', 0, '', '', '', '', 5, NULL, 3, 0, 2, NULL, '', '602787cf6577e141efda58e5ca921194', NULL, '2016-09-18 19:36:43', '2016-09-18 19:37:49', NULL, NULL, NULL, 0, 'normal', 0, NULL, 0, 1),
(14, 'Monthly Bookkeeping', 12, 0, 0, 0, '2016-09-19', NULL, '2016-09-30', 0, '', '', '', '', 3, 9, 0, 0, 11, NULL, '', '2c44c271b66cf09ac9d6e75017b3a013', NULL, '2016-09-19 18:45:22', '2016-09-19 20:38:38', NULL, NULL, NULL, 4, 'normal', 0, 'None', 0, 1),
(15, 'Monthly Checklist', 0, 0, 1, 0, '0000-00-00', NULL, '2016-09-30', 0, '', '', '', '', 0, NULL, 15, 0, 11, NULL, '', '3da5765e513a26c134f21daba0271bd8', NULL, '2016-09-19 18:47:15', '2016-09-19 20:38:38', NULL, NULL, NULL, 4, 'user_template', 0, 'High', 0, 1),
(16, 'Monthly Bookkeeping', 10, 0, 0, 0, '2016-09-19', NULL, '2016-09-19', 0, '', '', '', '', 0, NULL, 15, 0, 11, NULL, '', NULL, NULL, '2016-09-19 20:17:35', '2016-09-19 20:17:48', '2016-09-19 20:17:48', NULL, NULL, 0, 'normal', 0, NULL, 0, 1),
(17, 'Monthly Bookkeeping', 8, 0, 0, 0, '2016-09-19', NULL, '2016-09-30', 0, '', '', '', '', 3, NULL, 0, 0, 11, NULL, '', '470211661e9e7a697b1244ee0c66d517', NULL, '2016-09-19 20:29:57', '2016-09-19 20:38:38', NULL, NULL, NULL, 3, 'normal', 0, 'None', 0, 1),
(18, 'Monthly Bookkeeping', 11, 0, 0, 0, '2016-09-19', NULL, '2016-09-30', 0, '', '', '', '', 3, NULL, 0, 0, 11, '2016-09-19 16:33:37', '', '4c3be1dae4b426e5c4b1d9ecd3ea9373', NULL, '2016-09-19 20:33:13', '2016-09-19 20:38:38', NULL, NULL, NULL, 2, 'normal', 0, 'None', 0, 1),
(19, 'Monthly Bookkeeping', 13, 0, 0, 0, '2016-09-19', NULL, '2016-09-30', 0, '', '', '', '', 3, NULL, 0, 0, 11, '2016-09-19 16:36:40', '', '48a77fd3972b88442eff8d0e9d82785a', NULL, '2016-09-19 20:34:35', '2016-09-19 20:38:38', NULL, NULL, NULL, 1, 'normal', 0, 'None', 0, 1),
(20, 'Monthly Bookkeeping', 13, 0, 0, 0, '2016-09-19', NULL, '2016-09-30', 0, '', '', '', '', 0, NULL, 0, 0, 11, NULL, '', NULL, NULL, '2016-09-19 20:38:38', '2016-09-19 20:38:38', NULL, NULL, NULL, 0, 'normal', 0, 'None', 0, 1),
(21, '1040', 14, 0, 0, 0, '2016-09-20', NULL, '2016-09-22', 0, '', 'oijoij', 'hguyguyguybuy', '', 2, NULL, 19, 0, 15, NULL, '', 'c51168f9f18095a655fbad1c73234a4f', NULL, '2016-09-20 19:23:14', '2016-09-20 21:53:25', NULL, NULL, NULL, 3, 'normal', 0, 'None', 0, 1),
(22, '1120S', 15, 0, 0, 0, '2016-09-20', NULL, '2016-09-21', 0, '', '', '', '', 4, NULL, 19, 0, 15, NULL, '', '19e0410549254d8935dc5d1dc3651d90', NULL, '2016-09-20 19:26:12', '2016-09-20 21:53:25', NULL, NULL, NULL, 2, 'normal', 0, NULL, 0, 1),
(23, '1065', 16, 0, 0, 0, '2016-09-20', NULL, '2016-09-20', 0, '', '', '', '', 2, NULL, 19, 0, 15, NULL, '', '4e85893aa35ddffda5252c45ac9af6ac', NULL, '2016-09-20 19:32:34', '2016-09-20 21:53:25', NULL, NULL, NULL, 1, 'normal', 0, NULL, 0, 1),
(24, 'asd', 17, 0, 0, 0, '2016-09-20', NULL, '2016-09-20', 0, '', '', '', '', 4, NULL, 19, 0, 15, NULL, '', '9ecb5c161fa64a41fff90cdf6f3ed495', NULL, '2016-09-20 21:53:25', '2016-09-20 21:53:27', NULL, NULL, NULL, 0, 'normal', 0, NULL, 0, 1),
(25, 'Individual Tax Return', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 0, NULL, 17, 0, 13, NULL, '', NULL, NULL, '2016-09-26 01:39:41', '2016-09-26 01:39:41', NULL, NULL, NULL, 0, 'user_template', 0, NULL, 0, 1),
(26, 'Individual Tax Return', 18, 0, 0, 0, '2016-09-26', NULL, '2016-09-26', 0, '', '', '', '', 2, NULL, 17, 0, 13, NULL, '', '11c4fb639ad20623f230843a70e75b88', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:40', NULL, NULL, NULL, 0, 'normal', 0, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `checklist_column_setting`
--

CREATE TABLE IF NOT EXISTS `checklist_column_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `client_name` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `tasks` tinyint(1) NOT NULL DEFAULT '1',
  `title` tinyint(1) NOT NULL DEFAULT '1',
  `attachment` tinyint(1) NOT NULL DEFAULT '1',
  `note` tinyint(1) NOT NULL DEFAULT '1',
  `duration` tinyint(1) NOT NULL DEFAULT '1',
  `due_date` tinyint(1) NOT NULL DEFAULT '1',
  `assign_to` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(1) NOT NULL DEFAULT '0',
  `email_remainder` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` tinyint(1) NOT NULL DEFAULT '0',
  `days_untill` tinyint(1) NOT NULL DEFAULT '0',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `time` tinyint(1) NOT NULL DEFAULT '0',
  `budget` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `checklist_column_setting`
--

INSERT INTO `checklist_column_setting` (`id`, `user_id`, `client_name`, `status`, `tasks`, `title`, `attachment`, `note`, `duration`, `due_date`, `assign_to`, `created_at`, `updated_at`, `priority`, `email_remainder`, `start_date`, `days_untill`, `recurring`, `time`, `budget`) VALUES
(1, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2016-09-13 02:52:50', '2016-09-13 02:52:50', 0, 0, 0, 0, 0, 0, 0),
(2, 3, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2016-09-15 02:30:34', '2016-09-15 04:54:43', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `checklist_filters`
--

CREATE TABLE IF NOT EXISTS `checklist_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filter` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT '2',
  `description` text COLLATE utf8_unicode_ci,
  `internal_notes` text COLLATE utf8_unicode_ci,
  `client_notes` text COLLATE utf8_unicode_ci,
  `client_reminder` tinyint(1) NOT NULL,
  `users_reminder` tinyint(1) NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_archived` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `acquired_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hourly_rate` decimal(5,2) NOT NULL,
  `default_assign_id` int(11) NOT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clients_company_name_org_id_unique` (`company_name`,`org_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `org_id`, `company_name`, `contact_name`, `email`, `phone`, `mobile`, `address`, `photo`, `status`, `description`, `internal_notes`, `client_notes`, `client_reminder`, `users_reminder`, `files`, `url`, `is_archived`, `created_by`, `created_at`, `updated_at`, `acquired_date`, `deleted_at`, `city`, `state`, `zip_code`, `hourly_rate`, `default_assign_id`, `fax`) VALUES
(1, 1, 'sanjib', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-11 16:44:04', '2016-09-11 16:44:04', NULL, NULL, '', '', '', 0.00, 0, ''),
(2, 1, 'client', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-11 17:22:42', '2016-09-11 17:22:42', NULL, NULL, '', '', '', 0.00, 0, ''),
(3, 8, '', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-13 19:47:49', '2016-09-13 19:47:49', NULL, NULL, '', '', '', 0.00, 0, ''),
(6, 9, 'BrightSmiles', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-13 21:38:11', '2016-09-13 21:38:11', NULL, NULL, '', '', '', 0.00, 0, ''),
(7, 2, 'Easy Checklist ABC', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-15 02:32:15', '2016-09-15 02:32:15', NULL, NULL, '', '', '', 0.00, 0, ''),
(8, 11, 'A QUALITY AWNING', NULL, 'BILL@DOWDPA.COM', NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 1, '', '', 0, 0, '2016-09-17 14:48:17', '2016-09-17 15:19:42', '2016-09-15', NULL, '', '', '', 0.00, 0, ''),
(9, 11, 'Monthly Bookeeping', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-17 15:31:22', '2016-09-17 16:00:15', NULL, '2016-09-17 16:00:15', '', '', '', 0.00, 0, ''),
(10, 11, 'Sunline', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-19 20:17:26', '2016-09-19 20:17:26', NULL, NULL, '', '', '', 0.00, 0, ''),
(11, 11, 'A & R', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-19 20:30:12', '2016-09-19 20:30:12', NULL, NULL, '', '', '', 0.00, 0, ''),
(12, 11, 'Adams Jewelry', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-19 20:33:27', '2016-09-19 20:33:27', NULL, NULL, '', '', '', 0.00, 0, ''),
(13, 11, 'Bennett', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-19 20:36:26', '2016-09-19 20:36:26', NULL, NULL, '', '', '', 0.00, 0, ''),
(14, 15, 'john, john', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-20 19:19:30', '2016-09-20 19:19:30', NULL, NULL, '', '', '', 0.00, 0, ''),
(15, 15, 'Galber, John', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-20 19:25:59', '2016-09-20 19:25:59', NULL, NULL, '', '', '', 0.00, 0, ''),
(16, 15, 'asdad asd a', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-20 19:32:23', '2016-09-20 19:32:23', NULL, NULL, '', '', '', 0.00, 0, ''),
(17, 15, 'sadf asdf sd', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-20 21:53:20', '2016-09-20 21:53:20', NULL, NULL, '', '', '', 0.00, 0, ''),
(18, 13, 'Sample Client', NULL, NULL, NULL, NULL, NULL, '', 2, NULL, NULL, NULL, 0, 0, '', '', 0, 0, '2016-09-26 19:02:11', '2016-09-26 19:02:11', NULL, NULL, '', '', '', 0.00, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `client_column_setting`
--

CREATE TABLE IF NOT EXISTS `client_column_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `client_name` tinyint(1) NOT NULL DEFAULT '1',
  `email` tinyint(1) NOT NULL DEFAULT '1',
  `phone` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `note` tinyint(1) NOT NULL DEFAULT '1',
  `acquire_date` tinyint(1) NOT NULL DEFAULT '1',
  `overdue` tinyint(1) NOT NULL DEFAULT '1',
  `today` tinyint(1) NOT NULL DEFAULT '1',
  `tomorrow` tinyint(1) NOT NULL DEFAULT '1',
  `complete` tinyint(1) NOT NULL DEFAULT '1',
  `total` tinyint(1) NOT NULL DEFAULT '1',
  `checklist` tinyint(1) NOT NULL DEFAULT '1',
  `time` tinyint(1) NOT NULL DEFAULT '1',
  `budget` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client_contacts`
--

CREATE TABLE IF NOT EXISTS `client_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client_details`
--

CREATE TABLE IF NOT EXISTS `client_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client_filters`
--

CREATE TABLE IF NOT EXISTS `client_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filter` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client_tag`
--

CREATE TABLE IF NOT EXISTS `client_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE IF NOT EXISTS `conversations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned NOT NULL,
  `read_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `thread_id`, `sender_id`, `read_user`, `message`, `link`, `image`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 2, 12, NULL, 'I created two of these grioups. We need to be able to delete them or not create duplicates.', NULL, NULL, NULL, NULL, '2016-09-21 01:17:29', '2016-09-21 01:17:29'),
(2, 2, 12, NULL, 'I have added more copy in the internal notes of pre-sale page 1 and 2', NULL, NULL, NULL, NULL, '2016-09-21 01:17:50', '2016-09-21 01:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_menu_configuration`
--

CREATE TABLE IF NOT EXISTS `dashboard_menu_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dashboard_menu_configuration`
--

INSERT INTO `dashboard_menu_configuration` (`id`, `slug`, `title`, `is_active`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'total_user', 'Total User', 1, NULL, '2016-09-11 16:41:17', '2016-09-26 19:10:42'),
(2, 'total_checklists', 'Total Checklist', 1, NULL, '2016-09-11 16:41:17', '0000-00-00 00:00:00'),
(3, 'total_tasks', 'Total Task', 1, NULL, '2016-09-11 16:41:17', '0000-00-00 00:00:00'),
(4, 'total_clients', 'Total Client', 0, NULL, '2016-09-11 16:41:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_reports`
--

CREATE TABLE IF NOT EXISTS `dashboard_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `attribute_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_one_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_two_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_three` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_three_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `report_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series` text COLLATE utf8_unicode_ci,
  `label` text COLLATE utf8_unicode_ci,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `receiver_id` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `link`, `image`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 3, 12, 'Hey', NULL, NULL, 1, '2016-09-15 05:14:15', '2016-09-18 01:01:20'),
(2, 12, 3, 'yo', NULL, NULL, 1, '2016-09-17 21:15:07', '2016-09-18 01:17:05'),
(3, 3, 12, 'Hey', NULL, NULL, 1, '2016-09-17 21:15:18', '2016-09-18 01:01:20'),
(4, 12, 3, 'so how do we tackle this beast?', NULL, NULL, 1, '2016-09-17 21:18:48', '2016-09-18 01:17:05'),
(5, 3, 12, 'I think from the bottom up', NULL, NULL, 1, '2016-09-17 21:19:40', '2016-09-18 01:01:20'),
(6, 3, 12, 'Start with the abandonment email 6', NULL, NULL, 1, '2016-09-17 21:19:59', '2016-09-18 01:01:20'),
(7, 12, 3, 'ok should I write it in the notes section?', NULL, NULL, 1, '2016-09-17 21:20:47', '2016-09-18 01:17:05'),
(8, 12, 3, 'Internal', NULL, NULL, 1, '2016-09-17 21:21:06', '2016-09-18 01:17:05'),
(9, 12, 3, '?', NULL, NULL, 1, '2016-09-17 21:21:08', '2016-09-18 01:17:05'),
(10, 3, 12, 'I suppose that will be the easiest, unless you wanted to use icloud or google docs', NULL, NULL, 1, '2016-09-17 21:21:48', '2016-09-18 01:01:20'),
(11, 12, 3, 'let''s keep it in here and see how that works', NULL, NULL, 1, '2016-09-17 21:22:53', '2016-09-18 01:17:05'),
(12, 12, 3, 'so this is:send a time constraint email letting people know that the discount opportunity will expire in 24 hours.', NULL, NULL, 1, '2016-09-17 21:23:24', '2016-09-18 01:17:05'),
(13, 12, 3, 'so maybe you need to tell me an example of how this would be', NULL, NULL, 1, '2016-09-17 21:23:48', '2016-09-18 01:17:05'),
(14, 12, 3, 'what is the "opportunity?', NULL, NULL, 1, '2016-09-17 21:24:02', '2016-09-18 01:17:05'),
(15, 3, 12, 'If you click the attachment, it is the example email from the article', NULL, NULL, 1, '2016-09-17 21:28:40', '2016-09-18 01:01:20'),
(16, 12, 3, 'Only $9/mo/user? Price will go up...', NULL, NULL, 1, '2016-09-17 21:28:47', '2016-09-18 01:17:05'),
(17, 3, 12, 'or x% off', NULL, NULL, 1, '2016-09-17 21:29:25', '2016-09-18 01:01:20'),
(18, 3, 12, 'or extended free trial. Signup now for 60days free!', NULL, NULL, 1, '2016-09-17 21:29:42', '2016-09-18 01:01:20'),
(19, 3, 12, 'or get personal setup', NULL, NULL, 1, '2016-09-17 21:29:59', '2016-09-18 01:01:20'),
(20, 3, 12, 'we can always test the offer', NULL, NULL, 1, '2016-09-17 21:30:24', '2016-09-18 01:01:20'),
(21, 3, 12, 'just have to pick one to start', NULL, NULL, 1, '2016-09-17 21:30:36', '2016-09-18 01:01:20'),
(22, 12, 3, 'we want revenue', NULL, NULL, 1, '2016-09-17 21:31:10', '2016-09-18 01:17:05'),
(23, 12, 3, 'so prepay for the year', NULL, NULL, 1, '2016-09-17 21:31:41', '2016-09-18 01:17:05'),
(24, 12, 3, '?', NULL, NULL, 1, '2016-09-17 21:31:45', '2016-09-18 01:17:05'),
(25, 12, 3, '/', NULL, NULL, 1, '2016-09-17 21:31:54', '2016-09-18 01:17:05'),
(26, 3, 12, 'This is a last ditch effort to get someone to sign up. The 20th step in the funnel', NULL, NULL, 1, '2016-09-17 21:33:24', '2016-09-18 01:01:20'),
(27, 3, 12, 'and they would only get this email if they put their email in our signup form and closed the browser before signing up', NULL, NULL, 1, '2016-09-17 21:35:08', '2016-09-18 01:01:20'),
(28, 12, 3, 'sure, so let''s first figure out the offer? LIke pre pay for the year get an extra month free. So we need $90', NULL, NULL, 1, '2016-09-17 21:35:10', '2016-09-18 01:17:05'),
(29, 12, 3, 'So $90/user for the year. That''s 2 months free!', NULL, NULL, 1, '2016-09-17 21:36:21', '2016-09-18 01:17:05'),
(30, 3, 12, 'for the first year, if you signup in the next 24 hours', NULL, NULL, 1, '2016-09-17 21:37:12', '2016-09-18 01:01:20'),
(31, 12, 3, 'nice', NULL, NULL, 1, '2016-09-17 21:37:30', '2016-09-18 01:17:05'),
(32, 3, 12, 'That will also, be the offer in Email 4. But we would say in the next 72 hours, or what ever the dispatch time is between email 4 and 6', NULL, NULL, 1, '2016-09-17 21:38:17', '2016-09-18 01:01:20'),
(33, 3, 12, 'Email 6. Offer expires today', NULL, NULL, 1, '2016-09-17 21:40:11', '2016-09-18 01:01:20'),
(34, 3, 12, 'Email 4. Limited Time Offer', NULL, NULL, 1, '2016-09-17 21:40:25', '2016-09-18 01:01:20'),
(35, 12, 3, 'look at internal note', NULL, NULL, 1, '2016-09-17 21:49:56', '2016-09-18 01:17:05'),
(36, 12, 3, 'I seemed to have dragged and dropped the last task and now the task number updated to 21 from 20... weird right?', NULL, NULL, 1, '2016-09-17 21:50:31', '2016-09-18 01:17:05'),
(37, 3, 12, 'that is weird', NULL, NULL, 1, '2016-09-17 21:51:11', '2016-09-18 01:01:20'),
(38, 3, 12, 'That looks like a good email. But maybe instead of saying 9%. maybe say "two free months"?', NULL, NULL, 1, '2016-09-17 21:51:43', '2016-09-18 01:01:20'),
(39, 12, 3, 'sure but 1 month is free', NULL, NULL, 1, '2016-09-17 21:52:07', '2016-09-18 01:17:05'),
(40, 12, 3, 'so is it better to say 2months free or 1 month free and 9% offf?', NULL, NULL, 1, '2016-09-17 21:52:28', '2016-09-18 01:17:05'),
(41, 12, 3, 'should we say something like if you pay month to month prices could go up, but if you pay for the year you are locked in to that super low price', NULL, NULL, 1, '2016-09-17 21:53:25', '2016-09-18 01:17:05'),
(42, 12, 3, 'check internal note now', NULL, NULL, 1, '2016-09-17 22:00:38', '2016-09-18 01:17:05'),
(43, 12, 3, 'check internal note now', NULL, NULL, 1, '2016-09-17 22:00:39', '2016-09-18 01:17:05'),
(44, 3, 12, 'we don''t want to make it too complicated. I think that looks good for now', NULL, NULL, 1, '2016-09-17 22:02:38', '2016-09-18 01:01:20'),
(45, 12, 3, 'ok whats next?', NULL, NULL, 1, '2016-09-17 22:02:52', '2016-09-18 01:17:05'),
(46, 3, 12, 'Email 5', NULL, NULL, 1, '2016-09-17 22:03:09', '2016-09-18 01:01:20'),
(47, 12, 3, 'ok how do we do social proof in this 5th email?', NULL, NULL, 1, '2016-09-17 22:04:50', '2016-09-18 01:17:05'),
(48, 12, 3, 'customer testimonial needs to be in Fb?', NULL, NULL, 1, '2016-09-17 22:05:20', '2016-09-18 01:17:05'),
(49, 3, 12, 'no, it doesn''t need to be in Facebook. For now we can just use the quotes. Once we start growing and getting more on social or third party reviews, we will updated these', NULL, NULL, 1, '2016-09-17 22:09:06', '2016-09-18 01:01:20'),
(50, 12, 3, 'Hey,  We cannot be happier to share how much our customers love using Easy Checklist ABC. Click here to view what <our customer named x> said... (link to social media post).  Have a great day,   Michael.', NULL, NULL, 1, '2016-09-17 22:10:14', '2016-09-18 01:17:05'),
(51, 3, 12, 'That works for now', NULL, NULL, 1, '2016-09-17 22:10:57', '2016-09-18 01:01:20'),
(52, 3, 12, 'I''m going to take a break and grab some lunch', NULL, NULL, 1, '2016-09-17 22:12:06', '2016-09-18 01:01:20'),
(53, 12, 3, 'ok I will move through the emails... check them later', NULL, NULL, 1, '2016-09-17 22:12:27', '2016-09-18 01:17:05'),
(54, 3, 12, 'sweet', NULL, NULL, 1, '2016-09-17 22:12:32', '2016-09-18 01:01:20'),
(55, 12, 3, '6 emails done', NULL, NULL, 1, '2016-09-17 22:31:52', '2016-09-18 01:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_08_04_223156_create_client_table', 1),
('2015_08_10_112953_create_checklist_table', 1),
('2015_08_11_145020_create_task_table', 1),
('2015_08_18_075307_create_status_table', 1),
('2015_08_18_200337_add_link_column_to_client', 1),
('2015_08_19_091826_add_notes_to_clients', 1),
('2015_08_23_140536_create_tag_table', 1),
('2015_08_24_101836_create_client_tag_table', 1),
('2015_08_24_102835_remove_tag_column_client_table', 1),
('2015_08_26_115146_add_acquired_date_to_client', 1),
('2015_08_29_140628_create_client_filter_table', 1),
('2015_09_06_135647_add_name_to_clientFilter', 1),
('2015_09_07_073321_soft_delete_clients', 1),
('2015_09_19_051703_add_additional_to_clients', 1),
('2015_09_19_052737_create_client_contacts_table', 1),
('2015_09_20_073943_create_client_details_table', 1),
('2015_11_09_104224_add_time_column', 1),
('2015_11_09_104241_add_time_column_task', 1),
('2016_01_23_181708_add_depend_column', 1),
('2016_02_08_051454_create_plans_table', 1),
('2016_02_08_053626_add_user_info_to_users', 1),
('2016_02_08_070458_create_organizations_table', 1),
('2016_02_08_071132_create_organization_user_table', 1),
('2016_02_10_061114_add_additional_fields_to_users_table', 1),
('2016_02_12_085608_create_checklist_filter_table', 1),
('2016_03_01_052844_create_teams_table', 1),
('2016_03_01_062558_create_team_user_table', 1),
('2016_03_03_103120_soft_delete_user', 1),
('2016_03_07_053658_create_checklistables', 1),
('2016_03_07_115455_create_taskables_table', 1),
('2016_03_08_055202_add_custom_link_in_checklists_and_tasks_table', 1),
('2016_03_29_065644_add_organization_id_in_team_table', 1),
('2016_04_27_093830_add_soft_delete_to_checklists_table', 1),
('2016_04_30_071208_add_soft_delete_to_tasks', 1),
('2016_05_02_045848_change_budget_time_column_in_checklists', 1),
('2016_05_02_110124_change_budget_time_column_in_tasks', 1),
('2016_05_05_111550_change_checklists_table_completed_at_field', 1),
('2016_05_05_112152_change_tasks_table_completed_at_field', 1),
('2016_05_14_113718_add_position_column_to_checklists', 1),
('2016_05_15_100953_add_position_column_to_tasks', 1),
('2016_05_19_060027_create_dashboard_reports_table', 1),
('2016_05_24_051106_update_priority_column_of_checklists_table', 1),
('2016_05_24_053424_update_priority_column_of_tasks_table', 1),
('2016_05_26_061703_add_organization_id_column_to_dashboard_reports', 1),
('2016_05_29_114923_update_users_table', 1),
('2016_05_29_115925_add_cashier_columns', 1),
('2016_05_29_123104_add_user_plan_column', 1),
('2016_06_06_055851_create_dashboard_menu_configuration_table', 1),
('2016_06_18_061644_add_unique_to_client_name', 1),
('2016_06_22_084917_add_extra_fields_to_dashboard_reports_table', 1),
('2016_06_25_073537_create_user_notifications_table', 1),
('2016_06_27_084346_add_templates_fields_to_checklist', 1),
('2016_07_17_085100_add_expected_duration_to_tasks', 1),
('2016_07_17_113251_create_threads_table', 1),
('2016_07_17_113414_create_conversations_table', 1),
('2016_07_17_113732_create_thread_user_table', 1),
('2016_07_17_114113_create_messages_table', 1),
('2016_07_24_100809_add_username_field_to_users_table', 1),
('2016_07_31_071356_add_organization_id_to_threads_table', 1),
('2016_08_07_083421_add_read_user_field_to_conversations', 1),
('2016_08_23_055354_add_stop_tooltip_to_users', 1),
('2016_08_27_031124_create_priority_table', 1),
('2016_08_30_095255_update_priorty_field_from_checklists', 1),
('2016_08_30_095326_update_priorty_field_from_tasks', 1),
('2016_08_31_054140_create_user_setting_table', 1),
('2016_08_31_112420_create_checklist_column_setting_table', 1),
('2016_09_01_115027_create_client_column_setting_table', 1),
('2016_09_01_115056_create_user_column_setting_table', 1),
('2016_09_03_150322_update_columns_of_clients_table', 1),
('2016_03_09_120350_add_email_count_in_checklist', 2),
('2016_03_10_050925_create_reminders_table', 2),
('2016_03_10_120245_add_reminder_active_field_in_users', 2),
('2016_03_22_080302_add_client_email_status_field_to_checklists', 2),
('2016_05_30_083120_update_reminder_history_table_fields', 2),
('2016_02_22_081238_create_recurrings_table', 3),
('2016_02_27_060203_create_reminder_day_table', 3),
('2016_04_16_120548_add_copied_from_field', 3),
('2016_04_17_080056_add_recurring_status_field', 3),
('2016_05_08_090403_alter_recurring_type', 3),
('2016_05_09_090520_add_generated_date_column', 3),
('2016_06_15_083447_alter_recurring_type_again', 3),
('2016_09_16_085013_update_checklist_column_setting', 4);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plan_id` int(10) unsigned NOT NULL,
  `organization_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_plan` int(11) DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `industry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `organizations_plan_id_foreign` (`plan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `plan_id`, `organization_name`, `description`, `user_plan`, `coupon`, `industry`, `created_at`, `updated_at`) VALUES
(1, 2, 'sunhll', '', 2, NULL, 'IT', '2016-09-11 16:42:40', '2016-09-11 16:42:40'),
(2, 2, 'swSOUL', '', 4, NULL, 'Digital Marketing', '2016-09-11 18:16:21', '2016-09-11 18:16:21'),
(3, 2, 'JU', '', 5, NULL, 'IT', '2016-09-12 08:10:44', '2016-09-12 08:10:44'),
(4, 2, 'Ezabc', '', 1, NULL, NULL, '2016-09-12 16:16:53', '2016-09-12 16:16:53'),
(5, 2, 'SaleCycle, Inc.', '', 15, NULL, NULL, '2016-09-12 17:45:13', '2016-09-12 17:45:13'),
(6, 2, 'swSOUL', '', 15, NULL, NULL, '2016-09-12 18:14:04', '2016-09-12 18:14:04'),
(7, 2, 'The Co. ', '', 5, NULL, 'Business', '2016-09-13 03:07:15', '2016-09-13 03:07:15'),
(8, 2, 'Fidelis Consultants', '', 2, NULL, 'insurance', '2016-09-13 19:42:47', '2016-09-13 19:42:47'),
(9, 2, 'Bookkeeping for Dentists LLC', '', 1, NULL, 'Accounting', '2016-09-13 21:37:03', '2016-09-13 21:37:03'),
(10, 2, 'Deborah G. Williams, CPA', '', 1, NULL, 'Accounting and Consulting', '2016-09-16 00:10:59', '2016-09-16 00:10:59'),
(11, 2, 'Dowd and Associates P.A.', '', 1, NULL, 'Accounting ', '2016-09-17 06:01:59', '2016-09-17 06:01:59'),
(12, 2, 'Sunhill', '', 2, NULL, 'IT', '2016-09-17 09:39:17', '2016-09-17 09:39:17'),
(13, 2, 'Ivan Alvarez CPA LLC', '', 1, NULL, 'Accounting', '2016-09-19 18:56:51', '2016-09-19 18:56:51'),
(14, 2, 'Accutax Income Tax Services', '', 1, NULL, 'Tax and Accounting', '2016-09-20 18:52:00', '2016-09-20 18:52:00'),
(15, 2, 'Ferrell & DeGance', '', 1, NULL, 'CPA FIRM', '2016-09-20 19:19:03', '2016-09-20 19:19:03'),
(16, 2, 'Systemize Pty Ltd', '', 1, NULL, 'Accounting', '2016-09-22 00:48:36', '2016-09-22 00:48:36'),
(17, 2, 'Bucky LLC', '', 1, NULL, NULL, '2016-09-26 20:32:52', '2016-09-26 20:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `organization_user`
--

CREATE TABLE IF NOT EXISTS `organization_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `organization_id` int(10) unsigned NOT NULL,
  `is_owner` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `organization_user_user_id_foreign` (`user_id`),
  KEY `organization_user_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `organization_user`
--

INSERT INTO `organization_user` (`id`, `user_id`, `organization_id`, `is_owner`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 2, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 3, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, 4, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 5, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, 6, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 8, 7, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 9, 8, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 10, 8, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 11, 9, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 12, 2, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 13, 2, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 14, 10, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 15, 11, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 16, 12, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 17, 13, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 18, 14, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 19, 15, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 20, 16, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 21, 17, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sanjib@gmail.com', 'bd4f2b4695ab560557cba25c46af2b95cbc405ce3ac481b0e85f172403950a06', '2016-09-11 16:44:30'),
('steve@easychecklistabc.com', '799ac0a2ea47483ee4cc28844d61c8faa5677bd99376e4c459118f9ad0531902', '2016-09-15 02:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE IF NOT EXISTS `plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `plan_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_type_id` int(11) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `max_user` int(11) DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `package_name`, `description`, `price`, `plan_uid`, `plan_type_id`, `is_featured`, `max_user`, `public`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'single_user_monthly', 'Single Users Plan', 9.99, 'single_user_monthly', 1, NULL, 5, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'free_plan', 'Single Users Free Plan', 0, 'free_plan', 4, NULL, 1, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `plan_types`
--

CREATE TABLE IF NOT EXISTS `plan_types` (
  `plan_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`plan_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `plan_types`
--

INSERT INTO `plan_types` (`plan_type_id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'monthly', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'yearly', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'two_year', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'free', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE IF NOT EXISTS `priorities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(10) unsigned NOT NULL,
  `priority` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `bg_color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `org_id`, `priority`, `short_name`, `bg_color`, `sort`, `created_at`, `updated_at`) VALUES
(1, 0, 'Critical', 'C', '#f50f0f', 0, '2016-09-11 16:40:28', '2016-09-11 16:40:28'),
(2, 0, 'High', 'H', '#f50ed8', 1, '2016-09-11 16:40:28', '2016-09-11 16:40:28'),
(3, 0, 'Medium', 'M', '#e4e30a', 2, '2016-09-11 16:40:28', '2016-09-11 16:40:28'),
(4, 0, 'Low', 'L', '#08963f', 3, '2016-09-11 16:40:28', '2016-09-11 16:40:28'),
(5, 0, 'None', 'N', '', 4, '2016-09-11 16:40:28', '2016-09-11 16:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `recurrings`
--

CREATE TABLE IF NOT EXISTS `recurrings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checklist_id` int(10) unsigned NOT NULL,
  `recurring_type` enum('not_recurring','daily','weekly','bi_weekly','monthly','monthly_1st_week','monthly_3rd_week','quarterly','yearly','custom','when_completed') COLLATE utf8_unicode_ci DEFAULT NULL,
  `recurring_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generated_date` date DEFAULT NULL,
  `after_checklist_completed` tinyint(1) NOT NULL DEFAULT '0',
  `is_client` tinyint(1) NOT NULL DEFAULT '0',
  `is_user` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `recurrings_checklist_id_foreign` (`checklist_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `recurrings`
--

INSERT INTO `recurrings` (`id`, `checklist_id`, `recurring_type`, `recurring_date`, `generated_date`, `after_checklist_completed`, `is_client`, `is_user`, `created_at`, `updated_at`) VALUES
(1, 15, 'when_completed', '', NULL, 1, 0, 0, '2016-09-19 18:49:14', '2016-09-19 18:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `reminder_count` smallint(6) DEFAULT NULL,
  `reminderable_id` int(11) NOT NULL,
  `reminderable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_day`
--

CREATE TABLE IF NOT EXISTS `reminder_day` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recurring_id` int(10) unsigned NOT NULL,
  `reminder_day` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `reminder_day_recurring_id_foreign` (`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_history`
--

CREATE TABLE IF NOT EXISTS `reminder_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `reminderable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reminderable_id` int(10) unsigned DEFAULT NULL,
  `reminder_sent_date` date NOT NULL,
  `receiver_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiver_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `bg_color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `org_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `short_name`, `bg_color`, `org_id`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'None', 'No', '#ccc', 0, 0, '2016-09-20 14:41:02', '2016-09-20 14:41:02'),
(2, 'Not Started', 'NS', '#eee', 0, 1, '2016-09-20 14:41:02', '2016-09-20 14:41:02'),
(3, 'Completed', 'Cm', '#fffccc', 0, 4, '2016-09-20 14:41:02', '2016-09-20 14:41:02'),
(4, ' In Progress', 'IP', '#ccc', 0, 2, '2016-09-20 14:41:02', '2016-09-20 14:41:02'),
(5, 'On Hold', 'OH', '#ccc', 0, 3, '2016-09-20 14:41:02', '2016-09-20 14:41:02'),
(7, 'To review', 'rev', '#000000', 15, 5, '2016-09-20 19:20:19', '2016-09-20 19:20:19'),
(8, 'Partner Review', 'PR', '#000000', 15, 6, '2016-09-20 19:20:41', '2016-09-20 19:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `taskables`
--

CREATE TABLE IF NOT EXISTS `taskables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int(10) unsigned NOT NULL,
  `taskable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `taskable_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=65 ;

--
-- Dumping data for table `taskables`
--

INSERT INTO `taskables` (`id`, `task_id`, `taskable_type`, `taskable_id`, `created_at`, `updated_at`) VALUES
(1, 3, 'App\\User', 3, '2016-09-15 02:28:11', '2016-09-15 02:28:11'),
(2, 4, 'App\\User', 3, '2016-09-15 02:28:11', '2016-09-15 02:28:11'),
(3, 5, 'App\\User', 3, '2016-09-15 02:28:11', '2016-09-15 02:28:11'),
(4, 6, 'App\\User', 3, '2016-09-15 02:28:11', '2016-09-15 02:28:11'),
(5, 7, 'App\\User', 3, '2016-09-15 02:28:11', '2016-09-15 02:28:11'),
(6, 8, 'App\\User', 3, '2016-09-15 02:28:11', '2016-09-15 02:28:11'),
(7, 9, 'App\\User', 3, '2016-09-15 02:28:11', '2016-09-15 02:28:11'),
(8, 10, 'App\\User', 3, '2016-09-15 02:28:11', '2016-09-15 02:28:11'),
(9, 11, 'App\\User', 3, '2016-09-15 02:28:11', '2016-09-15 02:28:11'),
(10, 23, 'App\\User', 3, '2016-09-15 02:38:23', '2016-09-15 02:38:23'),
(12, 24, 'App\\User', 3, '2016-09-15 02:38:40', '2016-09-15 02:38:40'),
(13, 35, 'App\\User', 3, '2016-09-15 04:53:20', '2016-09-15 04:53:20'),
(14, 36, 'App\\User', 3, '2016-09-15 04:53:20', '2016-09-15 04:53:20'),
(15, 37, 'App\\User', 3, '2016-09-15 04:53:20', '2016-09-15 04:53:20'),
(16, 38, 'App\\User', 3, '2016-09-15 04:53:20', '2016-09-15 04:53:20'),
(17, 39, 'App\\User', 3, '2016-09-15 04:53:20', '2016-09-15 04:53:20'),
(18, 40, 'App\\User', 3, '2016-09-15 04:53:45', '2016-09-15 04:53:45'),
(19, 41, 'App\\User', 3, '2016-09-15 05:22:30', '2016-09-15 05:22:30'),
(29, 46, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(30, 47, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(31, 48, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(32, 49, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(33, 50, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(34, 51, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(35, 52, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(36, 53, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(37, 54, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(38, 55, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(39, 56, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(40, 57, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(41, 58, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(42, 59, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(43, 60, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(44, 61, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(45, 62, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(46, 63, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(47, 64, 'App\\User', 12, '2016-09-17 21:08:59', '2016-09-17 21:08:59'),
(49, 96, 'App\\User', 3, '2016-09-18 19:38:05', '2016-09-18 19:38:05'),
(50, 97, 'App\\User', 3, '2016-09-18 19:38:05', '2016-09-18 19:38:05'),
(51, 98, 'App\\User', 3, '2016-09-18 19:38:05', '2016-09-18 19:38:05'),
(52, 99, 'App\\User', 3, '2016-09-18 19:38:05', '2016-09-18 19:38:05'),
(53, 100, 'App\\User', 3, '2016-09-18 19:38:05', '2016-09-18 19:38:05'),
(54, 101, 'App\\User', 3, '2016-09-18 19:38:05', '2016-09-18 19:38:05'),
(55, 102, 'App\\User', 3, '2016-09-18 19:38:05', '2016-09-18 19:38:05'),
(56, 103, 'App\\User', 3, '2016-09-18 19:38:05', '2016-09-18 19:38:05'),
(57, 104, 'App\\User', 3, '2016-09-18 19:38:05', '2016-09-18 19:38:05'),
(58, 105, 'App\\User', 3, '2016-09-18 20:20:22', '2016-09-18 20:20:22'),
(59, 65, 'App\\User', 3, '2016-09-18 21:04:15', '2016-09-18 21:04:15'),
(60, 118, 'App\\User', 15, '2016-09-19 18:48:40', '2016-09-19 18:48:40'),
(61, 119, 'App\\User', 15, '2016-09-19 18:48:48', '2016-09-19 18:48:48'),
(62, 136, 'App\\User', 19, '2016-09-20 19:24:35', '2016-09-20 19:24:35'),
(63, 147, 'App\\User', 17, '2016-09-26 03:16:02', '2016-09-26 03:16:02'),
(64, 150, 'App\\User', 17, '2016-09-26 03:16:16', '2016-09-26 03:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checklist_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_template` tinyint(1) NOT NULL,
  `is_archived` tinyint(1) NOT NULL,
  `start_date` date NOT NULL,
  `expected_duration` int(11) NOT NULL DEFAULT '0',
  `due_date` date NOT NULL,
  `due_date_extension` int(11) NOT NULL,
  `link_to_folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `internal_notes` text COLLATE utf8_unicode_ci NOT NULL,
  `notes_to_client` text COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `org_id` int(11) NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `file_custom_link` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `depend` int(11) NOT NULL,
  `copied_from` int(10) unsigned DEFAULT NULL,
  `task_num` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `budget` datetime DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=165 ;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `checklist_id`, `client_id`, `user_id`, `is_template`, `is_archived`, `start_date`, `expected_duration`, `due_date`, `due_date_extension`, `link_to_folder`, `description`, `internal_notes`, `notes_to_client`, `status_id`, `created_by`, `is_visible`, `org_id`, `completed_at`, `files`, `file_custom_link`, `created_at`, `updated_at`, `depend`, `copied_from`, `task_num`, `deleted_at`, `budget`, `time`, `position`, `priority`) VALUES
(1, 'task #1', 2, 0, 0, 0, 0, '2016-09-12', 0, '2016-09-16', 0, '', '', '', '', 4, 0, 0, 0, NULL, '', NULL, '2016-09-13 02:50:27', '2016-09-13 02:55:46', 0, NULL, 1, NULL, NULL, NULL, 0, 'High'),
(2, 'Task #2', 2, 0, 0, 0, 0, '2016-09-12', 0, '2016-09-16', 0, '', '', '', '', 1, 0, 0, 0, NULL, '', NULL, '2016-09-13 02:50:31', '2016-09-13 02:55:48', 0, NULL, 2, NULL, NULL, NULL, 1, 'Critical'),
(3, 'Trainer Jai - Emails', 5, 0, 0, 0, 0, '2016-09-14', 1, '2016-09-15', 0, '', '', '', '', 3, 0, 0, 0, '2016-09-17 16:17:00', '', NULL, '2016-09-15 02:19:10', '2016-09-17 20:17:00', 0, NULL, 2, NULL, '2016-09-14 03:00:00', NULL, 1, 'None'),
(4, 'Pilates Connection - Website', 5, 0, 0, 0, 0, '2016-09-14', 0, '2016-09-24', 0, '', '', '', '', 5, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:19:18', '2016-09-15 02:42:23', 0, NULL, 11, NULL, '2016-09-14 14:00:00', NULL, 10, 'None'),
(5, 'Easy Checklist ABC - Website', 5, 0, 0, 0, 0, '2016-09-14', 0, '2016-09-15', 0, '', '', '', '', 5, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:19:28', '2016-09-15 02:41:29', 0, NULL, 1, NULL, '2016-09-14 03:00:00', NULL, 0, 'None'),
(6, 'Easy Checklist ABC - 5 Minute Intro Video', 5, 0, 0, 0, 0, '2016-09-14', 0, '2016-09-17', 0, '', '', '', '', 7, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:19:50', '2016-09-15 02:30:22', 0, NULL, 3, NULL, '2016-09-14 02:00:00', NULL, 2, 'None'),
(7, 'Easy Checklist ABC - 2 Minute Teaser Video', 5, 0, 0, 0, 0, '2016-09-14', 0, '2016-09-17', 0, '', '', '', '', 7, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:20:05', '2016-09-15 02:30:22', 0, NULL, 4, NULL, '2016-09-14 01:00:00', NULL, 3, 'None'),
(8, 'Pilates Connection - Facebook Funnel', 5, 0, 0, 0, 0, '2016-09-14', 0, '2016-09-18', 0, '', '', '', '', 5, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:21:26', '2016-09-15 02:42:20', 0, NULL, 7, NULL, '2016-09-14 02:00:00', NULL, 6, 'None'),
(9, 'Easy Checklist ABC - Funnel', 5, 0, 0, 0, 0, '2016-09-14', 11, '2016-09-25', 0, '', '', '', '', 3, 0, 0, 0, '2016-09-17 17:12:04', '', NULL, '2016-09-15 02:21:38', '2016-09-17 21:12:04', 0, NULL, 12, NULL, '2016-09-14 10:00:00', NULL, 11, 'None'),
(10, 'Easy Checklist ABC - Steve''s Todo list', 5, 0, 0, 0, 0, '2016-09-14', 0, '2016-09-18', 0, '', '', '', '', 7, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:21:56', '2016-09-15 02:42:20', 0, NULL, 8, NULL, '2016-09-14 01:00:00', NULL, 7, 'None'),
(11, 'Easy Checklist ABC - Next Dev Sprint', 5, 0, 0, 0, 0, '2016-09-14', 0, '2016-09-17', 0, '', '', '', '', 7, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:22:09', '2016-09-15 02:30:22', 0, NULL, 5, NULL, '2016-09-14 01:00:00', NULL, 4, 'None'),
(12, 'Profile Image - Stretched on Account Menu', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:32:46', '2016-09-18 20:21:56', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(13, 'Default Visible Columns', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:33:17', '2016-09-18 20:21:56', 0, NULL, 2, NULL, NULL, NULL, 1, 'None'),
(14, 'Default Statuses', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:33:28', '2016-09-18 20:21:56', 0, NULL, 3, NULL, NULL, NULL, 2, 'None'),
(15, 'Import Templates from previous App', 6, 0, 0, 0, 0, '2016-09-14', 109, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:33:31', '2016-09-26 20:34:00', 0, NULL, 4, NULL, NULL, NULL, 3, 'None'),
(16, 'New Account Default Checklist', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:33:41', '2016-09-18 20:21:56', 0, NULL, 5, NULL, NULL, NULL, 4, 'None'),
(17, 'Items with no start or due dates required', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:34:02', '2016-09-18 20:21:56', 0, NULL, 6, NULL, NULL, NULL, 5, 'None'),
(18, 'Filter Menu', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:34:20', '2016-09-18 20:21:56', 0, NULL, 7, NULL, NULL, NULL, 6, 'None'),
(19, 'System Admin', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:36:46', '2016-09-18 20:21:56', 0, NULL, 8, NULL, NULL, NULL, 7, 'None'),
(20, 'New User Welcome Email - 1 hour delay', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:36:58', '2016-09-18 20:21:56', 0, NULL, 9, NULL, NULL, NULL, 8, 'None'),
(21, 'User Billing information', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:37:09', '2016-09-18 20:21:56', 0, NULL, 10, NULL, NULL, NULL, 9, 'None'),
(22, 'Free Trial Footer Banner', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:37:40', '2016-09-18 20:21:56', 0, NULL, 11, NULL, NULL, NULL, 10, 'None'),
(23, 'Easy Checklist ABC - Free Trail Email Notifications', 5, 0, 0, 0, 0, '2016-09-14', 0, '2016-09-17', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:37:58', '2016-09-15 02:42:34', 0, NULL, 6, NULL, '2016-09-14 01:00:00', NULL, 5, 'None'),
(24, 'Easy Checklist ABC - New User Email Series', 5, 0, 0, 0, 0, '2016-09-14', 0, '2016-09-18', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:38:17', '2016-09-15 02:42:40', 0, NULL, 9, NULL, '2016-09-14 02:00:00', NULL, 8, 'None'),
(25, 'Input fields dropping below visible screen', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:39:09', '2016-09-18 20:21:56', 0, NULL, 12, NULL, NULL, NULL, 11, 'None'),
(26, 'Ability to Know what other users are logged in', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:39:33', '2016-09-18 20:21:56', 0, NULL, 13, NULL, NULL, NULL, 12, 'None'),
(27, 'Placeholder Profile Image Icons', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:39:55', '2016-09-18 20:21:56', 0, NULL, 14, NULL, NULL, NULL, 13, 'None'),
(28, 'Created New User Email Notification', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:41:20', '2016-09-18 20:21:56', 0, NULL, 15, NULL, NULL, NULL, 14, 'None'),
(29, 'System Alerts - Shouldn''t alert the User that made the change', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:41:56', '2016-09-18 20:21:56', 0, NULL, 16, NULL, NULL, NULL, 15, 'None'),
(30, 'Budget/Time - Seconds Field should not auto populate', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:42:59', '2016-09-18 20:21:56', 0, NULL, 17, NULL, NULL, NULL, 16, 'None'),
(31, 'Ability to Make ''sticky'' Checklists', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:43:51', '2016-09-18 20:21:56', 0, NULL, 18, NULL, NULL, NULL, 17, 'None'),
(32, 'Checklist Visibility Setting', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:44:40', '2016-09-18 20:21:56', 0, NULL, 19, NULL, NULL, NULL, 18, 'None'),
(33, 'Client Visibility Setting', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:44:53', '2016-09-18 20:21:56', 0, NULL, 20, NULL, NULL, NULL, 19, 'None'),
(34, 'Remove ''Dashboard'' from Notification Center - Temporary', 6, 0, 0, 0, 0, '2016-09-14', 0, '2017-01-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 02:45:46', '2016-09-18 20:21:56', 0, NULL, 21, NULL, NULL, NULL, 20, 'None'),
(35, 'Reliability', 7, 0, 0, 0, 0, '2016-09-14', 0, '2016-10-01', 0, '', '', '', '', 5, 0, 0, 0, NULL, '', NULL, '2016-09-15 04:51:13', '2016-09-18 20:23:20', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(36, 'Collaboration', 7, 0, 0, 0, 0, '2016-09-14', 0, '2016-10-01', 0, '', '', '', '', 7, 0, 0, 0, NULL, '', NULL, '2016-09-15 04:51:18', '2016-09-18 20:23:20', 0, NULL, 2, NULL, NULL, NULL, 1, 'None'),
(37, 'Productivity', 7, 0, 0, 0, 0, '2016-09-14', 0, '2016-10-01', 0, '', '', '', '', 7, 0, 0, 0, NULL, '', NULL, '2016-09-15 04:51:35', '2016-09-18 20:23:20', 0, NULL, 3, NULL, NULL, NULL, 2, 'None'),
(38, 'Consistency', 7, 0, 0, 0, 0, '2016-09-14', 0, '2016-10-01', 0, '', '', '', '', 7, 0, 0, 0, NULL, '', NULL, '2016-09-15 04:52:03', '2016-09-18 20:23:20', 0, NULL, 4, NULL, NULL, NULL, 3, 'None'),
(39, 'Exit Intent Displays', 7, 0, 0, 0, 0, '2016-09-14', 0, '2016-10-01', 0, '', '', '', '', 7, 0, 0, 0, NULL, '', NULL, '2016-09-15 04:52:16', '2016-09-18 20:23:20', 0, NULL, 5, NULL, NULL, NULL, 4, 'None'),
(40, 'Organization', 7, 0, 0, 0, 0, '2016-09-14', 1, '2016-09-15', 0, '', '', '', '', 3, 0, 0, 0, '2016-09-15 00:53:52', '', NULL, '2016-09-15 04:53:41', '2016-09-15 04:53:52', 0, NULL, 6, NULL, NULL, NULL, 5, 'None'),
(41, 'Social Media Sharing Plugin', 7, 0, 0, 0, 0, '2016-09-14', 0, '2016-10-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-15 05:22:24', '2016-09-18 20:23:20', 0, NULL, 7, NULL, NULL, NULL, 6, 'None'),
(42, 'Input Checks', 9, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-17 15:55:20', '2016-09-17 15:55:20', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(43, 'Do Journal Entries', 9, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-17 15:55:49', '2016-09-17 15:55:49', 0, NULL, 2, NULL, NULL, NULL, 1, 'None'),
(44, 'Reconcile', 9, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-17 15:55:58', '2016-09-17 15:55:58', 0, NULL, 3, NULL, NULL, NULL, 2, 'None'),
(45, 'Print Reports', 9, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-17 15:56:06', '2016-09-17 15:56:06', 0, NULL, 4, NULL, NULL, NULL, 3, 'None'),
(46, 'Ad 1', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'Headline: \nDescription: \nImage: \nURL description:\nClick through to Pre-Sell Page 1', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/wmj1jxz1lhulddj/30-days-platforms-img17.jpg?dl=0', NULL, '2016-09-17 20:31:14', '2016-09-18 20:18:32', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(47, 'Ad 2', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'Headline: \nDescription: \nImage: \nURL description:\nClick through to Pre-Sell Page 1', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/wmj1jxz1lhulddj/30-days-platforms-img17.jpg?dl=0', NULL, '2016-09-17 20:31:16', '2016-09-18 20:18:32', 0, NULL, 2, NULL, NULL, NULL, 1, 'None'),
(48, 'Ad 3', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'Headline: \nDescription: \nImage: \nURL description:\nClick through to Pre-Sell Page 1', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/wmj1jxz1lhulddj/30-days-platforms-img17.jpg?dl=0', NULL, '2016-09-17 20:31:18', '2016-09-18 20:18:32', 0, NULL, 3, NULL, NULL, NULL, 2, 'None'),
(49, 'Ad 4', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'Headline: \nDescription: \nImage: \nURL description:\nClick through to Pre-Sell Page 1', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/wmj1jxz1lhulddj/30-days-platforms-img17.jpg?dl=0', NULL, '2016-09-17 20:31:20', '2016-09-18 20:18:32', 0, NULL, 4, NULL, NULL, NULL, 3, 'None'),
(50, 'Ad 5', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'Headline: \nDescription: \nImage: \nURL description:\nClick through to Pre-Sell Page 1', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/wmj1jxz1lhulddj/30-days-platforms-img17.jpg?dl=0', NULL, '2016-09-17 20:31:30', '2016-09-18 20:18:32', 0, NULL, 5, NULL, NULL, NULL, 4, 'None'),
(51, 'Pre-Sell Page 1', 10, 0, 0, 0, 0, '2016-09-17', 2, '2016-09-19', 0, '', 'Headline (ex: 5 steps to increase your profits today, CASE Study: organize your business in minutes, etc.):\nContent: \nImage:\nLinks user to sign up page', 'Manage These 3 Things To Organize And Take Control Of Your Entire Business\n\n1. Your Business Checklists\n\nSo what do we mean by your business checklists? For every service you get paid for you need to create a checklist that contains all the tasks that you perform until you get paid by your client.\n\n2. What your employees are working on\n\nAssign those checklists and tasks to the appropriate employee. You can even assign tasks to your clients and Easy Checklist ABC will send out automatic email reminders to your clients - saving you time and effort.\n\n3. What your business is working on for each client\n\nAssign a client per each checklist. Easy!\n\n\nOnce you do these three steps Easy Checklist ABC assists you in managing and tracking everything that needs to be completed and for you to get paid.', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/puun4f7bme17k8g/30-days-platforms-img18.jpg?dl=0', NULL, '2016-09-17 20:39:22', '2016-09-21 01:38:29', 0, NULL, 6, NULL, NULL, NULL, 5, 'None'),
(52, 'Pre-Sell Page 2', 10, 0, 0, 0, 0, '2016-09-17', 2, '2016-09-19', 0, '', 'Headline (ex: 5 steps to increase your profits today, CASE Study: organize your business in minutes, etc.):\nContent: \nImage:\nLinks user to sign up page', 'Only $9 per month to Organize your business all in one place. \n\nEasily Organize your business all in one place. Easy to use at an affordable monthly price.\n\nYou will now be able to track all the work you do for your clients. We make it easy because all you need to do is create checklists of your business processes and Easy Checklist ABC allows you to track everything you need to stay on top of your business. \n\nHave peace of mind knowing that everything you do in your business will be managed and tracked with ease. Start today for only $9/month/user.\n\nSpecial if you sign up for a year the cost will only be $90/year/user that''s 2 months for free.', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/puun4f7bme17k8g/30-days-platforms-img18.jpg?dl=0', NULL, '2016-09-17 20:42:18', '2016-09-21 02:04:27', 0, 51, 14, NULL, NULL, NULL, 13, 'None'),
(53, 'Exit Intent - Front', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'Headline: \nSub-Headline: \nImage: \nButton:', '', '', 3, 0, 0, 0, '2016-09-17 22:31:57', 'https://www.dropbox.com/s/w83u61plautqqfc/30-days-platforms-img19.jpg?dl=0', NULL, '2016-09-17 20:43:07', '2016-09-18 20:18:32', 0, NULL, 7, NULL, NULL, NULL, 6, 'None'),
(54, 'Exit Intent - Back', 10, 0, 0, 0, 0, '2016-09-17', 2, '2016-09-19', 0, '', 'Headline: \nSub-Headline: \nImage: \nButton:\nButton Link:', '', '', 3, 0, 0, 0, '2016-09-18 16:32:16', 'https://www.dropbox.com/s/dbepx27dbbsjrge/30-days-platforms-img20.jpg?dl=0', NULL, '2016-09-17 20:44:16', '2016-09-18 20:32:16', 0, NULL, 8, NULL, NULL, NULL, 7, 'None'),
(55, 'Banner Ad 1 - Square', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'Headline: \nImage:\nClicks through to Pre-Sell Page 2', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/j29vcsruu1a9m96/30-days-platforms-img25.jpg?dl=0', NULL, '2016-09-17 20:47:50', '2016-09-18 20:18:32', 0, NULL, 10, NULL, NULL, NULL, 9, 'None'),
(56, 'Banner Ad 2 - Square', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'Headline: \nImage:\nClicks through to Pre-Sell Page 2', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/j29vcsruu1a9m96/30-days-platforms-img25.jpg?dl=0', NULL, '2016-09-17 20:48:02', '2016-09-18 20:18:32', 0, NULL, 11, NULL, NULL, NULL, 10, 'None'),
(57, 'Banner Ad 3 - Horizontal', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'Headline: \nImage:\nClicks through to Pre-Sell Page 2', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/j29vcsruu1a9m96/30-days-platforms-img25.jpg?dl=0', NULL, '2016-09-17 20:48:09', '2016-09-18 20:18:32', 0, NULL, 12, NULL, NULL, NULL, 11, 'None'),
(58, 'Banner Ad 4 - Vertical', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'Headline: \nImage:\nClicks through to Pre-Sell Page 2', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/j29vcsruu1a9m96/30-days-platforms-img25.jpg?dl=0', NULL, '2016-09-17 20:48:13', '2016-09-18 20:18:32', 0, NULL, 13, NULL, NULL, NULL, 12, 'None'),
(59, 'Abandonment Email 1', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'ask them to return to sign up, and introduce some scarcity/urgency.', 'Hello there,\n\nNow is the time to sign up for Easy Checklist ABC to organize and grow your business like never before.\n\nOur lowest pricing ever offer will end soon and our pricing will go up so click here to sign up now.\n\nOnly $90/YEAR/user, which is basically like getting 2 months free and locked into pricing that will NOT be available in the near future. As we grow Easy Checklist ABC and offer more features our prices will go up.\n\nSo what''s in it for you? Lock in an entire year at this low, low price. Click here to sign up now.\n\nLater,\n\n\nMichael', '', 3, 0, 0, 0, '2016-09-17 21:38:48', 'https://www.dropbox.com/s/y2vu87ve9w2l9vk/30-days-platforms-img40.jpg?dl=0', NULL, '2016-09-17 20:56:12', '2016-09-18 20:19:31', 0, NULL, 16, NULL, NULL, NULL, 15, 'None'),
(60, 'Abandonment Email 2', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'another reminder to sign up', 'Hello,\n\nWe wanted to remind you about signing up for Easy Checklist ABC while we are offering our lowest price ever!\n\nHow awesome would it be to lock in one low price for an entire year so you can run your business and not have to worry about how to do it. Act now before we raise our prices and yes we will be raising prices soon.\n\nOur best price ever only $90/YEAR/user! This is essential like getting 2 months free and for only $90/Year/user what are you waiting for?!\n\nBest Regards,\n\n\nMichael.', '', 3, 0, 0, 0, '2016-09-17 21:38:48', 'https://www.dropbox.com/s/9ugm5q02zchookr/30-days-platforms-img41.jpg?dl=0', NULL, '2016-09-17 20:56:18', '2016-09-18 20:19:31', 0, NULL, 17, NULL, NULL, NULL, 16, 'None'),
(61, 'Abandonment Email 3', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'social proof email designed to engage them with a piece of content and get them back to our website', 'Howdy,\n\nYou have to see the quotes that we have been receiving from our customers...\n\nWe are always super excited to hear how much we are helping our customers. Click here to read the customer testimonials now. <link to customer testimonials>\n\nThanks,\n\nMichael', '', 3, 0, 0, 0, '2016-09-17 21:38:48', 'https://www.dropbox.com/s/9v2om0egl3548t0/30-days-platforms-img42.jpg?dl=0', NULL, '2016-09-17 20:56:22', '2016-09-18 20:19:31', 0, NULL, 18, NULL, NULL, NULL, 17, 'None'),
(62, 'Abandonment Email 4', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'discount offer', 'Hello there,\n\nWe are very excited to extend our biggest sale to day.\n\nSign up today to get your price locked in for only $90/YEAR/user for the first year. That''s a 9% savings, which is also 2 months free. \n\nRemember this price will go up soon and you should lock in this price now while you still can.\n\nSeize the day,\n\nMichael Co-Founder Easy Checklist ABC', '', 3, 0, 0, 0, '2016-09-17 21:38:48', 'https://www.dropbox.com/s/mjte2tspjdk44rl/30-days-platforms-img43.jpg?dl=0', NULL, '2016-09-17 20:56:26', '2016-09-18 20:19:31', 0, NULL, 19, NULL, NULL, NULL, 18, 'None'),
(63, 'Abandonment Email 5', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'another social proof message', 'Hey,\n\nWe cannot be happier to share how much our customers love using Easy Checklist ABC. Click here to view what <our customer named x> said... (link to social media post).\n\nHave a great day,\n\n\nMichael.', '', 3, 0, 0, 0, '2016-09-17 21:38:48', 'https://www.dropbox.com/s/jtleija83oaf0t6/30-days-platforms-img44.jpg?dl=0', NULL, '2016-09-17 20:56:29', '2016-09-18 20:19:31', 0, NULL, 20, NULL, NULL, NULL, 19, 'None'),
(64, 'Abandonment Email 6', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-19', 0, '', 'send a time constraint email letting people know that the discount opportunity will expire in 24 hours.', 'Hello,\n\nOnly 24 hours left to lock in this low price...\n\nAs promised this is your final chance to get signed up for the best way to organize your business. \n\nThe offer expires today to get your price locked in for only $90/YEAR/user for the first year. That''s a 9% savings, which is also 2 months free. \n\nRemember this price will go up soon and you should lock in this price now while you still can.\n\nTo your success,\n\nMichael Co-Founder Easy Checklist ABC', '', 3, 0, 0, 0, '2016-09-17 21:38:48', 'https://www.dropbox.com/s/jtleija83oaf0t6/30-days-platforms-img44.jpg?dl=0', NULL, '2016-09-17 20:56:33', '2016-09-18 20:19:31', 0, NULL, 22, NULL, NULL, NULL, 21, 'None'),
(65, 'Exit Intent Email - Opt-in Bribe Content', 10, 0, 0, 0, 0, '2016-09-17', 2, '2016-09-19', 0, '', 'eBook, Infographic, etc.', '', '', 3, 0, 0, 0, '2016-09-18 18:26:15', '', NULL, '2016-09-17 20:56:46', '2016-09-18 22:26:15', 0, NULL, 9, NULL, NULL, NULL, 8, 'None'),
(66, 'Exit Intent Email 2', 10, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-17 20:56:50', '2016-09-17 20:58:51', 0, NULL, 21, '2016-09-17 20:58:51', NULL, NULL, 20, 'None'),
(67, 'Ad 1', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nDescription: \nImage: \nURL description:\nClick through to Pre-Sell Page 1', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/wmj1jxz1lhulddj/30-days-platforms-img17.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(68, 'Ad 2', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nDescription: \nImage: \nURL description:\nClick through to Pre-Sell Page 1', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/wmj1jxz1lhulddj/30-days-platforms-img17.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 2, NULL, NULL, NULL, 1, 'None'),
(69, 'Ad 3', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nDescription: \nImage: \nURL description:\nClick through to Pre-Sell Page 1', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/wmj1jxz1lhulddj/30-days-platforms-img17.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 3, NULL, NULL, NULL, 2, 'None'),
(70, 'Ad 4', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nDescription: \nImage: \nURL description:\nClick through to Pre-Sell Page 1', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/wmj1jxz1lhulddj/30-days-platforms-img17.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 4, NULL, NULL, NULL, 3, 'None'),
(71, 'Ad 5', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nDescription: \nImage: \nURL description:\nClick through to Pre-Sell Page 1', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/wmj1jxz1lhulddj/30-days-platforms-img17.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 5, NULL, NULL, NULL, 4, 'None'),
(72, 'Pre-Sell Page 1', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline (ex: 5 steps to increase your profits today, CASE Study: organize your business in minutes, etc.):\nContent: \nImage:\nLinks user to sign up page', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/puun4f7bme17k8g/30-days-platforms-img18.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 6, NULL, NULL, NULL, 5, 'None'),
(73, 'Pre-Sell Page 2', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline (ex: 5 steps to increase your profits today, CASE Study: organize your business in minutes, etc.):\nContent: \nImage:\nLinks user to sign up page', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/puun4f7bme17k8g/30-days-platforms-img18.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 14, NULL, NULL, NULL, 13, 'None'),
(74, 'Exit Intent - Front', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nSub-Headline: \nImage: \nButton:', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/w83u61plautqqfc/30-days-platforms-img19.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 8, NULL, NULL, NULL, 7, 'None'),
(75, 'Exit Intent - Back', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nSub-Headline: \nImage: \nButton:\nButton Link:', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/dbepx27dbbsjrge/30-days-platforms-img20.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 7, NULL, NULL, NULL, 6, 'None'),
(76, 'Banner Ad 1 - Square', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nImage:\nClicks through to Pre-Sell Page 2', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/j29vcsruu1a9m96/30-days-platforms-img25.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 10, NULL, NULL, NULL, 9, 'None'),
(77, 'Banner Ad 2 - Square', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nImage:\nClicks through to Pre-Sell Page 2', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/j29vcsruu1a9m96/30-days-platforms-img25.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 11, NULL, NULL, NULL, 10, 'None'),
(78, 'Banner Ad 3 - Horizontal', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nImage:\nClicks through to Pre-Sell Page 2', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/j29vcsruu1a9m96/30-days-platforms-img25.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 12, NULL, NULL, NULL, 11, 'None'),
(79, 'Banner Ad 4 - Vertical', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'Headline: \nImage:\nClicks through to Pre-Sell Page 2', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/j29vcsruu1a9m96/30-days-platforms-img25.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 13, NULL, NULL, NULL, 12, 'None'),
(80, 'Abandonment Email 1', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'ask them to return to sign up, and introduce some scarcity/urgency.', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/y2vu87ve9w2l9vk/30-days-platforms-img40.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 15, NULL, NULL, NULL, 14, 'None'),
(81, 'Abandonment Email 2', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'another reminder to sign up', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/9ugm5q02zchookr/30-days-platforms-img41.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 16, NULL, NULL, NULL, 15, 'None'),
(82, 'Abandonment Email 3', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'social proof email designed to engage them with a piece of content and get them back to our website', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/9v2om0egl3548t0/30-days-platforms-img42.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 17, NULL, NULL, NULL, 16, 'None'),
(83, 'Abandonment Email 4', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'discount offer', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/mjte2tspjdk44rl/30-days-platforms-img43.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 18, NULL, NULL, NULL, 17, 'None'),
(84, 'Abandonment Email 5', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'another social proof message', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/9v2om0egl3548t0/30-days-platforms-img42.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 22:10:14', 0, NULL, 19, NULL, NULL, NULL, 18, 'None'),
(85, 'Abandonment Email 6', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'send a time constraint email letting people know that the discount opportunity will expire in 24 hours.', '', '', 0, 0, 0, 0, NULL, 'https://www.dropbox.com/s/jtleija83oaf0t6/30-days-platforms-img44.jpg?dl=0', NULL, '2016-09-17 21:13:57', '2016-09-17 22:10:05', 0, NULL, 20, NULL, NULL, NULL, 19, 'None'),
(86, 'Exit Intent Email - Opt-in Bribe Content', 11, 0, 0, 0, 0, '2016-09-17', 0, '2016-09-17', 0, '', 'eBook, Infographic, etc.', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-17 21:13:57', '2016-09-17 21:13:57', 0, NULL, 9, NULL, NULL, NULL, 8, 'None'),
(87, 'Brainstorm Keywords - List of 10', 12, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 19:30:34', '2016-09-18 19:30:34', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(88, 'Use ubersuggest to generate list of 1500+ keywords', 12, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', 'https://ubersuggest.io/', '2016-09-18 19:31:10', '2016-09-18 19:31:16', 0, NULL, 2, NULL, NULL, NULL, 1, 'None'),
(89, 'Traffic Estimate - Google Keyword Planner', 12, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', 'https://adwords.google.com/KeywordPlanner', '2016-09-18 19:31:45', '2016-09-18 19:31:52', 0, NULL, 3, NULL, NULL, NULL, 2, 'None'),
(90, 'Sort by Competition', 12, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '> 0.69 is high competition\n< 0.69 and > 0.34 is medium \nThe rest is low', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 19:32:50', '2016-09-18 19:33:36', 0, NULL, 4, NULL, NULL, NULL, 3, 'None'),
(91, 'Select the Top Five by traffic', 12, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 19:34:07', '2016-09-18 19:34:07', 0, NULL, 5, NULL, NULL, NULL, 4, 'None'),
(92, 'Verify Keyword Trends', 12, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', 'https://www.google.com/trends/', '2016-09-18 19:34:21', '2016-09-18 19:34:27', 0, NULL, 6, NULL, NULL, NULL, 5, 'None'),
(93, 'Manually Review Keyword Difficulty on Google Search', 12, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', 'https://chrome.google.com/webstore/detail/seoquake/akdgnmcogleenhbclghghlkkdndkjdjc?hl=en', '2016-09-18 19:35:04', '2016-09-18 19:35:14', 0, NULL, 7, NULL, NULL, NULL, 6, 'None'),
(94, 'List your top 5-10 Keywords', 12, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 19:35:43', '2016-09-18 19:35:43', 0, NULL, 8, NULL, NULL, NULL, 7, 'None'),
(95, 'Build a landing page for each', 12, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', 'Use Yoast SEO to verify on-page SEO is green', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 19:35:53', '2016-09-18 19:36:12', 0, NULL, 9, NULL, NULL, NULL, 8, 'None'),
(96, 'Brainstorm Keywords - List of 10', 13, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 3, 0, 0, 0, '2016-09-18 15:37:04', '', NULL, '2016-09-18 19:36:43', '2016-09-18 19:37:04', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(97, 'Use ubersuggest to generate list of 1500+ keywords', 13, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 3, 0, 0, 0, '2016-09-18 15:37:04', '', NULL, '2016-09-18 19:36:43', '2016-09-18 19:37:04', 0, NULL, 2, NULL, NULL, NULL, 1, 'None'),
(98, 'Traffic Estimate - Google Keyword Planner', 13, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 3, 0, 0, 0, '2016-09-18 15:37:04', '', NULL, '2016-09-18 19:36:43', '2016-09-18 19:37:04', 0, NULL, 3, NULL, NULL, NULL, 2, 'None'),
(99, 'Sort by Competition', 13, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '> 0.69 is high competition\n< 0.69 and > 0.34 is medium \nThe rest is low', '', '', 3, 0, 0, 0, '2016-09-18 15:37:04', '', NULL, '2016-09-18 19:36:43', '2016-09-18 19:37:04', 0, NULL, 4, NULL, NULL, NULL, 3, 'None'),
(100, 'Select the Top Five by traffic', 13, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 3, 0, 0, 0, '2016-09-18 15:37:04', '', NULL, '2016-09-18 19:36:43', '2016-09-18 19:37:04', 0, NULL, 5, NULL, NULL, NULL, 4, 'None'),
(101, 'Verify Keyword Trends', 13, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 3, 0, 0, 0, '2016-09-18 15:37:04', '', NULL, '2016-09-18 19:36:43', '2016-09-18 19:37:04', 0, NULL, 6, NULL, NULL, NULL, 5, 'None'),
(102, 'Manually Review Keyword Difficulty on Google Search', 13, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 3, 0, 0, 0, '2016-09-18 15:37:04', '', NULL, '2016-09-18 19:36:43', '2016-09-18 19:37:04', 0, NULL, 7, NULL, NULL, NULL, 6, 'None'),
(103, 'List your top 5-10 Keywords', 13, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', 'business organization\nclient management\nemployee management system\nclient management software\nemployee management\nworkload management\nemployee management software', '', 3, 0, 0, 0, '2016-09-18 15:37:34', '', NULL, '2016-09-18 19:36:43', '2016-09-18 19:37:34', 0, NULL, 8, NULL, NULL, NULL, 7, 'None'),
(104, 'Build a landing page for each', 13, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-24', 0, '', 'Use Yoast SEO to verify on-page SEO is green', '', '', 5, 0, 0, 0, NULL, '', NULL, '2016-09-18 19:36:43', '2016-09-18 19:37:55', 0, NULL, 9, NULL, NULL, NULL, 8, 'None'),
(105, 'Selling Page', 10, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-19', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 20:19:16', '2016-09-18 20:19:39', 0, NULL, 15, NULL, NULL, NULL, 14, 'None'),
(106, 'business organization', 7, 0, 0, 0, 0, '2016-09-18', 0, '2016-10-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 20:22:27', '2016-09-18 20:23:20', 0, NULL, 8, NULL, NULL, NULL, 7, 'None'),
(107, 'client management', 7, 0, 0, 0, 0, '2016-09-18', 0, '2016-10-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 20:22:32', '2016-09-18 20:23:20', 0, NULL, 9, NULL, NULL, NULL, 8, 'None'),
(108, 'employee management system', 7, 0, 0, 0, 0, '2016-09-18', 0, '2016-10-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 20:22:38', '2016-09-18 20:23:20', 0, NULL, 10, NULL, NULL, NULL, 9, 'None'),
(109, 'client management software', 7, 0, 0, 0, 0, '2016-09-18', 0, '2016-10-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 20:22:43', '2016-09-18 20:23:20', 0, NULL, 11, NULL, NULL, NULL, 10, 'None'),
(110, 'employee management', 7, 0, 0, 0, 0, '2016-09-18', 0, '2016-10-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 20:22:58', '2016-09-18 20:23:20', 0, NULL, 12, NULL, NULL, NULL, 11, 'None'),
(111, 'workload management', 7, 0, 0, 0, 0, '2016-09-18', 0, '2016-10-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 20:23:05', '2016-09-18 20:23:20', 0, NULL, 13, NULL, NULL, NULL, 12, 'None'),
(112, 'employee management software', 7, 0, 0, 0, 0, '2016-09-18', 0, '2016-10-01', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 20:23:12', '2016-09-18 20:23:20', 0, NULL, 14, NULL, NULL, NULL, 13, 'None'),
(113, 'allow user to set additional ''hide'' statuses', 6, 0, 0, 0, 0, '2016-09-18', 0, '2016-09-18', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-18 20:32:41', '2016-09-18 20:32:41', 0, NULL, 22, NULL, NULL, NULL, 21, 'None'),
(114, 'Input Checks', 14, 0, 0, 0, 0, '2016-09-19', 1, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 18:45:22', '2016-09-19 20:12:38', 0, NULL, 1, NULL, NULL, NULL, NULL, 'None'),
(115, 'Do Journal Entries', 14, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 18:45:22', '2016-09-19 20:12:38', 0, NULL, 2, NULL, NULL, NULL, NULL, 'None'),
(116, 'Reconcile', 14, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 18:45:22', '2016-09-19 20:12:38', 0, NULL, 3, NULL, NULL, NULL, NULL, 'None'),
(117, 'Print Reports', 14, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 18:45:22', '2016-09-19 20:12:39', 0, NULL, 4, NULL, NULL, NULL, NULL, 'None'),
(118, 'Checks In', 15, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 18:47:26', '2016-09-19 18:50:07', 0, NULL, 1, NULL, NULL, NULL, 0, 'High'),
(119, 'Reconcile', 15, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 18:47:31', '2016-09-19 18:50:09', 0, NULL, 2, NULL, NULL, NULL, 1, 'High'),
(120, 'Input Checks', 17, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:29:57', '2016-09-19 20:29:57', 0, NULL, 1, NULL, NULL, NULL, NULL, 'None'),
(121, 'Do Journal Entries', 17, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:29:57', '2016-09-19 20:29:57', 0, NULL, 2, NULL, NULL, NULL, NULL, 'None'),
(122, 'Reconcile', 17, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:29:57', '2016-09-19 20:29:57', 0, NULL, 3, NULL, NULL, NULL, NULL, 'None'),
(123, 'Print Reports', 17, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:29:57', '2016-09-19 20:29:57', 0, NULL, 4, NULL, NULL, NULL, NULL, 'None'),
(124, 'Input Checks', 18, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:33:13', '2016-09-19 20:33:13', 0, NULL, 1, NULL, NULL, NULL, NULL, 'None'),
(125, 'Do Journal Entries', 18, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:33:13', '2016-09-19 20:33:13', 0, NULL, 2, NULL, NULL, NULL, NULL, 'None'),
(126, 'Reconcile', 18, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:33:13', '2016-09-19 20:33:13', 0, NULL, 3, NULL, NULL, NULL, NULL, 'None'),
(127, 'Print Reports', 18, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:33:13', '2016-09-19 20:33:13', 0, NULL, 4, NULL, NULL, NULL, NULL, 'None'),
(128, 'Input Checks', 19, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:34:35', '2016-09-19 20:34:35', 0, NULL, 1, NULL, NULL, NULL, NULL, 'None'),
(129, 'Do Journal Entries', 19, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:34:35', '2016-09-19 20:34:35', 0, NULL, 2, NULL, NULL, NULL, NULL, 'None'),
(130, 'Reconcile', 19, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:34:35', '2016-09-19 20:34:35', 0, NULL, 3, NULL, NULL, NULL, NULL, 'None'),
(131, 'Print Reports', 19, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:34:35', '2016-09-19 20:34:35', 0, NULL, 4, NULL, NULL, NULL, NULL, 'None'),
(132, 'Input Checks', 20, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:38:38', '2016-09-19 20:38:38', 0, NULL, 1, NULL, NULL, NULL, NULL, 'None'),
(133, 'Do Journal Entries', 20, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:38:38', '2016-09-19 20:38:38', 0, NULL, 2, NULL, NULL, NULL, NULL, 'None'),
(134, 'Reconcile', 20, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:38:38', '2016-09-19 20:38:38', 0, NULL, 3, NULL, NULL, NULL, NULL, 'None'),
(135, 'Print Reports', 20, 0, 0, 0, 0, '2016-09-19', 0, '2016-09-30', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-19 20:38:38', '2016-09-19 20:38:38', 0, NULL, 4, NULL, NULL, NULL, NULL, 'None'),
(136, 'get info', 21, 0, 0, 0, 0, '2016-09-20', 1, '2016-09-21', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-20 19:24:23', '2016-09-20 19:24:28', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(137, 'get infom', 22, 0, 0, 0, 0, '2016-09-20', 1, '2016-09-21', 0, '', 'asdad', '', '', 3, 0, 0, 0, '2016-09-20 15:28:11', 'https://www.dropbox.com/s/prh4wfqnb04lvtc/Statement_Aug%202016%20%281%29.pdf?dl=0', NULL, '2016-09-20 19:26:58', '2016-09-20 19:28:11', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(138, 'asdaj oaisdj', 22, 0, 0, 0, 0, '2016-09-20', 1, '2016-09-21', 0, '', '', '', '', 3, 0, 0, 0, '2016-09-20 15:28:11', '', NULL, '2016-09-20 19:27:33', '2016-09-20 19:28:11', 0, NULL, 2, NULL, NULL, NULL, 1, 'None'),
(139, '', 23, 0, 0, 0, 0, '2016-09-20', 0, '2016-09-20', 0, '', '', '', '', 4, 0, 0, 0, NULL, '', NULL, '2016-09-20 19:32:55', '2016-09-20 19:32:55', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(140, 'Complete Tax Organizer', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 01:45:21', '2016-09-26 01:45:21', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(141, 'Obtain signed engagement letter', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 01:45:40', '2016-09-26 01:45:40', 0, NULL, 2, NULL, NULL, NULL, 1, 'None'),
(142, 'Scan clients original documents', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 01:46:05', '2016-09-26 01:46:05', 0, NULL, 3, NULL, NULL, NULL, 2, 'None'),
(143, 'Create a return in Drake and send documents to Gruntworx', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 01:46:27', '2016-09-26 01:46:27', 0, NULL, 4, NULL, NULL, NULL, 3, 'None'),
(144, 'Enter and review data', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 01:59:12', '2016-09-26 01:59:12', 0, NULL, 5, NULL, NULL, NULL, 4, 'None'),
(145, 'Technical Review', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 01:59:17', '2016-09-26 01:59:17', 0, NULL, 6, NULL, NULL, NULL, 5, 'None'),
(146, 'Client review', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 01:59:23', '2016-09-26 01:59:23', 0, NULL, 7, NULL, NULL, NULL, 6, 'None'),
(147, 'Send Form 8879 and final invoice', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 01:59:58', '2016-09-26 03:16:25', 0, NULL, 8, '2016-09-26 03:16:25', NULL, NULL, 7, 'None'),
(148, 'Receive signed 8879', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 03:12:32', '2016-09-26 03:16:25', 0, NULL, 8, NULL, NULL, NULL, 7, 'None'),
(149, 'Verified Payment received', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 03:12:41', '2016-09-26 03:16:25', 0, NULL, 9, NULL, NULL, NULL, 8, 'None'),
(150, 'e-file or paper file the return', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 03:12:49', '2016-09-26 03:16:25', 0, NULL, 10, NULL, NULL, NULL, 9, 'None'),
(151, 'mail a hard copy of the return', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 03:12:55', '2016-09-26 03:16:25', 0, NULL, 11, NULL, NULL, NULL, 10, 'None'),
(152, 'Backup the electronic files', 25, 0, 0, 0, 0, '2016-09-25', 0, '2016-09-25', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 03:13:06', '2016-09-26 03:16:25', 0, NULL, 12, NULL, NULL, NULL, 11, 'None'),
(153, 'Complete Tax Organizer', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 1, NULL, NULL, NULL, 0, 'None'),
(154, 'Obtain signed engagement letter', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 2, NULL, NULL, NULL, 1, 'None'),
(155, 'Scan clients original documents', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 3, NULL, NULL, NULL, 2, 'None'),
(156, 'Create a return in Drake and send documents to Gruntworx', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 4, NULL, NULL, NULL, 3, 'None'),
(157, 'Enter and review data', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 5, NULL, NULL, NULL, 4, 'None'),
(158, 'Technical Review', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 6, NULL, NULL, NULL, 5, 'None'),
(159, 'Client review', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 7, NULL, NULL, NULL, 6, 'None'),
(160, 'Receive signed 8879', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 8, NULL, NULL, NULL, 7, 'None'),
(161, 'Verified Payment received', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 9, NULL, NULL, NULL, 8, 'None'),
(162, 'e-file or paper file the return', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 10, NULL, NULL, NULL, 9, 'None'),
(163, 'mail a hard copy of the return', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 11, NULL, NULL, NULL, 10, 'None'),
(164, 'Backup the electronic files', 26, 0, 0, 0, 0, '2016-09-26', 0, '2016-09-26', 0, '', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '2016-09-26 19:03:17', '2016-09-26 19:03:17', 0, NULL, 12, NULL, NULL, NULL, 11, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `organization_id`, `name`, `alias_name`, `is_admin`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 11, 'Front Office', NULL, 0, '', '2016-09-19 18:52:16', '2016-09-19 18:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `team_users`
--

CREATE TABLE IF NOT EXISTS `team_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `team_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `team_users_user_id_foreign` (`user_id`),
  KEY `team_users_team_id_foreign` (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `team_users`
--

INSERT INTO `team_users` (`id`, `user_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 15, 2, '2016-09-19 20:09:32', '2016-09-19 20:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE IF NOT EXISTS `threads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int(10) unsigned NOT NULL,
  `checklist_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thread_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `organization_id`, `checklist_id`, `type`, `thread_title`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 2, 10, 'checklist', 'Marketing Funnel - Easy Checklist ABC', 12, NULL, '2016-09-18 01:03:46', '2016-09-18 01:03:46'),
(2, 2, 10, 'checklist', 'Marketing Funnel - Easy Checklist ABC', 12, NULL, '2016-09-21 01:16:30', '2016-09-21 01:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `thread_user`
--

CREATE TABLE IF NOT EXISTS `thread_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `thread_user`
--

INSERT INTO `thread_user` (`id`, `thread_id`, `user_id`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 12, NULL, NULL, '2016-09-18 01:03:46', '2016-09-18 01:03:46'),
(2, 2, 12, NULL, NULL, '2016-09-21 01:16:30', '2016-09-21 01:16:30'),
(3, 2, 3, NULL, NULL, '2016-09-21 01:17:05', '2016-09-21 01:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gender` enum('male','female','other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `stop_tour` tinyint(1) NOT NULL DEFAULT '0',
  `stop_tooltip` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `hired_date` date DEFAULT NULL,
  `user_notes` text COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hourly_rate` decimal(5,2) NOT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_active` tinyint(4) NOT NULL DEFAULT '0',
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_subscription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_four` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `subscription_ends_at` timestamp NULL DEFAULT NULL,
  `is_reminder_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `gender`, `phone`, `mobile`, `address`, `city`, `country`, `photo`, `about`, `activated`, `stop_tour`, `stop_tooltip`, `status`, `hired_date`, `user_notes`, `state`, `zip_code`, `hourly_rate`, `fax`, `deleted_at`, `confirmation_code`, `stripe_active`, `stripe_id`, `stripe_subscription`, `stripe_plan`, `last_four`, `trial_ends_at`, `subscription_ends_at`, `is_reminder_active`) VALUES
(1, 'Holla', NULL, 'raja@sntbd.com', '$2y$10$zn302wPTVB/AVz8aBpJB0eP2e53UE4oLxpmufgbJ5uKmg16RdS5fK', NULL, '2016-09-11 16:42:40', '2016-09-11 16:43:41', NULL, '123444', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '14ebe71642a58b3ba57a3ef8cfac7e89', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'sanjib', NULL, 'sanjib@gmail.com', '', NULL, '2016-09-11 16:44:30', '2016-09-11 16:44:32', NULL, '45445454545', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2016-09-11', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 'Michael Havey', NULL, 'michael@softwaresoulutions.com', '$2y$10$YiQEoTIu5hyNYEupthZCJe2ARxtMNgmOoMEokzYksy16IfurGxLD.', NULL, '2016-09-11 18:16:21', '2016-09-15 02:31:42', NULL, '7036470469', NULL, NULL, NULL, NULL, 'b305f52a583d10fff3bcb3639a9a9c30145c2463-.jpg', NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '23a1d2dd7f35468510c9a173db634be5', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'Sanjib Kumar', NULL, 'the.sanjib1@gmail.com', '$2y$10$osLFtAXbXr2dL7tKLYxRm.P2HX4dhhFtKCy/pePw1kgXzJUoPoeZi', NULL, '2016-09-12 08:10:44', '2016-09-12 08:10:44', NULL, '76757577455', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '33a727b56f5e6d03eff333ecd02ee35d', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'Michael Havey', NULL, 'mjhavey@me.com', '$2y$10$yITISuChuC3gBDqYKdsjaO2trLixNFRwurXkghgmP5ihWg6UaHt4S', NULL, '2016-09-12 16:16:53', '2016-09-12 16:16:53', NULL, '7036470469', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '2cdafe1885ceae0d444d2ec97f4166af', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 'Michael Havey', NULL, 'michael.havey@salecycle.com', '$2y$10$YKnHAHYJTLqiELKPkpEc6uEY91aK3OWU2EETq3JQY3wUhWfag36Pe', NULL, '2016-09-12 17:45:13', '2016-09-12 17:46:03', NULL, '5718883000', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '870aa8c9fd184584c156cc49cd676354', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 'ezABC', NULL, 'dan@easychecklistabc.com', '$2y$10$bfdkdQnP8IGEYCXXA68wD.QovhuYJy/6orc3WxCJvbZ2a92DOar3G', NULL, '2016-09-12 18:14:04', '2016-09-13 02:55:37', NULL, '777-777-7777', NULL, NULL, NULL, NULL, 'fee974ee0aabde48086df221e502339932125bfc-.jpeg', NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '4fd7b614882862340b661672d67c3d8c', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'Dan Havey', NULL, 'deh.avey@gmail.com', '$2y$10$WNPzdeVrLsnC9O1EJ9PFMu8UExEZZIlSP.JiPB6rsHJUfjVyPbqRS', NULL, '2016-09-13 03:07:15', '2016-09-13 03:07:15', NULL, '1111111111', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 'd351a9d77faeb67034d74d31bad9db03', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'Zachary Markham', NULL, 'zach@fidelisins.com', '$2y$10$qRGLGI659pblYgIXv2i52u5/TQ6ok5O.d5o7OdRatOLJZENrXexNu', NULL, '2016-09-13 19:42:47', '2016-09-13 19:46:19', NULL, '5053894305', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '265f7d3e1caf3193786b36915729b780', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'Lauren Aragon', NULL, 'lauren@fidelisins.com', '$2y$10$V/0pvn7F21uiHPJChvgYX.elweg2XsAco1wHuR7Fz2/jPLUJ.05tm', NULL, '2016-09-13 19:45:12', '2016-09-13 19:46:30', NULL, '505-389-4305', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, '2016-09-13', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 'Sona Wegner', NULL, 'sona@bookkeepingfordentists.com', '$2y$10$TKSHGgs4dYZ59HIm42itq.m8Sg31qudZGPI8U6CwB402aLd78yf.C', NULL, '2016-09-13 21:37:03', '2016-09-13 21:37:03', NULL, '4436047549', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '4f4790e3b76c9b66ecfdb2e61b03a702', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 'Dan Havey', NULL, 'dan@softwaresoulutions.com', '$2y$10$0kj5cW1j5O3QqlTF3v07COlOW.5AFjm/HxFWxFV.CwHxHLRx8HmYq', NULL, '2016-09-15 02:17:16', '2016-09-15 05:15:35', NULL, '(703) 728-7159', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2016-09-14', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 'Steve Moss', NULL, 'steve@easychecklistabc.com', '$2y$10$UR.lnXmo08ud2soK6yjK1eIqWLqIZqus5Pzr42OXV/rIVCLT5r3P2', NULL, '2016-09-15 02:17:34', '2016-09-16 16:32:12', NULL, '(571) 645-9053', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2016-09-14', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'Deborah Williams', NULL, 'debcpa9@gmail.com', '$2y$10$6GGRczUu4BLE45pOvtIEIO./wCBy4.DUIMpH5KWF31dcSgU2TcAU6', NULL, '2016-09-16 00:10:59', '2016-09-16 00:12:08', NULL, '240-620-2115', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '3b064afdba5c8613ff57b21243ba71d1', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'Bill Dowd', NULL, 'bill@dowdpa.com', '$2y$10$tWHdhejfdMw13T6BrvFGU.sALDDZAONPi9Ft2Z71SeisMwFGujBLW', NULL, '2016-09-17 06:01:59', '2016-09-17 16:00:02', NULL, '407-325-5107', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 'f98f07451944a8ad918216a21c557807', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'Nazim', NULL, 'sssamudra7@gmail.com', '$2y$10$wChduENLOuiQL5h84sE.oeUTrb.TzQOMW4tyIUiIWImGxY9C87lCy', NULL, '2016-09-17 09:39:17', '2016-09-17 09:39:17', NULL, '01719369658', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '6ebd868156a0c3a49313fac1ec604f81', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 'Ivan Alvarez', NULL, 'ivan@ia-cpa.com', '$2y$10$wAJ8XN42jkwkPgOiY/Qw1O3djpkXRtyFqSq006lNUbRqGnjKhrvZm', NULL, '2016-09-19 18:56:51', '2016-09-26 03:15:09', NULL, '214-390-3255', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 'd33614192b3869061ce7f1982b25c8fc', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'Thomas Kubiak', NULL, 'tkubiak@accutaxny.com', '$2y$10$KtXI7.0HMKF8ObdAo4fsbe2tnXOnqNH3Xg7RXAesN9dnZtlIHDaiy', NULL, '2016-09-20 18:52:00', '2016-09-21 04:55:43', NULL, '518-857-8628', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '55a71de1f46042d0e37a321c95ac0a75', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 'Paul DeGance', NULL, 'PAULD@FERRELLCOMPANY.COM', '$2y$10$OuA.MdfHtignEwgZx2nmHuAoASAfOi3WGqWD8OuSxKUuqex7g8oqW', NULL, '2016-09-20 19:19:03', '2016-09-20 19:25:10', NULL, '8137858736', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 'ccc2858c88f59ece3ea98e5a4681380c', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 'Paul Hartmann', NULL, 'business@systemize.com.au', '$2y$10$wi3bwjFGWGqUw6j9o4IX4OXX8A.tW2roMWmYO3F49pvxncP2uTCD2', NULL, '2016-09-22 00:48:36', '2016-09-22 00:51:30', NULL, '0416047797', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '5b39e8a26430888a0840f793a408e30a', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 'Buck Channing', NULL, 'buckchanningllc@gmail.com', '$2y$10$tLYqripDKfhUOhOcBishxuQEm/SLMKCdqCewIPcJAyEz0r8sHbn1O', NULL, '2016-09-26 20:32:52', '2016-09-26 20:32:52', NULL, '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, '93e1e1d7150b56783ea06e70f523a66c', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_column_setting`
--

CREATE TABLE IF NOT EXISTS `user_column_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` tinyint(1) NOT NULL DEFAULT '1',
  `email` tinyint(1) NOT NULL DEFAULT '1',
  `phone` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `note` tinyint(1) NOT NULL DEFAULT '1',
  `hire_date` tinyint(1) NOT NULL DEFAULT '1',
  `overdue` tinyint(1) NOT NULL DEFAULT '1',
  `today` tinyint(1) NOT NULL DEFAULT '1',
  `tomorrow` tinyint(1) NOT NULL DEFAULT '1',
  `complete` tinyint(1) NOT NULL DEFAULT '1',
  `total` tinyint(1) NOT NULL DEFAULT '1',
  `time` tinyint(1) NOT NULL DEFAULT '1',
  `budget` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE IF NOT EXISTS `user_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `notificationable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notificationable_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_unread` tinyint(1) NOT NULL DEFAULT '1',
  `is_hide` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=162 ;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `notificationable_type`, `notificationable_id`, `title`, `description`, `type`, `attribute`, `is_unread`, `is_hide`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 7, 'App\\Checklist', 2, 'You have been assigned to a checklist "my First Checklist"', NULL, 'assigned', 'assign to', 1, 0, 7, '2016-09-13 02:54:58', '2016-09-13 02:54:58'),
(2, 7, 'App\\Checklist', 2, 'checklist "my First Checklist" due date updated', NULL, 'update', 'due_date', 1, 0, 7, '2016-09-13 02:55:24', '2016-09-13 02:55:24'),
(3, 7, 'App\\Checklist', 2, 'task "task #1" of checklist "my First Checklist" due date updated', NULL, 'update', 'due_date', 1, 0, 7, '2016-09-13 02:55:46', '2016-09-13 02:55:46'),
(4, 7, 'App\\Checklist', 2, 'task "Task #2" of checklist "my First Checklist" due date updated', NULL, 'update', 'due_date', 1, 0, 7, '2016-09-13 02:55:48', '2016-09-13 02:55:48'),
(5, 10, 'App\\Checklist', 3, 'You have been assigned to a checklist "Get quotes from other web designers"', NULL, 'assigned', 'assign to', 1, 0, 9, '2016-09-13 19:48:38', '2016-09-13 19:48:38'),
(6, 12, 'App\\Checklist', 5, 'You have been assigned to a checklist "Michael''s Task List"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-15 02:28:19', '2016-09-21 01:17:55'),
(7, 12, 'App\\Checklist', 5, 'You have been unassigned from a checklist "Michael''s Task List"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-15 02:28:20', '2016-09-21 01:17:55'),
(8, 3, 'App\\Checklist', 5, 'You have been assigned to a checklist "Michael''s Task List"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-15 02:28:21', '2016-09-18 22:29:47'),
(9, 3, 'App\\Checklist', 5, 'checklist "Michael''s Task List" due date updated', NULL, 'update', 'due_date', 0, 0, 3, '2016-09-15 02:28:30', '2016-09-18 22:29:47'),
(10, 3, 'App\\Checklist', 5, 'checklist "Michael''s Task List" status changed to "In Progress"', NULL, 'update', 'status', 0, 0, 3, '2016-09-15 02:29:52', '2016-09-18 22:29:47'),
(11, 3, 'App\\Checklist', 5, 'New task "Easy Checklist ABC - Free Trail Email Notifications" added to the checklist "Michael''s Task List"', NULL, 'update', 'title', 0, 0, 3, '2016-09-15 02:37:58', '2016-09-18 22:29:47'),
(12, 3, 'App\\Checklist', 5, 'New task "Easy Checklist ABC - New User Email Series" added to the checklist "Michael''s Task List"', NULL, 'update', 'title', 0, 0, 3, '2016-09-15 02:38:17', '2016-09-18 22:29:47'),
(13, 3, 'App\\Task', 23, 'You have been assigned to a task "Easy Checklist ABC - Free Trail Email Notifications" of checklist "Michael''s Task List"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-15 02:38:23', '2016-09-18 22:29:47'),
(14, 12, 'App\\Task', 24, 'You have been assigned to a task "Easy Checklist ABC - New User Email Series" of checklist "Michael''s Task List"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-15 02:38:32', '2016-09-21 01:17:55'),
(15, 12, 'App\\Task', 24, 'You have been assigned to a task "Easy Checklist ABC - New User Email Series" of checklist "Michael''s Task List"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-15 02:38:39', '2016-09-21 01:17:55'),
(16, 3, 'App\\Task', 24, 'You have been assigned to a task "Easy Checklist ABC - New User Email Series" of checklist "Michael''s Task List"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-15 02:38:40', '2016-09-18 22:29:47'),
(17, 3, 'App\\Task', 5, 'task "Easy Checklist ABC - Website" of checklist "Michael''s Task List" due date updated', NULL, 'update', 'due_date', 0, 0, 3, '2016-09-15 02:41:29', '2016-09-18 22:29:47'),
(18, 3, 'App\\Task', 23, 'task "Easy Checklist ABC - Free Trail Email Notifications" of checklist "Michael''s Task List" due date updated', NULL, 'update', 'due_date', 0, 0, 3, '2016-09-15 02:42:12', '2016-09-18 22:29:47'),
(19, 3, 'App\\Task', 24, 'task "Easy Checklist ABC - New User Email Series" of checklist "Michael''s Task List" due date updated', NULL, 'update', 'due_date', 0, 0, 3, '2016-09-15 02:42:15', '2016-09-18 22:29:47'),
(20, 3, 'App\\Task', 23, 'task "Easy Checklist ABC - Free Trail Email Notifications" of checklist "Michael''s Task List" budget updated', NULL, 'update', 'budget', 0, 0, 3, '2016-09-15 02:42:34', '2016-09-18 22:29:47'),
(21, 3, 'App\\Task', 24, 'task "Easy Checklist ABC - New User Email Series" of checklist "Michael''s Task List" budget updated', NULL, 'update', 'budget', 0, 0, 3, '2016-09-15 02:42:40', '2016-09-18 22:29:47'),
(22, 3, 'App\\Checklist', 7, 'You have been assigned to a checklist "Website"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-15 04:53:12', '2016-09-18 22:29:47'),
(23, 3, 'App\\Checklist', 7, 'New task "Organization" added to the checklist "Website"', NULL, 'update', 'title', 0, 0, 3, '2016-09-15 04:53:41', '2016-09-18 22:29:47'),
(24, 3, 'App\\Task', 40, 'You have been assigned to a task "Organization" of checklist "Website"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-15 04:53:45', '2016-09-18 22:29:47'),
(25, 3, 'App\\Task', 40, 'task "Organization" of checklist "Website" due date updated', NULL, 'update', 'due_date', 0, 0, 3, '2016-09-15 04:53:48', '2016-09-18 22:29:47'),
(26, 3, 'App\\Task', 40, 'task "Organization" of checklist "Website" status changed to "Complete"', NULL, 'update', 'status', 0, 0, 3, '2016-09-15 04:53:52', '2016-09-18 22:29:47'),
(27, 3, 'App\\Task', 9, 'task "Easy Checklist ABC - Funnel" of checklist "Michael''s Task List" due date updated', NULL, 'update', 'due_date', 0, 0, 3, '2016-09-15 05:12:14', '2016-09-18 22:29:47'),
(28, 3, 'App\\Task', 9, 'task "Easy Checklist ABC - Funnel" of checklist "Michael''s Task List" budget updated', NULL, 'update', 'budget', 0, 0, 3, '2016-09-15 05:12:38', '2016-09-18 22:29:47'),
(29, 3, 'App\\Checklist', 7, 'New task "Social Media Sharing Plugin" added to the checklist "Website"', NULL, 'update', 'title', 0, 0, 3, '2016-09-15 05:22:24', '2016-09-18 22:29:47'),
(30, 3, 'App\\Checklist', 7, 'task "Social Media Sharing Plugin" of checklist "Website" due date updated', NULL, 'update', 'due_date', 0, 0, 3, '2016-09-15 05:22:27', '2016-09-18 22:29:47'),
(31, 3, 'App\\Task', 41, 'You have been assigned to a task "Social Media Sharing Plugin" of checklist "Website"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-15 05:22:30', '2016-09-18 22:29:47'),
(32, 3, 'App\\Task', 3, 'task "Trainer Jai - Emails" of checklist "Michael''s Task List" status changed to "Complete"', NULL, 'update', 'status', 0, 0, 3, '2016-09-17 20:17:00', '2016-09-18 22:29:47'),
(33, 12, 'App\\Checklist', 10, 'You have been assigned to a checklist "Marketing Funnel"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-17 20:38:50', '2016-09-21 01:17:55'),
(34, 12, 'App\\Checklist', 10, 'New task "Pre-Sell Page" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:39:22', '2016-09-21 01:17:55'),
(35, 12, 'App\\Checklist', 10, 'task "Pre-Sell Page" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 20:41:49', '2016-09-21 01:17:55'),
(36, 12, 'App\\Checklist', 10, 'task "Pre-Sell Page" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 3, '2016-09-17 20:42:07', '2016-09-21 01:17:55'),
(37, 12, 'App\\Checklist', 10, 'task "Pre-Sell Page 1" of checklist "Marketing Funnel" title changed', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:42:14', '2016-09-21 01:17:55'),
(38, 12, 'App\\Checklist', 10, 'task "Pre-Sell Page 2" of checklist "Marketing Funnel" title changed', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:42:22', '2016-09-21 01:17:55'),
(39, 12, 'App\\Checklist', 10, 'New task "" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:43:07', '2016-09-21 01:17:55'),
(40, 12, 'App\\Checklist', 10, 'task "Exit Intent" of checklist "Marketing Funnel" title changed', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:43:31', '2016-09-21 01:17:55'),
(41, 12, 'App\\Checklist', 10, 'task "Exit Intent" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 3, '2016-09-17 20:44:06', '2016-09-21 01:17:55'),
(42, 12, 'App\\Checklist', 10, 'task "Exit Intent - Front" of checklist "Marketing Funnel" title changed', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:44:11', '2016-09-21 01:17:55'),
(43, 12, 'App\\Checklist', 10, 'New task "Exit Intent - Back" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:44:16', '2016-09-21 01:17:55'),
(44, 12, 'App\\Checklist', 10, 'task "Exit Intent - Back" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 3, '2016-09-17 20:45:33', '2016-09-21 01:17:55'),
(45, 12, 'App\\Checklist', 10, 'task "Exit Intent - Back" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 20:45:55', '2016-09-21 01:17:55'),
(46, 12, 'App\\Checklist', 10, 'New task "Banner Ad 1" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:47:50', '2016-09-21 01:17:55'),
(47, 12, 'App\\Checklist', 10, 'New task "Banner Ad 2" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:48:03', '2016-09-21 01:17:55'),
(48, 12, 'App\\Checklist', 10, 'New task "Banner Ad 3" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:48:09', '2016-09-21 01:17:55'),
(49, 12, 'App\\Checklist', 10, 'New task "Banner Ad 4" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:48:13', '2016-09-21 01:17:55'),
(50, 12, 'App\\Checklist', 10, 'task "Banner Ad 1 - Square" of checklist "Marketing Funnel" title changed', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:48:24', '2016-09-21 01:17:55'),
(51, 12, 'App\\Checklist', 10, 'task "Banner Ad 2 - Square" of checklist "Marketing Funnel" title changed', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:48:29', '2016-09-21 01:17:55'),
(52, 12, 'App\\Checklist', 10, 'task "Banner Ad 3 - Horizontal" of checklist "Marketing Funnel" title changed', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:48:36', '2016-09-21 01:17:55'),
(53, 12, 'App\\Checklist', 10, 'task "Banner Ad 4 - Vertical" of checklist "Marketing Funnel" title changed', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:48:44', '2016-09-21 01:17:55'),
(54, 12, 'App\\Checklist', 10, 'task "Banner Ad 1 - Square" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 20:48:53', '2016-09-21 01:17:55'),
(55, 12, 'App\\Checklist', 10, 'task "Banner Ad 2 - Square" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 20:48:56', '2016-09-21 01:17:55'),
(56, 12, 'App\\Checklist', 10, 'task "Banner Ad 3 - Horizontal" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 20:48:59', '2016-09-21 01:17:55'),
(57, 12, 'App\\Checklist', 10, 'task "Banner Ad 4 - Vertical" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 20:49:03', '2016-09-21 01:17:55'),
(58, 12, 'App\\Task', 51, 'task "Pre-Sell Page 1" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 20:51:49', '2016-09-21 01:17:55'),
(59, 12, 'App\\Task', 52, 'task "Pre-Sell Page 2" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 20:51:53', '2016-09-21 01:17:55'),
(60, 12, 'App\\Checklist', 10, 'New task "Abandonment Email 1" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:56:12', '2016-09-21 01:17:55'),
(61, 12, 'App\\Checklist', 10, 'New task "Abandonment Email 2" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:56:18', '2016-09-21 01:17:55'),
(62, 12, 'App\\Checklist', 10, 'New task "Abandonment Email 3" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:56:22', '2016-09-21 01:17:55'),
(63, 12, 'App\\Checklist', 10, 'New task "Abandonment Email 4" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:56:26', '2016-09-21 01:17:55'),
(64, 12, 'App\\Checklist', 10, 'New task "Abandonment Email 5" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:56:29', '2016-09-21 01:17:55'),
(65, 12, 'App\\Checklist', 10, 'New task "Abandonment Email 6" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:56:33', '2016-09-21 01:17:55'),
(66, 12, 'App\\Checklist', 10, 'New task "Exit Intent Email 1" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:56:46', '2016-09-21 01:17:55'),
(67, 12, 'App\\Checklist', 10, 'New task "Exit Intent Email 2" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:56:50', '2016-09-21 01:17:55'),
(68, 12, 'App\\Checklist', 10, 'task "Exit Intent Email - Opt-in Bribe Content" of checklist "Marketing Funnel" title changed', NULL, 'update', 'title', 0, 0, 3, '2016-09-17 20:59:11', '2016-09-21 01:17:55'),
(69, 12, 'App\\Checklist', 10, 'task "Abandonment Email 1" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 3, '2016-09-17 21:00:20', '2016-09-21 01:17:55'),
(70, 12, 'App\\Checklist', 10, 'task "Abandonment Email 2" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 3, '2016-09-17 21:01:10', '2016-09-21 01:17:55'),
(71, 12, 'App\\Checklist', 10, 'task "Abandonment Email 3" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 3, '2016-09-17 21:01:40', '2016-09-21 01:17:55'),
(72, 12, 'App\\Checklist', 10, 'task "Abandonment Email 4" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 3, '2016-09-17 21:02:03', '2016-09-21 01:17:55'),
(73, 12, 'App\\Checklist', 10, 'task "Abandonment Email 5" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 3, '2016-09-17 21:02:27', '2016-09-21 01:17:55'),
(74, 12, 'App\\Checklist', 10, 'task "Abandonment Email 6" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:02:57', '2016-09-21 01:17:55'),
(75, 12, 'App\\Checklist', 10, 'task "Abandonment Email 5" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:03:07', '2016-09-21 01:17:55'),
(76, 12, 'App\\Checklist', 10, 'task "Abandonment Email 4" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:03:32', '2016-09-21 01:17:55'),
(77, 12, 'App\\Checklist', 10, 'task "Abandonment Email 3" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:03:43', '2016-09-21 01:17:55'),
(78, 12, 'App\\Checklist', 10, 'task "Abandonment Email 2" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:04:04', '2016-09-21 01:17:55'),
(79, 12, 'App\\Checklist', 10, 'task "Abandonment Email 1" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:04:44', '2016-09-21 01:17:55'),
(80, 12, 'App\\Task', 52, 'task "Pre-Sell Page 2" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:06:05', '2016-09-21 01:17:55'),
(81, 12, 'App\\Task', 51, 'task "Pre-Sell Page 1" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:06:12', '2016-09-21 01:17:55'),
(82, 12, 'App\\Task', 46, 'task "Ad 1" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:06:47', '2016-09-21 01:17:55'),
(83, 12, 'App\\Task', 47, 'task "Ad 2" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:06:53', '2016-09-21 01:17:55'),
(84, 12, 'App\\Task', 48, 'task "Ad 3" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:06:59', '2016-09-21 01:17:55'),
(85, 12, 'App\\Task', 49, 'task "Ad 4" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:07:05', '2016-09-21 01:17:55'),
(86, 12, 'App\\Task', 50, 'task "Ad 5" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:07:12', '2016-09-21 01:17:55'),
(87, 12, 'App\\Task', 46, 'task "Ad 1" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:07:49', '2016-09-21 01:17:55'),
(88, 12, 'App\\Task', 47, 'task "Ad 2" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:07:53', '2016-09-21 01:17:55'),
(89, 12, 'App\\Task', 48, 'task "Ad 3" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:07:58', '2016-09-21 01:17:55'),
(90, 12, 'App\\Task', 49, 'task "Ad 4" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:08:03', '2016-09-21 01:17:55'),
(91, 12, 'App\\Task', 50, 'task "Ad 5" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:08:08', '2016-09-21 01:17:55'),
(92, 12, 'App\\Checklist', 10, 'task "Banner Ad 1 - Square" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:08:28', '2016-09-21 01:17:55'),
(93, 12, 'App\\Checklist', 10, 'task "Banner Ad 2 - Square" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:08:32', '2016-09-21 01:17:55'),
(94, 12, 'App\\Checklist', 10, 'task "Banner Ad 3 - Horizontal" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:08:36', '2016-09-21 01:17:55'),
(95, 12, 'App\\Checklist', 10, 'task "Banner Ad 4 - Vertical" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:08:40', '2016-09-21 01:17:55'),
(96, 3, 'App\\Task', 9, 'task "Easy Checklist ABC - Funnel" of checklist "Michael''s Task List" status changed to "Complete"', NULL, 'update', 'status', 0, 0, 3, '2016-09-17 21:12:04', '2016-09-18 22:29:47'),
(97, 12, 'App\\Task', 65, 'task "Exit Intent Email - Opt-in Bribe Content" of checklist "Marketing Funnel" description updated, see Notes', NULL, 'update', 'description', 0, 0, 3, '2016-09-17 21:13:14', '2016-09-21 01:17:55'),
(98, 12, 'App\\Checklist', 10, 'checklist "Marketing Funnel" custom link updated, see attachment', NULL, 'update', 'file_custom_link', 0, 0, 3, '2016-09-17 21:13:48', '2016-09-21 01:17:55'),
(99, 12, 'App\\Checklist', 11, 'You have been unassigned from a checklist "Marketing Funnel"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-17 21:14:06', '2016-09-21 01:17:55'),
(100, 12, 'App\\Task', 64, 'task "Abandonment Email 6" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 21:46:48', '2016-09-21 01:17:55'),
(101, 12, 'App\\Task', 64, 'task "Abandonment Email 6" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 21:59:16', '2016-09-21 01:17:55'),
(102, 12, 'App\\Task', 64, 'task "Abandonment Email 6" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 22:00:28', '2016-09-21 01:17:55'),
(103, 12, 'App\\Task', 64, 'task "Abandonment Email 6" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 22:01:58', '2016-09-21 01:17:55'),
(104, 12, 'App\\Task', 64, 'task "Abandonment Email 6" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 22:03:54', '2016-09-21 01:17:55'),
(105, 12, 'App\\Task', 63, 'task "Abandonment Email 5" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 3, '2016-09-17 22:09:31', '2016-09-21 01:17:55'),
(106, 12, 'App\\Task', 64, 'task "Abandonment Email 6" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 3, '2016-09-17 22:09:39', '2016-09-21 01:17:55'),
(107, 12, 'App\\Task', 63, 'task "Abandonment Email 5" of checklist "Marketing Funnel" dropbox link updated, see attachment', NULL, 'update', 'files', 0, 0, 12, '2016-09-17 22:10:17', '2016-09-21 01:17:55'),
(108, 12, 'App\\Task', 62, 'task "Abandonment Email 4" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 22:15:34', '2016-09-21 01:17:55'),
(109, 12, 'App\\Task', 64, 'task "Abandonment Email 6" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 22:16:13', '2016-09-21 01:17:55'),
(110, 12, 'App\\Task', 64, 'task "Abandonment Email 6" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 22:17:01', '2016-09-21 01:17:55'),
(111, 12, 'App\\Task', 61, 'task "Abandonment Email 3" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 22:20:00', '2016-09-21 01:17:55'),
(112, 12, 'App\\Task', 60, 'task "Abandonment Email 2" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 22:23:16', '2016-09-21 01:17:55'),
(113, 12, 'App\\Task', 59, 'task "Abandonment Email 1" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-17 22:27:22', '2016-09-21 01:17:55'),
(114, 12, 'App\\Task', 53, 'task "Exit Intent - Front" of checklist "Marketing Funnel" status changed to "Complete"', NULL, 'update', 'status', 0, 0, 3, '2016-09-18 02:31:57', '2016-09-21 01:17:55'),
(115, 12, 'App\\Checklist', 13, 'You have been assigned to a checklist "SEO Keyword Research"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-18 19:38:12', '2016-09-21 01:17:55'),
(116, 12, 'App\\Checklist', 13, 'You have been unassigned from a checklist "SEO Keyword Research"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-18 19:38:13', '2016-09-21 01:17:55'),
(117, 3, 'App\\Checklist', 13, 'You have been assigned to a checklist "SEO Keyword Research"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-18 19:38:14', '2016-09-18 22:29:47'),
(118, 12, 'App\\Checklist', 10, 'checklist "Marketing Funnel" due date updated', NULL, 'update', 'due_date', 0, 0, 3, '2016-09-18 20:18:21', '2016-09-21 01:17:55'),
(119, 12, 'App\\Checklist', 10, 'New task "Selling Page" added to the checklist "Marketing Funnel"', NULL, 'update', 'title', 0, 0, 3, '2016-09-18 20:19:16', '2016-09-21 01:17:55'),
(120, 12, 'App\\Checklist', 10, 'task "Selling Page" of checklist "Marketing Funnel" due date updated', NULL, 'update', 'due_date', 0, 0, 3, '2016-09-18 20:19:39', '2016-09-21 01:17:55'),
(121, 3, 'App\\Task', 105, 'You have been assigned to a task "Selling Page" of checklist "Marketing Funnel"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-18 20:20:22', '2016-09-18 22:29:47'),
(122, 3, 'App\\Checklist', 7, 'New task "business organization" added to the checklist "Website"', NULL, 'update', 'title', 0, 0, 3, '2016-09-18 20:22:27', '2016-09-18 22:29:47'),
(123, 3, 'App\\Checklist', 7, 'New task "client management" added to the checklist "Website"', NULL, 'update', 'title', 0, 0, 3, '2016-09-18 20:22:32', '2016-09-18 22:29:47'),
(124, 3, 'App\\Checklist', 7, 'New task "employee management system" added to the checklist "Website"', NULL, 'update', 'title', 0, 0, 3, '2016-09-18 20:22:38', '2016-09-18 22:29:47'),
(125, 3, 'App\\Checklist', 7, 'New task "client management software" added to the checklist "Website"', NULL, 'update', 'title', 0, 0, 3, '2016-09-18 20:22:43', '2016-09-18 22:29:47'),
(126, 3, 'App\\Checklist', 7, 'New task "employee management" added to the checklist "Website"', NULL, 'update', 'title', 0, 0, 3, '2016-09-18 20:22:58', '2016-09-18 22:29:47'),
(127, 3, 'App\\Checklist', 7, 'New task "workload management" added to the checklist "Website"', NULL, 'update', 'title', 0, 0, 3, '2016-09-18 20:23:06', '2016-09-18 22:29:47'),
(128, 3, 'App\\Checklist', 7, 'New task "employee management software" added to the checklist "Website"', NULL, 'update', 'title', 0, 0, 3, '2016-09-18 20:23:12', '2016-09-18 22:29:47'),
(129, 3, 'App\\Checklist', 7, 'checklist "Website" due date updated', NULL, 'update', 'due_date', 0, 0, 3, '2016-09-18 20:23:27', '2016-09-18 22:29:47'),
(130, 12, 'App\\Task', 54, 'task "Exit Intent - Back" of checklist "Marketing Funnel" status changed to "Complete"', NULL, 'update', 'status', 0, 0, 3, '2016-09-18 20:32:16', '2016-09-21 01:17:55'),
(131, 12, 'App\\Task', 65, 'task "Exit Intent Email - Opt-in Bribe Content" of checklist "Marketing Funnel" status changed to "In Progress"', NULL, 'update', 'status', 0, 0, 3, '2016-09-18 21:04:09', '2016-09-21 01:17:55'),
(132, 12, 'App\\Task', 65, 'You have been assigned to a task "Exit Intent Email - Opt-in Bribe Content" of checklist "Marketing Funnel"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-18 21:04:14', '2016-09-21 01:17:55'),
(133, 3, 'App\\Task', 65, 'You have been assigned to a task "Exit Intent Email - Opt-in Bribe Content" of checklist "Marketing Funnel"', NULL, 'assigned', 'assign to', 0, 0, 3, '2016-09-18 21:04:15', '2016-09-18 22:29:47'),
(134, 3, 'App\\Task', 65, 'task "Exit Intent Email - Opt-in Bribe Content" of checklist "Marketing Funnel" status changed to "Complete"', NULL, 'update', 'status', 0, 0, 3, '2016-09-18 22:26:15', '2016-09-18 22:29:47'),
(135, 12, 'App\\Checklist', 10, 'task "Exit Intent Email - Opt-in Bribe Content" of checklist "Marketing Funnel" status changed to "Complete"', NULL, 'update', 'status', 0, 0, 3, '2016-09-18 22:26:15', '2016-09-21 01:17:55'),
(136, 15, 'App\\Task', 118, 'You have been assigned to a task "Checks In" of checklist "Monthly Checklist"', NULL, 'assigned', 'assign to', 1, 0, 15, '2016-09-19 18:48:40', '2016-09-19 18:48:40'),
(137, 15, 'App\\Checklist', 15, 'You have been assigned to a checklist "Monthly Checklist"', NULL, 'assigned', 'assign to', 1, 0, 15, '2016-09-19 18:48:45', '2016-09-19 18:48:45'),
(138, 15, 'App\\Task', 119, 'You have been assigned to a task "Reconcile" of checklist "Monthly Checklist"', NULL, 'assigned', 'assign to', 1, 0, 15, '2016-09-19 18:48:48', '2016-09-19 18:48:48'),
(139, 15, 'App\\Checklist', 15, 'checklist "Monthly Checklist" recurring type changed to "when_completed"', NULL, 'update', 'recurring_type', 1, 0, 15, '2016-09-19 18:49:14', '2016-09-19 18:49:14'),
(140, 15, 'App\\Checklist', 15, 'checklist "Monthly Checklist" due date updated', NULL, 'update', 'due_date', 1, 0, 15, '2016-09-19 18:49:58', '2016-09-19 18:49:58'),
(141, 15, 'App\\Task', 118, 'task "Checks In" of checklist "Monthly Checklist" due date updated', NULL, 'update', 'due_date', 1, 0, 15, '2016-09-19 18:50:07', '2016-09-19 18:50:07'),
(142, 15, 'App\\Task', 119, 'task "Reconcile" of checklist "Monthly Checklist" due date updated', NULL, 'update', 'due_date', 1, 0, 15, '2016-09-19 18:50:09', '2016-09-19 18:50:09'),
(143, 15, 'App\\Checklist', 19, 'Your Team "Front Office" have been assigned to a checklist "Monthly Bookkeeping"', NULL, 'assigned', 'assign to', 1, 0, 15, '2016-09-19 20:36:51', '2016-09-19 20:36:51'),
(144, 15, 'App\\Checklist', 18, 'Your Team "Front Office" have been assigned to a checklist "Monthly Bookkeeping"', NULL, 'assigned', 'assign to', 1, 0, 15, '2016-09-19 20:37:04', '2016-09-19 20:37:04'),
(145, 19, 'App\\Checklist', 21, 'You have been assigned to a checklist "1040"', NULL, 'assigned', 'assign to', 1, 0, 19, '2016-09-20 19:24:01', '2016-09-20 19:24:01'),
(146, 19, 'App\\Checklist', 21, 'New task "get info" added to the checklist "1040"', NULL, 'update', 'title', 1, 0, 19, '2016-09-20 19:24:23', '2016-09-20 19:24:23'),
(147, 19, 'App\\Checklist', 21, 'task "get info" of checklist "1040" due date updated', NULL, 'update', 'due_date', 1, 0, 19, '2016-09-20 19:24:28', '2016-09-20 19:24:28'),
(148, 19, 'App\\Task', 136, 'You have been assigned to a task "get info" of checklist "1040"', NULL, 'assigned', 'assign to', 1, 0, 19, '2016-09-20 19:24:35', '2016-09-20 19:24:35'),
(149, 19, 'App\\Checklist', 22, 'You have been assigned to a checklist "1120S"', NULL, 'assigned', 'assign to', 1, 0, 19, '2016-09-20 19:29:17', '2016-09-20 19:29:17'),
(150, 19, 'App\\Checklist', 23, 'You have been assigned to a checklist "1065"', NULL, 'assigned', 'assign to', 1, 0, 19, '2016-09-20 19:32:41', '2016-09-20 19:32:41'),
(151, 19, 'App\\Checklist', 23, 'New task "" added to the checklist "1065"', NULL, 'update', 'title', 1, 0, 19, '2016-09-20 19:32:55', '2016-09-20 19:32:55'),
(152, 19, 'App\\Checklist', 24, 'You have been assigned to a checklist "asd"', NULL, 'assigned', 'assign to', 1, 0, 19, '2016-09-20 21:53:32', '2016-09-20 21:53:32'),
(153, 12, 'App\\Task', 52, 'task "Pre-Sell Page 2" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-21 01:09:58', '2016-09-21 01:17:55'),
(154, 12, 'App\\Task', 51, 'task "Pre-Sell Page 1" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-21 01:10:20', '2016-09-21 01:17:55'),
(155, 12, 'App\\Task', 51, 'task "Pre-Sell Page 1" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 0, 0, 12, '2016-09-21 01:16:01', '2016-09-21 01:17:55'),
(156, 12, 'App\\Task', 51, 'task "Pre-Sell Page 1" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 1, 0, 12, '2016-09-21 01:18:52', '2016-09-21 01:18:52'),
(157, 12, 'App\\Task', 51, 'task "Pre-Sell Page 1" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 1, 0, 12, '2016-09-21 01:38:29', '2016-09-21 01:38:29'),
(158, 12, 'App\\Task', 52, 'task "Pre-Sell Page 2" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 1, 0, 12, '2016-09-21 02:03:12', '2016-09-21 02:03:12'),
(159, 12, 'App\\Task', 52, 'task "Pre-Sell Page 2" of checklist "Marketing Funnel" internal notes updated, see Notes', NULL, 'update', 'internal_notes', 1, 0, 12, '2016-09-21 02:04:27', '2016-09-21 02:04:27'),
(160, 17, 'App\\Task', 147, 'You have been assigned to a task "Send Form 8879 and final invoice" of checklist "Individual Tax Return"', NULL, 'assigned', 'assign to', 1, 0, 17, '2016-09-26 03:16:02', '2016-09-26 03:16:02'),
(161, 17, 'App\\Task', 150, 'You have been assigned to a task "e-file or paper file the return" of checklist "Individual Tax Return"', NULL, 'assigned', 'assign to', 1, 0, 17, '2016-09-26 03:16:16', '2016-09-26 03:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_setting`
--

CREATE TABLE IF NOT EXISTS `user_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `hide_completed_checklist` tinyint(1) NOT NULL DEFAULT '0',
  `hide_completed_task` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_setting`
--

INSERT INTO `user_setting` (`id`, `user_id`, `hide_completed_checklist`, `hide_completed_task`, `created_at`, `updated_at`) VALUES
(1, 15, 0, 0, '2016-09-19 20:36:34', '2016-09-19 20:36:35');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`);

--
-- Constraints for table `organization_user`
--
ALTER TABLE `organization_user`
  ADD CONSTRAINT `organization_user_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `organization_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `recurrings`
--
ALTER TABLE `recurrings`
  ADD CONSTRAINT `recurrings_checklist_id_foreign` FOREIGN KEY (`checklist_id`) REFERENCES `checklists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminder_day`
--
ALTER TABLE `reminder_day`
  ADD CONSTRAINT `reminder_day_recurring_id_foreign` FOREIGN KEY (`recurring_id`) REFERENCES `recurrings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `team_users`
--
ALTER TABLE `team_users`
  ADD CONSTRAINT `team_users_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
