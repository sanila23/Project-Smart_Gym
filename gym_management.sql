-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 09:56 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gym_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add bill', 7, 'add_bill'),
(26, 'Can change bill', 7, 'change_bill'),
(27, 'Can delete bill', 7, 'delete_bill'),
(28, 'Can view bill', 7, 'view_bill'),
(29, 'Can add diet', 8, 'add_diet'),
(30, 'Can change diet', 8, 'change_diet'),
(31, 'Can delete diet', 8, 'delete_diet'),
(32, 'Can view diet', 8, 'view_diet'),
(33, 'Can add member', 9, 'add_member'),
(34, 'Can change member', 9, 'change_member'),
(35, 'Can delete member', 9, 'delete_member'),
(36, 'Can view member', 9, 'view_member'),
(37, 'Can add schedule', 10, 'add_schedule'),
(38, 'Can change schedule', 10, 'change_schedule'),
(39, 'Can delete schedule', 10, 'delete_schedule'),
(40, 'Can view schedule', 10, 'view_schedule'),
(41, 'Can add attendance', 11, 'add_attendance'),
(42, 'Can change attendance', 11, 'change_attendance'),
(43, 'Can delete attendance', 11, 'delete_attendance'),
(44, 'Can view attendance', 11, 'view_attendance'),
(45, 'Can add store', 12, 'add_store'),
(46, 'Can change store', 12, 'change_store'),
(47, 'Can delete store', 12, 'delete_store'),
(48, 'Can view store', 12, 'view_store');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$00PVlwjkysc6$4YqJ3pHNAGSwWj+uiOE9cxT2G084OvjlcrMCWUfczew=', '2022-08-24 06:56:51.803017', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-08-08 07:52:40.338543');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-08-08 07:53:29.885121', '1', 'user@gmail.com', 1, '[{"added": {}}]', 9, 1),
(2, '2022-08-08 07:54:59.351866', '1', 'Bill object (1)', 1, '[{"added": {}}]', 7, 1),
(3, '2022-08-08 07:56:42.522717', '1', 'Diet object (1)', 1, '[{"added": {}}]', 8, 1),
(4, '2022-08-08 07:59:04.235681', '2', 'Attendance object (2)', 1, '[{"added": {}}]', 11, 1),
(5, '2022-08-08 08:07:58.278423', '2', 'Attendance object (2)', 3, '', 11, 1),
(6, '2022-08-08 08:09:34.507524', '1', 'Schedule object (1)', 1, '[{"added": {}}]', 10, 1),
(7, '2022-08-08 08:09:49.518212', '3', 'Attendance object (3)', 1, '[{"added": {}}]', 11, 1),
(8, '2022-08-09 17:28:01.432387', '1', 'Store object (1)', 1, '[{"added": {}}]', 12, 1),
(9, '2022-08-09 17:30:37.139698', '2', 'Store object (2)', 1, '[{"added": {}}]', 12, 1),
(10, '2022-08-09 17:33:43.811901', '3', 'Store object (3)', 1, '[{"added": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'gym', 'attendance'),
(7, 'gym', 'bill'),
(8, 'gym', 'diet'),
(9, 'gym', 'member'),
(10, 'gym', 'schedule'),
(12, 'gym', 'store'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-08 07:51:45.024642'),
(2, 'auth', '0001_initial', '2022-08-08 07:51:45.188970'),
(3, 'admin', '0001_initial', '2022-08-08 07:51:45.471050'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-08 07:51:45.533551'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-08 07:51:45.549164'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-08 07:51:45.624043'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-08 07:51:45.670877'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-08 07:51:45.702119'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-08 07:51:45.717759'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-08 07:51:45.749182'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-08 07:51:45.749182'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-08 07:51:45.764998'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-08 07:51:45.780575'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-08 07:51:45.811897'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-08 07:51:45.843295'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-08 07:51:45.859251'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-08 07:51:45.874869'),
(18, 'gym', '0001_initial', '2022-08-08 07:51:46.084129'),
(19, 'gym', '0002_auto_20220808_1321', '2022-08-08 07:51:46.139647'),
(20, 'sessions', '0001_initial', '2022-08-08 07:51:46.170905'),
(21, 'gym', '0003_auto_20220808_1328', '2022-08-08 07:58:39.417116'),
(22, 'gym', '0004_auto_20220809_2253', '2022-08-09 17:23:59.756919');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('lixjso5emw426vtzar23x4trv7knrw0o', '.eJxVjEsOwjAMBe-SNYriujgJS_acobITQwookfpZIe4OlbqA7ZuZ9zIDr0sZ1lmnYczmZMAcfjfh9NC6gXznems2tbpMo9hNsTud7aVlfZ539--g8Fy-tSoTsgL0RxLpKIRrDM478til6DoGoZhcj-pCj5BzCOSQBNBHjJDM-wPFFTaB:1oLSx3:Cf0dIDQSGqY-PrEQppEMzYh9loMd_KTVE07EBjxlCuc', '2022-08-23 17:23:33.429710'),
('pw3tcg3sf07fufcvprdgwsxhxkv4opbn', '.eJxVjEsOwjAMBe-SNYriujgJS_acobITQwookfpZIe4OlbqA7ZuZ9zIDr0sZ1lmnYczmZMAcfjfh9NC6gXznems2tbpMo9hNsTud7aVlfZ539--g8Fy-tSoTsgL0RxLpKIRrDM478til6DoGoZhcj-pCj5BzCOSQBNBHjJDM-wPFFTaB:1oL3Se:Jm5jbPqFMjullGsmyNUyvA78EvhCPLX6p17OKKhBBUE', '2022-08-22 14:10:28.427272'),
('ry20jxmhqp244ta4064ijokyuvibfl8o', '.eJxVjEsOwjAMBe-SNYriujgJS_acobITQwookfpZIe4OlbqA7ZuZ9zIDr0sZ1lmnYczmZMAcfjfh9NC6gXznems2tbpMo9hNsTud7aVlfZ539--g8Fy-tSoTsgL0RxLpKIRrDM478til6DoGoZhcj-pCj5BzCOSQBNBHjJDM-wPFFTaB:1oKxZF:Sh5HR1CIM5L7mdqshvDe-0QFRHBO6vMelKITm7cBPIM', '2022-08-22 07:52:53.863965'),
('v24x6fsc4sqxj3wanvebm3508ysluz3d', '.eJxVjEsOwjAMBe-SNYriujgJS_acobITQwookfpZIe4OlbqA7ZuZ9zIDr0sZ1lmnYczmZMAcfjfh9NC6gXznems2tbpMo9hNsTud7aVlfZ539--g8Fy-tSoTsgL0RxLpKIRrDM478til6DoGoZhcj-pCj5BzCOSQBNBHjJDM-wPFFTaB:1oQkJn:raIMQEwtzyZmabkLPMCCWVXt1whl_5x7qyWsJtkjem8', '2022-09-07 06:56:51.809016');

-- --------------------------------------------------------

--
-- Table structure for table `gym_bill`
--

CREATE TABLE IF NOT EXISTS `gym_bill` (
`id` int(11) NOT NULL,
  `Due_date` date NOT NULL,
  `Customer_id` varchar(50) COLLATE utf8_bin NOT NULL,
  `Mobileno` varchar(10) COLLATE utf8_bin NOT NULL,
  `From_date` date NOT NULL,
  `To_date` date NOT NULL,
  `Package_Type` varchar(50) COLLATE utf8_bin NOT NULL,
  `Amount` varchar(50) COLLATE utf8_bin NOT NULL,
  `Payed` varchar(50) COLLATE utf8_bin NOT NULL,
  `Batch` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gym_bill`
--

INSERT INTO `gym_bill` (`id`, `Due_date`, `Customer_id`, `Mobileno`, `From_date`, `To_date`, `Package_Type`, `Amount`, `Payed`, `Batch`, `status`) VALUES
(1, '2022-10-20', 'user@gmail.com', '9676867868', '2022-07-01', '2022-10-31', 'Three Month', '5000', '2000', 'Morning', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `gym_diet`
--

CREATE TABLE IF NOT EXISTS `gym_diet` (
`id` int(11) NOT NULL,
  `Diet` varchar(50) COLLATE utf8_bin NOT NULL,
  `Solution1` varchar(100) COLLATE utf8_bin NOT NULL,
  `Solution2` varchar(100) COLLATE utf8_bin NOT NULL,
  `Process` varchar(500) COLLATE utf8_bin NOT NULL,
  `Description` varchar(100) COLLATE utf8_bin NOT NULL,
  `Other_Notes` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gym_diet`
--

INSERT INTO `gym_diet` (`id`, `Diet`, `Solution1`, `Solution2`, `Process`, `Description`, `Other_Notes`) VALUES
(1, 'Weight Losses', 'Apple Cider Vinegar', 'Garlic', 'Add one-half cup of vinegar to lukewarm bath water. Soak in this water for five to 10 minutes.', 'Do not use very cold water as it may cause the internal body temperature to increase.', 'Nil');

-- --------------------------------------------------------

--
-- Table structure for table `gym_member`
--

CREATE TABLE IF NOT EXISTS `gym_member` (
`id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Email` varchar(30) COLLATE utf8_bin NOT NULL,
  `Password` varchar(20) COLLATE utf8_bin NOT NULL,
  `Mobile` varchar(10) COLLATE utf8_bin NOT NULL,
  `Weight` varchar(20) COLLATE utf8_bin NOT NULL,
  `Height` varchar(20) COLLATE utf8_bin NOT NULL,
  `Age` varchar(20) COLLATE utf8_bin NOT NULL,
  `Address` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gym_member`
--

INSERT INTO `gym_member` (`id`, `Name`, `Email`, `Password`, `Mobile`, `Weight`, `Height`, `Age`, `Address`) VALUES
(1, 'ram', 'user@gmail.com', 'test', '9565465465', '65kg', '178cm', '34', '11,mount road, chennai');

-- --------------------------------------------------------

--
-- Table structure for table `gym_schedule`
--

CREATE TABLE IF NOT EXISTS `gym_schedule` (
`id` int(11) NOT NULL,
  `Dayno` varchar(50) COLLATE utf8_bin NOT NULL,
  `Schedule_for` varchar(100) COLLATE utf8_bin NOT NULL,
  `Trainee_level` varchar(100) COLLATE utf8_bin NOT NULL,
  `Process` varchar(500) COLLATE utf8_bin NOT NULL,
  `Description` varchar(100) COLLATE utf8_bin NOT NULL,
  `Other_Notes` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gym_schedule`
--

INSERT INTO `gym_schedule` (`id`, `Dayno`, `Schedule_for`, `Trainee_level`, `Process`, `Description`, `Other_Notes`) VALUES
(1, '1', 'Legs', 'Beginner', 'Steps', 'Details', 'Nil');

-- --------------------------------------------------------

--
-- Table structure for table `gym_store`
--

CREATE TABLE IF NOT EXISTS `gym_store` (
`id` int(11) NOT NULL,
  `Product_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Product_pic` varchar(100) COLLATE utf8_bin NOT NULL,
  `Price` varchar(20) COLLATE utf8_bin NOT NULL,
  `Product_description` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gym_store`
--

INSERT INTO `gym_store` (`id`, `Product_name`, `Product_pic`, `Price`, `Product_description`) VALUES
(1, 'Extra Mass Gainer', 'gym-protein-powder-500x500.jpg', '2600', 'Owing to our expertise, we are offering clinically approved gamut of Mass Gainer in a range of packaging options that is generally demanded in the market. Processed under the alertness of our professionals, obtainable powder is in harmony with the industry values. To make sure that offered powder is free from side effects, is sternly tested on precise parameters.   Features:  Highly effective Easy storage Precise composition'),
(2, 'Serious Mass Protein', 'on-optimum-mass-gainer-500x500.jpg', '3200', 'With our establishment in the year 2014, “Shri Ganesh Nutrition” has emerged as the prominent and renowned Wholesale Trader of an exquisite range of Gainer Powder, Protein Powder, Pre-Workout Tablets, Sea Fish Oil, etc. These products have been sourced from certified and trusted market vendors. Our team works in proper coordination with our clients to understand their needs and requirements efficiently. With the help of our team, we provide our clients with quality products'),
(3, 'Raw Whey Protein', 'Rawprotein_Unflavoured._CB1198675309_.jpg', '3099', 'Gold Standard 100% Whey Blend – 24g blended protein consisting of whey protein isolate, whey protein concentrate, and whey peptides/hydrolysates to support lean muscle mass. Primary protein source is Isolate, they don''t call it the Gold Standard of quality for nothing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `gym_bill`
--
ALTER TABLE `gym_bill`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_diet`
--
ALTER TABLE `gym_diet`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_member`
--
ALTER TABLE `gym_member`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_schedule`
--
ALTER TABLE `gym_schedule`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_store`
--
ALTER TABLE `gym_store`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `gym_bill`
--
ALTER TABLE `gym_bill`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gym_diet`
--
ALTER TABLE `gym_diet`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gym_member`
--
ALTER TABLE `gym_member`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gym_schedule`
--
ALTER TABLE `gym_schedule`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gym_store`
--
ALTER TABLE `gym_store`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
