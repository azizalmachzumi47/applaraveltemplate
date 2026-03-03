-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2026 at 07:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_applaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('CQomegGZCqAwY90z', 'a:1:{s:11:\"valid_until\";i:1772514659;}', 1773724319),
('f5OOAMolx8VgZpJl', 'a:1:{s:11:\"valid_until\";i:1772514599;}', 1773722099),
('Zn27kAWOwkOwj6OK', 'a:1:{s:11:\"valid_until\";i:1772515610;}', 1773724970);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datamhs`
--

CREATE TABLE `datamhs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(500) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_departemen` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id`, `nama_departemen`, `created_at`, `updated_at`) VALUES
(1, 'Engineering', '2025-03-17 08:17:37', '2025-03-17 08:17:37'),
(3, 'Sales', '2025-03-17 08:59:26', '2025-03-17 08:59:26'),
(4, 'RnD', '2025-03-17 08:59:38', '2025-03-17 08:59:38'),
(5, 'Ppic', '2025-03-17 08:59:51', '2025-03-17 08:59:51'),
(6, 'Akunting', '2025-03-17 09:00:10', '2025-03-17 09:00:10'),
(7, 'Qa', '2025-03-17 09:00:24', '2025-03-17 09:00:24'),
(8, 'Qc', '2025-03-17 09:00:32', '2025-03-17 09:00:32'),
(9, 'Produksi', '2025-03-17 09:00:42', '2025-03-17 09:00:42'),
(10, 'Hrga', '2025-03-17 09:00:56', '2025-03-17 09:00:56'),
(11, 'Purchase', '2025-03-17 09:01:11', '2025-03-26 04:41:07'),
(12, 'Legal', '2025-03-17 09:01:30', '2025-03-17 09:01:30'),
(13, 'Dashboard', '2025-03-17 09:36:54', '2025-03-17 09:36:54'),
(14, 'Dirlucas', '2025-03-26 04:38:39', '2025-03-26 04:38:39'),
(15, 'Dirmarin', '2025-03-26 04:38:55', '2025-03-26 04:38:55');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loguser`
--

CREATE TABLE `loguser` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `method` varchar(128) NOT NULL,
  `datavalues` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `action` varchar(128) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loguser`
--

