-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 01, 2016 at 12:59 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `checklists`
--

CREATE TABLE `checklists` (
  `id` int(10) UNSIGNED NOT NULL,
  `checklist_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_template` tinyint(1) NOT NULL,
  `is_archived` tinyint(1) NOT NULL,
  `start_date` date NOT NULL,
  `expected_duration` int(11) DEFAULT NULL,
  `new_due_date` date NOT NULL,
  `due_date_extension` int(11) NOT NULL,
  `link_to_folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `internal_notes` text COLLATE utf8_unicode_ci NOT NULL,
  `notes_to_client` text COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `copied_from` int(10) UNSIGNED DEFAULT NULL,
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
  `position` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('normal','system_template','user_template','internal_template') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'normal',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_count` smallint(6) NOT NULL,
  `client_email_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `checklists`
--

INSERT INTO `checklists` (`checklist_title`, `new_due_date`) VALUES
('chek1', '2016-09-13'),
('my First Checklist', '2016-09-16'),
('Get quotes from other web designers', '2016-09-15'),
('Complete Aetna Modules', '2016-09-16'),
('Michael''s Task List', '2016-09-24'),
('App Notes', '2017-01-01'),
('Website', '2016-10-01'),
('Interview Process-Financial Karma', '0000-00-00'),
('Monthly Bookkeeping', '2016-09-17'),
('Marketing Funnel', '2016-09-19'),
('Marketing Funnel', '2016-09-17'),
('SEO Keyword Research', '0000-00-00'),
('SEO Keyword Research', '2016-09-24'),
('Monthly Bookkeeping', '2016-09-30'),
('Monthly Checklist', '2016-09-30'),
('Monthly Bookkeeping', '2016-09-19'),
('Monthly Bookkeeping', '2016-09-30'),
('Monthly Bookkeeping', '2016-09-30'),
('Monthly Bookkeeping', '2016-09-30'),
('Monthly Bookkeeping', '2016-09-30'),
('1040', '2016-09-22'),
('1120S', '2016-09-21'),
('1065', '2016-09-20'),
('asd', '2016-09-20'),
('Individual Tax Return', '0000-00-00'),
('Individual Tax Return', '2016-09-26'),
('Sales Tax - Quarterly', '2016-09-01'),
('Sales Tax - Quarterly (R)', '2015-12-20'),
('Sales Tax - Quarterly (R)', '0000-00-00'),
('Sales Tax - Quarterly (R)', '2016-06-17'),
('Quarterly Sales Tax', '2016-12-01'),
('Quarterly Sales Tax', '2017-03-11'),
('Quarterly Sales Tax', '2017-03-11'),
('Monthly Checking account balanced', '2016-07-15'),
('Quarterly Checking account balanced', '2016-07-31'),
('Quarterly Payroll Returns', '2016-07-21'),
('Quarterly Payroll Returns', '2016-09-30'),
('Quarterly Checking account balanced', '2016-07-31'),
('Sales Tax - Quarterly', '2016-12-01'),
('Quarterly Checking account balanced', '2016-07-31'),
('Quarterly Checking account balanced', '2016-10-31'),
('Quarterly Checking account balanced', '2016-10-31'),
('Sales Tax - Quarterly', '2016-12-01'),
('Sales Tax - Quarterly', '2016-12-01'),
('Quarterly Checking account balanced', '2016-09-30'),
('Quarterly Payroll Returns', '2016-09-30'),
('Sales Tax - Quarterly', '2016-12-01'),
('Sales Tax - Quarterly', '2016-12-01'),
('Sales Tax - Quarterly', '2016-12-01'),
('Sales Tax - Monthly', '2016-09-20'),
('Sales Tax - Monthly', '2016-10-01'),
('Sales Tax - Quarterly', '2016-12-01'),
('Quarterly Checking account balanced', '2016-10-01'),
('Quarterly Checking account balanced', '2016-10-01');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
