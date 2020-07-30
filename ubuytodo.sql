-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 30, 2020 at 05:46 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubuytodo`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2020_07_30_114315_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'scrum Master', '2020-07-30 06:04:00', '2020-07-30 09:24:07'),
(2, 1, 'similique', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(3, 1, 'et', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(4, 1, 'Ubuy Master', '2020-07-30 06:04:00', '2020-07-30 09:24:51'),
(5, 1, 'quidem', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(6, 2, 'nulla', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(7, 2, 'sint', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(8, 2, 'quo', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(9, 2, 'in', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(10, 2, 'eum', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(11, 3, 'dolorem', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(12, 3, 'eum', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(13, 3, 'voluptas', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(14, 3, 'quibusdam', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(15, 3, 'qui', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(16, 4, 'possimus', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(17, 4, 'consequatur', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(18, 4, 'libero', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(19, 4, 'et', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(20, 4, 'voluptas', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(21, 5, 'dignissimos', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(22, 5, 'dolorem', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(23, 5, 'velit', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(24, 5, 'asperiores', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(25, 5, 'nihil', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(26, 6, 'nulla', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(27, 6, 'dolor', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(28, 6, 'quisquam', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(29, 6, 'tempore', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(30, 6, 'possimus', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(31, 7, 'corrupti', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(32, 7, 'cumque', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(33, 7, 'minus', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(34, 7, 'et', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(35, 7, 'qui', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(36, 8, 'ea', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(37, 8, 'quidem', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(38, 8, 'in', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(39, 8, 'velit', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(40, 8, 'consequatur', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(41, 9, 'rerum', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(42, 9, 'non', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(43, 9, 'sit', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(44, 9, 'sed', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(46, 10, 'et', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(47, 10, 'tenetur', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(48, 10, 'dolorum', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(49, 10, 'cupiditate', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(50, 10, 'voluptatem', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(51, 9, 'God save me', '2020-07-30 09:32:18', '2020-07-30 09:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jerrell Franecki I', 'volkman.claudia@example.net', '2020-07-30 06:03:59', '$2y$10$3B.NQ.AprWvGofr/AOZLF.B6s7A9QJP96zoRE2YDmWW/80jKJrejS', 'HTBxn5RuFp1G97vQwOJCyno1TUqvTfwd946ip32Ir0IoehPe9z0nqK0lCdvE', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(2, 'Kayden Huel', 'verla28@example.net', '2020-07-30 06:03:59', '$2y$10$vrURDclleJWAigyn036kHe3qN7o45wNdPT5IwwkA2YaIiLrRfv186', 'yD66q5yiCu', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(3, 'Prof. Anais Muller', 'vance06@example.com', '2020-07-30 06:04:00', '$2y$10$8K.cVGACaiAdSH1S0yNiEON7qXQD2wayqCiaPmZlSVoAvd4R17FyG', 'uK5nXBnMHs', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(4, 'Leonor Armstrong', 'terry.marisa@example.org', '2020-07-30 06:04:00', '$2y$10$KCjZJlpc0cBmOfXyP6FdLeoaaWPnd6mJgRNN8eCiWT7DkTdFfnpqC', 'ftkFBe6k0gm0zTuhstjAZBtG4sJCTI7Ssw5GywaQeUdNvzcDOibWNkk5TraB', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(5, 'Mr. Jerrold Ebert', 'margaret.doyle@example.net', '2020-07-30 06:04:00', '$2y$10$fGj5.pzNVv2X7GMpW9X6LeXmsRxcDZ8jHpbt3.TfnteMBWSQ3ytuO', '8GRb00YxT1vA78bq7o5sVhiblJjwAQsOwCb2ERJYwVe2P0x7P6WG1OBQ95na', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(6, 'Prof. Bernhard Hartmann', 'kohler.dion@example.net', '2020-07-30 06:04:00', '$2y$10$xxDMj.OMdwtoAJlSppzhRe2xVEltSAuAZ6kmrgDmjdrAGbdYiPtwS', 'aMuCqK39Uj', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(7, 'Tiffany Collier', 'kautzer.kiel@example.net', '2020-07-30 06:04:00', '$2y$10$rLmj8.2F1g2tynUsJ70muuwiypVOG6VLVF8fQn00rhAYUXwZmx4lu', 'oy1HaLvXKc', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(8, 'Kameron Stiedemann', 'jmorar@example.com', '2020-07-30 06:04:00', '$2y$10$WekZ36Vq1eQeZ10nifmJL.qBbxbEYDtEMtEyomWH.DA/SOKPMgmP2', 'hLHgvngBLf6LIRumycRz9hKQ7q2WLA9HUz0X784Eg0PS7m4GnB5ooRfAe6fJ', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(9, 'Enola Kuhn IV', 'jeramie19@example.net', '2020-07-30 06:04:00', '$2y$10$lGeBEgVbecvaKH98IiSpMux3Q3g/DtPVOotAV42hxFt7UgqRzhVcK', 'CtMGOvtW8ixqwaseWgzjy2jLrq5DJFnzgRP2UQjG5lWiRjjslAeOUQj1EIf2', '2020-07-30 06:04:00', '2020-07-30 06:04:00'),
(10, 'Mr. Elwin Terry', 'nova43@example.net', '2020-07-30 06:04:00', '$2y$10$9FMH.02m2.t9DuB45bx2Wu9UXm28ZtZ1b6LLurYlbJIm8Ww0fspge', 'NEsxpKdnlS', '2020-07-30 06:04:00', '2020-07-30 06:04:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
