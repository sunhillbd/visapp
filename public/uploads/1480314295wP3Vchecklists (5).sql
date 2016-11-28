-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2016 at 05:17 PM
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
(84, 'EasyChecklistABC - Setup', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 1, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-01-19 18:39:13', '2015-01-19 18:39:13', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(85, 'Tax Preparation - Documents', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', 'This Checklist contains common Client Docs/Information required to prepare a tax return.', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-01-19 18:59:33', '2015-01-21 13:53:38', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(86, 'Tax Preparation - Process', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', 'This is a basic tax return process for internal steps needed to complete a tax return from receiving client docs to filling.', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-01-19 19:02:58', '2015-01-21 13:52:32', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(87, 'Tax Preparation - Review', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', 'Common Errors to Check When Preparing Your Client''s Tax Return	', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-01-19 19:06:32', '2015-01-21 13:52:55', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(88, 'Review Business Structure', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 16:31:08', '2015-02-23 16:31:08', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(89, 'Terms of Service & Contracts Considerations', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 16:39:35', '2015-02-23 16:39:35', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(90, 'Intellectual Property Review', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 16:52:40', '2015-02-23 16:52:40', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(91, 'Real Estate - Own vs. Lease', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 16:56:15', '2015-02-23 16:56:15', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(92, 'Risk Management & Insurance Review', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 16:57:36', '2015-02-23 16:57:36', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(93, 'Employment Considerations', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 17:07:51', '2015-02-23 17:07:51', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(94, 'New Product - General Considerations', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 18:11:52', '2015-02-23 18:11:52', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(95, 'New Product - Industry Considerations', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 18:15:12', '2015-02-23 18:15:12', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(96, 'New Product - Market Considerations', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 18:16:14', '2015-02-23 18:16:14', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(97, 'New Product - Product Considerations', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 18:17:39', '2015-02-23 18:17:39', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(98, 'Advertising - Overview', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '<span>Before you launch your ad campaign, consult this checklist to make sure that both your ad and your message are right on target.<br></span>', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 18:35:30', '2015-02-23 18:36:49', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(99, 'Advertising - Specifics', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 19:33:19', '2015-02-23 19:33:19', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(100, 'Advertising - Files', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 19:57:19', '2015-02-23 19:57:19', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(101, 'Advertising - Competitors and Customers', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 20:10:36', '2015-02-23 20:10:36', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(102, 'Mindset - To Radically Improve Your Business', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-23 20:41:36', '2015-02-23 20:41:36', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(103, 'Business Evaluation - To Buy or Not to Buy?', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', 'If you find a business you''d like to buy, you will need to consider a number of points before deciding whether to purchase it. Take a good, close look at the business and answer the following questions. They will help you determine whether the business is a sound investment.', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-24 20:26:24', '2015-02-24 20:26:24', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(104, 'Business Lease - Should I Lease?', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', 'After you''ve chosen a site for your business, don''t sign any lease without first going over this checklist.', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-24 20:36:32', '2015-02-24 20:36:32', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(105, '30-Day Sales Plan', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', '<span>Reach your sales goals with the 10 action items on this sales plan checklist.<br><br></span>What if you could take your sales to the next level in just 30 days? It''s more feasible than you think--especially when you break the process down into small, achievable steps.<br>', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-24 20:50:36', '2015-02-24 20:50:36', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(106, 'Business Plan Need An Update?', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', 'Here are seven reasons to think about updating your plan. If one applies to you, it''s time for an update.', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-24 20:58:39', '2015-02-24 20:58:39', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(107, 'Business Equipment Leasing', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', 'Leasing equipment can help your business stay up-to-date with the latest technology. Other benefits of leasing include making lower monthly payments than you would have with a loan, getting a fixed financing rate instead of a floating rate, benefiting from tax advantages, and conserving working capital by avoiding cash-devouring down payments. Leasing also has its downside, however: You may pay a higher price over the long term. <br><br>You are also committed to retaining a piece of equipment for a certain time period, which can be problematic if your business is in flux.Every lease decision is unique so it''s important to study the lease agreement carefully. To help you put together an equipment leasing package that best suits your business, consider these issues.', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-02-24 21:04:43', '2015-02-24 21:04:43', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1),
(108, 'Payroll', 0, 0, 1, 0, '0000-00-00', NULL, '0000-00-00', 0, '', 'Use this Checklist to complete your payroll whether you run it weekly, bi-weekly, or monthly.', '', '', 4, NULL, 67, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, '2015-06-22 14:05:28', '2015-06-22 14:05:28', NULL, '0000-00-00 00:00:00', NULL, NULL, 'system_template', 0, '', 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
