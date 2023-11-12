-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 06:08 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uc_showroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `id_card` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `nama`, `alamat`, `no_telepon`, `id_card`, `created_at`, `updated_at`) VALUES
(1, 'Brandi Larkin', '6483 Shanny Groves\nNorth Madalinebury, RI 70995-5447', '+1-586-693-0366', 'c7fd392e-9bb6-316f-a6f7-cdfc1236d3f4', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(2, 'Christophe Vandervort', '582 Elaina Freeway Suite 635\nEast Bailey, KY 12069', '+1.872.241.0619', 'a352340f-4998-30a8-bb06-1b45a746a8e8', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(3, 'Skye Huels Jr.', '1107 Murray Point\nEveburgh, KS 81302', '+1.239.647.9648', '7bf4e755-829b-3f6b-9d84-35b3bfb024ca', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(4, 'Ms. Alta Hettinger DDS', '75585 Borer Drive\nJeanton, MS 48460', '(786) 644-8610', '88950606-e1bc-3147-8895-2a3055557466', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(5, 'Saige Doyle', '6393 Janet Locks Apt. 824\nSouth Lucie, MT 86736-8593', '283.439.9884', '752ef480-539d-39d2-a775-dec01d471ec7', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(6, 'Ms. Rhianna Schroeder IV', '76767 Deckow Springs\nEast Lottiefurt, SC 13246-8738', '+1.283.597.9702', '817b6190-234a-330d-9c32-d1ed77beccfa', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(7, 'Delphia Mayert Jr.', '8054 Celestino Gardens Apt. 110\nNorth Dennis, KS 82257', '+1 (757) 698-0419', '13ac2fb1-456c-3b8c-abd4-f0e8f34ed8d7', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(8, 'Dr. Marquis Lesch MD', '82203 Osbaldo Underpass Suite 960\nJosephview, KY 94119', '(458) 957-5981', '001e3c4b-3702-3c90-9414-d5964373ed23', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(9, 'Margarette Abshire', '120 Judson Prairie Suite 723\nJulietmouth, UT 27984', '364-605-5622', 'b695d215-4e5c-3821-86ee-77f605b10249', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(10, 'Karl Dare', '90352 Cara Walks\nKeelingberg, OR 47146-3463', '424.519.2472', 'c50645d9-a190-3d3d-9220-808e523f0bf8', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(11, 'test', 'yoi', '123', '1234', '2023-11-11 18:16:51', '2023-11-11 18:16:51'),
(12, 'test', 'yoi', '123', '1234', '2023-11-11 18:16:51', '2023-11-11 18:16:51'),
(13, 'New', 'jl. akibalak', '123456', '777777', '2023-11-11 21:39:12', '2023-11-11 21:39:12'),
(14, 'New', 'jl. akibalak', '123456', '777777', '2023-11-11 21:39:13', '2023-11-11 21:39:13'),
(15, 'uhugug', 'hgjh', '123456234', 'jjjjj', '2023-11-11 22:01:49', '2023-11-11 22:01:49'),
(16, 'uhugug', 'hgjh', '123456234', 'jjjjj', '2023-11-11 22:01:49', '2023-11-11 22:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `customer_kendaraans`
--

CREATE TABLE `customer_kendaraans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `kendaraan_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_kendaraans`
--

INSERT INTO `customer_kendaraans` (`id`, `customer_id`, `kendaraan_id`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 2, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(2, 4, 8, 2, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(3, 1, 9, 3, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(4, 3, 1, 3, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(5, 4, 9, 3, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(6, 11, 6, 1, '2023-11-11 18:16:51', '2023-11-11 18:16:51'),
(7, 13, 7, 5, '2023-11-11 21:39:13', '2023-11-11 21:39:13'),
(8, 15, 6, 5, '2023-11-11 22:01:49', '2023-11-11 22:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `customer_kendaraan_orders`
--

CREATE TABLE `customer_kendaraan_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_kendaraan_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_kendaraan_orders`
--

INSERT INTO `customer_kendaraan_orders` (`id`, `customer_kendaraan_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 2, 4, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(2, 2, 1, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(3, 1, 4, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(4, 5, 3, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(5, 4, 4, '2023-11-11 18:10:57', '2023-11-11 18:10:57');

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
-- Table structure for table `kendaraans`
--

CREATE TABLE `kendaraans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(255) NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah_penumpang` int(11) NOT NULL,
  `manufaktur` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `tipe_bahan_bakar` varchar(255) DEFAULT NULL,
  `luas_bagasi` int(11) DEFAULT NULL,
  `jumlah_roda_ban` int(11) DEFAULT NULL,
  `luas_area_kargo` int(11) DEFAULT NULL,
  `ukuran_bagasi` int(11) DEFAULT NULL,
  `kapasitas_bensin` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kendaraans`
--

INSERT INTO `kendaraans` (`id`, `type_id`, `model`, `tahun`, `jumlah_penumpang`, `manufaktur`, `harga`, `tipe_bahan_bakar`, `luas_bagasi`, `jumlah_roda_ban`, `luas_area_kargo`, `ukuran_bagasi`, `kapasitas_bensin`, `created_at`, `updated_at`) VALUES
(1, 3, 'dolorem', 1995, 1, 'Weissnat, Mosciski and Russel', 28841.05, 'Bensin', 41, 16, 66, 49, 14, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(2, 2, 'perspiciatis', 1981, 7, 'Carroll, Jenkins and Koch', 19947.29, 'Bensin', 37, 16, 76, 33, 12, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(3, 2, 'quasi', 1992, 7, 'Pagac-Mueller', 27340.75, 'Solar', 18, 18, 60, 43, 15, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(4, 1, 'dolor', 2010, 7, 'Kshlerin-Jenkins', 42932.51, 'Solar', 17, 15, 127, 69, 8, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(5, 3, 'placeat', 1997, 7, 'Homenick, Buckridge and Feil', 57725.91, 'Bensin', 8, 13, 139, 74, 13, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(6, 1, 'sunt', 2001, 7, 'Renner-Schmidt', 71811.02, 'Bensin', 44, 11, 106, 30, 20, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(7, 1, 'cupiditate', 1972, 2, 'Ratke and Sons', 88137.21, 'Bensin', 41, 11, 92, 71, 6, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(8, 1, 'magnam', 1970, 4, 'Champlin-Little', 45869.33, 'Solar', 11, 15, 194, 80, 11, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(9, 3, 'exercitationem', 2013, 5, 'Wintheiser, Friesen and Gutmann', 90910.64, 'Solar', 41, 14, 174, 59, 8, '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(10, 2, 'nulla', 2014, 8, 'Wiza-Kunde', 31971.43, 'Bensin', 25, 10, 73, 49, 12, '2023-11-11 18:10:57', '2023-11-11 18:10:57');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_11_013129_create_customers_table', 1),
(6, '2023_11_11_035842_create_types_table', 1),
(7, '2023_11_11_035843_create_kendaraans_table', 1),
(8, '2023_11_11_042116_create_customer_kendaraans_table', 1),
(9, '2023_11_11_053656_create_orders_table', 1),
(10, '2023_11_12_004154_create_customer_kendaraan_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `total_biaya` decimal(10,2) DEFAULT NULL,
  `status` enum('Lunas','Belum lunas') NOT NULL DEFAULT 'Belum lunas',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_biaya`, `status`, `created_at`, `updated_at`) VALUES
(3, 4, 450335.60, 'Belum lunas', '2023-11-11 18:16:51', '2023-11-11 18:16:51'),
(4, 11, 71811.02, 'Belum lunas', '2023-11-11 18:16:51', '2023-11-11 18:16:51'),
(5, 1, 272731.92, 'Belum lunas', '2023-11-11 21:39:13', '2023-11-11 21:39:13'),
(6, 13, 440686.05, 'Belum lunas', '2023-11-11 21:39:13', '2023-11-11 21:39:13'),
(7, 3, 86523.15, 'Belum lunas', '2023-11-11 22:01:49', '2023-11-11 22:01:49'),
(8, 15, 359055.10, 'Belum lunas', '2023-11-11 22:01:49', '2023-11-11 22:01:49');

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

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Mobil', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(2, 'Motor', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(3, 'Truck', '2023-11-11 18:10:57', '2023-11-11 18:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sintya tri wahyu adityawati', 'sintya.tia2704@gmail.com', NULL, '$2y$12$G0z5HGA/znxWS0UupTbZaOh7lGrJEwiH2PFCRi/1yWY4H6wg1Snj6', NULL, '2023-11-11 18:10:56', '2023-11-11 18:10:56'),
(2, 'Miss Jazmin Bauch IV', 'rlangworth@example.com', '2023-11-11 18:10:56', '$2y$12$tLT.rG7z7OmvCUvbjmI9hOzwZHS7j5GR6945KjXl5DwjvBO/DUvji', 'PpFwHoJ4cm', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(3, 'Mr. Luther Ritchie Jr.', 'bella.sawayn@example.net', '2023-11-11 18:10:57', '$2y$12$tLT.rG7z7OmvCUvbjmI9hOzwZHS7j5GR6945KjXl5DwjvBO/DUvji', '1zZUGWktzC', '2023-11-11 18:10:57', '2023-11-11 18:10:57'),
(4, 'Kenton Green', 'ozemlak@example.org', '2023-11-11 18:10:57', '$2y$12$tLT.rG7z7OmvCUvbjmI9hOzwZHS7j5GR6945KjXl5DwjvBO/DUvji', 'V4Gw3FNxsS', '2023-11-11 18:10:57', '2023-11-11 18:10:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_kendaraans`
--
ALTER TABLE `customer_kendaraans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_kendaraans_customer_id_foreign` (`customer_id`),
  ADD KEY `customer_kendaraans_kendaraan_id_foreign` (`kendaraan_id`);

--
-- Indexes for table `customer_kendaraan_orders`
--
ALTER TABLE `customer_kendaraan_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kendaraans`
--
ALTER TABLE `kendaraans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kendaraans_type_id_foreign` (`type_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

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
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer_kendaraans`
--
ALTER TABLE `customer_kendaraans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_kendaraan_orders`
--
ALTER TABLE `customer_kendaraan_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kendaraans`
--
ALTER TABLE `kendaraans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_kendaraans`
--
ALTER TABLE `customer_kendaraans`
  ADD CONSTRAINT `customer_kendaraans_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_kendaraans_kendaraan_id_foreign` FOREIGN KEY (`kendaraan_id`) REFERENCES `kendaraans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kendaraans`
--
ALTER TABLE `kendaraans`
  ADD CONSTRAINT `kendaraans_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
