-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour ecomercelaravel10
DROP DATABASE IF EXISTS `ecomercelaravel10`;
CREATE DATABASE IF NOT EXISTS `ecomercelaravel10` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecomercelaravel10`;

-- Listage de la structure de table ecomercelaravel10. accessories
DROP TABLE IF EXISTS `accessories`;
CREATE TABLE IF NOT EXISTS `accessories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_count` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.accessories : ~12 rows (environ)
DELETE FROM `accessories`;
INSERT INTO `accessories` (`id`, `name`, `slug`, `product_count`, `category_id`, `created_at`, `updated_at`) VALUES
	(1, 'Headphones', 'headphones', 8, 4, '2023-05-13 16:13:25', '2023-05-13 16:13:25'),
	(2, 'KEYBOARD', 'keyboard', 8, 4, '2023-05-13 16:15:24', '2023-05-13 16:15:24'),
	(3, 'USB KEY', 'usb-key', 12, 4, '2023-05-13 16:15:55', '2023-05-13 16:15:55'),
	(4, 'Earphone', 'earphone', 12, 4, '2023-05-13 16:18:29', '2023-05-13 16:18:29'),
	(5, 'Gaming Mice', 'gaming-mice', 2, 4, '2023-05-13 16:19:53', '2023-05-13 16:19:53'),
	(6, 'Cable Organizer Bags & Cases', 'cable-organizer-bags-cases', 20, 4, '2023-05-13 16:23:05', '2023-05-13 16:23:05'),
	(7, 'SPEAKER', 'speaker', 20, 4, '2023-05-13 16:24:09', '2023-05-13 16:24:09'),
	(8, 'MOUSE', 'mouse', 12, 4, '2023-05-13 16:24:41', '2023-05-13 16:24:41'),
	(9, 'INTERNAL HDD', 'internal-hdd', 18, 4, '2023-05-13 16:25:21', '2023-05-13 16:25:21'),
	(10, 'HDD MOBILE', 'hdd-mobile', 55, 4, '2023-05-13 16:25:52', '2023-05-13 16:25:52'),
	(11, 'KEYBOARD/MOUSE PACK', 'keyboardmouse-pack', 6, 4, '2023-05-13 16:26:53', '2023-05-13 16:26:53'),
	(12, 'Bag', 'bag', 22, 4, '2023-05-13 16:29:38', '2023-05-13 16:29:38');

-- Listage de la structure de table ecomercelaravel10. attribute_values
DROP TABLE IF EXISTS `attribute_values`;
CREATE TABLE IF NOT EXISTS `attribute_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_attribute_id` bigint unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  KEY `attribute_values_product_id_foreign` (`product_id`),
  CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.attribute_values : ~14 rows (environ)
DELETE FROM `attribute_values`;
INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`) VALUES
	(23, 2, 'Apple', 26, '2023-05-11 14:55:29', '2023-05-11 14:55:29'),
	(24, 3, 'White', 26, '2023-05-11 14:55:29', '2023-05-11 14:55:29'),
	(30, 3, 'Black', 18, '2023-05-12 12:51:50', '2023-05-12 12:51:50'),
	(31, 3, 'Blue', 18, '2023-05-12 12:51:50', '2023-05-12 12:51:50'),
	(32, 3, 'Black', 17, '2023-05-12 12:54:02', '2023-05-12 12:54:02'),
	(33, 3, 'Aquamarine', 17, '2023-05-12 12:54:02', '2023-05-12 12:54:02'),
	(42, 3, 'Whate', 15, '2023-05-13 10:16:57', '2023-05-13 10:16:57'),
	(43, 3, 'Black', 15, '2023-05-13 10:16:57', '2023-05-13 10:16:57'),
	(44, 3, 'Pink', 15, '2023-05-13 10:16:57', '2023-05-13 10:16:57'),
	(45, 2, 'Apple', 21, '2023-05-13 12:16:40', '2023-05-13 12:16:40'),
	(46, 2, 'SAMSUNG', 21, '2023-05-13 12:16:40', '2023-05-13 12:16:40'),
	(47, 2, 'Realme', 21, '2023-05-13 12:16:40', '2023-05-13 12:16:40'),
	(48, 2, 'Oppo', 21, '2023-05-13 12:16:40', '2023-05-13 12:16:40'),
	(49, 2, 'Infinix', 21, '2023-05-13 12:16:40', '2023-05-13 12:16:40');

-- Listage de la structure de table ecomercelaravel10. brands
DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.brands : ~17 rows (environ)
DELETE FROM `brands`;
INSERT INTO `brands` (`id`, `name`, `slug`, `created_at`, `updated_at`, `category_id`) VALUES
	(1, 'SAMSUNG', 'samsung', '2023-05-10 17:42:38', '2023-05-10 17:49:00', 0),
	(2, 'dell', 'dell', '2023-05-10 20:44:16', '2023-05-10 20:44:16', 0),
	(3, 'Apple', 'apple', '2023-05-10 20:44:31', '2023-05-10 20:44:31', 0),
	(4, 'hp', 'hp', '2023-05-11 08:06:58', '2023-05-11 08:06:58', 0),
	(5, 'lenovo', 'lenovo', '2023-05-11 15:00:43', '2023-05-11 15:00:43', 0),
	(6, 'acer', 'acer', '2023-05-11 15:01:01', '2023-05-13 20:53:25', 2),
	(7, 'Realme', 'realme', '2023-05-11 15:01:28', '2023-05-11 15:01:28', 0),
	(8, 'Vivo', 'vivo', '2023-05-11 15:03:04', '2023-05-11 15:03:04', 0),
	(9, 'Oppo', 'oppo', '2023-05-11 15:03:22', '2023-05-11 15:03:22', 0),
	(10, 'Infinix', 'infinix', '2023-05-11 15:04:48', '2023-05-11 15:04:48', 0),
	(12, 'asus', 'asus', '2023-05-11 19:24:47', '2023-05-13 20:56:04', 1),
	(13, 'CANON', 'canon', '2023-05-14 11:44:59', '2023-05-14 11:44:59', 5),
	(14, 'STEELSERIE', 'steelserie', '2023-05-30 09:06:15', '2023-05-30 09:06:15', 4),
	(15, ' NGS', 'ngs', '2023-05-30 09:06:54', '2023-05-30 09:06:54', 4),
	(16, 'ADATA', 'adata', '2023-05-30 09:07:54', '2023-05-30 09:07:54', 4),
	(17, ' CELLY', 'celly', '2023-05-30 09:08:28', '2023-05-30 09:08:28', 4),
	(18, ' LOGITECH', 'logitech', '2023-05-30 09:09:04', '2023-05-30 09:09:04', 4);

-- Listage de la structure de table ecomercelaravel10. categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.categories : ~4 rows (environ)
DELETE FROM `categories`;
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Laptop', 'laptop', '2023-05-01 21:43:07', '2023-05-01 21:43:07'),
	(2, 'Tablet & Smartphone', 'tablet-smartphone', '2023-05-07 14:07:17', '2023-05-07 14:07:17'),
	(4, 'Accessories', 'accessoirs', '2023-05-10 18:36:40', '2023-05-13 16:14:22'),
	(5, 'Multimedia', 'multimedia', '2023-05-14 10:56:46', '2023-05-14 10:56:46');

-- Listage de la structure de table ecomercelaravel10. colors
DROP TABLE IF EXISTS `colors`;
CREATE TABLE IF NOT EXISTS `colors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.colors : ~11 rows (environ)
DELETE FROM `colors`;
INSERT INTO `colors` (`id`, `name`, `slug`, `product_count`, `created_at`, `updated_at`) VALUES
	(1, 'white', 'white', 6, '2023-05-12 11:20:28', '2023-05-12 11:31:48'),
	(2, 'Black', 'black', 10, '2023-05-12 12:49:17', '2023-05-12 12:49:17'),
	(3, 'Grey', 'grey', 8, '2023-05-12 12:49:30', '2023-05-12 12:49:30'),
	(4, 'Lavender', 'lavender', 8, '2023-05-13 10:06:35', '2023-05-13 10:06:35'),
	(5, ' Mint', 'mint', 8, '2023-05-13 10:08:11', '2023-05-13 10:08:11'),
	(6, ' Cream', 'cream', 8, '2023-05-13 10:09:03', '2023-05-13 10:09:03'),
	(7, ' Light green', 'light-green', 8, '2023-05-13 10:10:17', '2023-05-13 10:10:17'),
	(8, ' Pink Gold', 'pink-gold', 7, '2023-05-13 10:11:07', '2023-05-13 10:11:07'),
	(9, 'Blue', 'blue', 5, '2023-05-13 10:14:00', '2023-05-13 10:14:00'),
	(10, 'Yellow', 'yellow', 12, '2023-05-30 09:10:47', '2023-05-30 09:10:47'),
	(11, 'Red', 'red', 5, '2023-05-30 09:22:10', '2023-05-30 09:22:10');

-- Listage de la structure de table ecomercelaravel10. contacts
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.contacts : ~2 rows (environ)
DELETE FROM `contacts`;
INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
	(1, 'Fatima Stitou', 'fatima.stitou2002@gmail.com', '0648674966', 'hello!', '2023-05-04 09:59:46', '2023-05-04 09:59:46'),
	(2, 'STITOU FATIMA', 'fatima.zohra.stitou2002@gmail.com', '0642341668', 'bonjour', '2023-05-18 09:03:47', '2023-05-18 09:03:47');

-- Listage de la structure de table ecomercelaravel10. coupons
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.coupons : ~3 rows (environ)
DELETE FROM `coupons`;
INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
	(1, 'FFF05', 'fixed', 50.00, 12.00, '2023-05-02 10:36:12', '2023-06-03 11:18:47', '2023-06-16'),
	(2, 'OFF100', 'fixed', 10.00, 100.00, '2023-05-02 09:54:28', '2023-05-02 10:05:57', '2023-05-02'),
	(3, 'DGGG10', 'fixed', 50.00, 12.00, '2023-05-02 10:07:17', '2023-05-02 10:07:17', '2023-05-01');

-- Listage de la structure de table ecomercelaravel10. email_messages
DROP TABLE IF EXISTS `email_messages`;
CREATE TABLE IF NOT EXISTS `email_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.email_messages : ~2 rows (environ)
DELETE FROM `email_messages`;
INSERT INTO `email_messages` (`id`, `title`, `subject`, `action`, `body`, `created_at`, `updated_at`) VALUES
	(1, 'Newsletter Subscription', 'Welcome to our organisation', 'NEWSLETTER_SUBSCRIPTION_CUSTOMER', 'Thanks for subscribing to our newsletter, you will hear from us soon.', '2023-05-31 09:43:07', '2023-05-31 09:43:08'),
	(2, 'Newsletter Subscription', 'New Subscription', 'NEWSLETTER_SUBSCRIPTION_CUSTOMER', 'The with email{{$email}} has subscribed to our newsletter.Please add him/her to the mailling list', '2023-05-31 09:46:34', '2023-05-31 09:46:37');

