-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Nov 2024 pada 01.37
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_suratdesa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Tidak Mampu', '2024-11-14 00:35:48', '2024-11-14 00:35:48'),
(2, 'Berkelakuan Baik', '2024-11-14 00:35:48', '2024-11-14 00:35:48'),
(3, 'Rekomendasi Kerja', '2024-11-14 00:35:48', '2024-11-14 00:35:48'),
(4, 'Usaha', '2024-11-14 00:35:48', '2024-11-14 00:35:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `letters`
--

CREATE TABLE `letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resident_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `issued_by` bigint(20) UNSIGNED DEFAULT NULL,
  `needed_for` varchar(255) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_13_175644_resident', 1),
(5, '2024_09_13_181042_letters', 1),
(6, '2024_09_13_181505_kind_of_letter', 1),
(7, '2024_09_14_010017_sub_village', 1),
(8, '2024_09_15_041504_create_foreign_keys', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `residents`
--

CREATE TABLE `residents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nik` bigint(20) UNSIGNED NOT NULL,
  `born_in` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `religion` varchar(255) NOT NULL,
  `dusun` varchar(255) NOT NULL,
  `rt` varchar(255) NOT NULL,
  `rw` varchar(255) NOT NULL,
  `no_kk` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_in_family` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `father_job` varchar(255) NOT NULL,
  `father_birthday` date NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `last_study` varchar(255) NOT NULL,
  `current_study` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `residents`
--

INSERT INTO `residents` (`id`, `name`, `nik`, `born_in`, `birthday`, `gender`, `religion`, `dusun`, `rt`, `rw`, `no_kk`, `status`, `status_in_family`, `father_name`, `father_job`, `father_birthday`, `mother_name`, `job`, `last_study`, `current_study`, `created_at`, `updated_at`) VALUES
(1, 'jefyokta', 12345678910, 'Pintugobang', '2002-10-06', 'male', 'Islam', 'Simpang Tiga', '02', '02', 12334567890, 'Lajang', 'anak', 'jefysFather', 'Petani', '1970-05-20', 'jefysMother', 'Pelajar/Mahasiswa', 'SMA Sederajat', 'none', '2024-11-14 00:35:48', '2024-11-14 00:35:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('xwnX8OFFRM4jKrSvKOEeIYOELt3OL0F2CUAYJmRw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm9nc3pibjllYXlRcE40aEFjdEVHeVkzQk5nYWw5czI2QUlHdnVnRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1731544670);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_village`
--

CREATE TABLE `sub_village` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','kades') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'admin', '$2y$12$XjuVqSLpB/HspCtnpD5Gr.nRLouMQFQtO3bVSdLLkjyLI9ZraBZ8e', 'admin', NULL, '2024-11-14 00:35:47', '2024-11-14 00:35:47'),
(2, 'MUHAMMAD SULISTIONO', 'kades', '$2y$12$ivmWzcPm.qU.5D/rAEEul.G9RIqw4dqANvzKMr50rpa80RsE52lW2', 'kades', NULL, '2024-11-14 00:35:48', '2024-11-14 00:35:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `village_manager`
--

CREATE TABLE `village_manager` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `sign` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `village_manager`
--

INSERT INTO `village_manager` (`id`, `name`, `role`, `sign`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Sulistiono', 'Kepala Desa', 'rsa46(jefuoajokasdjosad)', '2024-11-14 00:35:48', '2024-11-14 00:35:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letters_category_id_foreign` (`category_id`),
  ADD KEY `letters_issued_by_foreign` (`issued_by`),
  ADD KEY `letters_resident_id_foreign` (`resident_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `residents_nik_unique` (`nik`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `sub_village`
--
ALTER TABLE `sub_village`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indeks untuk tabel `village_manager`
--
ALTER TABLE `village_manager`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `letters`
--
ALTER TABLE `letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `residents`
--
ALTER TABLE `residents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sub_village`
--
ALTER TABLE `sub_village`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `village_manager`
--
ALTER TABLE `village_manager`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `letters`
--
ALTER TABLE `letters`
  ADD CONSTRAINT `letters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `letters_issued_by_foreign` FOREIGN KEY (`issued_by`) REFERENCES `village_manager` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `letters_resident_id_foreign` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