INSERT INTO `loguser` (`id`, `name`, `email`, `role_id`, `user_agent`, `url`, `method`, `datavalues`, `activity`, `action`, `ip`, `created_at`, `updated_at`) VALUES
(1, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Login\"}', 'Login', 'LOGIN', '127.0.0.1', '2026-03-02 22:04:28', '2026-03-02 22:04:28'),
(2, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Login\"}', 'Login', 'LOGIN', '127.0.0.1', '2026-03-02 22:04:34', '2026-03-02 22:04:34'),
(3, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Menu Login\"}', 'Menu Login', 'Login', '127.0.0.1', '2026-03-02 22:04:34', '2026-03-02 22:04:34'),
(4, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/dashboard', 'GET', '{\"akses\":\"Menu Dashboard\"}', 'Menu Dashboard', 'Dashboard', '127.0.0.1', '2026-03-02 22:04:35', '2026-03-02 22:04:35'),
(5, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:04:44', '2026-03-02 22:04:44'),
(6, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/edituser/31', 'PUT', '\"User\"', '1', 'update', '127.0.0.1', '2026-03-02 22:05:03', '2026-03-02 22:05:03'),
(7, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/edituser/31', 'PUT', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:05:03', '2026-03-02 22:05:03'),
(8, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:05:04', '2026-03-02 22:05:04'),
(9, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/role', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:05:16', '2026-03-02 22:05:16'),
(10, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/roleaccess/22', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:05:27', '2026-03-02 22:05:27'),
(11, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/logout', 'POST', '{\"akses\":\"Logout\"}', 'Logout', 'LOGOUT', '127.0.0.1', '2026-03-02 22:05:37', '2026-03-02 22:05:37'),
(12, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Login\"}', 'Login', 'LOGIN', '127.0.0.1', '2026-03-02 22:05:46', '2026-03-02 22:05:46'),
(13, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Menu Login\"}', 'Menu Login', 'Login', '127.0.0.1', '2026-03-02 22:05:46', '2026-03-02 22:05:46'),
(14, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/dashboard', 'GET', '{\"akses\":\"Menu Dashboard\"}', 'Menu Dashboard', 'Dashboard', '127.0.0.1', '2026-03-02 22:05:46', '2026-03-02 22:05:46'),
(15, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/logout', 'POST', '{\"akses\":\"Logout\"}', 'Logout', 'LOGOUT', '127.0.0.1', '2026-03-02 22:05:57', '2026-03-02 22:05:57'),
(16, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Login\"}', 'Login', 'LOGIN', '127.0.0.1', '2026-03-02 22:06:06', '2026-03-02 22:06:06'),
(17, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Menu Login\"}', 'Menu Login', 'Login', '127.0.0.1', '2026-03-02 22:06:06', '2026-03-02 22:06:06'),
(18, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/dashboard', 'GET', '{\"akses\":\"Menu Dashboard\"}', 'Menu Dashboard', 'Dashboard', '127.0.0.1', '2026-03-02 22:06:06', '2026-03-02 22:06:06'),
(19, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/role', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:06:16', '2026-03-02 22:06:16'),
(20, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/roleaccess/22', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:06:31', '2026-03-02 22:06:31'),
(21, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/changeAccess', 'POST', '\"Role_akses\"', '1', 'update', '127.0.0.1', '2026-03-02 22:06:38', '2026-03-02 22:06:38'),
(22, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/changeAccess', 'POST', '\"Role_akses\"', '1', 'update', '127.0.0.1', '2026-03-02 22:06:42', '2026-03-02 22:06:42'),
(23, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/monitoring', 'GET', '{\"akses\":\"Menu Monitoring\"}', 'Menu Monitoring', 'Monitoring', '127.0.0.1', '2026-03-02 22:06:48', '2026-03-02 22:06:48'),
(24, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/logout', 'POST', '{\"akses\":\"Logout\"}', 'Logout', 'LOGOUT', '127.0.0.1', '2026-03-02 22:07:11', '2026-03-02 22:07:11'),
(25, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Login\"}', 'Login', 'LOGIN', '127.0.0.1', '2026-03-02 22:07:22', '2026-03-02 22:07:22'),
(26, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Menu Login\"}', 'Menu Login', 'Login', '127.0.0.1', '2026-03-02 22:07:22', '2026-03-02 22:07:22'),
(27, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/dashboard', 'GET', '{\"akses\":\"Menu Dashboard\"}', 'Menu Dashboard', 'Dashboard', '127.0.0.1', '2026-03-02 22:07:22', '2026-03-02 22:07:22'),
(28, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs', 'GET', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:07:32', '2026-03-02 22:07:32'),
(29, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/adddatamhs', 'POST', '{\"nim\":\"111001\",\"nama\":\"Himawari\"}', 'Add Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:07:47', '2026-03-02 22:07:47'),
(30, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/adddatamhs', 'POST', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:07:47', '2026-03-02 22:07:47'),
(31, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs', 'GET', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:07:47', '2026-03-02 22:07:47'),
(32, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/editdata_action/1', 'POST', '{\"nim\":\"111001\",\"nama\":\"Himawari A\"}', 'Update Data Mahasiswa', 'UPDATE', '127.0.0.1', '2026-03-02 22:08:07', '2026-03-02 22:08:07'),
(33, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/editdata_action/1', 'POST', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:08:07', '2026-03-02 22:08:07'),
(34, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs', 'GET', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:08:07', '2026-03-02 22:08:07'),
(35, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/delete/1', 'GET', '{\"nim\":\"111001\",\"nama\":\"Himawari A\"}', 'Dlete Data Mahasiswa', 'DELETE', '127.0.0.1', '2026-03-02 22:08:16', '2026-03-02 22:08:16'),
(36, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/delete/1', 'GET', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:08:16', '2026-03-02 22:08:16'),
(37, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs', 'GET', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:08:16', '2026-03-02 22:08:16'),
(38, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/dataapi', 'GET', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:08:24', '2026-03-02 22:08:24'),
(39, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/dataapi', 'GET', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:08:33', '2026-03-02 22:08:33'),
(40, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0178453629\",\"nama\":\"Abigail Williams\",\"tanggal\":\"2022-08-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(41, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0197485623\",\"nama\":\"Adams Ava\",\"tanggal\":\"2023-11-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(42, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0198267543\",\"nama\":\"Adams Emma\",\"tanggal\":\"2022-04-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(43, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0286157349\",\"nama\":\"Adams Harper\",\"tanggal\":\"2023-09-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(44, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0316892475\",\"nama\":\"Adams Jackson\",\"tanggal\":\"2022-12-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(45, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0382174956\",\"nama\":\"Adams Liam\",\"tanggal\":\"2023-06-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(46, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0382541967\",\"nama\":\"Adams Lily\",\"tanggal\":\"2022-02-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(47, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0457896312\",\"nama\":\"Adams Mia\",\"tanggal\":\"2023-05-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(48, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0471953286\",\"nama\":\"Adams Noah\",\"tanggal\":\"2022-10-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(49, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0568371942\",\"nama\":\"Adams Olivia\",\"tanggal\":\"2023-03-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(50, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0847513692\",\"nama\":\"Adams Sophia\",\"tanggal\":\"2022-07-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(51, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"0973812546\",\"nama\":\"Addison Morris\",\"tanggal\":\"2023-02-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(52, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1065973248\",\"nama\":\"Aiden Baker\",\"tanggal\":\"2022-05-26\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(53, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1073498256\",\"nama\":\"Aiden Bell\",\"tanggal\":\"2023-10-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(54, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1084279563\",\"nama\":\"Aiden Brooks\",\"tanggal\":\"2022-01-19\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(55, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1098342576\",\"nama\":\"Aiden Cooper\",\"tanggal\":\"2023-08-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(56, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1098745632\",\"nama\":\"Aiden Foster\",\"tanggal\":\"2022-11-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(57, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1206485739\",\"nama\":\"Aiden Hayes\",\"tanggal\":\"2023-04-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(58, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1209563748\",\"nama\":\"Aiden Murphy\",\"tanggal\":\"2022-09-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(59, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1209847653\",\"nama\":\"Aiden Powell\",\"tanggal\":\"2023-12-29\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(60, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1234567890\",\"nama\":\"Aiden Taylor\",\"tanggal\":\"2022-06-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(61, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1239708564\",\"nama\":\"Aiden Turner\",\"tanggal\":\"2023-01-23\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(62, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1243567890\",\"nama\":\"Alexander Cook\",\"tanggal\":\"2022-08-06\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(63, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1245867039\",\"nama\":\"Amelia Murphy\",\"tanggal\":\"2023-11-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(64, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1298347650\",\"nama\":\"Aria Sanders\",\"tanggal\":\"2022-04-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(65, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1298745603\",\"nama\":\"Ava Adams\",\"tanggal\":\"2023-09-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(66, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1309452786\",\"nama\":\"Ava Bell\",\"tanggal\":\"2022-12-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(67, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1345678902\",\"nama\":\"Ava Brooks\",\"tanggal\":\"2023-06-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(68, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1347695820\",\"nama\":\"Ava Campbell\",\"tanggal\":\"2022-02-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(69, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1349752680\",\"nama\":\"Ava Foster\",\"tanggal\":\"2023-05-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(70, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1385076429\",\"nama\":\"Ava Hayes\",\"tanggal\":\"2022-10-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(71, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1492876053\",\"nama\":\"Ava Turner\",\"tanggal\":\"2023-04-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(72, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1579864203\",\"nama\":\"Ava Wright\",\"tanggal\":\"2022-09-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(73, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1583942076\",\"nama\":\"Baker Aiden\",\"tanggal\":\"2023-12-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(74, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1586423097\",\"nama\":\"Baker Emma\",\"tanggal\":\"2022-06-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(75, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1753094682\",\"nama\":\"Barnes Lucas\",\"tanggal\":\"2023-01-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(76, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1769854023\",\"nama\":\"Barnes Sophia\",\"tanggal\":\"2022-08-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(77, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1789054326\",\"nama\":\"Barnes Wyatt\",\"tanggal\":\"2023-11-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(78, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1803924567\",\"nama\":\"Bell Aiden\",\"tanggal\":\"2022-05-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(79, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1835096742\",\"nama\":\"Bell Ava\",\"tanggal\":\"2023-10-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(80, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1836947502\",\"nama\":\"Bell Chloe\",\"tanggal\":\"2022-03-04\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(81, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1837692450\",\"nama\":\"Bell Harper\",\"tanggal\":\"2023-07-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(82, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1845603729\",\"nama\":\"Bell Jackson\",\"tanggal\":\"2022-11-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(83, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1845726309\",\"nama\":\"Bell Liam\",\"tanggal\":\"2023-04-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(84, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1857306942\",\"nama\":\"Bell Lily\",\"tanggal\":\"2022-09-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(85, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1894725063\",\"nama\":\"Bell Noah\",\"tanggal\":\"2023-12-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(86, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1896753042\",\"nama\":\"Bell Oliver\",\"tanggal\":\"2022-06-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(87, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1948276530\",\"nama\":\"Bell Olivia\",\"tanggal\":\"2023-02-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(88, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1953862407\",\"nama\":\"Bell Sophia\",\"tanggal\":\"2022-07-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(89, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1984736052\",\"nama\":\"Benjamin Parker\",\"tanggal\":\"2023-10-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(90, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"1987654320\",\"nama\":\"Brooks Aiden\",\"tanggal\":\"2022-05-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(91, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2039485716\",\"nama\":\"Brooks Ava\",\"tanggal\":\"2023-01-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(92, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2047956831\",\"nama\":\"Brooks Chloe\",\"tanggal\":\"2022-08-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(93, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2049576183\",\"nama\":\"Brooks Emma\",\"tanggal\":\"2023-11-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(94, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2053748619\",\"nama\":\"Brooks Jackson\",\"tanggal\":\"2022-04-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(95, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2056781439\",\"nama\":\"Brooks Lily\",\"tanggal\":\"2023-09-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(96, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2056783491\",\"nama\":\"Brooks Noah\",\"tanggal\":\"2022-12-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(97, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2083651947\",\"nama\":\"Brooks Oliver\",\"tanggal\":\"2023-06-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(98, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2096431587\",\"nama\":\"Brooks Sophia\",\"tanggal\":\"2022-02-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(99, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2103847659\",\"nama\":\"Bryant Ethan\",\"tanggal\":\"2023-05-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(100, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2108943657\",\"nama\":\"Bryant Jackson\",\"tanggal\":\"2022-10-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(101, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2154038697\",\"nama\":\"Bryant Liam\",\"tanggal\":\"2023-03-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(102, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2157349608\",\"nama\":\"Campbell Ava\",\"tanggal\":\"2022-07-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(103, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2170983456\",\"nama\":\"Campbell Harper\",\"tanggal\":\"2023-12-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(104, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2178605439\",\"nama\":\"Campbell Liam\",\"tanggal\":\"2022-06-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(105, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2187349605\",\"nama\":\"Campbell Mia\",\"tanggal\":\"2023-02-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(106, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2190836745\",\"nama\":\"Campbell Sophia\",\"tanggal\":\"2022-09-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(107, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2318945670\",\"nama\":\"Carter Evans\",\"tanggal\":\"2023-04-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(108, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2345678901\",\"nama\":\"Carter Isabella\",\"tanggal\":\"2022-11-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(109, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2346709185\",\"nama\":\"Carter Reed\",\"tanggal\":\"2023-08-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(110, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2356047819\",\"nama\":\"Charlotte Morris\",\"tanggal\":\"2022-05-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(111, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2374801965\",\"nama\":\"Charlotte Thompson\",\"tanggal\":\"2023-10-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(112, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2379845016\",\"nama\":\"Chloe Bell\",\"tanggal\":\"2022-03-08\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(113, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2385671094\",\"nama\":\"Chloe Brooks\",\"tanggal\":\"2023-07-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(114, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2398165740\",\"nama\":\"Chloe Evans\",\"tanggal\":\"2022-11-29\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(115, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2401563987\",\"nama\":\"Chloe Foster\",\"tanggal\":\"2023-04-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(116, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2463987150\",\"nama\":\"Chloe Hayes\",\"tanggal\":\"2022-09-04\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(117, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2493861507\",\"nama\":\"Chloe Murphy\",\"tanggal\":\"2023-12-08\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(118, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2507149863\",\"nama\":\"Chloe Powell\",\"tanggal\":\"2022-06-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(119, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2510934786\",\"nama\":\"Chloe Turner\",\"tanggal\":\"2023-02-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(120, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2546178093\",\"nama\":\"Chloe Ward\",\"tanggal\":\"2022-07-23\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(121, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2563718904\",\"nama\":\"Cole Lucas\",\"tanggal\":\"2023-11-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(122, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2569438710\",\"nama\":\"Cole Mia\",\"tanggal\":\"2022-04-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(123, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2604138795\",\"nama\":\"Collins Emily\",\"tanggal\":\"2023-09-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(124, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2659781403\",\"nama\":\"Collins Mia\",\"tanggal\":\"2022-12-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(125, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2674309185\",\"nama\":\"Cook Alexander\",\"tanggal\":\"2023-06-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(126, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2730486159\",\"nama\":\"Cooper Aiden\",\"tanggal\":\"2022-02-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(127, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2761985043\",\"nama\":\"Cooper Scarlett\",\"tanggal\":\"2023-05-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(128, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2840651937\",\"nama\":\"Daniel Simmons\",\"tanggal\":\"2022-10-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(129, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2904736185\",\"nama\":\"Davis Abigail\",\"tanggal\":\"2023-03-12\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(130, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2938647015\",\"nama\":\"Davis Emma\",\"tanggal\":\"2022-07-26\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(131, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2940538176\",\"nama\":\"Davis Harper\",\"tanggal\":\"2023-12-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(132, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2941867530\",\"nama\":\"Davis Mia\",\"tanggal\":\"2022-06-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(133, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2958046173\",\"nama\":\"Davis Noah\",\"tanggal\":\"2023-01-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(134, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2978046513\",\"nama\":\"Davis Olivia\",\"tanggal\":\"2022-08-06\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(135, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"2981756043\",\"nama\":\"Davis Sophia\",\"tanggal\":\"2023-11-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(136, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3018654729\",\"nama\":\"Elijah Fisher\",\"tanggal\":\"2022-04-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(137, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3058726149\",\"nama\":\"Elijah Hill\",\"tanggal\":\"2023-09-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(138, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3084765921\",\"nama\":\"Emily Collins\",\"tanggal\":\"2022-12-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(139, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3089176542\",\"nama\":\"Emma Adams\",\"tanggal\":\"2023-06-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(140, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3185649072\",\"nama\":\"Emma Baker\",\"tanggal\":\"2022-02-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(141, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3198456027\",\"nama\":\"Emma Brooks\",\"tanggal\":\"2023-05-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(142, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3209461857\",\"nama\":\"Emma Davis\",\"tanggal\":\"2022-10-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(143, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3245678901\",\"nama\":\"Emma Foster\",\"tanggal\":\"2023-04-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(144, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3246981075\",\"nama\":\"Emma Griffin\",\"tanggal\":\"2022-09-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(145, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3247085961\",\"nama\":\"Emma Hayes\",\"tanggal\":\"2023-12-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(146, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3421560987\",\"nama\":\"Emma Hill\",\"tanggal\":\"2022-06-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(147, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3451876920\",\"nama\":\"Emma Mitchell\",\"tanggal\":\"2023-01-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(148, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3456078129\",\"nama\":\"Emma Nelson\",\"tanggal\":\"2022-08-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(149, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3456789012\",\"nama\":\"Emma Thompson\",\"tanggal\":\"2023-11-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(150, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3456921807\",\"nama\":\"Emma Turner\",\"tanggal\":\"2022-05-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(151, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3458612970\",\"nama\":\"Ethan Bryant\",\"tanggal\":\"2023-10-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(152, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3472896150\",\"nama\":\"Ethan Foster\",\"tanggal\":\"2022-03-04\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(153, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3489601275\",\"nama\":\"Ethan Hayes\",\"tanggal\":\"2023-07-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(154, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3498756012\",\"nama\":\"Ethan Mitchell\",\"tanggal\":\"2022-11-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(155, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3510782496\",\"nama\":\"Ethan Murphy\",\"tanggal\":\"2023-04-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(156, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3510928746\",\"nama\":\"Ethan Price\",\"tanggal\":\"2022-09-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(157, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3548692170\",\"nama\":\"Ethan Russell\",\"tanggal\":\"2023-12-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(158, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3567812094\",\"nama\":\"Ethan Turner\",\"tanggal\":\"2022-06-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:40', '2026-03-02 22:08:40'),
(159, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3591820476\",\"nama\":\"Evans Carter\",\"tanggal\":\"2023-02-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(160, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3620198745\",\"nama\":\"Evans Chloe\",\"tanggal\":\"2022-07-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(161, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3640875129\",\"nama\":\"Evans Liam\",\"tanggal\":\"2023-10-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(162, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3648715029\",\"nama\":\"Evans Mia\",\"tanggal\":\"2022-05-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(163, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3650129847\",\"nama\":\"Evans Penelope\",\"tanggal\":\"2023-01-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(164, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3675812049\",\"nama\":\"Evans Sophia\",\"tanggal\":\"2022-08-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(165, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3702649185\",\"nama\":\"Evelyn Price\",\"tanggal\":\"2023-11-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(166, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3762109548\",\"nama\":\"Fisher Elijah\",\"tanggal\":\"2022-04-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(167, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3817462059\",\"nama\":\"Fisher Jackson\",\"tanggal\":\"2023-09-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(168, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3819476052\",\"nama\":\"Fisher Sophia\",\"tanggal\":\"2022-12-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(169, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3824657019\",\"nama\":\"Fisher Zoe\",\"tanggal\":\"2023-06-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(170, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3850976142\",\"nama\":\"Foster Aiden\",\"tanggal\":\"2022-02-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(171, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3851297640\",\"nama\":\"Foster Ava\",\"tanggal\":\"2023-05-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(172, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3852401967\",\"nama\":\"Foster Chloe\",\"tanggal\":\"2022-10-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(173, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3867520149\",\"nama\":\"Foster Emma\",\"tanggal\":\"2023-03-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(174, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3947802165\",\"nama\":\"Foster Ethan\",\"tanggal\":\"2022-07-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(175, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"3962478015\",\"nama\":\"Foster Grace\",\"tanggal\":\"2023-12-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(176, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4021567893\",\"nama\":\"Foster Harper\",\"tanggal\":\"2022-06-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(177, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4037692185\",\"nama\":\"Foster Isabella\",\"tanggal\":\"2023-02-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(178, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4038765129\",\"nama\":\"Foster Jackson\",\"tanggal\":\"2022-09-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(179, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4107892536\",\"nama\":\"Foster Liam\",\"tanggal\":\"2023-04-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(180, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4130982576\",\"nama\":\"Foster Lily\",\"tanggal\":\"2022-11-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41');
INSERT INTO `loguser` (`id`, `name`, `email`, `role_id`, `user_agent`, `url`, `method`, `datavalues`, `activity`, `action`, `ip`, `created_at`, `updated_at`) VALUES
(181, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4132578906\",\"nama\":\"Foster Mia\",\"tanggal\":\"2023-08-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(182, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4132698075\",\"nama\":\"Foster Noah\",\"tanggal\":\"2022-05-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(183, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4158923076\",\"nama\":\"Foster Oliver\",\"tanggal\":\"2023-10-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(184, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4180572396\",\"nama\":\"Fox Noah\",\"tanggal\":\"2022-03-08\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(185, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4208651937\",\"nama\":\"Gabriel Simmons\",\"tanggal\":\"2023-07-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(186, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4290381657\",\"nama\":\"Grace Foster\",\"tanggal\":\"2022-11-29\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(187, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4298735106\",\"nama\":\"Grace Hayes\",\"tanggal\":\"2023-04-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(188, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4302981675\",\"nama\":\"Grace Morris\",\"tanggal\":\"2022-09-04\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(189, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4385126790\",\"nama\":\"Grace Myers\",\"tanggal\":\"2023-12-08\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(190, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4508923671\",\"nama\":\"Grace Richardson\",\"tanggal\":\"2023-12-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(191, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4518923076\",\"nama\":\"Grace Scott\",\"tanggal\":\"2023-12-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(192, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4518927036\",\"nama\":\"Grace Simmons\",\"tanggal\":\"2023-12-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(193, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4520968371\",\"nama\":\"Grace Thompson\",\"tanggal\":\"2023-12-12\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(194, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4523768109\",\"nama\":\"Grace Turner\",\"tanggal\":\"2023-12-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(195, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4562109873\",\"nama\":\"Gray Samuel\",\"tanggal\":\"2023-12-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(196, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4567890123\",\"nama\":\"Griffin Emma\",\"tanggal\":\"2023-12-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(197, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4569078123\",\"nama\":\"Griffin Owen\",\"tanggal\":\"2023-12-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(198, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4601897532\",\"nama\":\"Harper Adams\",\"tanggal\":\"2023-12-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(199, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4607328159\",\"nama\":\"Harper Bell\",\"tanggal\":\"2023-12-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(200, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4609321785\",\"nama\":\"Harper Campbell\",\"tanggal\":\"2023-12-19\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(201, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4621587390\",\"nama\":\"Harper Davis\",\"tanggal\":\"2023-12-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(202, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4650283197\",\"nama\":\"Harper Foster\",\"tanggal\":\"2023-12-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(203, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4671089253\",\"nama\":\"Harper Hayes\",\"tanggal\":\"2023-12-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(204, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4680917532\",\"nama\":\"Harper Hill\",\"tanggal\":\"2023-12-23\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(205, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4689302517\",\"nama\":\"Harper Morris\",\"tanggal\":\"2023-12-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(206, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4693210857\",\"nama\":\"Harper Parker\",\"tanggal\":\"2023-12-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(207, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4701869325\",\"nama\":\"Harper Powell\",\"tanggal\":\"2023-12-26\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(208, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4761209853\",\"nama\":\"Harper Scott\",\"tanggal\":\"2023-12-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(209, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4820165793\",\"nama\":\"Harper Taylor\",\"tanggal\":\"2023-12-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(210, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4827309165\",\"nama\":\"Harper Turner\",\"tanggal\":\"2023-12-29\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(211, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4856130927\",\"nama\":\"Harper Ward\",\"tanggal\":\"2023-12-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(212, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4905128763\",\"nama\":\"Harrison Mia\",\"tanggal\":\"2023-01-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(213, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4908237615\",\"nama\":\"Hayes Aiden\",\"tanggal\":\"2022-08-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(214, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4910283765\",\"nama\":\"Hayes Ava\",\"tanggal\":\"2023-11-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(215, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4913562708\",\"nama\":\"Hayes Chloe\",\"tanggal\":\"2022-04-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(216, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4921368750\",\"nama\":\"Hayes Emma\",\"tanggal\":\"2023-09-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(217, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4923178650\",\"nama\":\"Hayes Ethan\",\"tanggal\":\"2022-12-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(218, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4925183670\",\"nama\":\"Hayes Grace\",\"tanggal\":\"2023-06-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(219, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4927180563\",\"nama\":\"Hayes Harper\",\"tanggal\":\"2022-02-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(220, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4935678102\",\"nama\":\"Hayes Jackson\",\"tanggal\":\"2023-05-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(221, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4956873120\",\"nama\":\"Hayes Liam\",\"tanggal\":\"2022-10-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(222, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"4962831075\",\"nama\":\"Hayes Lily\",\"tanggal\":\"2023-03-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(223, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5012376849\",\"nama\":\"Hayes Mia\",\"tanggal\":\"2022-07-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(224, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5012893467\",\"nama\":\"Hayes Noah\",\"tanggal\":\"2023-02-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(225, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5019283476\",\"nama\":\"Hayes Oliver\",\"tanggal\":\"2022-05-26\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(226, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5023146789\",\"nama\":\"Hayes Olivia\",\"tanggal\":\"2023-10-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(227, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5026179348\",\"nama\":\"Hayes Sophia\",\"tanggal\":\"2022-01-19\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(228, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5031897462\",\"nama\":\"Henderson Leo\",\"tanggal\":\"2023-08-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(229, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5032987461\",\"nama\":\"Henry Ward\",\"tanggal\":\"2022-11-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(230, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5036487912\",\"nama\":\"Hill Elijah\",\"tanggal\":\"2023-04-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(231, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5067213984\",\"nama\":\"Hill Emma\",\"tanggal\":\"2022-09-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(232, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5082913467\",\"nama\":\"Hill Harper\",\"tanggal\":\"2023-12-29\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(233, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5123786409\",\"nama\":\"Hill Isabella\",\"tanggal\":\"2022-06-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(234, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5139078462\",\"nama\":\"Holmes Olivia\",\"tanggal\":\"2023-01-23\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(235, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5140623978\",\"nama\":\"Isabella Carter\",\"tanggal\":\"2022-08-06\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(236, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5170963842\",\"nama\":\"Isabella Foster\",\"tanggal\":\"2023-11-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(237, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5182093467\",\"nama\":\"Isabella Hill\",\"tanggal\":\"2022-04-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(238, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5182409673\",\"nama\":\"Isabella Wright\",\"tanggal\":\"2023-09-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(239, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5189276304\",\"nama\":\"Jackson Adams\",\"tanggal\":\"2022-12-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(240, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5196782403\",\"nama\":\"Jackson Bell\",\"tanggal\":\"2023-06-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(241, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5279631804\",\"nama\":\"Jackson Brooks\",\"tanggal\":\"2022-02-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(242, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5281094736\",\"nama\":\"Jackson Bryant\",\"tanggal\":\"2023-05-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(243, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5298760143\",\"nama\":\"Jackson Fisher\",\"tanggal\":\"2022-10-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(244, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5301974682\",\"nama\":\"Jackson Foster\",\"tanggal\":\"2023-04-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(245, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5362198740\",\"nama\":\"Jackson Hayes\",\"tanggal\":\"2022-09-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(246, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5401987236\",\"nama\":\"Jackson Kelly\",\"tanggal\":\"2023-12-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(247, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5420987136\",\"nama\":\"Jackson Murphy\",\"tanggal\":\"2022-06-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(248, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5429703816\",\"nama\":\"Jackson Nelson\",\"tanggal\":\"2023-01-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(249, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5432768901\",\"nama\":\"Jackson Scott\",\"tanggal\":\"2022-08-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(250, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5462380791\",\"nama\":\"Jackson Stewart\",\"tanggal\":\"2023-11-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(251, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5607893412\",\"nama\":\"Jackson Turner\",\"tanggal\":\"2022-05-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(252, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5620193847\",\"nama\":\"Jackson Ward\",\"tanggal\":\"2023-10-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(253, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5649301872\",\"nama\":\"Jackson Wright\",\"tanggal\":\"2022-03-04\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(254, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5670318249\",\"nama\":\"James Lily\",\"tanggal\":\"2023-07-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(255, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5672184903\",\"nama\":\"James Wright\",\"tanggal\":\"2022-11-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(256, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5678123049\",\"nama\":\"Kelly Jackson\",\"tanggal\":\"2023-04-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(257, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5678901234\",\"nama\":\"Leo Henderson\",\"tanggal\":\"2022-09-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(258, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5712034986\",\"nama\":\"Liam Adams\",\"tanggal\":\"2023-12-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(259, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5716943028\",\"nama\":\"Liam Bell\",\"tanggal\":\"2022-06-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(260, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5720368419\",\"nama\":\"Liam Bryant\",\"tanggal\":\"2023-02-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(261, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5732048961\",\"nama\":\"Liam Campbell\",\"tanggal\":\"2022-07-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(262, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5742906138\",\"nama\":\"Liam Evans\",\"tanggal\":\"2023-10-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(263, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5746192038\",\"nama\":\"Liam Foster\",\"tanggal\":\"2022-05-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(264, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5812034769\",\"nama\":\"Liam Hayes\",\"tanggal\":\"2023-01-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(265, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5820743169\",\"nama\":\"Liam Peterson\",\"tanggal\":\"2022-08-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(266, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5823610947\",\"nama\":\"Liam Reed\",\"tanggal\":\"2023-11-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(267, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5840319267\",\"nama\":\"Liam Turner\",\"tanggal\":\"2022-04-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(268, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5863701924\",\"nama\":\"Liam Ward\",\"tanggal\":\"2023-09-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(269, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5876312049\",\"nama\":\"Lily Adams\",\"tanggal\":\"2022-12-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(270, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5876320149\",\"nama\":\"Lily Bell\",\"tanggal\":\"2023-06-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(271, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5912345678\",\"nama\":\"Lily Brooks\",\"tanggal\":\"2022-02-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(272, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5941086273\",\"nama\":\"Lily Foster\",\"tanggal\":\"2023-05-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(273, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"5983421607\",\"nama\":\"Lily Hayes\",\"tanggal\":\"2022-10-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(274, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6071832945\",\"nama\":\"Lily James\",\"tanggal\":\"2023-03-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(275, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6083419257\",\"nama\":\"Lily Thompson\",\"tanggal\":\"2022-07-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(276, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6083741259\",\"nama\":\"Lily Turner\",\"tanggal\":\"2023-12-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(277, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6089473125\",\"nama\":\"Lily Ward\",\"tanggal\":\"2022-06-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(278, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6102934758\",\"nama\":\"Lucas Barnes\",\"tanggal\":\"2023-02-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(279, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6104729835\",\"nama\":\"Lucas Cole\",\"tanggal\":\"2022-09-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(280, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6138740592\",\"nama\":\"Lucas Parker\",\"tanggal\":\"2023-04-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(281, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6172940358\",\"nama\":\"Lucas Taylor\",\"tanggal\":\"2022-11-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(282, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6174903825\",\"nama\":\"Lucas Thompson\",\"tanggal\":\"2023-08-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(283, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6198432075\",\"nama\":\"Lucas Turner\",\"tanggal\":\"2022-05-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(284, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6203154789\",\"nama\":\"Lucas Ward\",\"tanggal\":\"2023-10-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(285, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6219845037\",\"nama\":\"Madison Turner\",\"tanggal\":\"2022-03-08\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(286, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6279810453\",\"nama\":\"Martinez Mason\",\"tanggal\":\"2023-07-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(287, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6287395140\",\"nama\":\"Martinez Sophia\",\"tanggal\":\"2022-11-29\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(288, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6289475031\",\"nama\":\"Mason Martinez\",\"tanggal\":\"2023-04-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(289, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6309851472\",\"nama\":\"Mia Adams\",\"tanggal\":\"2022-09-04\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:41', '2026-03-02 22:08:41'),
(290, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6318947025\",\"nama\":\"Mia Campbell\",\"tanggal\":\"2023-12-08\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(291, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6352789014\",\"nama\":\"Mia Cole\",\"tanggal\":\"2022-06-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(292, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6370982145\",\"nama\":\"Mia Collins\",\"tanggal\":\"2023-02-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(293, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6371502984\",\"nama\":\"Mia Davis\",\"tanggal\":\"2022-07-23\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(294, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6415823907\",\"nama\":\"Mia Evans\",\"tanggal\":\"2023-11-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(295, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6429085713\",\"nama\":\"Mia Foster\",\"tanggal\":\"2022-04-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(296, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6435901827\",\"nama\":\"Mia Harrison\",\"tanggal\":\"2023-09-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(297, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6487302195\",\"nama\":\"Mia Hayes\",\"tanggal\":\"2022-12-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(298, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6508123479\",\"nama\":\"Mia Mitchell\",\"tanggal\":\"2023-06-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(299, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6571290834\",\"nama\":\"Mia Murphy\",\"tanggal\":\"2022-02-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(300, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6572081493\",\"nama\":\"Mia Parker\",\"tanggal\":\"2023-05-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(301, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6572093841\",\"nama\":\"Mia Scott\",\"tanggal\":\"2022-10-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(302, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6572301948\",\"nama\":\"Mia Turner\",\"tanggal\":\"2023-03-12\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(303, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6573201948\",\"nama\":\"Mia Wallace\",\"tanggal\":\"2022-07-26\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(304, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6720458193\",\"nama\":\"Mia Ward\",\"tanggal\":\"2023-12-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(305, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6748103925\",\"nama\":\"Mitchell Emma\",\"tanggal\":\"2022-06-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(306, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6785430129\",\"nama\":\"Mitchell Ethan\",\"tanggal\":\"2023-01-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(307, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6789012345\",\"nama\":\"Mitchell Mia\",\"tanggal\":\"2022-08-06\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(308, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6789054321\",\"nama\":\"Mitchell Oliver\",\"tanggal\":\"2023-11-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(309, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6789450312\",\"nama\":\"Morris Addison\",\"tanggal\":\"2022-04-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(310, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6792045183\",\"nama\":\"Morris Charlotte\",\"tanggal\":\"2023-09-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(311, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6812405937\",\"nama\":\"Morris Grace\",\"tanggal\":\"2022-12-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(312, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6815324907\",\"nama\":\"Morris Harper\",\"tanggal\":\"2023-06-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(313, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6852301974\",\"nama\":\"Murphy Aiden\",\"tanggal\":\"2022-02-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(314, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6871542093\",\"nama\":\"Murphy Amelia\",\"tanggal\":\"2023-05-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(315, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6875309412\",\"nama\":\"Murphy Chloe\",\"tanggal\":\"2022-10-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(316, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6890132457\",\"nama\":\"Murphy Ethan\",\"tanggal\":\"2023-04-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(317, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6921083745\",\"nama\":\"Murphy Jackson\",\"tanggal\":\"2022-09-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(318, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6925840317\",\"nama\":\"Murphy Mia\",\"tanggal\":\"2023-12-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(319, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6931742058\",\"nama\":\"Murphy Oliver\",\"tanggal\":\"2022-06-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(320, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6945280137\",\"nama\":\"Murphy Sophia\",\"tanggal\":\"2023-01-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(321, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6947580123\",\"nama\":\"Myers Grace\",\"tanggal\":\"2022-08-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(322, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6947812503\",\"nama\":\"Nelson Emma\",\"tanggal\":\"2023-11-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(323, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6952378140\",\"nama\":\"Nelson Jackson\",\"tanggal\":\"2022-05-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(324, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6958231470\",\"nama\":\"Nelson Noah\",\"tanggal\":\"2023-10-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(325, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6970345182\",\"nama\":\"Nelson Oliver\",\"tanggal\":\"2022-03-04\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(326, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6971283450\",\"nama\":\"Noah Adams\",\"tanggal\":\"2023-07-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(327, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"6973825140\",\"nama\":\"Noah Bell\",\"tanggal\":\"2022-11-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(328, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7042619835\",\"nama\":\"Noah Brooks\",\"tanggal\":\"2023-04-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(329, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7052398164\",\"nama\":\"Noah Davis\",\"tanggal\":\"2022-09-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(330, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7065432189\",\"nama\":\"Noah Foster\",\"tanggal\":\"2023-12-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(331, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7165039284\",\"nama\":\"Noah Fox\",\"tanggal\":\"2022-06-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(332, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7230814596\",\"nama\":\"Noah Hayes\",\"tanggal\":\"2023-02-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(333, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7256043189\",\"nama\":\"Noah Nelson\",\"tanggal\":\"2022-07-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(334, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7264309815\",\"nama\":\"Noah Parker\",\"tanggal\":\"2023-10-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(335, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7265091348\",\"nama\":\"Noah Richardson\",\"tanggal\":\"2022-05-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(336, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7280645139\",\"nama\":\"Noah Taylor\",\"tanggal\":\"2023-01-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(337, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7315086492\",\"nama\":\"Noah Turner\",\"tanggal\":\"2022-08-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(338, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7341602958\",\"nama\":\"Oliver Bell\",\"tanggal\":\"2023-11-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(339, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7392815046\",\"nama\":\"Oliver Brooks\",\"tanggal\":\"2022-04-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(340, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7420683519\",\"nama\":\"Oliver Foster\",\"tanggal\":\"2023-09-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(341, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7431502869\",\"nama\":\"Oliver Hayes\",\"tanggal\":\"2022-12-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(342, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7453201986\",\"nama\":\"Oliver Mitchell\",\"tanggal\":\"2023-06-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(343, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7492108365\",\"nama\":\"Oliver Murphy\",\"tanggal\":\"2022-02-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(344, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7514869230\",\"nama\":\"Oliver Nelson\",\"tanggal\":\"2023-05-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(345, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7543012986\",\"nama\":\"Oliver Powell\",\"tanggal\":\"2022-10-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(346, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7581029346\",\"nama\":\"Oliver Scott\",\"tanggal\":\"2023-03-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(347, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7609452318\",\"nama\":\"Oliver Thompson\",\"tanggal\":\"2022-07-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(348, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7632189045\",\"nama\":\"Oliver Turner\",\"tanggal\":\"2023-12-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(349, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7635091248\",\"nama\":\"Oliver Ward\",\"tanggal\":\"2022-06-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42');
INSERT INTO `loguser` (`id`, `name`, `email`, `role_id`, `user_agent`, `url`, `method`, `datavalues`, `activity`, `action`, `ip`, `created_at`, `updated_at`) VALUES
(350, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7649301285\",\"nama\":\"Olivia Adams\",\"tanggal\":\"2023-02-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(351, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7650921834\",\"nama\":\"Olivia Bell\",\"tanggal\":\"2022-09-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(352, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7652098413\",\"nama\":\"Olivia Davis\",\"tanggal\":\"2023-04-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(353, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7654109328\",\"nama\":\"Olivia Hayes\",\"tanggal\":\"2022-11-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(354, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7654209318\",\"nama\":\"Olivia Holmes\",\"tanggal\":\"2023-08-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(355, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7684530219\",\"nama\":\"Olivia Turner\",\"tanggal\":\"2022-05-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(356, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7690314285\",\"nama\":\"Owen Griffin\",\"tanggal\":\"2023-10-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(357, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7694012358\",\"nama\":\"Parker Benjamin\",\"tanggal\":\"2022-03-08\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(358, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7816042395\",\"nama\":\"Parker Harper\",\"tanggal\":\"2023-07-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(359, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7834159620\",\"nama\":\"Parker Lucas\",\"tanggal\":\"2022-11-29\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(360, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7834506219\",\"nama\":\"Parker Mia\",\"tanggal\":\"2023-04-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(361, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7890123456\",\"nama\":\"Parker Noah\",\"tanggal\":\"2022-09-04\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(362, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7893062514\",\"nama\":\"Penelope Evans\",\"tanggal\":\"2023-12-08\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(363, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7895246013\",\"nama\":\"Perry William\",\"tanggal\":\"2023-12-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(364, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7940862513\",\"nama\":\"Peterson Liam\",\"tanggal\":\"2023-12-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(365, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7968435012\",\"nama\":\"Powell Aiden\",\"tanggal\":\"2023-12-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(366, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"7980651243\",\"nama\":\"Powell Chloe\",\"tanggal\":\"2023-12-12\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(367, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8013429657\",\"nama\":\"Powell Harper\",\"tanggal\":\"2023-12-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(368, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8045619372\",\"nama\":\"Powell Oliver\",\"tanggal\":\"2023-12-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(369, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8053461927\",\"nama\":\"Powell Sophia\",\"tanggal\":\"2023-12-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(370, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8063152497\",\"nama\":\"Price Ethan\",\"tanggal\":\"2023-12-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(371, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8076159324\",\"nama\":\"Price Evelyn\",\"tanggal\":\"2023-12-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(372, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8102735469\",\"nama\":\"Reed Carter\",\"tanggal\":\"2023-12-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(373, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8105962374\",\"nama\":\"Reed Liam\",\"tanggal\":\"2023-12-19\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(374, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8123456970\",\"nama\":\"Reed Sophia\",\"tanggal\":\"2023-12-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(375, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8139562470\",\"nama\":\"Reynolds Sophia\",\"tanggal\":\"2023-12-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(376, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8146570329\",\"nama\":\"Richardson Grace\",\"tanggal\":\"2023-12-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(377, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8149036572\",\"nama\":\"Richardson Noah\",\"tanggal\":\"2023-12-23\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(378, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8192435067\",\"nama\":\"Richardson Scarlett\",\"tanggal\":\"2023-12-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(379, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8193045672\",\"nama\":\"Rodriguez Zoey\",\"tanggal\":\"2023-12-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(380, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8231094765\",\"nama\":\"Russell Ethan\",\"tanggal\":\"2023-12-26\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(381, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8235079614\",\"nama\":\"Samuel Gray\",\"tanggal\":\"2023-12-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(382, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8302957461\",\"nama\":\"Sanders Aria\",\"tanggal\":\"2023-12-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(383, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8304965172\",\"nama\":\"Scarlett Cooper\",\"tanggal\":\"2023-12-29\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(384, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8309657142\",\"nama\":\"Scarlett Richardson\",\"tanggal\":\"2023-12-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(385, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8320194765\",\"nama\":\"Scott Grace\",\"tanggal\":\"2023-01-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(386, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8327496150\",\"nama\":\"Scott Harper\",\"tanggal\":\"2022-08-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(387, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8346501927\",\"nama\":\"Scott Jackson\",\"tanggal\":\"2023-11-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(388, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8361924705\",\"nama\":\"Scott Mia\",\"tanggal\":\"2022-04-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(389, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8372164905\",\"nama\":\"Scott Oliver\",\"tanggal\":\"2023-09-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(390, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8407135629\",\"nama\":\"Sebastian Turner\",\"tanggal\":\"2022-12-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(391, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8453012976\",\"nama\":\"Simmons Daniel\",\"tanggal\":\"2023-06-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(392, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8512679043\",\"nama\":\"Simmons Gabriel\",\"tanggal\":\"2022-02-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(393, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8530126479\",\"nama\":\"Simmons Grace\",\"tanggal\":\"2023-05-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(394, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8574912038\",\"nama\":\"Sophia Adams\",\"tanggal\":\"2022-10-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(395, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8619437052\",\"nama\":\"Sophia Barnes\",\"tanggal\":\"2023-03-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(396, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8650123479\",\"nama\":\"Sophia Bell\",\"tanggal\":\"2022-07-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(397, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8657132049\",\"nama\":\"Sophia Brooks\",\"tanggal\":\"2023-02-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(398, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8714305962\",\"nama\":\"Sophia Campbell\",\"tanggal\":\"2022-05-26\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(399, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8723054619\",\"nama\":\"Sophia Davis\",\"tanggal\":\"2023-10-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(400, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8745136902\",\"nama\":\"Sophia Evans\",\"tanggal\":\"2022-01-19\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(401, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8746023159\",\"nama\":\"Sophia Fisher\",\"tanggal\":\"2023-08-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(402, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8746905231\",\"nama\":\"Sophia Hayes\",\"tanggal\":\"2022-11-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(403, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8761043925\",\"nama\":\"Sophia Martinez\",\"tanggal\":\"2023-04-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(404, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8761205349\",\"nama\":\"Sophia Murphy\",\"tanggal\":\"2022-09-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(405, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8762093415\",\"nama\":\"Sophia Powell\",\"tanggal\":\"2023-12-29\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(406, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8762301954\",\"nama\":\"Sophia Reed\",\"tanggal\":\"2022-06-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(407, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8764590123\",\"nama\":\"Sophia Reynolds\",\"tanggal\":\"2023-01-23\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(408, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8901234567\",\"nama\":\"Sophia Turner\",\"tanggal\":\"2022-08-06\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(409, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8901346725\",\"nama\":\"Sophia Ward\",\"tanggal\":\"2023-11-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(410, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8901456327\",\"nama\":\"Stella Wallace\",\"tanggal\":\"2022-04-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(411, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8902734516\",\"nama\":\"Stewart Jackson\",\"tanggal\":\"2023-09-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(412, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8906137452\",\"nama\":\"Taylor Aiden\",\"tanggal\":\"2022-12-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(413, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"8950213647\",\"nama\":\"Taylor Harper\",\"tanggal\":\"2023-06-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(414, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9012345678\",\"nama\":\"Taylor Lucas\",\"tanggal\":\"2022-02-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(415, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9018372456\",\"nama\":\"Taylor Noah\",\"tanggal\":\"2023-05-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(416, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9048763521\",\"nama\":\"Thompson Charlotte\",\"tanggal\":\"2022-10-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(417, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9054382167\",\"nama\":\"Thompson Emma\",\"tanggal\":\"2023-04-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(418, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9061782453\",\"nama\":\"Thompson Grace\",\"tanggal\":\"2022-09-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(419, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9063478125\",\"nama\":\"Thompson Lily\",\"tanggal\":\"2023-12-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(420, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9078134526\",\"nama\":\"Thompson Lucas\",\"tanggal\":\"2022-06-17\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(421, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9078654321\",\"nama\":\"Thompson Oliver\",\"tanggal\":\"2023-01-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(422, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9142058763\",\"nama\":\"Turner Aiden\",\"tanggal\":\"2022-08-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(423, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9142078365\",\"nama\":\"Turner Ava\",\"tanggal\":\"2023-11-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(424, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9182730654\",\"nama\":\"Turner Chloe\",\"tanggal\":\"2022-05-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:42', '2026-03-02 22:08:42'),
(425, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9183654027\",\"nama\":\"Turner Emma\",\"tanggal\":\"2023-10-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(426, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9208453617\",\"nama\":\"Turner Ethan\",\"tanggal\":\"2022-03-04\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(427, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9260174583\",\"nama\":\"Turner Grace\",\"tanggal\":\"2023-07-16\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(428, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9270651483\",\"nama\":\"Turner Harper\",\"tanggal\":\"2022-11-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(429, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9271805346\",\"nama\":\"Turner Jackson\",\"tanggal\":\"2023-04-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(430, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9304857162\",\"nama\":\"Turner Liam\",\"tanggal\":\"2022-09-25\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(431, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9326751408\",\"nama\":\"Turner Lily\",\"tanggal\":\"2023-12-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(432, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9342016578\",\"nama\":\"Turner Lucas\",\"tanggal\":\"2022-06-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(433, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9342107865\",\"nama\":\"Turner Madison\",\"tanggal\":\"2023-02-03\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(434, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9352078461\",\"nama\":\"Turner Mia\",\"tanggal\":\"2022-07-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(435, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9378561204\",\"nama\":\"Turner Noah\",\"tanggal\":\"2023-10-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(436, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9384756201\",\"nama\":\"Turner Oliver\",\"tanggal\":\"2022-05-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(437, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9456302718\",\"nama\":\"Turner Olivia\",\"tanggal\":\"2023-01-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(438, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9462170583\",\"nama\":\"Turner Sebastian\",\"tanggal\":\"2022-08-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(439, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9462813507\",\"nama\":\"Turner Sophia\",\"tanggal\":\"2023-11-30\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(440, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9481073652\",\"nama\":\"Wallace Mia\",\"tanggal\":\"2022-04-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(441, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9483561207\",\"nama\":\"Wallace Stella\",\"tanggal\":\"2023-09-28\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(442, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9501764328\",\"nama\":\"Ward Chloe\",\"tanggal\":\"2022-12-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(443, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9518273640\",\"nama\":\"Ward Harper\",\"tanggal\":\"2023-06-21\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(444, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9546872013\",\"nama\":\"Ward Henry\",\"tanggal\":\"2022-02-14\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(445, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9561738042\",\"nama\":\"Ward Jackson\",\"tanggal\":\"2023-05-09\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(446, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9652318740\",\"nama\":\"Ward Liam\",\"tanggal\":\"2022-10-22\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(447, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9671058234\",\"nama\":\"Ward Lily\",\"tanggal\":\"2023-03-05\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(448, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9678325140\",\"nama\":\"Ward Lucas\",\"tanggal\":\"2022-07-18\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(449, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9736018245\",\"nama\":\"Ward Mia\",\"tanggal\":\"2023-12-11\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(450, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9765012342\",\"nama\":\"Ward Oliver\",\"tanggal\":\"2022-06-24\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(451, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9765012348\",\"nama\":\"Ward Sophia\",\"tanggal\":\"2023-02-07\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(452, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9765032481\",\"nama\":\"William Perry\",\"tanggal\":\"2022-09-01\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(453, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9768054321\",\"nama\":\"Williams Abigail\",\"tanggal\":\"2023-04-13\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(454, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9812345076\",\"nama\":\"Wright Ava\",\"tanggal\":\"2022-11-02\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(455, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9817352406\",\"nama\":\"Wright Isabella\",\"tanggal\":\"2023-08-15\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(456, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9817352409\",\"nama\":\"Wright Jackson\",\"tanggal\":\"2022-05-10\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(457, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9823456017\",\"nama\":\"Wright James\",\"tanggal\":\"2023-10-27\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(458, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9870452316\",\"nama\":\"Wyatt Barnes\",\"tanggal\":\"2022-03-08\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(459, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9876053121\",\"nama\":\"Zoe Fisher\",\"tanggal\":\"2023-07-20\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(460, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"nim\":\"9876053124\",\"nama\":\"Zoey Rodriguez\",\"tanggal\":\"2022-11-29\"}', 'Save API Data Mahasiswa', 'CREATE', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(461, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/savedataapi', 'POST', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:08:43', '2026-03-02 22:08:43'),
(462, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs', 'GET', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:08:45', '2026-03-02 22:08:45'),
(463, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/destroy-all', 'DELETE', '[\"Data Terhapus Semua\"]', 'Delete All Data Mahasiswa', 'DELETE', '127.0.0.1', '2026-03-02 22:08:56', '2026-03-02 22:08:56'),
(464, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs/destroy-all', 'DELETE', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:08:56', '2026-03-02 22:08:56'),
(465, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/data_mhs', 'GET', '{\"akses\":\"Menu Data_mhs\"}', 'Menu Data_mhs', 'Data_mhs', '127.0.0.1', '2026-03-02 22:08:56', '2026-03-02 22:08:56'),
(466, 'Pstechno', 'pstechno@gmail.com', 22, 'Chrome - Windows', 'http://localhost:8000/logout', 'POST', '{\"akses\":\"Logout\"}', 'Logout', 'LOGOUT', '127.0.0.1', '2026-03-02 22:09:11', '2026-03-02 22:09:11'),
(467, 'Admin', 'admin@gmail.com', 1, ' - ', 'http://localhost:8000/api/auth/login', 'POST', '{\"akses\":\"Menu Api\"}', 'Menu Api', 'Api', '127.0.0.1', '2026-03-02 22:10:39', '2026-03-02 22:10:39'),
(468, 'aziz', 'aziz@pstechno.co.id', 2, ' - ', 'http://localhost:8000/api/auth/login', 'POST', '{\"akses\":\"Menu Api\"}', 'Menu Api', 'Api', '127.0.0.1', '2026-03-02 22:19:46', '2026-03-02 22:19:46'),
(469, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Login\"}', 'Login', 'LOGIN', '127.0.0.1', '2026-03-02 22:20:11', '2026-03-02 22:20:11'),
(470, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/login', 'POST', '{\"akses\":\"Menu Login\"}', 'Menu Login', 'Login', '127.0.0.1', '2026-03-02 22:20:11', '2026-03-02 22:20:11'),
(471, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/dashboard', 'GET', '{\"akses\":\"Menu Dashboard\"}', 'Menu Dashboard', 'Dashboard', '127.0.0.1', '2026-03-02 22:20:12', '2026-03-02 22:20:12'),
(472, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:20:24', '2026-03-02 22:20:24'),
(473, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/33', 'DELETE', '\"User\"', '1', 'delete', '127.0.0.1', '2026-03-02 22:20:32', '2026-03-02 22:20:32'),
(474, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/33', 'DELETE', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:20:32', '2026-03-02 22:20:32'),
(475, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:20:32', '2026-03-02 22:20:32'),
(476, 'aziz', 'aziz@pstechno.com', 2, ' - ', 'http://localhost:8000/api/auth/login', 'POST', '{\"akses\":\"Menu Api\"}', 'Menu Api', 'Api', '127.0.0.1', '2026-03-02 22:21:18', '2026-03-02 22:21:18'),
(477, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:21:22', '2026-03-02 22:21:22'),
(478, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/edituser/34', 'PUT', '\"User\"', '1', 'update', '127.0.0.1', '2026-03-02 22:21:37', '2026-03-02 22:21:37'),
(479, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/edituser/34', 'PUT', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:21:37', '2026-03-02 22:21:37'),
(480, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:21:37', '2026-03-02 22:21:37'),
(481, 'aziz', 'aziz@pstechno.com', 2, ' - ', 'http://localhost:8000/api/auth/login', 'POST', '{\"akses\":\"Menu Api\"}', 'Menu Api', 'Api', '127.0.0.1', '2026-03-02 22:21:47', '2026-03-02 22:21:47'),
(482, 'aziz', 'aziz@pstechno.com', 2, ' - ', 'http://localhost:8000/api/auth/login', 'POST', '{\"akses\":\"Menu Api\"}', 'Menu Api', 'Api', '127.0.0.1', '2026-03-02 22:44:40', '2026-03-02 22:44:40'),
(483, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:44:47', '2026-03-02 22:44:47'),
(484, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/edituser/35', 'PUT', '\"User\"', '1', 'update', '127.0.0.1', '2026-03-02 22:44:56', '2026-03-02 22:44:56'),
(485, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/edituser/35', 'PUT', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:44:56', '2026-03-02 22:44:56'),
(486, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:44:57', '2026-03-02 22:44:57'),
(487, 'aziz', 'aziz@pstechno.com', 2, ' - ', 'http://localhost:8000/api/auth/login', 'POST', '{\"akses\":\"Menu Api\"}', 'Menu Api', 'Api', '127.0.0.1', '2026-03-02 22:45:03', '2026-03-02 22:45:03'),
(488, 'Users', 'users@gmail.com', 2, ' - ', 'http://localhost:8000/api/auth/login', 'POST', '{\"akses\":\"Menu Api\"}', 'Menu Api', 'Api', '127.0.0.1', '2026-03-02 22:52:16', '2026-03-02 22:52:16'),
(489, 'aziz', 'aziz@pstechno.com', 2, ' - ', 'http://localhost:8000/api/auth/login', 'POST', '{\"akses\":\"Menu Api\"}', 'Menu Api', 'Api', '127.0.0.1', '2026-03-02 22:59:12', '2026-03-02 22:59:12'),
(490, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:59:17', '2026-03-02 22:59:17'),
(491, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/edituser/36', 'PUT', '\"User\"', '1', 'update', '127.0.0.1', '2026-03-02 22:59:29', '2026-03-02 22:59:29'),
(492, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin/edituser/36', 'PUT', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:59:29', '2026-03-02 22:59:29'),
(493, 'Admin', 'admin@gmail.com', 1, 'Chrome - Windows', 'http://localhost:8000/admin', 'GET', '{\"akses\":\"Menu Admin\"}', 'Menu Admin', 'Admin', '127.0.0.1', '2026-03-02 22:59:29', '2026-03-02 22:59:29'),
(494, 'aziz', 'aziz@pstechno.com', 2, ' - ', 'http://localhost:8000/api/auth/login', 'POST', '{\"akses\":\"Menu Api\"}', 'Menu Api', 'Api', '127.0.0.1', '2026-03-02 22:59:34', '2026-03-02 22:59:34');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_17_032912_create_table_users_role', 1),
(5, '2025_02_17_033358_create_table_users_menu', 1),
(6, '2025_02_17_033644_create_table_users_sub_menu', 1),
(7, '2025_02_17_034020_create_table_users_access_menu', 1),
(8, '2025_02_21_022410_create_personal_access_tokens_table', 2),
(9, '2026_02_13_065514_create_production_table', 3),
(10, '2026_02_13_070201_create_product_table', 4),
(11, '2026_02_13_070652_create_qrcode_sekunder_table', 5),
(12, '2026_02_13_071103_create_qrcode_primer_table', 6),
(13, '2026_03_03_034808_create_datamhs_table', 7);

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
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0MuqRZmgIC21DsagdC3sTX5nZAaUFycCR2R1NylT', NULL, '127.0.0.1', 'PostmanRuntime/7.51.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFEyRUFWckpIaDNVNlhRQThJN2ZOb0RsWWNOclFSSUJlT291OGR2biI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1772517481),
('4xvCbru4cTZ4AtE1FocvcMDwvfWX4tkfpJYEdYit', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTnltOEtKZ1FQZVFXNk9naWJzYUlUaFRscmVLa3RyVlJCSkRCS1pQdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbiI7czo1OiJyb3V0ZSI7czoxMToiYWRtaW4uaW5kZXgiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1772517569);

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
  `role_id` int(11) NOT NULL DEFAULT 2,
  `entitas` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(512) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `entitas`, `image`, `remember_token`, `google_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2026-02-12 09:09:00', '$2y$12$R96B.1mxU71LU2JIaAVExu7ATl3Vk0.9fEAPFsKEjcr7dF/9J9v7.', 1, 'LG', '1772509328_logo_circlepstechno.png', NULL, '', '2025-02-20 01:17:20', '2026-03-03 05:20:11'),
(2, 'Users', 'users@gmail.com', '2026-02-12 09:04:56', '$2y$12$QLo8jAWz2ox25c06MuZVlel99f3ovKS/wWlLFJHPf.cFlB5HsFA3C', 2, 'LC', '1770887096_User-PNG-Photos.png', 'KlrmYuVA43mMIPgIGKGUo5TvnZ5adHAfAY2D9luqbwVcv39xLdm15oaaOoUt', '', '2025-02-20 01:17:20', '2026-02-13 07:55:09'),
(31, 'Pstechno', 'pstechno@gmail.com', '2026-03-03 05:05:00', '$2y$12$97788yxShItYajWCwPBq4eMQMrQLDiBWp7VjaMePPhoXtKSSAOwj.', 22, 'LC', NULL, NULL, NULL, '2026-03-02 22:04:17', '2026-03-03 05:07:22'),
(36, 'aziz', 'aziz@pstechno.com', '2026-03-03 05:59:00', '$2y$12$g2p/QtDqUt0JT.RB2rLZkORqsGSMRDbhah8FgxjIwCgHOL3fJuW9C', 2, 'LC', NULL, NULL, NULL, '2026-03-02 22:58:55', '2026-03-02 22:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `users_access_menu`
--

CREATE TABLE `users_access_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_access_menu`
--

INSERT INTO `users_access_menu` (`id`, `role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2025-02-20 08:22:00', NULL),
(2, 2, 1, '2025-02-20 08:22:00', NULL),
(3, 1, 3, '2025-02-20 08:22:35', NULL),
(8, 2, 3, NULL, NULL),
(9, 4, 1, NULL, NULL),
(10, 1, 1, NULL, NULL),
(12, 32, 1, NULL, NULL),
(14, 30, 1, NULL, NULL),
(15, 30, 4, NULL, NULL),
(16, 1, 5, NULL, NULL),
(18, 1, 7, NULL, NULL),
(21, 22, 1, NULL, NULL),
(22, 22, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_menu`
--

CREATE TABLE `users_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu` varchar(255) NOT NULL,
  `icon_menu` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_menu`
--

INSERT INTO `users_menu` (`id`, `menu`, `icon_menu`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'fa fa-fw fa-home', '2025-02-20 08:18:33', NULL),
(2, 'Admin', 'fa fa-fw fa-users', '2025-02-20 08:18:33', '2026-02-13 00:42:20'),
(3, 'Menu', 'fa fa-fw fa-book', '2025-02-20 08:19:37', NULL),
(5, 'Monitoring', 'fa fa-fw  fa-support', '2026-02-18 20:01:35', '2026-02-18 20:01:35'),
(7, 'Data_mhs', 'fa fa-fw fa-book', '2026-03-02 20:46:10', '2026-03-02 20:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2025-02-22 06:18:05', '0000-00-00 00:00:00'),
(2, 'User', '2025-02-22 06:18:05', '0000-00-00 00:00:00'),
(3, 'Mn_finance', '2025-03-12 21:49:55', '2025-03-12 21:49:55'),
(4, 'Mn_engineering', '2025-03-12 21:50:40', '2025-03-12 21:50:40'),
(5, 'Mn_sales', '2025-03-12 21:50:53', '2025-03-12 21:50:53'),
(6, 'Mn_acc', '2025-03-12 21:51:42', '2025-03-12 21:51:42'),
(7, 'Mn_rnd', '2025-03-12 21:51:58', '2025-03-12 21:51:58'),
(8, 'Mn_produksi', '2025-03-12 21:52:13', '2025-03-12 21:52:13'),
(9, 'Mn_ppic', '2025-03-12 21:52:25', '2025-03-12 21:52:25'),
(10, 'Mn_hrga', '2025-03-12 21:52:35', '2025-03-12 21:52:35'),
(11, 'Mn_qc', '2025-03-12 21:52:53', '2025-03-12 21:52:53'),
(12, 'Mn_qa', '2025-03-12 21:53:35', '2025-03-12 21:53:35'),
(13, 'Direksi_lucas', '2025-03-12 21:53:56', '2025-03-12 21:53:56'),
(14, 'Direksi_marin', '2025-03-12 21:54:08', '2025-03-12 21:54:08'),
(15, 'Sm_finance', '2025-03-12 21:54:29', '2025-03-26 04:33:55'),
(16, 'Sm_operasional', '2025-03-12 21:54:54', '2025-03-12 21:54:54'),
(17, 'Sm_qaqc', '2025-03-12 21:55:46', '2025-03-12 21:55:46'),
(18, 'Staf_finance', '2025-03-12 21:56:22', '2025-03-12 21:56:22'),
(19, 'Staf_ppic', '2025-03-26 03:25:03', '2025-03-26 03:25:03'),
(20, 'Staf_rnd', '2025-03-26 03:25:24', '2025-03-26 03:25:24'),
(21, 'Staf_sales', '2025-03-26 03:25:38', '2025-03-26 03:25:38'),
(22, 'Staf_engineering', '2025-03-26 03:27:32', '2025-03-26 03:27:32'),
(23, 'Staf_qa', '2025-03-26 03:48:58', '2025-03-26 03:48:58'),
(24, 'Staf_qc', '2025-03-26 03:49:09', '2025-03-26 03:49:09'),
(25, 'Staf_acc', '2025-03-26 03:49:26', '2025-03-26 03:49:26'),
(26, 'Staf_hrga', '2025-03-26 03:49:53', '2025-03-26 03:49:53'),
(27, 'Staf_legal', '2025-03-26 03:50:05', '2025-03-26 03:50:05'),
(28, 'Mn_purchase', '2025-03-26 03:50:31', '2025-03-26 03:51:11'),
(29, 'Staf_purchase', '2025-03-26 03:50:59', '2025-03-26 03:50:59'),
(30, 'Staf_produksi', '2025-03-26 04:16:00', '2025-03-26 04:16:00'),
(31, 'Spv_engineering', '2025-03-26 07:29:17', '2025-03-26 07:29:17'),
(32, 'Spv_produksi', '2025-03-26 07:29:54', '2025-03-26 07:29:54'),
(33, 'Spv_ppic', '2025-03-26 07:30:31', '2025-03-26 07:30:31'),
(34, 'Spv_rnd', '2025-03-26 07:31:09', '2025-03-26 07:31:09'),
(35, 'Spv_hrga', '2025-03-26 07:31:42', '2025-03-26 07:31:42'),
(36, 'Spv_qa', '2025-03-26 07:32:14', '2025-03-26 07:32:14'),
(37, 'Spv_qc', '2025-03-26 07:32:37', '2025-03-26 07:32:37'),
(38, 'Spv_purchase', '2025-03-26 07:33:10', '2025-03-26 07:33:10'),
(39, 'Spv_finance', '2025-03-26 07:33:47', '2025-03-26 07:33:47'),
(40, 'Spv_acc', '2025-03-26 07:34:18', '2025-03-26 07:34:18'),
(41, 'Spv_sales', '2025-03-26 07:34:43', '2025-03-26 07:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `users_sub_menu`
--

CREATE TABLE `users_sub_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_sub_menu`
--

INSERT INTO `users_sub_menu` (`id`, `menu_id`, `title`, `url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dashboard', 'dashboard', 1, '2025-02-20 08:19:57', NULL),
(2, 2, 'Administartor', 'admin', 1, '2025-02-20 08:19:57', NULL),
(3, 2, 'Role', 'admin/role', 1, '2025-02-20 08:20:53', NULL),
(4, 3, 'Menu Management', 'menu', 1, '2025-02-20 08:20:53', NULL),
(5, 3, 'Submenu Management', 'menu/submenu', 1, '2025-02-20 08:21:34', NULL),
(8, 5, 'Log', 'monitoring', 1, NULL, NULL),
(12, 7, 'Data Mahasiswa', 'data_mhs', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `datamhs`
--
ALTER TABLE `datamhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loguser`
--
ALTER TABLE `loguser`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_access_menu`
--
ALTER TABLE `users_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_menu`
--
ALTER TABLE `users_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_sub_menu`
--
ALTER TABLE `users_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datamhs`
--
ALTER TABLE `datamhs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loguser`
--
ALTER TABLE `loguser`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users_access_menu`
--
ALTER TABLE `users_access_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users_menu`
--
ALTER TABLE `users_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users_sub_menu`
--
ALTER TABLE `users_sub_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
