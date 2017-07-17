-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2017 at 03:42 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kudos`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE IF NOT EXISTS `auth` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `user_id`, `source`, `source_id`) VALUES
(11, 16, 'github', '1791660');

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Registered', '13', 1464266458),
('Registered', '14', 1476339588),
('Registered', '15', 1484479134),
('Registered', '16', 1484480747),
('Registered', '17', 1491989948),
('Registered', '18', 1491990177),
('Registered', '19', 1491990270),
('Registered', '2', 1434796680),
('Registered', '20', 1491990931),
('Registered', '21', 1491991507),
('Registered', '24', 1493121576),
('Registered', '25', 1493121672),
('Registered', '26', 1493121781),
('Registered', '27', 1493122231),
('Registered', '28', 1493125770),
('Registered', '29', 1493126427),
('Registered', '3', 1458356057),
('Registered', '30', 1493126533),
('Registered', '31', 1493127665),
('Registered', '34', 1493190880),
('Registered', '35', 1493190986),
('Registered', '36', 1493213031),
('Registered', '37', 1493213321),
('Registered', '38', 1493213551),
('Super Admin', '1', 1434782780);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1434782684, 1434782684),
('/admin/*', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1464239923, 1464239923),
('/admin/assignment/search', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/default/*', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/default/index', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/menu/*', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/menu/create', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/menu/index', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/menu/update', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/menu/view', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/permission/*', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/permission/create', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/permission/index', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1464239923, 1464239923),
('/admin/permission/search', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/permission/update', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/permission/view', 2, NULL, NULL, NULL, 1434782682, 1434782682),
('/admin/role/*', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/role/assign', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/role/create', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/role/delete', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/role/index', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/role/remove', 2, NULL, NULL, NULL, 1464239923, 1464239923),
('/admin/role/search', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/role/update', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/role/view', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/route/*', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/route/assign', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/route/create', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/route/index', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1464239923, 1464239923),
('/admin/route/remove', 2, NULL, NULL, NULL, 1464239923, 1464239923),
('/admin/route/search', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/rule/*', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/rule/create', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/rule/index', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/rule/update', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/rule/view', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/admin/user/*', 2, NULL, NULL, NULL, 1464239924, 1464239924),
('/admin/user/activate', 2, NULL, NULL, NULL, 1464239924, 1464239924),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1464239924, 1464239924),
('/admin/user/delete', 2, NULL, NULL, NULL, 1464239923, 1464239923),
('/admin/user/index', 2, NULL, NULL, NULL, 1464239923, 1464239923),
('/admin/user/login', 2, NULL, NULL, NULL, 1464239923, 1464239923),
('/admin/user/logout', 2, NULL, NULL, NULL, 1464239923, 1464239923),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1464239924, 1464239924),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1464239924, 1464239924),
('/admin/user/signup', 2, NULL, NULL, NULL, 1464239924, 1464239924),
('/admin/user/view', 2, NULL, NULL, NULL, 1464239923, 1464239923),
('/backend/*', 2, NULL, NULL, NULL, 1434784125, 1434784125),
('/backend/default/*', 2, NULL, NULL, NULL, 1434784125, 1434784125),
('/backend/default/index', 2, NULL, NULL, NULL, 1434784125, 1434784125),
('/backend/page/*', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/page/create', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/page/delete', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/page/index', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/page/update', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/page/view', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/setting/*', 2, NULL, NULL, NULL, 1464239914, 1464239914),
('/backend/setting/create', 2, NULL, NULL, NULL, 1464239914, 1464239914),
('/backend/setting/delete', 2, NULL, NULL, NULL, 1464239914, 1464239914),
('/backend/setting/index', 2, NULL, NULL, NULL, 1464239914, 1464239914),
('/backend/setting/update', 2, NULL, NULL, NULL, 1464239914, 1464239914),
('/backend/setting/view', 2, NULL, NULL, NULL, 1464239914, 1464239914),
('/backend/user/*', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/user/create', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/user/delete', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/user/index', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/user/update', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/backend/user/view', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/debug/*', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/debug/default/*', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/debug/default/index', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/debug/default/view', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/gii/*', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/gii/default/*', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/gii/default/action', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/gii/default/diff', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/gii/default/index', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/gii/default/preview', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/gii/default/view', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/site/*', 2, NULL, NULL, NULL, 1434782684, 1434782684),
('/site/about', 2, NULL, NULL, NULL, 1434782684, 1434782684),
('/site/captcha', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/site/contact', 2, NULL, NULL, NULL, 1434782684, 1434782684),
('/site/error', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/site/image', 2, NULL, NULL, NULL, 1464239914, 1464239914),
('/site/index', 2, NULL, NULL, NULL, 1434782683, 1434782683),
('/site/login', 2, NULL, NULL, NULL, 1434782684, 1434782684),
('/site/logout', 2, NULL, NULL, NULL, 1434782684, 1434782684),
('/site/page', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/site/request-password-reset', 2, NULL, NULL, NULL, 1434782684, 1434782684),
('/site/reset-password', 2, NULL, NULL, NULL, 1434782684, 1434782684),
('/site/signup', 2, NULL, NULL, NULL, 1434782684, 1434782684),
('/test/*', 2, NULL, NULL, NULL, 1464239914, 1464239914),
('/test/index', 2, NULL, NULL, NULL, 1464239914, 1464239914),
('/userprofile/*', 2, NULL, NULL, NULL, 1435043170, 1435043170),
('/userprofile/changepassword', 2, NULL, NULL, NULL, 1445838084, 1445838084),
('/userprofile/index', 2, NULL, NULL, NULL, 1435043170, 1435043170),
('/userprofile/update', 2, NULL, NULL, NULL, 1435043170, 1435043170),
('Registered', 1, 'Registered', NULL, NULL, 1434782654, 1434782654),
('Super Admin', 1, 'Super Admin', NULL, NULL, 1434782626, 1434782626);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Super Admin', '/*'),
('Super Admin', '/admin/*'),
('Super Admin', '/admin/assignment/*'),
('Super Admin', '/admin/assignment/assign'),
('Super Admin', '/admin/assignment/index'),
('Super Admin', '/admin/assignment/search'),
('Super Admin', '/admin/assignment/view'),
('Super Admin', '/admin/default/*'),
('Super Admin', '/admin/default/index'),
('Super Admin', '/admin/menu/*'),
('Super Admin', '/admin/menu/create'),
('Super Admin', '/admin/menu/delete'),
('Super Admin', '/admin/menu/index'),
('Super Admin', '/admin/menu/update'),
('Super Admin', '/admin/menu/view'),
('Super Admin', '/admin/permission/*'),
('Super Admin', '/admin/permission/assign'),
('Super Admin', '/admin/permission/create'),
('Super Admin', '/admin/permission/delete'),
('Super Admin', '/admin/permission/index'),
('Super Admin', '/admin/permission/search'),
('Super Admin', '/admin/permission/update'),
('Super Admin', '/admin/permission/view'),
('Super Admin', '/admin/role/*'),
('Super Admin', '/admin/role/assign'),
('Super Admin', '/admin/role/create'),
('Super Admin', '/admin/role/delete'),
('Super Admin', '/admin/role/index'),
('Super Admin', '/admin/role/search'),
('Super Admin', '/admin/role/update'),
('Super Admin', '/admin/role/view'),
('Super Admin', '/admin/route/*'),
('Super Admin', '/admin/route/assign'),
('Super Admin', '/admin/route/create'),
('Super Admin', '/admin/route/index'),
('Super Admin', '/admin/route/search'),
('Super Admin', '/admin/rule/*'),
('Super Admin', '/admin/rule/create'),
('Super Admin', '/admin/rule/delete'),
('Super Admin', '/admin/rule/index'),
('Super Admin', '/admin/rule/update'),
('Super Admin', '/admin/rule/view'),
('Super Admin', '/backend/*'),
('Super Admin', '/backend/default/*'),
('Super Admin', '/backend/default/index'),
('Super Admin', '/backend/page/*'),
('Super Admin', '/backend/page/create'),
('Super Admin', '/backend/page/delete'),
('Super Admin', '/backend/page/index'),
('Super Admin', '/backend/page/update'),
('Super Admin', '/backend/page/view'),
('Super Admin', '/backend/user/*'),
('Super Admin', '/backend/user/create'),
('Super Admin', '/backend/user/delete'),
('Super Admin', '/backend/user/index'),
('Super Admin', '/backend/user/update'),
('Super Admin', '/backend/user/view'),
('Registered', '/debug/*'),
('Super Admin', '/debug/*'),
('Registered', '/debug/default/*'),
('Super Admin', '/debug/default/*'),
('Super Admin', '/debug/default/db-explain'),
('Registered', '/debug/default/download-mail'),
('Super Admin', '/debug/default/download-mail'),
('Registered', '/debug/default/index'),
('Super Admin', '/debug/default/index'),
('Registered', '/debug/default/toolbar'),
('Super Admin', '/debug/default/toolbar'),
('Registered', '/debug/default/view'),
('Super Admin', '/debug/default/view'),
('Super Admin', '/gii/*'),
('Super Admin', '/gii/default/*'),
('Super Admin', '/gii/default/action'),
('Super Admin', '/gii/default/diff'),
('Super Admin', '/gii/default/index'),
('Super Admin', '/gii/default/preview'),
('Super Admin', '/gii/default/view'),
('Registered', '/site/*'),
('Super Admin', '/site/*'),
('Registered', '/site/about'),
('Super Admin', '/site/about'),
('Registered', '/site/captcha'),
('Super Admin', '/site/captcha'),
('Registered', '/site/contact'),
('Super Admin', '/site/contact'),
('Registered', '/site/error'),
('Super Admin', '/site/error'),
('Registered', '/site/index'),
('Super Admin', '/site/index'),
('Registered', '/site/login'),
('Super Admin', '/site/login'),
('Registered', '/site/logout'),
('Super Admin', '/site/logout'),
('Registered', '/site/page'),
('Super Admin', '/site/page'),
('Registered', '/site/request-password-reset'),
('Super Admin', '/site/request-password-reset'),
('Registered', '/site/reset-password'),
('Super Admin', '/site/reset-password'),
('Registered', '/site/signup'),
('Super Admin', '/site/signup'),
('Registered', '/userprofile/*'),
('Super Admin', '/userprofile/*'),
('Registered', '/userprofile/changepassword'),
('Super Admin', '/userprofile/changepassword'),
('Registered', '/userprofile/index'),
('Super Admin', '/userprofile/index'),
('Registered', '/userprofile/update'),
('Super Admin', '/userprofile/update');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `charity`
--

CREATE TABLE IF NOT EXISTS `charity` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `abn` int(11) NOT NULL,
  `charity_legal_name` varchar(255) NOT NULL,
  `about_us` text,
  `other_organisation_names` varchar(255) NOT NULL,
  `operating_countries` varchar(255) NOT NULL,
  `address_type` varchar(255) NOT NULL,
  `charity_website` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `date_organisation_established` date NOT NULL,
  `charity_size` varchar(255) NOT NULL,
  `number_of_responsible_persons` int(11) NOT NULL,
  `financial_year_end` date NOT NULL,
  `operates_in_act` varchar(32) NOT NULL,
  `operates_in_nsw` varchar(32) NOT NULL,
  `operates_in_nt` varchar(32) NOT NULL,
  `operates_in_qld` varchar(32) NOT NULL,
  `operates_in_sa` varchar(32) NOT NULL,
  `operates_in_tas` varchar(32) NOT NULL,
  `operates_in_vic` varchar(32) NOT NULL,
  `operates_in_wa` varchar(32) NOT NULL,
  `pbi` varchar(32) NOT NULL,
  `hpc` varchar(32) NOT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `dgr` tinyint(4) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charity_assign_category`
