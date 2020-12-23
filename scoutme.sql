-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2020 at 04:18 AM
-- Server version: 5.7.23-23
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
-- Database: `orionq8b_scoutme`
--

-- --------------------------------------------------------

--
-- Table structure for table `club_follow`
--

CREATE TABLE `club_follow` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `club_id` bigint(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club_follow`
--

INSERT INTO `club_follow` (`id`, `user_id`, `club_id`, `status`) VALUES
(1, 19, 3, 0),
(2, 18, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `description` text,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_comment`
--

CREATE TABLE `event_comment` (
  `id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `comment` text,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_like`
--

CREATE TABLE `event_like` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `event_like` int(1) NOT NULL DEFAULT '0',
  `event_unlike` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `weght` varchar(255) DEFAULT NULL,
  `current_club` varchar(255) DEFAULT NULL,
  `national_team` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `prefered_food` varchar(255) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `transfer_rrumours` varchar(255) DEFAULT NULL,
  `league` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `strongfoot` varchar(255) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `monthlysalary` varchar(255) DEFAULT NULL,
  `contractstatus` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `user_id`, `name`, `lastname`, `category`, `gender`, `city`, `country`, `dob`, `height`, `weght`, `current_club`, `national_team`, `position`, `prefered_food`, `agent`, `type`, `transfer_rrumours`, `league`, `nationality`, `strongfoot`, `languages`, `monthlysalary`, `contractstatus`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 'Lakhan', 'Singh Rajput', '14', 'male', 'New York', 'India', '1991-04-24', '6', NULL, 'Orion', 'Php', 'Developer', 'Apple', 'test', 'Goalkeepers', 'test', '456sdaf', 'sdf', 'asdas as', 'asdas dfas', NULL, NULL, '718_playerjpg', 1, '2020-08-04 18:22:00', '2020-08-06 11:03:00'),
(3, 3, 'Lakhan singh Tanwar', NULL, '15', NULL, NULL, 'India', '1991-12-10', '6\"', NULL, 'Orion', 'India', 'B.a', 'Apple', 'test', 'Goalkeepers', NULL, NULL, '0', NULL, NULL, NULL, NULL, '544561nwdTgPZ_400x400.jpg', 1, '2020-08-05 10:25:00', '2020-08-05 10:25:00'),
(4, 3, 'Ram', NULL, '17', NULL, NULL, 'India', '2020-08-04', '6\"', NULL, 'Orion', 'India', 'Andriod', 'apple', 'test', 'Defenders', NULL, NULL, '0', NULL, NULL, NULL, NULL, '562391nwdTgPZ_400x400.jpg', 1, '2020-08-05 11:08:00', '2020-08-05 11:08:00'),
(5, 3, 'mohit', NULL, '', NULL, NULL, 'India', '1991-04-24', '6', NULL, 'Orion', 'Php', 'Developer', 'Apple', 'test', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2020-08-06 10:48:00', '2020-08-06 10:48:00'),
(6, 19, 'kpsa', 'shekhawat', NULL, 'male', 'Jaipur', 'India', '1994-08-06', '6', '65', 'Orion', '', 'Php Developer', '', '', NULL, '', 'test', 'test1', 'test2', 'en', '40k', '', '67848_playerjpg', 1, '2020-08-07 00:00:00', '2020-08-07 12:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `player_follow`
--

CREATE TABLE `player_follow` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `player_id` bigint(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_follow`
--

INSERT INTO `player_follow` (`id`, `user_id`, `player_id`, `status`) VALUES
(1, 19, 5, 0),
(2, 19, 3, 1),
(3, 18, 5, 1),
(4, 18, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `player_skill`
--

CREATE TABLE `player_skill` (
  `id` bigint(20) NOT NULL,
  `player_id` bigint(20) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `conversion` varchar(255) DEFAULT NULL,
  `average` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_skill`
--

INSERT INTO `player_skill` (`id`, `player_id`, `slug`, `total`, `conversion`, `average`) VALUES
(1, 2, 'Pass', '50', NULL, '5'),
(2, 2, 'Pass Completion', NULL, '50', NULL),
(3, 2, 'Total goal conceded', '20', '1', '50'),
(4, 2, 'Total save completion', '50', '2', '10'),
(5, 2, 'Clearance completion', '66', NULL, NULL),
(6, 6, 'Pass', '10', NULL, NULL),
(7, 6, 'Pass Completion', NULL, '20', NULL),
(8, 6, 'Key Pass', NULL, NULL, '30'),
(9, 6, 'Assists', NULL, '40', NULL),
(10, 6, 'Clearance', '50', NULL, NULL),
(11, 6, 'Clearance completion', NULL, '60', NULL),
(12, 6, 'Key Clearance', NULL, NULL, '70'),
(13, 6, 'Interception', NULL, '80', NULL),
(14, 6, 'Interception completion', '90', NULL, NULL),
(15, 6, 'Key Intercept', NULL, '100', NULL),
(16, 6, 'Dribbling', NULL, NULL, '110'),
(17, 6, 'Successful dribbling', NULL, '120', NULL),
(18, 6, 'Key Dribbling', '130', NULL, NULL),
(19, 6, 'Shots', NULL, '140', NULL),
(20, 6, 'Shots on target', NULL, NULL, '150'),
(21, 6, 'Tackles', NULL, '160', NULL),
(22, 6, 'Tackles completion', '170', NULL, NULL),
(23, 6, 'Key tackle', NULL, '180', NULL),
(24, 6, 'Aerial dual', NULL, NULL, '190'),
(25, 6, 'Aerial dual completion', '200', NULL, NULL),
(26, 6, 'Key aerial dual', NULL, '210', NULL),
(27, 6, 'Ball recovery', NULL, NULL, '220'),
(28, 6, 'Successful ball recovery', NULL, '230', NULL),
(29, 6, 'Key ball recovery', '240', NULL, NULL),
(30, 6, 'Committed foul', NULL, '250', NULL),
(31, 6, 'Key committed foul', NULL, NULL, '260'),
(32, 6, 'Yellow card', NULL, '270', NULL),
(33, 6, 'Red card', '280', NULL, NULL),
(34, 6, 'Sent off', NULL, '290', NULL),
(35, 6, 'Attempt to save (penalty)', NULL, NULL, '300'),
(36, 6, 'Save completion (penalty)', NULL, '310', NULL),
(37, 6, 'Goal conceded (penalty)', '320', NULL, NULL),
(38, 6, 'Attempt to save (shot stoppers)', NULL, '330', NULL),
(39, 6, 'Save completion (shot stoppers)', NULL, NULL, '340'),
(40, 6, 'Goal conceded (shot stoppers)', NULL, '350', NULL),
(41, 6, 'Total attempt to save', '360', NULL, NULL),
(42, 6, 'Total save completion', NULL, '370', NULL),
(43, 6, 'Total goal conceded', NULL, NULL, '380');

-- --------------------------------------------------------

--
-- Table structure for table `player_stats`
--

CREATE TABLE `player_stats` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `player_id` bigint(20) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_stats`
--

INSERT INTO `player_stats` (`id`, `user_id`, `player_id`, `category`, `created_at`) VALUES
(2, 3, 2, '14', '2020-08-05 17:27:00'),
(3, 3, 3, '15', '2020-08-05 17:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `temp_id` int(11) NOT NULL,
  `temp_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `temp_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `temp_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `temp_text` text COLLATE utf8_unicode_ci NOT NULL,
  `temp_updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`temp_id`, `temp_key`, `temp_title`, `temp_subject`, `temp_text`, `temp_updated_on`) VALUES
(2, 'register_user', 'Registration Email', 'Confirmation Email', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Greetings, {user_name}</strong></p>\r\n\r\n			<p>You have registered the {user_type} in ScoutMe, please click {link}</p>\r\n\r\n			<p>Thank you</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2019-11-18 00:00:00'),
(5, 'forgot_password', 'Forgot password', 'Reset password Email', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Greetings, {user_name}</strong></p>\r\n\r\n			<p>You have request a password reset, please click {link}</p>\r\n			\r\n			<p>If you are not the one who requested a password reset, please disregard this email</p>\r\n\r\n			<p>Thank you</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2019-11-18 00:00:00'),
(12, 'update_profile', 'User profile update', 'Your profile has been successfully updated', '<table cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Dear {user_name}</strong></p>\r\n\r\n			<p>Welcome to {site_title}<br />\r\n			Your profile has been successfully updated</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2019-11-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `token` text,
  `role` int(1) NOT NULL DEFAULT '2' COMMENT '1-Admin,2-club,3-scout,4-player',
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `username`, `email`, `password`, `phone`, `image`, `address`, `city`, `state`, `country`, `company`, `registration_number`, `token`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, 'kp@twiito.com', '$2y$10$jqMKJuwI/dEooZkID00lLOQpAkjK5bCvHTpG.3gvRiimUoHJT1RYW', NULL, 'img1.jpg', 'erftwe', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-10-09 00:00:00', '2019-10-09 00:00:00'),
(3, 'Lakhan Singh Tanwar', 'Rajput', NULL, 'ba@orioninfosolutions.com', '$2y$10$oqCx8O.IHbJMsIXPP309su4Aswq48.stfj3Rf6U0DIc1torZ0vPsO', '9887028024', NULL, 'Vaishali Nagar', 'Jaipur', 'Rajasthan', '113', NULL, NULL, NULL, 2, 1, '2019-10-21 10:31:48', '2019-10-21 00:00:00'),
(18, 'Scoutkp', 'shekhawat', NULL, 'kp@orioninfosolutions.com', '$2y$10$wWOue.Ytj0mf64tb0WORZObsyGsYEP9I5jYghpQ2F3T.b0HrLp.9i', '879546875', NULL, NULL, NULL, NULL, '113', NULL, '8795468795', NULL, 3, 1, '2020-07-28 10:52:00', '2020-08-10 10:30:00'),
(19, 'Kp', 'shekhawat', NULL, 'kp@player.com', '$2y$10$wWOue.Ytj0mf64tb0WORZObsyGsYEP9I5jYghpQ2F3T.b0HrLp.9i', '9685859685', NULL, NULL, NULL, NULL, '224', '', '', NULL, 4, 1, '2020-08-07 09:59:00', '2020-08-07 09:59:00'),
(20, 'Armstrong', 'Bekombo ', NULL, 'bekomboarmstrong@yahoo.fr', '$2y$10$cAjR.LxPsCdbdVLNmX0CiOqgY2lGPREFCgKPGxc.J00OcO3emNYMa', '0858389562', NULL, NULL, NULL, NULL, '224', '', '', NULL, 4, 0, '2020-08-12 19:02:00', '2020-08-12 19:02:00'),
(21, 'Armstrong ', 'Bekombo', NULL, 'bekomboarmstrong@hotmail.com', '$2y$10$vgkOwkIKWDcduiXeVh.CMe.mO4ttJ9e16uOwCaziJ.QJAatbFZAsy', '0858389562', NULL, NULL, NULL, NULL, '224', '', '0123456', NULL, 3, 0, '2020-08-13 05:06:00', '2020-08-13 05:06:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club_follow`
--
ALTER TABLE `club_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_comment`
--
ALTER TABLE `event_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_like`
--
ALTER TABLE `event_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_follow`
--
ALTER TABLE `player_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_skill`
--
ALTER TABLE `player_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`temp_id`),
  ADD UNIQUE KEY `temp_key` (`temp_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `club_follow`
--
ALTER TABLE `club_follow`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_comment`
--
ALTER TABLE `event_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_like`
--
ALTER TABLE `event_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `player_follow`
--
ALTER TABLE `player_follow`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `player_skill`
--
ALTER TABLE `player_skill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `player_stats`
--
ALTER TABLE `player_stats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `temp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