-- Listage de la structure de table ecomercelaravel10. employes
DROP TABLE IF EXISTS `employes`;
CREATE TABLE IF NOT EXISTS `employes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_number` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `depart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hire_date` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.employes : ~2 rows (environ)
DELETE FROM `employes`;
INSERT INTO `employes` (`id`, `fullname`, `registration_number`, `email`, `depart`, `hire_date`, `address`, `city`, `created_at`, `updated_at`, `phone`) VALUES
	(1, 'STITOU FATIMA', 25678, 'fatima.zohra.stitou2002@gmail.com', '2020', '2023-05-25', 'HAY EL QODS RUE 79 N°4 BIR CHIFA, TANGER', 'Tangier', '2023-05-25 21:02:39', '2023-06-02 14:02:38', 642341668),
	(11, 'Nada', 1564, '0', '2016', '0202-05-03', '79 Rue Chalet', 'Lavonia', '2023-05-27 12:57:15', '2023-05-27 12:57:15', 641235);

-- Listage de la structure de table ecomercelaravel10. failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.failed_jobs : ~0 rows (environ)
DELETE FROM `failed_jobs`;

-- Listage de la structure de table ecomercelaravel10. home_categories
DROP TABLE IF EXISTS `home_categories`;
CREATE TABLE IF NOT EXISTS `home_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.home_categories : ~1 rows (environ)
DELETE FROM `home_categories`;
INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
	(1, '1,2,4,5', 12, '2023-05-01 19:54:26', '2023-05-14 10:56:58');

-- Listage de la structure de table ecomercelaravel10. home_sliders
DROP TABLE IF EXISTS `home_sliders`;
CREATE TABLE IF NOT EXISTS `home_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.home_sliders : ~3 rows (environ)
DELETE FROM `home_sliders`;
INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Laptop', 'Laptop', '85', 'http://127.0.0.1:8000/shop', '1682972348.jpg', 1, '2023-05-01 19:19:08', '2023-05-05 17:10:31'),
	(2, 'Canon', 'Impression', '50', 'http://127.0.0.1:8000/shop', '1682972412.png', 1, '2023-05-01 19:20:12', '2023-05-05 17:10:52'),
	(3, 'logitech Desktop', 'Desktop ', '65', 'http://127.0.0.1:8000/sho', '1682972481.jpg', 1, '2023-05-01 19:21:21', '2023-05-05 17:11:16');