--

CREATE TABLE IF NOT EXISTS `charity_assign_category` (
`id` int(11) NOT NULL,
  `charity_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charity_category`
--

CREATE TABLE IF NOT EXISTS `charity_category` (
`id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `beneficiaries` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charity_category`
--

INSERT INTO `charity_category` (`id`, `parent_id`, `cat_name`, `alias`, `beneficiaries`, `sort_order`, `published`) VALUES
(1, 0, 'Animal Welfare & Preservation', 'Preventing_or_relieving_suffering_of_animals', 0, 1, 1),
(2, 0, 'Culture', 'Advancing_Culture', 0, 2, 1),
(3, 0, ' Education', 'Advancing_Education', 0, 3, 1),
(4, 0, 'Health', 'Advancing_Health ', 0, 4, 1),
(5, 0, 'Government, Policy & Law', 'Promote_or_oppose_a_change_to_law__government_poll_or_pra', 0, 5, 1),
(6, 0, 'Environment & Conservation', 'Advancing_natural_environment', 0, 6, 1),
(7, 0, 'Human Rights', 'Promoting_or_protecting_human_rights', 0, 7, 1),
(8, 0, ' Public Purposes', 'Purposes_beneficial_to_ther_general_public_and_other_analogous', 0, 8, 1),
(9, 0, 'Tolerance & Reconciliation', 'Promoting_reconciliation__mutual_respect_and_tolerance', 0, 9, 1),
(10, 0, ' Religion', 'Advancing_Religion', 0, 10, 1),
(11, 0, 'Social & Public Welfare', 'Advancing_social_or_public_welfare', 0, 11, 1),
(12, 0, 'Security & Safety of Australia', 'Advancing_security_or_safety_of_Australia_or_Australian_public', 0, 12, 1),
(13, 0, 'Community ', 'Another_purpose_beneficial_to_the_community ', 0, 13, 1),
(14, 0, 'Indidgenous Causes', 'Aboriginal_or_TSI', 1, 14, 1),
(15, 0, ' Aged Care', 'Aged_Persons', 1, 15, 1),
(16, 0, 'Children', 'Children', 1, 16, 1),
(17, 0, ' Overseas Causes', 'Communities_Overseas', 1, 17, 1),
(18, 0, 'Ethnic Groups', 'Ethnic_Groups ', 1, 18, 1),
(19, 0, ' LGBT', 'Gay__Lesbian__Bisexual', 1, 19, 1),
(20, 0, 'General Community', 'General_Community_in_Australia', 1, 20, 1),
(21, 0, 'Men', 'Men', 1, 21, 1),
(22, 0, 'Refugees & Asymlum Seekers', 'Migrants__Refugees_or_Asylum_Seekers ', 1, 22, 1),
(23, 0, ' Post Release Offenders', 'Pre_Post_Release_Offenders', 1, 23, 1),
(24, 0, 'Chronically Ill', 'People_with_Chronic_Illness', 1, 24, 1),
(25, 0, ' Diabilities', 'People_with_Disabilities', 1, 25, 1),
(26, 0, 'Homeless', 'People_at_risk_of_homelessness', 1, 26, 1),
(27, 0, ' Unemployed', 'Unemployed_Persons', 1, 27, 1),
(28, 0, 'Veterans', 'Veterans_or_their_families', 1, 28, 1),
(29, 0, 'Victims of Crime', 'Victims_of_crime', 1, 29, 1),
(30, 0, 'Victims of Disasters', 'Victims_of_Disasters', 1, 31, 1),
(31, 0, 'Women', 'Women', 1, 32, 1),
(32, 0, 'Youth', 'Youth', 1, 33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `charity_images`
--

CREATE TABLE IF NOT EXISTS `charity_images` (
`id` int(11) NOT NULL,
  `charity_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charity_member`
--

CREATE TABLE IF NOT EXISTS `charity_member` (
`id` int(11) NOT NULL,
  `charity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `membership_type` enum('member','admin','officer','charity_champion') NOT NULL DEFAULT 'member',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
`id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`id` int(11) NOT NULL,
  `charity_id` int(11) NOT NULL,
  `event_type_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_endorse`
--

CREATE TABLE IF NOT EXISTS `event_endorse` (
`id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `charity_leader_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_images`
--

CREATE TABLE IF NOT EXISTS `event_images` (
`id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_participate`
--

CREATE TABLE IF NOT EXISTS `event_participate` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `hours` varchar(32) NOT NULL,
  `comments` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE IF NOT EXISTS `event_type` (
`id` int(11) NOT NULL,
  `event_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE IF NOT EXISTS `interest` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `charity_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invite_friends`
--

CREATE TABLE IF NOT EXISTS `invite_friends` (
`id` int(11) NOT NULL,
  `from_user` int(11) NOT NULL,
  `to_user_email` varchar(255) NOT NULL,
  `charity_id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `accept` tinyint(4) NOT NULL DEFAULT '0',
  `decline` tinyint(4) NOT NULL DEFAULT '0',
  `unique_code` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
`id` int(11) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `address_line_3` text NOT NULL,
  `town_city` varchar(111) NOT NULL,
  `state` varchar(111) NOT NULL,
  `postcode` varchar(32) NOT NULL,
  `country_id` int(11) NOT NULL,
  `charity_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ureated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL,
  `message` text,
  `from_user` varchar(255) NOT NULL,
  `to_user` int(11) NOT NULL,
  `send_date` datetime NOT NULL,
  `mark_read` int(1) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1434781292),
('m140506_102106_rbac_init', 1434782281);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `expire`, `data`) VALUES
('2oo7di8qg9n59c6biqodij3ce5', 1493205468, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a313b),
('2pj92tpsvu02rch8q7i9ckpgp1', 1493212782, 0x5f5f666c6173687c613a303a7b7d),
('5sahlc67j7s2tlplp6cnljjvh7', 1493206549, 0x5f5f666c6173687c613a303a7b7d),
('5ufdi0lf24enkqt9fhpa8qo2f5', 1493206549, 0x5f5f666c6173687c613a303a7b7d),
('avgsjorg2dvcolnnm34qcg2ga0', 1493214168, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a313b),
('hmctii9a2n664hu7ifrcqn7ah4', 1493215001, 0x5f5f666c6173687c613a303a7b7d),
('ja529l5r9gb8nkcrsnkljk57j2', 1493206546, 0x5f5f666c6173687c613a303a7b7d),
('p5dqqn4s4j7trh2alcsf0jsni2', 1493215422, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a313b),
('qv4bdkihb2ppcgdoi1316jvqb7', 1493205857, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a313b);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `key`, `value`) VALUES
(1, 'Admin Email Address', 'admin_email', 'admin@localhost.com'),
(2, 'Support Email Address', 'support_email', 'admin@localhost.com');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `reg_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `role`, `status`, `created_at`, `updated_at`, `reg_key`) VALUES
(1, 'admin', 'eCB8J032--bZftCRw36_8K9W_AoEMmgA', '$2y$13$Eb7wQX9HQNjo59jnP6UAue3fKtfsTEnrD1Jgl5UEg.7bBorymw.GS', NULL, 'admin@localhost.com', 10, 10, 1434781175, 1492783054, NULL),
(2, 'test1', 'E2VmqIJhJbmecJVIcQjPGuKvhvNXNJH6', '$2y$13$LQT4apb6CWgtOuVm87PUMOH//fgzavVfxvaOHs0GBPYcEpw3.fYKy', NULL, 'test1@localhost.com', 10, 0, 1434796679, 1493200755, NULL),
(3, 'test2', '4mmzAe0jYWB1Im5LiDmVnUJDiT4QFDp2', '$2y$13$bhTDPrNMU3VE9gQ9aI0GM.5COeLU.pkJjlCri8MUof8Y0.aFOMEXK', NULL, 'test2@localhost.com', 10, 10, 1458356057, 1458356154, 'fgmvRs1lO2XJ_i1iEO1dJ7JBRgCakJ5N145835605731287'),
(14, 'test112', 'hpsZXB8ZXvQskQJWRIcEWkzersvQ1Md2', '$2y$13$KsUc.GLAOwg1O9Us5/IuMeXJD6gOgcbxlpJYeRaK4j3idKl9gOFny', NULL, 'test112@localhost.com', 10, 10, 1476339587, 1476339587, 'ldBdStljHxNt4RfJwcZ1J3QbeWjXCcg2147633958719273'),
(16, 'deepaksinghkushwah', 'rI9SKlvsHeUlXqhAvfP2ay75fPtDGlmM', '$2y$13$P1lEnmnLrIw9DrQxFb15xuhCEn5BxO5964ivkB1ChLXSAeBGm/vOi', 'ej-4t7HRG9gBFYKR7n61efx97kZg3oZu_1484480747', 'deepaksinghkushwah@gmail.com', 10, 10, 1484480747, 1493184990, NULL),
(31, 'hhhj', 'h7xy9p8PhFHLBNIDJGHoESDzu-z0W49c', '$2y$13$M/eFrBjHclktZ1/8/Z3oaO2nfgxY1I6dYjNLRj8YZdcT4ws1E3UgK', NULL, 'santosh.mohan111@dotsquares.com', 10, 10, 1493127665, 1493185960, 'RbThclNCJLzoX0EuZSy4ug71N--JAm90149312766531822'),
(34, 'okl123', 'qTfY_pRbLa9zUUbYBuceetyJ26tJgvS6', '$2y$13$oSisKgskiaDX/J5naRMCweW2/uXASbSK/xdqUohA5lacvn7/VBmVm', NULL, 'okl@gmail.com', 10, 10, 1493190880, 1493190880, 'V--KvQu5bPo9LpvaCSHJvtzRod-yrFqu14931908802647'),
(36, 'hello5', 'vaamEuGv9KXedisOx-ugSIDBxvgRU7kc', '$2y$13$PsgWLqvaYV6p57gcxh1BY.nsyjO.6i0HmjxzYjRo02l.rgb.RlMbS', NULL, 'santosh.mohan1@dotsquares.com', 10, 10, 1493213030, 1493213030, 'XkBvCIY-NQJhn4V3qf0F6Wyf3sAJJb4D14932130308302'),
(37, 'hello6', 'bwb87SYuTDKo0caKagxzpIYj5wBo69vW', '$2y$13$yTvI6HWmgslP78f7AQdXPu94TWTJpOyk5vs8sUmeCyyPOkk6EgbDG', NULL, 'santosh.mohan22@dotsquares.com', 10, 10, 1493213321, 1493213321, 'Hal1NNnbhstxZWz4XfjOYyU72h5Z-hCe14932133213607'),
(38, 'fsfsffff', '3VSibF9kH5VUqgaddYMDJnlSRFkm31EI', '$2y$13$yUeHnPV0tNzHAx8qbiTt8OGNitcxLOqu3XEzYAqRJUgrpOXBEQwmK', NULL, 'santosh.mohan@dotsquares.com', 10, 0, 1493213551, 1493213551, 'nKRMgXbEb8FcVOqyGT12VQmn8n4yYqs9149321355125459');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE IF NOT EXISTS `userprofile` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(111) NOT NULL,
  `last_name` varchar(111) NOT NULL,
  `about_me` text,
  `image` varchar(255) NOT NULL,
  `cover_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`id`, `user_id`, `first_name`, `last_name`, `about_me`, `image`, `cover_image`) VALUES
(1, 1, 'Administrator', 'Kudos', NULL, 'user2-160x160.jpg', ''),
(2, 2, 'Test One', 'hh', NULL, '558908d4cc34a.jpg', ''),
(3, 3, 'test2', '', NULL, '56ecbf59b7dba.jpg', ''),
(10, 14, 'test112', '', NULL, '57ff2784077b8.jpg', ''),
(12, 16, 'deepaksinghkushwah@gmail.com', 'aaaaa', NULL, '589016babde7a.jpg', ''),
(26, 31, 'hello', 'fggf', NULL, '', ''),
(27, 34, 'okl', 'okl', NULL, '', ''),
(29, 36, 'hello5', 'hello5', NULL, '', ''),
(30, 37, 'hello6', 'sadd', NULL, '', ''),
(31, 38, 'santosh', 'joshi', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `workplace`
--

CREATE TABLE IF NOT EXISTS `workplace` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `workplace` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
 ADD PRIMARY KEY (`id`), ADD KEY `fk-auth-user_id-user-id` (`user_id`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
 ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
 ADD PRIMARY KEY (`name`), ADD KEY `rule_name` (`rule_name`), ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
 ADD PRIMARY KEY (`parent`,`child`), ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `charity`
--
ALTER TABLE `charity`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `charity_assign_category`
--
ALTER TABLE `charity_assign_category`
 ADD PRIMARY KEY (`id`), ADD KEY `charity_id` (`charity_id`), ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `charity_category`
--
ALTER TABLE `charity_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charity_images`
--
ALTER TABLE `charity_images`
 ADD PRIMARY KEY (`id`), ADD KEY `charity_id` (`charity_id`);

--
-- Indexes for table `charity_member`
--
ALTER TABLE `charity_member`
 ADD PRIMARY KEY (`id`), ADD KEY `charity_id` (`charity_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`id`), ADD KEY `event_id` (`event_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`id`), ADD KEY `charity_id` (`charity_id`), ADD KEY `event_type_id` (`event_type_id`);

--
-- Indexes for table `event_endorse`
--
ALTER TABLE `event_endorse`
 ADD PRIMARY KEY (`id`), ADD KEY `event_id` (`event_id`), ADD KEY `user_id` (`user_id`), ADD KEY `charity_leader_id` (`charity_leader_id`);

--
-- Indexes for table `event_images`
--
ALTER TABLE `event_images`
 ADD PRIMARY KEY (`id`), ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `event_participate`
--
ALTER TABLE `event_participate`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `charity_id` (`charity_id`), ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `invite_friends`
--
ALTER TABLE `invite_friends`
 ADD PRIMARY KEY (`id`), ADD KEY `from_user` (`from_user`), ADD KEY `charity_id` (`charity_id`), ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
 ADD PRIMARY KEY (`id`), ADD KEY `charity_id` (`charity_id`), ADD KEY `country_id` (`country_id`), ADD KEY `profile_id` (`user_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
 ADD KEY `to_user` (`to_user`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_UP_USER_ID` (`user_id`);

--
-- Indexes for table `workplace`
--
ALTER TABLE `workplace`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `charity`
--
ALTER TABLE `charity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `charity_assign_category`
--
ALTER TABLE `charity_assign_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `charity_category`
--
ALTER TABLE `charity_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `charity_images`
--
ALTER TABLE `charity_images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `charity_member`
--
ALTER TABLE `charity_member`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_endorse`
--
ALTER TABLE `event_endorse`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_images`
--
ALTER TABLE `event_images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_participate`
--
ALTER TABLE `event_participate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_type`
--
ALTER TABLE `event_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interest`
--
ALTER TABLE `interest`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invite_friends`
--
ALTER TABLE `invite_friends`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `workplace`
--
ALTER TABLE `workplace`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth`
--
ALTER TABLE `auth`
ADD CONSTRAINT `fk-auth-user_id-user-id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `charity`
--
ALTER TABLE `charity`
ADD CONSTRAINT `charity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `charity_assign_category`
--
ALTER TABLE `charity_assign_category`
ADD CONSTRAINT `charity_assign_category_ibfk_1` FOREIGN KEY (`charity_id`) REFERENCES `charity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `charity_assign_category_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `charity_category` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `charity_images`
--
ALTER TABLE `charity_images`
ADD CONSTRAINT `charity_images_ibfk_1` FOREIGN KEY (`charity_id`) REFERENCES `charity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `charity_member`
--
ALTER TABLE `charity_member`
ADD CONSTRAINT `charity_member_ibfk_1` FOREIGN KEY (`charity_id`) REFERENCES `charity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `charity_member_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`charity_id`) REFERENCES `charity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `event_ibfk_2` FOREIGN KEY (`event_type_id`) REFERENCES `event_type` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `event_endorse`
--
ALTER TABLE `event_endorse`
ADD CONSTRAINT `event_endorse_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `event_endorse_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `event_endorse_ibfk_3` FOREIGN KEY (`charity_leader_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `event_images`
--
ALTER TABLE `event_images`
ADD CONSTRAINT `event_images_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `event_participate`
--
ALTER TABLE `event_participate`
ADD CONSTRAINT `event_participate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `event_participate_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `interest`
--
ALTER TABLE `interest`
ADD CONSTRAINT `interest_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `interest_ibfk_2` FOREIGN KEY (`charity_id`) REFERENCES `charity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `interest_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `invite_friends`
--
ALTER TABLE `invite_friends`
ADD CONSTRAINT `invite_friends_ibfk_1` FOREIGN KEY (`from_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `invite_friends_ibfk_2` FOREIGN KEY (`charity_id`) REFERENCES `charity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `invite_friends_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `location`
--
ALTER TABLE `location`
ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`charity_id`) REFERENCES `charity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `location_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`to_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `skill`
--
ALTER TABLE `skill`
ADD CONSTRAINT `skill_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `userprofile`
--
ALTER TABLE `userprofile`
ADD CONSTRAINT `FK_UP_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `workplace`
--
ALTER TABLE `workplace`
ADD CONSTRAINT `workplace_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
