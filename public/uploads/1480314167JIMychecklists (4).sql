-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2016 at 04:17 PM
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

--
-- Dumping data for table `checklists`
--

INSERT INTO `checklists` (`id`, `title`, `client_id`, `user_id`, `template`, `archived`, `start_date`, `due_date`, `due_date_extension`, `link_to_folder`, `description`, `internal_notes`, `notes_to_client`, `status_id`, `created_by`, `visibility`, `organization_id`, `completed_at`, `files`, `created_at`, `updated_at`, `budget`, `priority`) VALUES
(111, 'EasyChecklistABC - Setup', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 1, 67, 'public', 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-01-20 00:39:13', '2015-01-20 00:39:13', 0, ''),
(115, 'Tax Preparation - Documents', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', 'This Checklist contains common Client Docs/Information required to prepare a tax return.', '', '', 4, 67, 'public', 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-01-20 00:59:33', '2015-01-21 19:53:38', 0, ''),
(116, 'Tax Preparation - Process', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', 'This is a basic tax return process for internal steps needed to complete a tax return from receiving client docs to filling.', '', '', 4, 67, 'public', 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-01-20 01:02:58', '2015-01-21 19:52:32', 0, ''),
(117, 'Tax Preparation - Review', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', 'Common Errors to Check When Preparing Your Client''s Tax Return	', '', '', 4, 67, 'public', 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-01-20 01:06:32', '2015-01-21 19:52:55', 0, ''),
(1156, 'Review Business Structure', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-23 22:31:08', '2015-02-23 22:31:08', 0, ''),
(1157, 'Terms of Service & Contracts Considerations', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-23 22:39:35', '2015-02-23 22:39:35', 0, ''),
(1158, 'Intellectual Property Review', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-23 22:52:40', '2015-02-23 22:52:40', 0, ''),
(1159, 'Real Estate - Own vs. Lease', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-23 22:56:15', '2015-02-23 22:56:15', 0, ''),
(1160, 'Risk Management & Insurance Review', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-23 22:57:36', '2015-02-23 22:57:36', 0, ''),
(1161, 'Employment Considerations', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-23 23:07:51', '2015-02-23 23:07:51', 0, ''),
(1163, 'New Product - General Considerations', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-24 00:11:52', '2015-02-24 00:11:52', 0, ''),
(1164, 'New Product - Industry Considerations', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-24 00:15:12', '2015-02-24 00:15:12', 0, ''),
(1165, 'New Product - Market Considerations', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-24 00:16:14', '2015-02-24 00:16:14', 0, ''),
(1166, 'New Product - Product Considerations', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-24 00:17:39', '2015-02-24 00:17:39', 0, ''),
(1167, 'Advertising - Overview', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '<span>Before you launch your ad campaign, consult this checklist to make sure that both your ad and your message are right on target.<br></span>', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-24 00:35:30', '2015-02-24 00:36:49', 0, ''),
(1168, 'Advertising - Specifics', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-24 01:33:19', '2015-02-24 01:33:19', 0, ''),
(1169, 'Advertising - Files', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-24 01:57:19', '2015-02-24 01:57:19', 0, ''),
(1171, 'Advertising - Competitors and Customers', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-24 02:10:36', '2015-02-24 02:10:36', 0, ''),
(1172, 'Mindset - To Radically Improve Your Business', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-24 02:41:36', '2015-02-24 02:41:36', 0, ''),
(1197, 'Business Evaluation - To Buy or Not to Buy?', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', 'If you find a business you''d like to buy, you will need to consider a number of points before deciding whether to purchase it. Take a good, close look at the business and answer the following questions. They will help you determine whether the business is a sound investment.', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-25 02:26:24', '2015-02-25 02:26:24', 0, ''),
(1198, 'Business Lease - Should I Lease?', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', 'After you''ve chosen a site for your business, don''t sign any lease without first going over this checklist.', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-25 02:36:32', '2015-02-25 02:36:32', 0, ''),
(1199, '30-Day Sales Plan', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', '<span>Reach your sales goals with the 10 action items on this sales plan checklist.<br><br></span>What if you could take your sales to the next level in just 30 days? It''s more feasible than you think--especially when you break the process down into small, achievable steps.<br>', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-25 02:50:36', '2015-02-25 02:50:36', 0, ''),
(1201, 'Business Plan Need An Update?', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', 'Here are seven reasons to think about updating your plan. If one applies to you, it''s time for an update.', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-25 02:58:39', '2015-02-25 02:58:39', 0, ''),
(1202, 'Business Equipment Leasing', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', 'Leasing equipment can help your business stay up-to-date with the latest technology. Other benefits of leasing include making lower monthly payments than you would have with a loan, getting a fixed financing rate instead of a floating rate, benefiting from tax advantages, and conserving working capital by avoiding cash-devouring down payments. Leasing also has its downside, however: You may pay a higher price over the long term. <br><br>You are also committed to retaining a piece of equipment for a certain time period, which can be problematic if your business is in flux.Every lease decision is unique so it''s important to study the lease agreement carefully. To help you put together an equipment leasing package that best suits your business, consider these issues.', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-02-25 03:04:43', '2015-02-25 03:04:43', 0, ''),
(2759, 'Payroll', 0, 0, 1, 'notArchived', '0000-00-00', '0000-00-00', 0, '', 'Use this Checklist to complete your payroll whether you run it weekly, bi-weekly, or monthly.', '', '', 4, 67, NULL, 'johndoe@gmail.com', '0000-00-00 00:00:00', '', '2015-06-22 20:05:28', '2015-06-22 20:05:28', 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
