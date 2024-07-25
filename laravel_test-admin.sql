-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 25, 2024 at 03:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_test-admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_07_25_031007_add_username_photo_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 10, 'authToken', 'e53e750dc49727fa146e7597a5ba7f0cdd6aeae87657a96027bc5635afe593d0', '[\"*\"]', '2024-07-25 05:49:37', NULL, '2024-07-25 05:48:38', '2024-07-25 05:49:37'),
(2, 'App\\Models\\User', 13, 'authToken', 'ca0d20d3b0dcd8bd271cbbd8ab6711fc2d578c0f798cb531171ab0c2ee385534', '[\"*\"]', '2024-07-25 06:19:10', NULL, '2024-07-25 06:18:56', '2024-07-25 06:19:10'),
(3, 'App\\Models\\User', 14, 'authToken', 'e6c6ed41f86f966fe832a18f00c749ef610423f6ca79310febc5bd65aff46c3f', '[\"*\"]', '2024-07-25 06:20:27', NULL, '2024-07-25 06:20:11', '2024-07-25 06:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `photo`) VALUES
(1, 'russell.beatty', 'Greta Buckridge', 'spinka.laurianne@example.org', '2024-07-25 01:27:59', '$2y$12$RqwVBGxSB6b5Q9U0sg7SM.h1R3qUg5UXy/665QCfqbnahNyGEwE.C', NULL, NULL, NULL, 'Js8eQogpXfhQhRzg8cYzY2ONDQEA7JzRC3TVeUNsAfLAbCIdnQcj5gfpLKfq', '2024-07-25 01:27:59', '2024-07-25 01:27:59', NULL),
(2, 'pthompson', 'Vincenza Veum', 'mkerluke@example.net', '2024-07-25 01:27:59', '$2y$12$RqwVBGxSB6b5Q9U0sg7SM.h1R3qUg5UXy/665QCfqbnahNyGEwE.C', NULL, NULL, NULL, '8auS0EDbE7', '2024-07-25 01:27:59', '2024-07-25 01:27:59', NULL),
(3, 'crona.skyla', 'Corrine Terry', 'madie77@example.org', '2024-07-25 01:27:59', '$2y$12$RqwVBGxSB6b5Q9U0sg7SM.h1R3qUg5UXy/665QCfqbnahNyGEwE.C', NULL, NULL, NULL, 'm8F48ylJMn', '2024-07-25 01:27:59', '2024-07-25 01:27:59', NULL),
(4, 'harley44', 'Ms. Ova Hyatt DDS', 'jude.von@example.org', '2024-07-25 01:27:59', '$2y$12$RqwVBGxSB6b5Q9U0sg7SM.h1R3qUg5UXy/665QCfqbnahNyGEwE.C', NULL, NULL, NULL, '71n8ugegdk', '2024-07-25 01:27:59', '2024-07-25 01:27:59', NULL),
(5, 'vito16', 'Gordon Grady', 'mazie.ernser@example.net', '2024-07-25 01:27:59', '$2y$12$RqwVBGxSB6b5Q9U0sg7SM.h1R3qUg5UXy/665QCfqbnahNyGEwE.C', NULL, NULL, NULL, 'qaLXRovl5f', '2024-07-25 01:27:59', '2024-07-25 01:27:59', NULL),
(6, 'carmen70', 'Miss Wanda D\'Amore', 'mitchell.lloyd@example.com', '2024-07-25 01:27:59', '$2y$12$RqwVBGxSB6b5Q9U0sg7SM.h1R3qUg5UXy/665QCfqbnahNyGEwE.C', NULL, NULL, NULL, 'dWzWUYYkgJ', '2024-07-25 01:27:59', '2024-07-25 01:27:59', NULL),
(7, 'jakayla.conroy', 'Dr. Matilda Kunde', 'rath.roberto@example.org', '2024-07-25 01:27:59', '$2y$12$RqwVBGxSB6b5Q9U0sg7SM.h1R3qUg5UXy/665QCfqbnahNyGEwE.C', NULL, NULL, NULL, 'oHLkVs1iaH', '2024-07-25 01:27:59', '2024-07-25 01:27:59', NULL),
(8, 'bosco.jana', 'Prof. Norwood Stroman', 'moore.myra@example.net', '2024-07-25 01:27:59', '$2y$12$RqwVBGxSB6b5Q9U0sg7SM.h1R3qUg5UXy/665QCfqbnahNyGEwE.C', NULL, NULL, NULL, '5rKzWKEj8o', '2024-07-25 01:27:59', '2024-07-25 01:27:59', NULL),
(9, 'laisha.gibson', 'Ms. Della Stark', 'mavis.mccullough@example.org', '2024-07-25 01:27:59', '$2y$12$RqwVBGxSB6b5Q9U0sg7SM.h1R3qUg5UXy/665QCfqbnahNyGEwE.C', NULL, NULL, NULL, 'z9rLznxsJq', '2024-07-25 01:27:59', '2024-07-25 01:27:59', NULL),
(10, 'kimberly52', 'Mrs. Thora Schowalter', 'kling.modesta@example.com', '2024-07-25 01:27:59', '$2y$12$RqwVBGxSB6b5Q9U0sg7SM.h1R3qUg5UXy/665QCfqbnahNyGEwE.C', NULL, NULL, NULL, 'Oliar0wb1070QcrBEjg1Ev6PfqltDbhd7byqJxH5CnfK5ob03cAHni1N4tov', '2024-07-25 01:27:59', '2024-07-25 01:27:59', NULL),
(11, 'annurrs_', 'Annur Riyadhus Solikhin', 'annurriyadhus17@gmail.com', NULL, '$2y$12$o2/5nj9tHGZiP0IzOSSVY.0FvWIDvxQaaWVZ.fQ7/G5hdoC7Fpngy', NULL, NULL, NULL, NULL, '2024-07-25 01:28:17', '2024-07-25 04:00:01', '1721905201.jpg'),
(12, 'aku', 'Annur Riyadhus Solikhin', 'annurrs21@gmail.com', NULL, '$2y$12$gHf.AqfI88d6oaN1JwM27u0y2DQU733ubrti.bb8OKyfYSTS7W1bK', NULL, NULL, NULL, NULL, '2024-07-25 05:40:14', '2024-07-25 05:40:14', NULL),
(13, 'annurrs21', 'Annur Riyadhus', 'annurriyadhus88@gmail.com', NULL, '$2y$12$95mNOa/R64vqiDm85IfM3O/XflGMcC7FGFxJlVYbua.N8X9Puioie', NULL, NULL, NULL, NULL, '2024-07-25 06:18:56', '2024-07-25 06:18:56', NULL),
(14, 'annurrs27', 'Annur Riyadhus', 'annurriyadhus8338@gmail.com', NULL, '$2y$12$H/uq7JG4cA7TT749vGgal.NVzUW.U8jk6QGTkvh2e.6a03MlDU0iG', NULL, NULL, NULL, NULL, '2024-07-25 06:20:11', '2024-07-25 06:20:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