-- Listage de la structure de table ecomercelaravel10. migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.migrations : ~69 rows (environ)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(13, '2014_10_12_000000_create_users_table', 1),
	(14, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(15, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(16, '2019_08_19_000000_create_failed_jobs_table', 1),
	(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(18, '2023_04_28_212903_create_sessions_table', 1),
	(19, '2023_04_29_002044_create_categories_table', 1),
	(20, '2023_04_29_203855_create_products_table', 1),
	(21, '2023_04_30_110256_create_home_sliders_table', 1),
	(22, '2023_04_30_152147_create_home_categories_table', 1),
	(23, '2023_04_30_195710_create_sales_table', 1),
	(24, '2023_05_01_121736_create_coupons_table', 1),
	(25, '2023_05_01_200650_create_coupons_table', 2),
	(26, '2023_05_02_095345_add_expiry_date_to_coupons_table', 3),
	(27, '2023_05_02_100603_create_coupons_table', 4),
	(28, '2023_05_02_101706_add_expiry_date_to_coupons_table', 5),
	(29, '2023_05_02_102558_create_coupons_table', 6),
	(30, '2023_05_02_103009_add_expiry_date_to_coupons_table', 7),
	(31, '2023_05_02_110946_create_orders_table', 8),
	(32, '2023_05_02_111018_create_order_items_table', 8),
	(33, '2023_05_02_111111_create_shippings_table', 8),
	(34, '2023_05_02_111141_create_transactions_table', 8),
	(35, '2023_05_03_113606_add_delivered_canceled_date_to_orders_table', 9),
	(36, '2023_05_03_124533_create_reviews_table', 10),
	(37, '2023_05_03_125114_add_rstatus_to_order_items_table', 10),
	(38, '2023_05_04_101937_create_contacts_table', 11),
	(39, '2023_05_04_110717_create_settings_table', 12),
	(40, '2023_05_05_215801_create_shoppingcart_table', 13),
	(41, '2023_05_06_143216_create_subcategories_table', 14),
	(42, '2023_05_06_160511_create_profiles_table', 15),
	(43, '2023_05_08_093936_create_product_attributes_table', 16),
	(44, '2023_05_08_102714_create_attribute_values_table', 17),
	(45, '2023_05_09_100023_add_options_to_order_items_table', 18),
	(46, '2023_05_10_101033_create_brands_table', 19),
	(47, '2023_05_10_145240_create_brands_table', 20),
	(48, '2023_05_10_172555_create_brands_table', 21),
	(51, '2023_05_10_183936_add_category_id_to_brands_table', 22),
	(52, '2023_05_11_223921_create_colors_table', 22),
	(53, '2023_05_12_123420_add_color_id_to_products', 23),
	(54, '2023_05_12_160145_create_rams_table', 24),
	(55, '2023_05_12_174510_add_ram_id_to_products', 25),
	(56, '2023_05_12_182245_create_processors_table', 26),
	(57, '2023_05_12_184310_add_processor_id_to_products', 27),
	(58, '2023_05_12_185740_add_slug_to_processors', 28),
	(59, '2023_05_13_102943_add_category_id_to_processors', 29),
	(60, '2023_05_13_112100_create_taille_ecrons_table', 30),
	(62, '2023_05_13_113107_add_product_count_to_taille_ecrons', 31),
	(63, '2023_05_13_123434_create_taille_ecrons_table', 32),
	(64, '2023_05_13_123656_create_taille_ecrons_table', 33),
	(65, '2023_05_13_125238_add_taille_id_to_taille_ecrons', 34),
	(66, '2023_05_13_125806_add_taille_id_to_products', 35),
	(67, '2023_05_13_133304_create_system__exploitations_table', 36),
	(68, '2023_05_13_154653_add_system_id_to_products', 37),
	(69, '2023_05_13_161833_create_accessories_table', 38),
	(70, '2023_05_13_162439_add_accessorie_id_to_products', 39),
	(71, '2023_05_14_121056_create_multimedia_table', 40),
	(72, '2023_05_14_121635_add_multimedia_id_to_products', 41),
	(73, '2023_05_16_160608_create_abouts_table', 42),
	(74, '2023_05_16_180901_create_return_orders_table', 42),
	(75, '2023_05_19_184021_create_newsletters_table', 43),
	(76, '2023_05_19_185621_create_newsletters_table', 44),
	(77, '2023_05_25_192850_create_employes_table', 45),
	(78, '2023_05_25_194603_add_phone_to_employes', 46),
	(79, '2023_05_25_195031_add_phone_to_employes', 47),
	(80, '2023_05_29_124329_create_paiement_table', 48),
	(81, '2023_05_29_125022_add_order_id_to_paiement', 49),
	(82, '2023_05_30_192910_create_subscribers_table', 50),
	(83, '2023_05_31_093744_create_email_messages_table', 51),
	(84, '2023_06_02_144553_add_email_to_employes', 52);

-- Listage de la structure de table ecomercelaravel10. multimedia
DROP TABLE IF EXISTS `multimedia`;
CREATE TABLE IF NOT EXISTS `multimedia` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `multimedia_name_unique` (`name`),
  UNIQUE KEY `multimedia_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.multimedia : ~1 rows (environ)
DELETE FROM `multimedia`;
INSERT INTO `multimedia` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'LENS EF 70-300MM F4-5.6 ISIIUSM', 'lens-ef-70-300mm-f4-56-isiiusm', '2023-05-14 11:37:19', '2023-05-14 11:37:19');

-- Listage de la structure de table ecomercelaravel10. newsletters
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE IF NOT EXISTS `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newsletters_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.newsletters : ~2 rows (environ)
DELETE FROM `newsletters`;
INSERT INTO `newsletters` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'user@usergmail.com', 1, '2023-05-31 11:56:40', NULL),
	(2, 'user@1usergmail.com', 1, NULL, NULL);

-- Listage de la structure de table ecomercelaravel10. orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.orders : ~11 rows (environ)
DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
	(49, 9, 16350.00, 0.00, 3433.50, 19783.50, 'Fatima', 'Stitou', '0648674966', 'fatima.stitou2002@gmail.com', 'test line-1', 'test line-2', 'Tangier', 'Swani', 'Maroc', '30553', 'delivered', 0, '2023-05-04 18:08:28', '2023-05-04 18:17:38', '2023-05-04', NULL),
	(50, 9, 2610.00, 0.00, 548.10, 3158.10, 'Fatima', 'Stitou', '0648674966', 'fatima.zohra.stitou2002@gmail.com', 'Block A', 'Nit', 'Faridabad', 'Haryana', 'India', '121001', 'delivered', 0, '2023-05-05 20:46:13', '2023-05-06 19:42:34', '2023-05-06', NULL),
	(51, 9, 758.00, 0.00, 159.18, 917.18, 'Fatima', 'Stitou', '0648674966', 'fatima.zohra.stitou2002@gmail.com', 'Block A', 'Nit', 'Faridabad', 'Haryana', 'India', '121001', 'canceled', 0, '2023-05-05 20:48:32', '2023-05-06 14:48:11', NULL, '2023-05-06'),
	(52, 9, 1060.99, 0.00, 222.81, 1283.80, 'Fatima', 'Stitou', '0648674966', 'fatima.zohra.stitou2002@gmail.com', 'Block A', 'Block B', 'Lavonia', 'Georgia', 'États-Unis', '30553', 'delivered', 0, '2023-05-05 21:59:50', '2023-05-06 19:42:30', '2023-05-06', NULL),
	(53, 9, 1898.00, 0.00, 398.58, 2296.58, 'Fatima', 'Stitou', '0648674966', 'fatima.zohra.stitou2002@gmail.com', 'test line1', 'test line2', 'Lavonia', 'Georgia', 'États-Unis', '30553', 'delivered', 0, '2023-05-06 14:49:38', '2023-05-06 19:42:26', '2023-05-06', NULL),
	(54, 9, 5319.93, 0.00, 1117.19, 6437.12, 'Fatima', 'Stitou', '0648674966', 'fatima.zohra.stitou2002@gmail.com', 'test line1', 'ln-23', 'Lavonia', 'Georgia', 'États-Unis', '30553', 'ordered', 0, '2023-05-09 09:07:57', '2023-05-09 09:07:57', NULL, NULL),
	(55, 9, 6798.92, 0.00, 1427.78, 8226.70, 'Fatima', 'Stitou', '0648674966', 'fatima.stitou2@etu.uae.ac.ma', 'Block A', 'Block B', 'Tangier', 'Swani', 'Maroc', '121001', 'canceled', 1, '2023-05-09 21:19:25', '2023-05-09 21:31:31', NULL, '2023-05-09'),
	(56, 9, 4317.18, 0.00, 906.60, 5223.78, 'STITOU', 'FATIMA', '0642341668', 'fatima.zohra.stitou2002@gmail.com', 'ln-1', 'ln-1', 'Tangier', 'la', 'Éthiopie', '121000', 'ordered', 0, '2023-05-18 08:57:06', '2023-05-18 08:57:06', NULL, NULL),
	(57, 9, 4566.99, 0.00, 959.07, 5526.06, 'Fatima', 'Stitou', '0648674966', 'fatima.zohra.stitou2002@gmail.com', 'test line1', 'ln-1', 'Tangier', 'Haryana', 'Maroc', '121200', 'ordered', 0, '2023-05-22 21:00:39', '2023-05-22 21:00:39', NULL, NULL),
	(58, 9, 7165.99, 0.00, 1504.86, 8670.85, 'Fatima', 'Stitou', '0648674966', 'fatima.zohra.stitou2002@gmail.com', 'test line1', 'ln-1', 'Lavonia', 'Georgia', 'États-Unis', '30553', 'ordered', 0, '2023-06-06 17:29:22', '2023-06-06 17:29:22', NULL, NULL),
	(59, 9, 5555.99, 0.00, 1166.76, 6722.75, 'Fatima', 'Stitou', '648674966', 'fatima.zohra.stitou2002@gmail.com', 'test line1', 'ln-1', 'Tazroute', 'Haryana', 'Inde', '121001', 'ordered', 0, '2023-06-06 19:39:40', '2023-06-06 19:39:40', NULL, NULL);

-- Listage de la structure de table ecomercelaravel10. order_items
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT '0',
  `options` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.order_items : ~19 rows (environ)
DELETE FROM `order_items`;
INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`, `options`) VALUES
	(59, 7, 50, 352.00, 1, '2023-05-05 20:46:13', '2023-05-06 19:43:52', 1, NULL),
	(60, 6, 50, 379.00, 2, '2023-05-05 20:46:13', '2023-05-18 08:53:22', 1, NULL),
	(61, 14, 50, 1500.00, 1, '2023-05-05 20:46:13', '2023-06-03 11:59:31', 1, NULL),
	(62, 6, 51, 379.00, 2, '2023-05-05 20:48:32', '2023-05-05 20:48:32', 0, NULL),
	(63, 6, 52, 379.00, 1, '2023-05-05 21:59:50', '2023-05-05 21:59:50', 0, NULL),
	(64, 7, 52, 352.00, 1, '2023-05-05 21:59:50', '2023-05-05 21:59:50', 0, NULL),
	(65, 9, 52, 329.99, 1, '2023-05-05 21:59:50', '2023-05-05 21:59:50', 0, NULL),
	(66, 6, 53, 379.00, 2, '2023-05-06 14:49:38', '2023-05-06 14:49:38', 0, NULL),
	(67, 10, 53, 1140.00, 1, '2023-05-06 14:49:38', '2023-05-06 14:49:38', 0, NULL),
	(68, 26, 54, 5319.93, 1, '2023-05-09 09:07:57', '2023-05-09 09:07:57', 0, 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:1:{s:5:"Brand";s:7:"SAMSUNG";}s:28:"\0*\0escapeWhenCastingToString";b:0;}'),
	(69, 26, 55, 5319.93, 1, '2023-05-09 21:19:25', '2023-05-09 21:19:25', 0, 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:1:{s:5:"Brand";s:7:"SAMSUNG";}s:28:"\0*\0escapeWhenCastingToString";b:0;}'),
	(70, 12, 55, 1149.00, 1, '2023-05-09 21:19:25', '2023-05-09 21:19:25', 0, 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}'),
	(71, 9, 55, 329.99, 1, '2023-05-09 21:19:25', '2023-05-09 21:19:25', 0, 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}'),
	(72, 15, 56, 2158.59, 2, '2023-05-18 08:57:06', '2023-05-18 08:57:06', 0, 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}'),
	(73, 21, 57, 4566.99, 1, '2023-05-22 21:00:39', '2023-05-22 21:00:39', 0, 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}'),
	(74, 12, 58, 1149.00, 1, '2023-06-06 17:29:22', '2023-06-06 17:29:22', 0, 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}'),
	(75, 21, 58, 4566.99, 1, '2023-06-06 17:29:22', '2023-06-06 17:29:22', 0, 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}'),
	(76, 14, 58, 1450.00, 1, '2023-06-06 17:29:22', '2023-06-06 17:29:22', 0, 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}'),
	(77, 26, 59, 5555.99, 1, '2023-06-06 19:39:40', '2023-06-06 19:39:40', 0, 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}');

-- Listage de la structure de table ecomercelaravel10. paiement
DROP TABLE IF EXISTS `paiement`;
CREATE TABLE IF NOT EXISTS `paiement` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date_paiement` date NOT NULL,
  `mode_paiement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paiement_order_id_foreign` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.paiement : ~0 rows (environ)
DELETE FROM `paiement`;

-- Listage de la structure de table ecomercelaravel10. password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.password_reset_tokens : ~2 rows (environ)
DELETE FROM `password_reset_tokens`;
INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
	('fatima.zohra.stitou2002@gmail.com', '$2y$10$hrZGHw7c63vU8t0v4AQxBe7Bd2M90x8P6adNdaj9D2w2Qguf.PTrm', '2023-05-04 12:22:40'),
	('user@user', '$2y$10$e094aerUXnxJVqLzNyRbauLUr8/4GTLzzJLfKh24gWc2/utAuUVn6', '2023-05-04 12:10:07');

-- Listage de la structure de table ecomercelaravel10. personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.personal_access_tokens : ~0 rows (environ)
DELETE FROM `personal_access_tokens`;

-- Listage de la structure de table ecomercelaravel10. processors
DROP TABLE IF EXISTS `processors`;
CREATE TABLE IF NOT EXISTS `processors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.processors : ~14 rows (environ)
DELETE FROM `processors`;
INSERT INTO `processors` (`id`, `name`, `quantity`, `created_at`, `updated_at`, `slug`, `category_id`) VALUES
	(1, 'AMD', 8, '2023-05-12 18:22:52', '2023-05-13 09:36:21', 'amd', 1),
	(2, 'Intel i7', 8, '2023-05-12 19:04:47', '2023-05-13 09:36:35', 'intel-i7', 1),
	(3, 'Intel i5', 8, '2023-05-12 19:05:01', '2023-05-13 09:36:48', 'intel-i5', 1),
	(4, 'Intel i3', 6, '2023-05-12 19:07:14', '2023-05-13 09:37:02', 'intel-i3', 1),
	(5, 'AMD Ryzen 3', 6, '2023-05-12 19:08:39', '2023-05-13 09:37:15', 'amd-ryzen-3', 1),
	(6, 'AMD Ryzen 7', 8, '2023-05-12 19:09:15', '2023-05-13 09:37:30', 'amd-ryzen-7', 1),
	(7, 'AMD Ryzen 5', 8, '2023-05-12 19:09:26', '2023-05-13 09:37:44', 'amd-ryzen-5', 1),
	(8, ' Octa Core', 8, '2023-05-13 09:53:34', '2023-05-13 09:53:34', 'octa-core', 2),
	(9, 'Exynos850 ', 6, '2023-05-13 09:54:13', '2023-05-13 09:54:13', 'exynos850', 2),
	(10, 'Exynos', 4, '2023-05-13 09:54:25', '2023-05-13 09:54:25', 'exynos', 2),
	(11, 'Snapdragon 778G ', 7, '2023-05-13 09:54:57', '2023-05-13 09:54:57', 'snapdragon-778g', 2),
	(12, 'Snapdragon ', 8, '2023-05-13 09:55:12', '2023-05-13 09:55:12', 'snapdragon', 2),
	(13, 'Snapdragon 895', 8, '2023-05-13 09:55:37', '2023-05-13 09:55:37', 'snapdragon-895', 2),
	(14, ' Snapdragon', 8, '2023-05-13 10:07:02', '2023-05-13 10:07:02', 'snapdragon', 2);

-- Listage de la structure de table ecomercelaravel10. products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int unsigned NOT NULL DEFAULT '10',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint unsigned DEFAULT NULL,
  `color_id` int DEFAULT NULL,
  `ram_id` int DEFAULT NULL,
  `processor_id` int DEFAULT NULL,
  `taille_id` int DEFAULT NULL,
  `system_id` int DEFAULT NULL,
  `accessorie_id` int DEFAULT NULL,
  `multimedia_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_brand_id_foreign` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=548 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.products : ~26 rows (environ)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `brand_id`, `color_id`, `ram_id`, `processor_id`, `taille_id`, `system_id`, `accessorie_id`, `multimedia_id`) VALUES
	(6, 'Lenovo 15.6" Laptop', 'lenovo-156-laptop', '<p><strong>Lenovo 15.6" Laptop, IdeaPad 1, 20GB RAM, 1TB PCIe SSD, Wi-Fi 6 and Bluetooth 5.1, HDMI, SD Card Reader, 15.6" HD Anti-Glare Display, AMD Athlon Dual-core Processor, Windows 11 Home in S Mode</strong></p>', '<p><strong>Brand&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>Lenovo&nbsp;</p>\n<p><strong>Screen Size&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong> 15,6 Inches&nbsp; &nbsp; &nbsp; &nbsp;</p>\n<p><strong>Hard Disk Size&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>1 TB&nbsp; &nbsp; &nbsp; &nbsp;</p>\n<p><strong>Storage&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong> &nbsp; 1 TB SSD</p>\n<p><strong>Graphics &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;AMD Athlon Graphics</p>\n<p><strong>CPU Model&nbsp; &nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Athlon&nbsp; &nbsp; &nbsp; &nbsp;</p>\n<p><strong>Ram Memory&nbsp; &nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 20 GB</p>\n<p><strong>Operating System&nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Windows 11&nbsp; &nbsp; &nbsp;</p>\n<p><strong>Card Description&nbsp; &nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Integrated</p>\n<p><strong>Hard Disk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>&nbsp; SSD</p>', 379.00, 349.00, 'digital2554', 'instock', 0, 23, '1683297371.jpg', ',16832973710.jpg,16832973711.jpg,16832973712.jpg,16832973713.jpg,16832973714.jpg', 1, '2023-05-05 13:36:11', '2023-06-03 12:56:16', 5, 3, NULL, 1, 6, 4, 0, 0),
	(7, 'Lenovo Ideapad Flex 5i Chromebook', 'lenovo-ideapad-flex-5i-chromebook', '<p>SELECTED CONFIGURATION<br>Windows 10 Home<br>Intel&reg; Core&trade; i5-1260P (up to 4.7 GHz, 18 MB L3 cache, 11 cores, 16 threads) + Intel&reg; Iris&reg; Xe Graphics<br>8 GB DDR4-3200 SDRAM (2 x 4 GB)<br>256 GB PCIe&reg; NVMe&trade; M.2 SSD</p>', '<p><strong>Brand&nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Lenovo</p>\n<p><strong>Processor&nbsp; &nbsp; </strong>&nbsp;Intel&reg; Core&trade; i5-1260P (up to 4.7 GHz, 18 MB L3 cache, 11 cores, 16 threads)<strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\n<p><strong>Screen Size&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;13,3 Inches</p>\n<p><strong>Storage&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>256 GB SSD&nbsp;</p>\n<p><strong>Core&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>11 cores</p>\n<p><strong>Ram Memory&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong> 8&nbsp;GB</p>\n<p><strong>Operating System&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>&nbsp;Windows 10</p>\n<p><strong>Graphics &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>Iris&reg; Xe Graphics</p>\n<p><strong>Hard Disk&nbsp; &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SSD</p>', 352.00, 340.00, 'digital12455', 'instock', 0, 12, '1683299028.jpg', ',16832988510.jpg,16832988711.jpg', 1, '2023-05-05 14:03:48', '2023-05-12 19:29:23', 5, 3, 3, 3, 0, 0, 0, 0),
	(8, ' HP 22 AIO i3-1215U', 'hp-22-aio-i3-1215u', '<p>SELECTED CONFIGURATION<br>Windows 11 Home<br>Intel&reg; Core&trade; i7-1260P (up to 4.7 GHz, 18 MB L3 cache, 12 cores, 16 threads) + Intel&reg; Iris&reg; Xe Graphics<br>16 GB DDR4-3200 SDRAM (2 x 8 GB)<br>512 GB PCIe&reg; NVMe&trade; M.2 SSD</p>', '<p><strong>Brand&nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;hp</p>\n<p><strong>Screen Size&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;15,6 Inches</p>\n<p><strong>Processor &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>Intel&reg; Core&trade; i7-1260P (up to 4.7 GHz, 18 MB L3 cache, 12 cores, 16 threads)</p>\n<p><strong>Hard Model&nbsp; Size&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong> 512 GB</p>\n<p><strong>Storage&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>512 GB SSD</p>\n<p><strong>Core&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>12 cores</p>\n<p><strong>Ram Memory&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong> 16 GB</p>\n<p><strong>Operating System&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>&nbsp;Windows 11</p>\n<p><strong>Graphics &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>Iris&reg; Xe Graphics</p>\n<p><strong>Hard Disk&nbsp; &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SSD</p>', 1299.99, 999.99, 'digital12455', 'instock', 0, 10, '1683300505.jpg', ',16833005050.jpg,16833005051.jpg,16833005052.jpg', 1, '2023-05-05 14:28:25', '2023-06-06 17:34:12', 4, 3, 2, 2, 6, 5, 0, 0),
	(9, 'hp Chrome OS™', 'hp-chrome-os', '<p>The best of work and play in one place. The HP Chromebook with a responsive Intel&reg; processor, 14" display sporting more screen space, and a long battery life, you can knock out any assignment while binge watching your favorite shows.</p>', '<p><strong>Brand&nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;hp</p>\n<p><strong>Processor &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>Intel&reg; processor, 14"</p>\n<p><strong>Screen Size&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;14 Inches</p>\n<p><strong>Hard Model&nbsp; Size&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong> 512 GB</p>\n<p><strong>Core&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>2 cores</p>\n<p><strong>Ram Memory&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>&nbsp; 4 GB</p>\n<p><strong>Operating System &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>ChromeOS<strong><br></strong></p>\n<p><strong>Graphics&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>UHD Graphics</p>', 329.99, 229.99, 'DIGITAL422', 'instock', 0, 5, '1683301152.jpg', ',16833011520.jpg,16833011521.jpg,16833011522.jpg', 1, '2023-05-05 14:39:12', '2023-05-12 19:30:38', 4, 3, 4, 4, 0, 0, 0, 0),
	(10, 'HP Elite Dragonfly 13.5 inch Chromebook', 'hp-elite-dragonfly-135-inch-chromebook', '<p>ChromeOS<br>Intel&reg; Core&trade; i3-1215U (up to 4.4 GHz with Intel&reg; Turbo Boost Technology, 10 MB L3 cache, 6 cores, 8 threads)<br>8 GB memory; 128 GB SSD storage<br>13.5" diagonal 2K touch display<br>Intel&reg; UHD Graphics</p>', '<p><strong>Brand</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; hp</p>\n<p><strong>Processor&nbsp;&nbsp;</strong> &nbsp; &nbsp;Intel&reg; Core&trade; i3-1215U (up to 4.4 GHz with Intel&reg; Turbo Boost Technology, 10 MB L3 cache, 6 cores, 8 threads)</p>\n<p><strong>Screen Size </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 13,5 Inches</p>\n<p><strong>Storage&nbsp; &nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 128 GB SSD</p>\n<p><strong>Core &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6 cores</p>\n<p><strong>Ram Memory &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 GB</p>\n<p><strong>Operating System</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ChromeOS</p>\n<p><strong>Graphics &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;UHD Graphics</p>\n<p><strong>Hard Disk &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SSD</p>\n<p><strong>Digital &nbsp; &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2k touch display</p>', 1140.00, 1039.00, 'DIGITAL4557', 'instock', 0, 6, '1683302126.jpg', ',16833021260.jpg,16833021261.jpg,16833021262.jpg,16833021263.jpg', 1, '2023-05-05 14:55:26', '2023-05-12 19:31:11', 4, 2, 3, 4, 0, 0, 0, 0),
	(11, 'ASUS Zenbook 14 Flip', 'asus-zenbook-14-flip', '<p>Windows 11 Home - ASUS recommends Windows 11 Pro for business<br>13th Gen Intel&reg; Core&trade; i7 processor<br>Intel&reg; Iris&reg; Xe graphics<br>1 TB PCIe 4.0 x4 with 3500 MB/s read speed<br>16 GB LPDDR5 4800 MHz memory<br><br></p>', '<p><strong>Brand </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ASUS</p>\n<p><strong>Processor &nbsp; &nbsp; &nbsp; &nbsp; </strong>&nbsp; 3th Gen Intel&reg; Core&trade; i7</p>\n<p><strong>Screen Size</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 15,6 Inches</p>\n<p><strong>&nbsp;Storage</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;512 GB SSD</p>\n<p><strong>Core &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 cores</p>\n<p><strong>Ram Memory </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16 GB</p>\n<p><strong>Operating System </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Windows 11</p>\n<p><strong>Graphics &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Iris&reg; Xe Graphics</p>\n<p><strong>Hard Disk &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SSD</p>', 11200.00, 9500.00, 'DIGITAL1224', 'instock', 0, 12, '1683303373.jpg', ',16833033730.jpg,16833033731.jpg,16833033732.jpg,16833033733.jpg,16833033734.jpg', 1, '2023-05-05 15:16:13', '2023-05-13 20:55:41', 12, 2, 2, 2, 6, 5, 0, 0),
	(12, 'dell XPS 15 Laptop', 'dell-xps-15-laptop', '<div class="mt-1 windows-mda">Dell Technologies recommends Windows 11 Pro for business.Warranty support options vary by operating system: Dell offers support plans for businesses with Windows Pro and support plans for personal use with Windows Home.</div>', '<p><span class="ps-iconography-specs-title"><strong>Brand&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>&nbsp; &nbsp; &nbsp;DELL<strong><br></strong></span></p>\n<p><span class="ps-iconography-specs-title"><strong>Processor</strong>&nbsp; &nbsp; &nbsp; &nbsp;</span><span class="ps-iconography-specs-label">12ᵗʰ Gen Intel&reg; Core&trade; i7-12700H</span></p>\n<p><span class="ps-iconography-specs-label"><strong>Screen Size </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 15,6 Inches<br></span></p>\n<p><span class="ps-iconography-specs-title"><strong>Operating System</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span class="ps-iconography-specs-label">Windows 11 Home </span></p>\n<p><span class="ps-iconography-specs-title"><strong>Graphics&nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span class="ps-iconography-specs-label">NVIDIA&reg; GeForce RTX&trade; 3050</span></p>\n<p><span class="ps-iconography-specs-title"><strong>Memory&nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; </span><span class="ps-iconography-specs-label">16 GB DDR5</span></p>\n<p><span class="ps-iconography-specs-title"><strong>Storage&nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span class="ps-iconography-specs-label">512 GB SSD</span></p>\n<p><span class="ps-iconography-specs-title"><strong>Display&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span class="ps-iconography-specs-label">15.6-in. display Full HD+ (1920X1200)</span></p>', 1899.00, 1149.00, 'DIGITAL455', 'instock', 0, 10, '1683304701.png', ',laptop-xps-9520-t-black-gallery-6.png,laptop-xps-9520-t-black-gallery-7.png,laptop-xps-9520-t-black-gallery-2.png,laptop-xps-9520-t-black-gallery-4.png', 1, '2023-05-05 15:38:21', '2023-06-06 17:33:42', 2, 2, 2, 2, 6, 4, 0, 0),
	(13, 'dell G15 Gaming Laptop', 'dell-g15-gaming-laptop', '<p>15-inch gaming laptop with 12th Gen Intel<sup>&reg;</sup>&nbsp;Core&trade; processors, NVIDIA<sup>&reg;</sup>&nbsp;GeForce<sup>&reg;</sup>&nbsp;discrete graphics, advanced thermal design and Game Shift technology.</p>', '<p><strong>Brand &nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dell</p>\n<p><strong>Processor&nbsp; &nbsp; &nbsp;</strong>12th Gen Intel&reg; Core&trade; i7-12700H (24 MB cache, 14 cores, 20 threads, up to 4.70 GHz Turbo)</p>\n<p><strong>Screen Size</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12,6 Inches</p>\n<p><strong>Ram Memory &nbsp; &nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16 GB, 2 x 8 GB, DDR5, 4800 MHz</p>\n<p><strong>Operating System &nbsp; &nbsp;</strong> &nbsp; &nbsp; Windows 11 Home, English</p>\n<p><strong>Graphics &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;NVIDIA&reg; GeForce RTX&trade; 3060, 6 GB GDDR6</p>\n<p><strong>Hard Drive&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>1 TB, M.2, PCIe, SSD</p>\n<div class="row">\n<div class="col-sm-6">\n<div class="tech-spec-title"><strong>Display&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>15.6", FHD 1920 x 1080, 165Hz, WVA, Non-Touch, Anti-Glare, 300 nit, Narrow Border, LED-Backlit</div>\n<div class="tech-spec-title"><strong>Primary Battery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>6 Cell, 86 Wh, integrated</div>\n<div class="tech-spec-title"><strong>Wireless<a class="technote microcontent" rel="technotes:wifi-6e-requirements"><sup><small>i&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </small></sup></a></strong>Intel&reg; Wi-Fi 6 AX201, 2x2, 802.11ax, Bluetooth&reg; wireless card</div>\n</div>\n</div>\n<div class="row">\n<div class="col-sm-6">&nbsp;</div>\n</div>', 1099.99, 1000.99, 'digital145555', 'instock', 0, 12, '1683309510.png', ',16833095100.png,16833095101.png,16833095102.png,16833095103.png,16833095104.png', 1, '2023-05-05 16:58:30', '2023-06-03 09:06:38', 2, 2, 5, 2, 3, 4, 0, 0),
	(14, 'Apple 13.3" MacBook Pro with Touch Bar (Mid 2017, Space Gray)', 'apple-133-macbook-pro-with-touch-bar-mid-2017-space-gray', '<p>Experience the innovative interface of the Touch Bar in the mid 2017 space gray&nbsp;<strong>Apple 13.3" MacBook Pro with Touch Bar</strong>.</p>', '<p><strong>Brand &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>Apple</p>\n<p><strong>Processor&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>3.1 GHz Intel Core i5 Dual-Core</p>\n<p><strong>Screen Size </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 13,6 Inches</p>\n<p><strong>Storage &nbsp; &nbsp; &nbsp; &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256GB SSD<br><br><strong>Memory&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>16 GB &nbsp;of 2133 MHz RAM</p>\n<p><strong>Operating System &nbsp; &nbsp; &nbsp; &nbsp; </strong>&nbsp;macOS</p>\n<p><strong>Graphics &nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Integrated Intel Iris Plus Graphics 650<br><br><strong>Display&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong>13.3" 2560 x 1600 Retina Display<br><br></p>', 1500.00, 1450.00, 'digital4521', 'instock', 0, 15, '1683312113.jpg', ',16833121130.jpg,16833121131.jpg,16833121132.jpg,16833121133.jpg', 1, '2023-05-05 17:41:53', '2023-05-13 12:17:13', 3, 2, 2, 3, 13, 0, 0, 0),
	(15, 'Samsung Galaxy S21 5G', 'samsung-galaxy-s21-5g', '<ul>\n<li>6.2 inches Dynamic AMOLED 2X</li>\n<li>Octa-core Exynos 2100</li>\n<li>256GB Storage, 8GB Ram</li>\n<li>64MP/10MP Cameras</li>\n<li>4000 mAh battery</li>\n</ul>', '<p><strong>Brand &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SAMSUNG</p>\n<p><strong>Screen Size </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6,2 Inches</p>\n<p><strong>Storage &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 256GB&nbsp;</p>\n<p><strong>Memory &nbsp; &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8GB RAM</p>\n<p><strong>Platform &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 11, One UI 3.1</p>\n<p><strong>Main Camera </strong>&nbsp; &nbsp; &nbsp; &nbsp;Triple</p>\n<p><strong>Selfie camera &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Single</p>\n<p><strong>Display</strong> &nbsp; &nbsp; &nbsp; &nbsp; Dynamic AMOLED 2X, 120Hz, HDR10+, 1300 nits (peak)</p>\n<p><strong>Battery &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong> Li-Po 4000 mAh, non-removable</p>', 2158.59, 2017.83, 'digital4585', 'outofstock', 0, 12, '1683472738.jpg', ',16834727380.jpg,16834727381.jpg,16834727382.jpg', 2, '2023-05-07 14:18:58', '2023-05-13 10:16:57', 1, 2, 3, 11, 0, 0, 0, 0),
	(17, 'Oppo A57', 'oppo-a57', '<ul>\n<li>6.56 inches IPS LCD Display</li>\n<li>Octa-core Helio G35</li>\n<li>64GB Storage, 4GB Ram</li>\n<li>13MP/8MP Cameras</li>\n<li>5000 mAh battery</li>\n</ul>', '<p><strong>Brand&nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Oppo</p>\n<p><strong>Screen Size &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6,56 Inches</p>\n<p><strong>Storage&nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;64GB&nbsp;</p>\n<p><strong>Memory&nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB RAM</p>\n<p><strong>Platform &nbsp;</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Android 12, ColorOS 12.1</p>\n<p><strong>Main Camera </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dual</p>\n<p><strong>Selfie camera</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Single</p>\n<p><strong>Display&nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;IPS LCD</p>\n<p><strong>Battery&nbsp; &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Li-Po 5000 mAh, non-removable</p>', 611.50, 582.03, 'fdghj745', 'instock', 0, 20, '1683473531.jpg', ',16834735310.jpg,16834735311.jpg', 2, '2023-05-07 14:32:11', '2023-05-12 12:54:02', 9, 2, 0, 0, 0, 0, 0, 0),
	(18, 'Realme C11 Dual Sim', 'realme-c11-dual-sim', '<p><strong>1 Year Local Warranty, PTA Approved</strong></p>\n<ul>\n<li>6.52 inches IPS LCD Display</li>\n<li>Octa-core Unisoc SC9863A</li>\n<li>64GB Storage, 4GB Ram</li>\n<li>8MP/5MP Cameras</li>\n<li>5000 mAh battery</li>\n</ul>', '<p><strong>Brand &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Realme</p>\n<p><strong>Screen Size &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6,52 Inches</p>\n<p><strong>Storage &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 64GB&nbsp;</p>\n<p><strong>Memory &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB RAM</p>\n<p><strong>Platform &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 11, Realme Go UI</p>\n<p><strong>Main Camera</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Single</p>\n<p><strong>Selfie camera &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Single</p>\n<p><strong>Display &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IPS LCD, 400 nits (typ)</p>\n<p><strong>Battery &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Li-Po 5000 mAh, non-removable</p>', 379.13, 354.55, 'digi1225', 'instock', 0, 16, '1683474414.jpg', ',16834744140.jpg,16834744141.jpg', 2, '2023-05-07 14:46:54', '2023-05-12 12:51:50', 7, 2, 0, 0, 0, 0, 0, 0),
	(19, 'Infinix Hot 12 Play Dual Sim', 'infinix-hot-12-play-dual-sim', '<p><strong>1 Year Local Warranty, PTA Approved</strong></p>\n<ul>\n<li>6.82 inches IPS LCD Display</li>\n<li>Octa-core Helio G85</li>\n<li>64GB Storage, 4GB Ram</li>\n<li>13MP/8MP Cameras</li>\n<li>6000 mAh battery</li>\n</ul>', '<p><strong>Brand &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Infinix</p>\n<p><strong>Screen Size &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6,82 Inches</p>\n<p><strong>Storage &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 64GB&nbsp;</p>\n<p><strong>Memory </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB RAM</p>\n<p><strong>Platform </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 12, XOS 10</p>\n<p><strong>Main Camera &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dual</p>\n<p><strong>Selfie camera</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Single</p>\n<p><strong>Display &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;IPS LCD, 90Hz</p>\n<p><strong>Battery </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Li-Po 6000 mAh, non-removable</p>', 4444.99, 4023.55, 'fdil4555', 'instock', 0, 11, '1683474769.jpg', ',16834747690.jpg,16834747691.jpg,16834747692.jpg,16834747693.jpg', 2, '2023-05-07 14:52:49', '2023-05-07 14:52:49', 0, 0, 0, 0, 0, 0, 0, 0),
	(20, 'vivo Y55 Dual sim', 'vivo-y55-dual-sim', '<p><strong>1 Year Local Warranty, PTA Approved</strong></p>\n<ul>\n<li>6.44 inches AMOLED Display</li>\n<li>Octa-core Snapdragon 680</li>\n<li>128GB Storage, 8GB Ram</li>\n<li>50MP/16MP Cameras</li>\n<li>5000 mAh battery</li>\n</ul>', '<p>Brand&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vivo</p>\n<p>Screen Size &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6,44 Inches</p>\n<p>Storage&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;128GB&nbsp;</p>\n<p>Memory&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8GB RAM</p>\n<p>Platform &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 12, vivo Go UI</p>\n<p>Main Camera &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Single</p>\n<p>Selfie camera &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Single</p>\n<p>Display &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IPS LCD, 400 nits (typ)</p>\n<p>Battery &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Li-Po 5000 mAh, non-removable</p>', 794.95, 764.25, 'digk4555', 'instock', 0, 9, '1683475114.jpg', ',16834751140.jpg,16834751141.jpg', 2, '2023-05-07 14:58:34', '2023-05-11 15:03:42', 8, 0, 0, 0, 0, 0, 0, 0),
	(21, 'Samsung Galaxy S23 Ultra 12GB/512GB Dual Sim', 'samsung-galaxy-s23-ultra-12gb512gb-dual-sim', '<p><strong>No Warranty (Non-PTA)</strong></p>\n<ul>\n<li>6.8 inches Dynamic AMOLED 2X Display</li>\n<li>Octa-core Snapdragon 8 Gen 2</li>\n<li>512GB Storage, 12GB Ram</li>\n<li>200MP/12MP Cameras</li>\n<li>5000 mAh battery</li>\n</ul>', '<p><strong>Brand&nbsp; &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SAMSUNG</p>\n<p><strong>Screen Size &nbsp; &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6,8 Inches</p>\n<p><strong>Storage&nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;512GB&nbsp;</p>\n<p><strong>Memory&nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12GB RAM</p>\n<p><strong>Platform &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Android 13, One UI 5.1</p>\n<p><strong>Main Camera </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quad</p>\n<p><strong>Selfie camera&nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Single</p>\n<p><strong>Display &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dynamic AMOLED 2X, 120Hz, HDR10+, 1750 nits (peak)</p>\n<p><strong>Battery &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Li-Po 5000 mAh, non-removable</p>', 4566.99, 4096.93, 'skl456', 'instock', 0, 23, '1683475425.jpg', ',16834754250.jpg,16834754251.jpg,16834754252.jpg,16834754253.jpg', 2, '2023-05-07 15:03:45', '2023-05-13 12:16:40', 1, 4, 3, 11, 12, 0, 0, 0),
	(26, 'Apple iPhone 14 PRO MAX 512GB', 'apple-iphone-14-pro-max-512gb', '<p><strong>No Warranty (Non-PTA)</strong></p>\n<ul>\n<li>6.7 inches LTPO Super Retina XDR OLED Display</li>\n<li>Hexa-core A16 Bionic</li>\n<li>512GB Storage, 6GB Ram</li>\n<li>48MP/12MP Cameras</li>\n<li>4323 mAh battery</li>\n</ul>', '<p><strong>Brand &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apple</p>\n<p><strong>Screen Size &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6,7 Inches</p>\n<p><strong>Storage &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 512GB&nbsp;</p>\n<p><strong>Memory &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6GB RAM</p>\n<p><strong>Platform &nbsp; &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iOS 16</p>\n<p><strong>Main Camera &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Quad</p>\n<p><strong>Selfie camera </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dual</p>\n<p><strong>Display </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;LTPO Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (typ), 2000 nits (HBM)</p>\n<p><strong>Battery &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Li-Ion, non-removable</p>', 5555.99, 5319.93, 'DIGITAL154', 'instock', 0, 15, '1683570236.jpg', ',16835702360.jpg,16835702361.jpg,16835702362.jpg,16835702363.jpg', 2, '2023-05-08 17:23:56', '2023-05-11 14:55:29', 3, 0, 0, 0, 0, 0, 0, 0),
	(538, 'CANON LENS EF 70-300MM F4-5.6 ISIIUSM', 'canon-lens-ef-70-300mm-f4-56-isiiusm', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>0571C005AA</p>', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>0571C005AA</p>', 1000.00, 800.00, 'ggh5', 'instock', 0, 12, '1685440236.jpg', NULL, 5, '2023-05-30 08:50:36', '2023-05-30 08:56:28', 13, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(539, ' CANON EOS 5D MK IV + 24-105 F4L', 'canon-eos-5d-mk-iv-24-105-f4l', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>1483C028AA</p>', '<p>CANON&nbsp;EOS&nbsp;5D&nbsp;MK&nbsp;IV&nbsp;+&nbsp;24-105&nbsp;F4L Moyen et haut de gamme EOS</p>', 800.00, 600.00, 'h5', 'instock', 0, 14, '1685440704.jpg', NULL, 5, '2023-05-30 08:58:24', '2023-05-30 08:58:24', 13, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(540, 'HP MNTR P22 G4 FHD', 'hp-mntr-p22-g4-fhd', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>1A7E4AS</p>', '<p>Ecran HP P22 G4 21.5" Garantie 3ans</p>', 2000.00, 1800.00, 'h44', 'instock', 0, 20, '1685440881.jpg', NULL, 5, '2023-05-30 09:01:21', '2023-05-30 09:01:21', 4, 2, NULL, NULL, 14, NULL, NULL, NULL),
	(541, 'CANON CAMESCOPE PRO VIDEO XA15 SDI AVEC BP-820 POWER KIT EU18', 'canon-camescope-pro-video-xa15-sdi-avec-bp-820-power-kit-eu18', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>2217C009AA</p>', '<p>CANON CAMESCOPE PRO VIDEO XA15 SDI AVEC BP-820 POWER KIT</p>', 3000.00, 2800.00, 'h66', 'instock', 0, 5, '1685440969.jpg', NULL, 5, '2023-05-30 09:02:49', '2023-05-30 09:02:49', 13, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(542, 'Siberia Gaming Micro-casque 200 Proton Yellow', 'siberia-gaming-micro-casque-200-proton-yellow', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>51138</p>', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>51138</p>', 300.00, 250.00, 'h66', 'instock', 0, 12, '1685441543.jpg', NULL, 4, '2023-05-30 09:12:23', '2023-05-30 09:12:23', 14, 10, NULL, NULL, NULL, NULL, 1, NULL),
	(543, 'NGS HEADPHONE COMPATIBLE WITH BLUETOOTH-HANDS FREE', 'ngs-headphone-compatible-with-bluetooth-hands-free', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>ARTICAPRIDEWHITE</p>', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>ARTICAPRIDEWHITE</p>', 280.00, 250.00, 'hh7', 'instock', 0, 5, '1685441682.png', NULL, 4, '2023-05-30 09:14:42', '2023-05-30 09:14:42', 15, 1, NULL, NULL, NULL, NULL, 1, NULL),
	(544, 'NGS CLAVIER GAMER LED LIGHTS GKX300', 'ngs-clavier-gamer-led-lights-gkx300', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>GKX-300</p>', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>GKX-300</p>', 120.00, 110.00, 'h7', 'instock', 0, 3, '1685441784.jpg', NULL, 4, '2023-05-30 09:16:24', '2023-05-30 09:16:24', 15, 2, NULL, NULL, NULL, NULL, 2, NULL),
	(545, 'ADATA CLE USB METAL UV128 128GB 3.2', 'adata-cle-usb-metal-uv128-128gb-32', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>AUV128-128G-RBE</p>', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>AUV128-128G-RBE</p>', 200.00, 180.00, 'k4', 'instock', 0, 3, '1685442018.png', NULL, 4, '2023-05-30 09:20:18', '2023-05-30 09:20:18', 16, 2, NULL, NULL, NULL, NULL, 3, NULL),
	(546, 'Logitech M171 Wireless Mouse - RED-K -2.4GHZ -EMEA', 'logitech-m171-wireless-mouse-red-k-24ghz-emea', '<div class="StyleWrapper_wrapper StyleWrapper_flex-stretch-width ">\n<div class="Details_item-number-body"><span class="Details_name">R&eacute;f&eacute;rence</span>910-004641</div>\n</div>\n<div class="StyleWrapper_wrapper ">&nbsp;</div>', '<div class="StyleWrapper_wrapper StyleWrapper_flex-stretch-width ">\n<div class="Details_item-number-body"><span class="Details_name">R&eacute;f&eacute;rence</span>910-004641</div>\n</div>\n<div class="StyleWrapper_wrapper ">&nbsp;</div>', 200.00, 150.00, 'h5', 'instock', 0, 3, '1685442108.jpg', NULL, 4, '2023-05-30 09:21:48', '2023-05-30 09:22:26', 18, 11, NULL, NULL, NULL, NULL, 8, NULL),
	(547, 'CELLY TRUE WIRELESS IN EAR SLIM WH', 'celly-true-wireless-in-ear-slim-wh', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>SLIM1WH</p>', '<p><span class="Details_name">R&eacute;f&eacute;rence</span>SLIM1WH</p>', 300.00, 270.00, 'h2', 'instock', 0, 5, '1685442231.jpg', NULL, 4, '2023-05-30 09:23:51', '2023-05-30 09:23:51', 17, 1, NULL, NULL, NULL, NULL, 4, NULL);

-- Listage de la structure de table ecomercelaravel10. product_attributes
DROP TABLE IF EXISTS `product_attributes`;
CREATE TABLE IF NOT EXISTS `product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.product_attributes : ~2 rows (environ)
DELETE FROM `product_attributes`;
INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(2, 'Brand', '2023-05-08 09:08:09', '2023-05-08 09:21:07'),
	(3, 'Color', '2023-05-10 20:51:43', '2023-05-10 20:51:43');

-- Listage de la structure de table ecomercelaravel10. profiles
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_user_id_foreign` (`user_id`),
  CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.profiles : ~1 rows (environ)
DELETE FROM `profiles`;
INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
	(1, 9, '1685797437.jpg', '0648674966', '1', '2', 'Tangier', 'Georgia', 'Maroc', '121000', '2023-05-06 15:40:23', '2023-06-03 12:03:57');

-- Listage de la structure de table ecomercelaravel10. rams
DROP TABLE IF EXISTS `rams`;
CREATE TABLE IF NOT EXISTS `rams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.rams : ~7 rows (environ)
DELETE FROM `rams`;
INSERT INTO `rams` (`id`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
	(2, '16 Go', 8, '2023-05-12 15:34:09', '2023-05-12 15:48:01'),
	(3, '8 Go', 8, '2023-05-12 16:32:28', '2023-05-12 16:32:28'),
	(4, '4 Go', 8, '2023-05-12 16:32:44', '2023-05-12 16:32:44'),
	(5, '32 Go', 16, '2023-05-12 16:32:56', '2023-05-12 16:32:56'),
	(6, '64 Go', 16, '2023-05-12 16:33:08', '2023-05-12 16:33:08'),
	(7, '20 Go', 8, '2023-05-12 19:28:30', '2023-05-12 19:28:30'),
	(8, '12 Go', 8, '2023-05-13 10:02:12', '2023-05-13 10:02:12');

-- Listage de la structure de table ecomercelaravel10. return_orders
DROP TABLE IF EXISTS `return_orders`;
CREATE TABLE IF NOT EXISTS `return_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `return_orders_order_id_foreign` (`order_id`),
  CONSTRAINT `return_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.return_orders : ~0 rows (environ)
DELETE FROM `return_orders`;

-- Listage de la structure de table ecomercelaravel10. reviews
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_order_item_id_foreign` (`order_item_id`),
  CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.reviews : ~3 rows (environ)
DELETE FROM `reviews`;
INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
	(2, 5, 'Amazing!', 59, '2023-05-06 19:43:52', '2023-05-06 19:43:52'),
	(3, 5, 'hhhhhhhhhhhhhhhhh', 60, '2023-05-18 08:53:22', '2023-05-18 08:53:22'),
	(4, 4, 'amazing!', 61, '2023-06-03 11:59:31', '2023-06-03 11:59:31');

-- Listage de la structure de table ecomercelaravel10. sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.sales : ~1 rows (environ)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
	(1, '2023-06-16 10:41:27', 1, '2023-05-02 09:41:40', '2023-06-03 11:19:00');

-- Listage de la structure de table ecomercelaravel10. sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.sessions : ~3 rows (environ)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('mah3Mahfv82YcGD6x6kRitEe71KSaweYkEwg9uki', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVZ6ZXptQ0lEaXpGZ2pMSEROMVVFWTVEcFVjNDFzOXJXa05rQVJ4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1686075458),
	('Pp60Ix76pgQJGFD8aor5fuRdTbswbsSz8JCJ1pOP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibW5ITEU2TVNiRkNGbGIyaWlrQjAzc2FjV2F2eWpPcFo5b1JjQUtDcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1686084688),
	('vNjrTuVKGVjHfz542pfAouChkUQ1cLnGz0HkLcu0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzRtOW5yY2VHY0hBZzBIVGZPaXIyTktDb2FrWk5JUEt6MUtneW5zNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1686129695);

-- Listage de la structure de table ecomercelaravel10. settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `printerest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.settings : ~1 rows (environ)
DELETE FROM `settings`;
INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `adress`, `map`, `twiter`, `facebook`, `printerest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
	(1, 'info@cms-morocco.com', '05393-24498', '05393-24498', '7, bd Fès , centre comecrcial Mabrouk, bloc B 7°ét. n°20, Tangier, Morocco', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12947.189024620428!2d-5.823643228286065!3d35.78035630416206!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd0c7f3d0608bd3f%3A0x69317bef1ccd2af1!2sComputer%20Morocco%20Solution!5e0!3m2!1sfr!2sma!4v1683202637735!5m2!1sfr!2sma', '#', 'cms-morocco.com', '#', '#', '#', '2023-05-04 10:55:44', '2023-05-05 15:26:54');

-- Listage de la structure de table ecomercelaravel10. shippings
DROP TABLE IF EXISTS `shippings`;
CREATE TABLE IF NOT EXISTS `shippings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shippings_order_id_foreign` (`order_id`),
  CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.shippings : ~1 rows (environ)
DELETE FROM `shippings`;
INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
	(27, 55, 'STITOU', 'FATIMA', '0642341668', 'fatima.zohra.stitou2002@gmail.com', 'test line1', 'ln-1', 'Tangier', 'Haryana', 'Maroc', '121000', '2023-05-09 21:19:25', '2023-05-09 21:19:25');

-- Listage de la structure de table ecomercelaravel10. shoppingcart
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE IF NOT EXISTS `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.shoppingcart : ~4 rows (environ)
DELETE FROM `shoppingcart`;
INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
	('admin@gmail.com', 'cart', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:2:{s:32:"8eb747b95b9862e9d83031beb9938720";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"8eb747b95b9862e9d83031beb9938720";s:2:"id";i:21;s:3:"qty";i:1;s:4:"name";s:44:"Samsung Galaxy S23 Ultra 12GB/512GB Dual Sim";s:5:"price";d:4566.99;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:21;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}s:32:"addc525ce43f5cbb4517bfa51c9c08e5";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"addc525ce43f5cbb4517bfa51c9c08e5";s:2:"id";i:26;s:3:"qty";i:1;s:4:"name";s:29:"Apple iPhone 14 PRO MAX 512GB";s:5:"price";d:5555.99;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:21;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2023-06-03 12:57:04', NULL),
	('admin@gmail.com', 'wishlist', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:1:{s:32:"808821852042d8780b9f862c35c42c68";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"808821852042d8780b9f862c35c42c68";s:2:"id";i:7;s:3:"qty";i:1;s:4:"name";s:33:"Lenovo Ideapad Flex 5i Chromebook";s:5:"price";d:352;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:21;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2023-06-03 12:57:04', NULL),
	('user@usergmail.com', 'cart', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:2:{s:32:"ab5556b4a5fecadb52120901aa65e524";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"ab5556b4a5fecadb52120901aa65e524";s:2:"id";i:544;s:3:"qty";i:1;s:4:"name";s:35:"NGS CLAVIER GAMER LED LIGHTS GKX300";s:5:"price";d:120;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:21;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}s:32:"323f5e56b8b29f55245376042c75554c";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"323f5e56b8b29f55245376042c75554c";s:2:"id";i:542;s:3:"qty";i:1;s:4:"name";s:45:"Siberia Gaming Micro-casque 200 Proton Yellow";s:5:"price";d:300;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:21;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2023-06-06 19:51:11', NULL),
	('user@usergmail.com', 'wishlist', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:5:{s:32:"323f5e56b8b29f55245376042c75554c";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"323f5e56b8b29f55245376042c75554c";s:2:"id";i:542;s:3:"qty";i:1;s:4:"name";s:45:"Siberia Gaming Micro-casque 200 Proton Yellow";s:5:"price";d:300;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:21;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}s:32:"ab5556b4a5fecadb52120901aa65e524";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"ab5556b4a5fecadb52120901aa65e524";s:2:"id";i:544;s:3:"qty";i:1;s:4:"name";s:35:"NGS CLAVIER GAMER LED LIGHTS GKX300";s:5:"price";d:120;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:21;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}s:32:"4b538b467fdbece62ef16cd124e92c01";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"4b538b467fdbece62ef16cd124e92c01";s:2:"id";i:546;s:3:"qty";i:1;s:4:"name";s:50:"Logitech M171 Wireless Mouse - RED-K -2.4GHZ -EMEA";s:5:"price";d:200;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:21;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}s:32:"bb4a6db4295d6be8bd12791ed5650087";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"bb4a6db4295d6be8bd12791ed5650087";s:2:"id";i:14;s:3:"qty";i:1;s:4:"name";s:61:"Apple 13.3" MacBook Pro with Touch Bar (Mid 2017, Space Gray)";s:5:"price";d:1500;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:21;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}s:32:"8b486433ba8a9e4089eafa927840a692";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"8b486433ba8a9e4089eafa927840a692";s:2:"id";i:13;s:3:"qty";i:1;s:4:"name";s:22:"dell G15 Gaming Laptop";s:5:"price";d:1099.99;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:21;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2023-06-06 19:46:44', NULL);

-- Listage de la structure de table ecomercelaravel10. subcategories
DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategories_category_id_foreign` (`category_id`),
  CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.subcategories : ~0 rows (environ)
DELETE FROM `subcategories`;

-- Listage de la structure de table ecomercelaravel10. subscribers
DROP TABLE IF EXISTS `subscribers`;
CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.subscribers : ~14 rows (environ)
DELETE FROM `subscribers`;
INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
	(51, 'fatima.zohra.stitou2002@gmail.com', '2023-05-31 11:01:20', '2023-05-31 11:01:20'),
	(52, 'alaehaddad205@gmail.com', '2023-05-31 11:01:38', '2023-05-31 11:01:38'),
	(53, 'alaehaddad205@gmail.com', '2023-05-31 11:02:25', '2023-05-31 11:02:25'),
	(54, 'alae.haddad@etu.uae.ac.ma', '2023-05-31 11:03:03', '2023-05-31 11:03:03'),
	(55, 'fatima.stitou2@etu.uae.ac.ma', '2023-06-02 14:22:55', '2023-06-02 14:22:55'),
	(56, 'fatima.zohra.stitou2002@gmail.com', '2023-06-03 20:09:08', '2023-06-03 20:09:08'),
	(57, 'fatima.zohra.stitou2002@gmail.com', '2023-06-03 20:10:08', '2023-06-03 20:10:08'),
	(58, 'fatima.zohra.stitou2002@gmail.com', '2023-06-03 20:10:46', '2023-06-03 20:10:46'),
	(59, 'fatima.stitou2@etu.uae.ac.ma', '2023-06-03 20:11:28', '2023-06-03 20:11:28'),
	(60, 'fatima.zohra.stitou2002@gmail.com', '2023-06-03 20:14:15', '2023-06-03 20:14:15'),
	(61, 'fatima.zohra.stitou2002@gmail.com', '2023-06-03 20:14:55', '2023-06-03 20:14:55'),
	(62, 'fatima.zohra.stitou2002@gmail.com', '2023-06-03 20:44:01', '2023-06-03 20:44:01'),
	(63, 'fatima.zohra.stitou2002@gmail.com', '2023-06-03 20:44:28', '2023-06-03 20:44:28'),
	(64, 'fatima.zohra.stitou2002@gmail.com', '2023-06-03 20:46:40', '2023-06-03 20:46:40');

-- Listage de la structure de table ecomercelaravel10. system__exploitations
DROP TABLE IF EXISTS `system__exploitations`;
CREATE TABLE IF NOT EXISTS `system__exploitations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_count` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.system__exploitations : ~5 rows (environ)
DELETE FROM `system__exploitations`;
INSERT INTO `system__exploitations` (`id`, `name`, `slug`, `product_count`, `category_id`, `created_at`, `updated_at`) VALUES
	(1, 'Android ', 'android', 9, 2, '2023-05-13 14:27:29', '2023-05-13 14:39:21'),
	(2, 'Freedos', 'freedos', 38, 1, '2023-05-13 14:27:49', '2023-05-13 14:27:49'),
	(3, 'Linux', 'linux', 40, 1, '2023-05-13 14:28:07', '2023-05-13 14:28:07'),
	(4, 'Win 10 Home', 'win-10-home', 5, 1, '2023-05-13 14:28:24', '2023-05-13 14:28:24'),
	(5, 'Win 11', 'win-11', 8, 1, '2023-05-13 14:28:44', '2023-05-13 14:28:44');

-- Listage de la structure de table ecomercelaravel10. taille_ecrons
DROP TABLE IF EXISTS `taille_ecrons`;
CREATE TABLE IF NOT EXISTS `taille_ecrons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_count` int NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.taille_ecrons : ~14 rows (environ)
DELETE FROM `taille_ecrons`;
INSERT INTO `taille_ecrons` (`id`, `size`, `product_count`, `category_id`, `created_at`, `updated_at`) VALUES
	(1, '13.5', 4, 1, '2023-05-13 11:38:45', '2023-05-13 11:38:45'),
	(2, '11.6', 8, 1, '2023-05-13 11:39:06', '2023-05-13 11:39:06'),
	(3, '13.3', 8, 1, '2023-05-13 11:39:20', '2023-05-13 11:39:20'),
	(4, '13.4', 8, 1, '2023-05-13 11:39:40', '2023-05-13 11:39:40'),
	(5, '14', 31, 1, '2023-05-13 11:39:58', '2023-05-13 11:39:58'),
	(6, '15.6', 12, 1, '2023-05-13 11:40:15', '2023-05-13 11:40:15'),
	(7, '16', 12, 1, '2023-05-13 11:40:24', '2023-05-13 11:40:24'),
	(8, '17.3', 21, 1, '2023-05-13 11:40:36', '2023-05-13 11:40:36'),
	(9, '11', 12, 2, '2023-05-13 11:41:36', '2023-05-13 11:41:36'),
	(10, '12.4', 4, 2, '2023-05-13 11:41:51', '2023-05-13 11:41:51'),
	(11, '14.6', 8, 2, '2023-05-13 11:42:05', '2023-05-13 11:42:05'),
	(12, '6.8', 8, 2, '2023-05-13 12:16:05', '2023-05-13 12:16:05'),
	(13, '13.6', 8, 1, '2023-05-13 12:16:13', '2023-05-13 12:16:13'),
	(14, '21.5', 15, 5, '2023-05-30 08:59:50', '2023-05-30 08:59:50');

-- Listage de la structure de table ecomercelaravel10. transactions
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_foreign` (`user_id`),
  KEY `transactions_order_id_foreign` (`order_id`),
  CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.transactions : ~8 rows (environ)
DELETE FROM `transactions`;
INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
	(3, 9, 50, 'cod', 'pending', '2023-05-05 20:46:13', '2023-05-05 20:46:13'),
	(4, 9, 51, 'cod', 'pending', '2023-05-05 20:48:32', '2023-05-05 20:48:32'),
	(5, 9, 52, 'cod', 'pending', '2023-05-05 21:59:50', '2023-05-05 21:59:50'),
	(6, 9, 54, 'cod', 'pending', '2023-05-09 09:07:57', '2023-05-09 09:07:57'),
	(7, 9, 55, 'cod', 'pending', '2023-05-09 21:19:25', '2023-05-09 21:19:25'),
	(8, 9, 56, 'cod', 'pending', '2023-05-18 08:57:06', '2023-05-18 08:57:06'),
	(9, 9, 58, 'cod', 'pending', '2023-06-06 17:29:22', '2023-06-06 17:29:22'),
	(10, 9, 59, 'cod', 'pending', '2023-06-06 19:39:40', '2023-06-06 19:39:40');

-- Listage de la structure de table ecomercelaravel10. users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER' COMMENT 'ADM for Admin and USER for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ecomercelaravel10.users : ~8 rows (environ)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
	(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$R2vfd13B07.ur6Im9co5FeaMcc4Pw7b6fxh/7Ft9uaBwuWBMtJGlS', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2023-05-01 18:55:37', '2023-05-01 18:55:37'),
	(3, 'User', 'alaehaddad@gmail.com', NULL, '$2y$10$fMYjzccIb2gYZ2jmaBLXO.JjInE1XQsFI053NPttmYSTO4ka5CucS', NULL, NULL, NULL, NULL, NULL, NULL, 'USER', '2023-05-02 08:49:06', '2023-05-02 08:49:06'),
	(4, 'Aalae', 'alae@gmail.com', NULL, '$2y$10$0vxsK2m.g.92IdhV.xy3RO96cWC8swweRtFWxE50P/6DiEjpy1H4u', NULL, NULL, NULL, NULL, NULL, NULL, 'USER', '2023-05-02 11:16:43', '2023-05-02 11:16:43'),
	(7, 'Fatima Stitou', 'fatima.zohra.stitou2002@gmail.com', NULL, '$2y$10$TOXkBvRs/xJbYF1t9kzbjOFVAnhUnouhQgRd0Npjl1XMlqX5kZE3q', NULL, NULL, NULL, NULL, NULL, NULL, 'USER', '2023-05-04 12:13:30', '2023-05-04 12:13:30'),
	(8, 'STITOU FATIMA', 'fatima.stitou2@etu.uae.ac.ma', NULL, '$2y$10$XKPAhGr11cneDwyPstyA5OllgebBkCJ4aMzW1EVvzWr64kvBbvFki', NULL, NULL, NULL, 'DTRnGfW4rqg5frYujrhx1XW2IS7kYtFIPJGiViypAixawqOhB39FIwGfEqTj', NULL, NULL, 'USER', '2023-05-04 12:25:49', '2023-05-04 17:33:57'),
	(9, 'Fatima Stitou', 'user@usergmail.com', NULL, '$2y$10$JFIOKaFCwGgV42OosgvB4ukvqwyPs2DYMJoWBXBD1Euc0ixjAKeKK', NULL, NULL, NULL, NULL, NULL, NULL, 'USER', '2023-05-04 17:36:37', '2023-05-26 08:33:48'),
	(10, 'Fatima Stitou', 'fatima.stitou2002@gmail.com', NULL, '$2y$10$Pna8Nzn2W19rDLXyjbefV.MjBmQcO5zokp6n9PAb1WlarFybi9w4G', NULL, NULL, NULL, NULL, NULL, NULL, 'USER', '2023-05-29 10:56:53', '2023-05-29 10:56:53'),
	(11, 'Fatima Stitou', 'fatima.stitou02@gmail.com', NULL, '$2y$10$PpihRLWwnPjBWsYMRyVjJugl6IhSvVkuXgLc.7gKoeBrPBWWNFdme', NULL, NULL, NULL, NULL, NULL, NULL, 'USER', '2023-06-06 19:40:43', '2023-06-06 19:40:43');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
