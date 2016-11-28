-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 01, 2016 at 01:05 PM
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
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `contact_name` char(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `organization_id` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `contact_name`, `email`, `phone`, `mobile`, `address`, `photo`, `created_by`, `organization_id`, `created_at`, `updated_at`) VALUES
(7118, 'Evan Van Tassell', '', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2015-09-03 20:13:59', '2015-09-03 20:13:59'),
(7504, 'Porterhouse LLC', 'Dad', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-07-14 20:07:42', '2016-07-14 20:07:42'),
(7505, 'Laurel Ridge Landscaping', 'Jimmy Colon', 'jclaurelridge@aol.com', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-07-14 20:19:32', '2016-07-14 20:19:32'),
(7506, 'Fix Family Enterprises', 'Nici Fix', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-07-15 00:22:59', '2016-07-15 00:22:59'),
(7507, 'Penesso Inc', 'Debra Penesso', 'DPENESSO@nycap.rr.com', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-07-15 15:30:52', '2016-07-15 15:30:52'),
(7508, 'Our Town Marketing', 'Jennifer Felts', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-07-20 04:12:24', '2016-07-20 04:12:24'),
(7509, 'Jerry Colbert', '', 'colbertcomm@nycap.rr.com', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-07-24 05:26:27', '2016-07-24 05:27:42'),
(7510, 'Toby Fast', '', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-07-24 05:26:35', '2016-07-24 05:26:35'),
(7512, 'Meier Land Development Inc', 'Karl Meier', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-07-26 17:25:22', '2016-07-26 17:25:22'),
(7513, 'Rigano Renovations', 'Robert Rigano', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-07-27 15:03:28', '2016-07-27 15:03:28'),
(7519, 'Staib Plumbing and Heating', 'Joe Staib', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-09-07 18:12:27', '2016-09-07 18:12:27'),
(7520, 'Fuzzybuttz Pet Grooming', 'Lisa Staib', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-09-07 18:12:49', '2016-09-07 18:12:49'),
(7524, 'Oasis Indoor Environmental Inc', 'Spencer Hampy', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-09-20 14:16:06', '2016-09-20 14:16:06'),
(7525, 'Backwater Grille LLC', 'Joe Massaro', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-09-20 18:58:27', '2016-09-20 18:58:27'),
(7526, 'Four Seasons Professional Pet Sitting', 'Cathy Sweet', '', '', '', '', '', 374, 'tkubiak@accutaxny.com', '2016-09-27 00:13:58', '2016-09-27 00:13:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7527;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
