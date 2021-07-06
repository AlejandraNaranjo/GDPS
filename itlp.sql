/*
SQLyog Community v13.1.5  (32 bit)
MySQL - 10.4.14-MariaDB : Database - itlp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`itlp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `itlp`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2016_06_01_000001_create_oauth_auth_codes_table',2),
(5,'2016_06_01_000002_create_oauth_access_tokens_table',2),
(6,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),
(7,'2016_06_01_000004_create_oauth_clients_table',2),
(8,'2016_06_01_000005_create_oauth_personal_access_clients_table',2);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values 
('0434a78f93d49006056355b3ff44287cc3c87938076cd23f9198b1470a9f2b80a09074057ca28ebc',4,5,'app','[]',0,'2021-06-24 03:17:55','2021-06-24 03:17:55','2022-06-24 03:17:55'),
('0af231daca62b7eebb0f31f35f86a4d0a3621f7c982a89a14bbbf5985a45023e4bcf927b9589fed6',2,5,'app','[]',0,'2021-06-24 02:47:24','2021-06-24 02:47:24','2022-06-24 02:47:24'),
('218217554a270c114d3643a3b60ca303a514519af6d017a8f4fb743a9715feaa0fd328c9b184d51a',1,5,'app','[]',0,'2021-06-27 15:28:41','2021-06-27 15:28:41','2022-06-27 15:28:41'),
('231cfff942021b6ff5ea6806099bcd358a1840646846eca50f1446971bbcfb74f435c3d9c9bfe23c',1,5,'app','[]',0,'2021-06-23 17:25:49','2021-06-23 17:25:49','2022-06-23 17:25:49'),
('2bd6a5829a532ddfa35f42acffcb2566206855306afc81c29f6c5b6e7db7828e1168d40fb73c4e62',1,5,'app','[]',0,'2021-06-20 06:06:54','2021-06-20 06:06:54','2022-06-20 06:06:54'),
('2d81386e4adf47c8b7a72c9069c1705b97ea279b9b515992ae868e721ed8fb9cdfcaea98193a1ff3',1,5,'app','[]',0,'2021-06-21 14:25:10','2021-06-21 14:25:10','2022-06-21 14:25:10'),
('2fa1ab06dec1ba450329489253b2bff5814970ef38601432451aa22bda5e21210461568ac8353168',1,5,'app','[]',0,'2021-06-27 20:58:18','2021-06-27 20:58:18','2022-06-27 20:58:18'),
('3033124bf6f100daa892c7e228de3895f721da371811fc1e13d404fb1c49d0409e362b6487649d7a',1,5,'app','[]',0,'2021-06-21 05:00:22','2021-06-21 05:00:22','2022-06-21 05:00:22'),
('36894bfebdea8058097f2f18e705bf71f7e0951c9822255151fa3d3aff72d356be5c18f5a84c0664',1,5,'app','[]',0,'2021-06-28 02:21:32','2021-06-28 02:21:32','2022-06-28 02:21:32'),
('37f8cc62754a1f0f38cd725e5ae52522693a55f323cbf644ba7340b653eade226e2b286477af1a50',1,5,'app','[]',0,'2021-06-21 02:38:35','2021-06-21 02:38:35','2022-06-21 02:38:35'),
('3906e4f390a9240dde585dbedb49df7104165080edd3d516b61eb9a24b30c4688f4cba37aa83f329',1,5,'app','[]',0,'2021-06-27 15:28:49','2021-06-27 15:28:49','2022-06-27 15:28:49'),
('392ff05ecdb426b5b1c7160a9a445d414ad24528531e91e6bd04e48eb676172185f6e814c332bda5',1,5,'app','[]',0,'2021-06-23 23:49:24','2021-06-23 23:49:24','2022-06-23 23:49:24'),
('39ea2533e58671c09eba698cfa136d1b807e5cab40e4d56834d0d224f8f1d877a900517588107d8a',1,5,'app','[]',0,'2021-06-27 22:10:50','2021-06-27 22:10:50','2022-06-27 22:10:50'),
('3cdad75468a56a92d7962b4db8d3d1d86ea8f7a49e0e1af895cb3521ff3ee314f5bd374b8772d3a2',1,5,'app','[]',0,'2021-06-20 06:07:24','2021-06-20 06:07:24','2022-06-20 06:07:24'),
('40e84c3f83ef1d69b3bf6270dfd698757bf4341732cc43cff72570b3756a26d8422a3b4175f8e10e',1,5,'app','[]',0,'2021-06-21 02:43:59','2021-06-21 02:43:59','2022-06-21 02:43:59'),
('40fbd9068ce09cc6662eb0946e7cefa6e23c90c29f073fa62d5060b4e7dece0c09365b9a6f5219a3',1,5,'app','[]',0,'2021-06-21 02:07:53','2021-06-21 02:07:53','2022-06-21 02:07:53'),
('4247301abd2ce012e4edf45e20c6b2652287377a453a0db4945d276e1f323269c7e9ea600418377a',1,5,'app','[]',0,'2021-06-27 22:05:36','2021-06-27 22:05:36','2022-06-27 22:05:36'),
('425584df290a17656056a5bef8aa163e6ff3e68b948b95439bd00a345d888a3ffba8526b5d7d1675',1,5,'app','[]',0,'2021-06-27 17:49:48','2021-06-27 17:49:48','2022-06-27 17:49:48'),
('45aec745fad1e88f98a7b01ec9598e9a5446946d99de4f05f98d04065c06f58e83bd7571f2b88a10',1,5,'app','[]',0,'2021-06-23 18:05:11','2021-06-23 18:05:11','2022-06-23 18:05:11'),
('4729275d007cd0d28642136cb0b9aced3ad12f3ec66444a1fe4daa2955891d5bd464f86a36bd28a1',2,5,'app','[]',0,'2021-06-23 14:52:37','2021-06-23 14:52:37','2022-06-23 14:52:37'),
('48e9bfe7267bf48179520014c36d0ea26503cbaaa4d425a5bf5845d5f599049fc17ff34fd4c98130',1,5,'app','[]',0,'2021-06-23 18:10:16','2021-06-23 18:10:16','2022-06-23 18:10:16'),
('4d158511ca5d5629365dfb6631e9763e12c01cbfd43e37072079954e6ae7ee7d03b7728719135053',1,5,'app','[]',0,'2021-06-21 01:03:22','2021-06-21 01:03:22','2022-06-21 01:03:22'),
('52411055122f1d7ddb4bda6ac5f3486a9b7fed760f870bfdb3cc3b1bf664ab1b248776e6419c3f75',2,5,'app','[]',0,'2021-06-24 02:33:50','2021-06-24 02:33:50','2022-06-24 02:33:50'),
('5657628b18d17ba8cf671e29f1028fb879ed08067c822f4598f9e0c4314fa75dcf6507ca9ec766e4',1,5,'app','[]',0,'2021-06-21 05:16:56','2021-06-21 05:16:56','2022-06-21 05:16:56'),
('610da368962cc8ff13132f203488ffc58bafe5de3f3870bd32c8190f050b9395f11ecb63ccf8330d',1,5,'app','[]',0,'2021-06-20 05:21:59','2021-06-20 05:21:59','2022-06-20 05:21:59'),
('612e8f4a57af051772bcb8c9cb5ad7660db82559c212cebae6b9c1a3932c282fdb76098211fb7848',1,5,'app','[]',0,'2021-06-20 05:25:21','2021-06-20 05:25:21','2022-06-20 05:25:21'),
('6168de120fa4e5ec94853c393aae7b115db1c4d6f8f4087bfc4edbc927385d4e57e7e127dc1ce39b',1,5,'app','[]',0,'2021-06-21 04:55:52','2021-06-21 04:55:52','2022-06-21 04:55:52'),
('64ce41b0b45e56e04b4fe72d44109e99d32a0362433c687b295b76437b58d4e1c24673f2af3ea37f',1,5,'app','[]',0,'2021-06-21 02:14:52','2021-06-21 02:14:52','2022-06-21 02:14:52'),
('67ff49e789d9ee5216523667834798bf9bb7640df1510af17a11aabc8c66e36249be5f92c9ddbb4d',1,5,'app','[]',0,'2021-06-27 18:12:02','2021-06-27 18:12:02','2022-06-27 18:12:02'),
('69ae89033d6c838e032d7da07d00649d0d9e4e301bb69a5a9c691f1e05df67cc22982107c79d1195',1,5,'app','[]',0,'2021-06-28 01:30:44','2021-06-28 01:30:44','2022-06-28 01:30:44'),
('741499ccafaba36478c0ce0e72ead54f21088e8dbb72d41f3a619a48d0cd6600c5db8eab918e60f0',1,5,'app','[]',0,'2021-06-23 17:46:56','2021-06-23 17:46:56','2022-06-23 17:46:56'),
('75717be4e6f8487719580c184d0521422b7df98a13c08efae4c18de4da7215c8cb08e26d8a2123b6',1,5,'app','[]',0,'2021-06-27 23:37:38','2021-06-27 23:37:38','2022-06-27 23:37:38'),
('75bffc01ff88a9ba04749631defa2bc5ff98aaa7b07d2e444f302213bcf50a92bf35a6d8520d0ca9',1,5,'app','[]',0,'2021-06-24 03:26:50','2021-06-24 03:26:50','2022-06-24 03:26:50'),
('767fc2700dfdcf5a805b4d9a4e09436d9de453e113fac0625c88793d29da03a9eaeb2eb96aefecfe',1,5,'app','[]',0,'2021-06-21 14:16:05','2021-06-21 14:16:05','2022-06-21 14:16:05'),
('79c99ca1f9c545bda1836ca6f59ae6361d38da7f0ef7b68dea166d1cf00b3210d1f137c9009c3ec7',1,5,'app','[]',0,'2021-06-20 05:24:59','2021-06-20 05:24:59','2022-06-20 05:24:59'),
('7e13a010e22a8882a98096655b1e8e1e454080cc48a1cd45a3e6821f15c9416dfc185ce4b0c2af03',1,5,'app','[]',0,'2021-06-20 08:28:56','2021-06-20 08:28:56','2022-06-20 08:28:56'),
('82267b0df19bde536db37b51012f9b8df0e5b723bb93410355ac279550faa118490381eca550ba25',1,5,'app','[]',0,'2021-06-21 14:00:21','2021-06-21 14:00:21','2022-06-21 14:00:21'),
('882300f452379e61ff630525bac0593e085a52513c8816fb903df316b4d38568cd11c7c6f49db91c',1,5,'app','[]',0,'2021-06-20 05:25:12','2021-06-20 05:25:12','2022-06-20 05:25:12'),
('8aa09c3c2580d9de268ad72578fe71799419d94578b17fb69ab028a1fc6950f4411337acf5bf0044',1,5,'app','[]',0,'2021-06-28 01:05:51','2021-06-28 01:05:51','2022-06-28 01:05:51'),
('8bb228e26866d635798dee204668f87e4f6fb7687f4dba7b7910458d34ef7a8a229450363df9a7c8',1,5,'app','[]',0,'2021-06-24 02:30:09','2021-06-24 02:30:09','2022-06-24 02:30:09'),
('9191ec3ca7574d35ce4e6a36c541d3376a224100a26d0ff76cdde810d156a8623d25f5d95a080439',1,5,'app','[]',0,'2021-06-21 04:19:57','2021-06-21 04:19:57','2022-06-21 04:19:57'),
('93df7534c1ee84bf565985386d7d2ab743ff000339936e4f1546101e1c88f1635faa5f54af8a02b8',1,5,'app','[]',0,'2021-06-21 02:16:42','2021-06-21 02:16:42','2022-06-21 02:16:42'),
('956780fb26cb05b2660e265a5a7a2fc622ca675c81bacccba682f3d6e6f54724d748dba4fbec1741',1,5,'app','[]',0,'2021-06-21 02:08:09','2021-06-21 02:08:09','2022-06-21 02:08:09'),
('971f6f34c32b86e6280bbb85a6d0c32d01408d8dbb7b86b9d743ea67a032a7433d09e7a97b73a970',1,5,'app','[]',0,'2021-06-24 02:29:16','2021-06-24 02:29:16','2022-06-24 02:29:16'),
('9b33e308a368545821143900b50a050d2527f910f25f545cd6737651c3799e1787971e6df3c335ec',2,5,'app','[]',0,'2021-06-24 03:17:06','2021-06-24 03:17:06','2022-06-24 03:17:06'),
('9b70a238c53d7827479ea84a02c8825033e9633da190d5117a6a4bb8c356b3d8950bdd95ac23abb5',1,5,'app','[]',0,'2021-06-23 17:48:30','2021-06-23 17:48:30','2022-06-23 17:48:30'),
('a0da2a43216f5f1806dea9e0e110229c65d9937bb083b3c7bc331bcf42cccfbed0ed8a880539859e',1,5,'app','[]',0,'2021-06-23 18:02:47','2021-06-23 18:02:47','2022-06-23 18:02:47'),
('a7f6c4657793688c334a27cb35f8d3e54e2869ef4ddcb2b439869c07622244b83ee8cb4b282339bc',1,5,'app','[]',0,'2021-06-24 02:17:02','2021-06-24 02:17:02','2022-06-24 02:17:02'),
('b8e9b3f30ae9e225cda848633f0807b7427469bc2389179afd829b78b805c5576731ba1e94ea8de5',1,5,'app','[]',0,'2021-06-21 14:31:36','2021-06-21 14:31:36','2022-06-21 14:31:36'),
('b92887b7e53f24b763716aed0a1ec7d25fb1255504ab6d3817031a3f7f8e44cc704a3674560a3f62',1,5,'app','[]',0,'2021-06-23 22:41:43','2021-06-23 22:41:43','2022-06-23 22:41:43'),
('b9d54d62f5fa7a618f9f7bdf8c1e648a5ecba6b865ab3ea5243a2b96d0f4e49ed5a3891ebad1b071',1,5,'app','[]',0,'2021-06-21 04:18:17','2021-06-21 04:18:17','2022-06-21 04:18:17'),
('bbe44f50b0b605cd2069b41fe2bc1f8a48cf83a78cf093485df96739cb44c56a5a2c683ab9166b03',1,5,'app','[]',0,'2021-06-24 02:28:30','2021-06-24 02:28:30','2022-06-24 02:28:30'),
('c1dd69968b00dd3c564d45ffb44c0655224a3258226a13cd9a5d8e3ce118d207a308c97a7c2a1293',1,5,'app','[]',0,'2021-06-24 03:13:14','2021-06-24 03:13:14','2022-06-24 03:13:14'),
('c8f1ec11cef5e4a5ad445620cca70ebacd110fce1960349f73d6bd5fb15f36a833ef384daf60be86',1,5,'app','[]',0,'2021-06-23 17:46:57','2021-06-23 17:46:57','2022-06-23 17:46:57'),
('cc786c875601711baa3aee8f0be6561e0e4afd3af0d21a77a721d3501639f06a32905fc89120ce6f',1,5,'app','[]',0,'2021-06-24 01:57:15','2021-06-24 01:57:15','2022-06-24 01:57:15'),
('ce3957ca09d2749a5769d0c2c95e2c0d6ba4ec079bb683af8d24122e9eaf457aa46a68d4eb758a94',1,5,'app','[]',0,'2021-06-27 15:18:14','2021-06-27 15:18:14','2022-06-27 15:18:14'),
('cebcd0735431d1fab277bd7c2cd507dafbe2f0a4020e9a98ef8730930b43b3b9211485671584b894',1,5,'app','[]',0,'2021-06-27 15:36:46','2021-06-27 15:36:46','2022-06-27 15:36:46'),
('d2857e94422de45568a3cc310d1c8275a4102939780ba55b10d02b13f408bc1b412172d53426112a',1,5,'app','[]',0,'2021-06-20 05:50:14','2021-06-20 05:50:14','2022-06-20 05:50:14'),
('d9c3f7ca123d9af1ea74e15ce55d8502b4b25836aa40e2a8e18a5d092c494fe08a0026b60040228b',3,5,'app','[]',0,'2021-06-21 14:40:39','2021-06-21 14:40:39','2022-06-21 14:40:39'),
('d9e74c6cf6f90d344431529829fe1d4911c1c0ec0e3253aa81b2d1747e381440f2919d503960f8d3',1,5,'app','[]',0,'2021-06-27 19:47:31','2021-06-27 19:47:31','2022-06-27 19:47:31'),
('d9e8daee8c1dfedf6fb4d19077b17fd1ee02155be981a1d87cc4e1b6df378824db4d8e9cd96a0f63',4,5,'app','[]',0,'2021-06-21 14:41:08','2021-06-21 14:41:08','2022-06-21 14:41:08'),
('e1a9d29fddc205e9a411c78cf21d63d4087741fd6b71236bd486087aff8cae2d2912edf9b3d4273e',2,5,'app','[]',0,'2021-06-21 14:40:14','2021-06-21 14:40:14','2022-06-21 14:40:14'),
('e301cea295f2a210d6fc858d90ef353b26d7012172b93f20733b5e8ab9308b58c25bbde29e9be48c',1,5,'app','[]',0,'2021-06-28 00:10:57','2021-06-28 00:10:57','2022-06-28 00:10:57'),
('eb1a72a79070a5d3e82231b127ab1f4ec37818eb7149776ae027e8e45bea33925aaebcd72419851d',1,5,'app','[]',0,'2021-06-21 02:43:20','2021-06-21 02:43:20','2022-06-21 02:43:20'),
('efd14c72e2e5e57f19cbe77655a2ef806f96b3927266b4e1fd58ee5f1f33d54d6e00c73ff3fa6fc9',1,5,'app','[]',0,'2021-06-27 20:55:10','2021-06-27 20:55:10','2022-06-27 20:55:10'),
('f46e46cdd896dc935fa9b2426f8abca448ce9bc14e0b656f31b57ecc3b014000985360e55733dad7',1,5,'app','[]',0,'2021-06-28 01:34:13','2021-06-28 01:34:13','2022-06-28 01:34:13'),
('f9a331e0614f932d0eaf2213a55aa777c523f555682457c2dcda388387d795cb4add5b23bb2d423b',10,5,'app','[]',0,'2021-06-20 08:18:12','2021-06-20 08:18:12','2022-06-20 08:18:12'),
('fcda900e593bc56cdc2271ddc988bf9c423b88671a97fb91c430d43157098bbca61f4cde06dc5f9d',4,5,'app','[]',0,'2021-06-27 18:04:10','2021-06-27 18:04:10','2022-06-27 18:04:10'),
('fdd670ddddcf407853af3d3a0e491bf97e1f4782f80e3159e0b1e5299bc6d33424bfd998d71c5f02',1,5,'app','[]',0,'2021-06-27 16:45:01','2021-06-27 16:45:01','2022-06-27 16:45:01'),
('ffc01312e1f9f0e44efe153af80b453f0782bdfab05016013d66c81f563bae26acbb099fdb070425',1,5,'app','[]',0,'2021-06-27 20:42:58','2021-06-27 20:42:58','2022-06-27 20:42:58');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`provider`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values 
(1,NULL,'Laravel Personal Access Client','5TFJpnQpjRriw6XqP8mYTTzjBR2VjX6WmeGBnEk9',NULL,'http://localhost',1,0,0,'2021-06-20 04:13:50','2021-06-20 04:13:50'),
(2,NULL,'Laravel Password Grant Client','1ofV8ZEljze0hH2T36TnEGDu78Qwn7yfMAH3s9Jj','users','http://localhost',0,1,0,'2021-06-20 04:13:50','2021-06-20 04:13:50'),
(3,NULL,'Laravel Personal Access Client','mSsNhr1JpFlmSWmwDH3xOTnKmzRYXRj2LFnuRRK7',NULL,'http://localhost',1,0,0,'2021-06-20 04:26:58','2021-06-20 04:26:58'),
(4,NULL,'Laravel Password Grant Client','ZWnTemjtCAHA7F9HVZkIuqjZXMqtQctRtzbdWBaj','users','http://localhost',0,1,0,'2021-06-20 04:26:58','2021-06-20 04:26:58'),
(5,NULL,'Laravel Personal Access Client','EMxB9hNGEsW2DhI530MVL8nSyG7l7bpLons0xk1O',NULL,'http://localhost',1,0,0,'2021-06-20 04:27:12','2021-06-20 04:27:12'),
(6,NULL,'Laravel Password Grant Client','PDxCM0FJ0wQHXoQvUyFHsS2biwPNms7YonZRbg3w','users','http://localhost',0,1,0,'2021-06-20 04:27:12','2021-06-20 04:27:12');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values 
(1,1,'2021-06-20 04:13:50','2021-06-20 04:13:50'),
(2,3,'2021-06-20 04:26:58','2021-06-20 04:26:58'),
(3,5,'2021-06-20 04:27:12','2021-06-20 04:27:12');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

insert  into `password_resets`(`email`,`token`,`created_at`) values 
('l17640077@piedad.tecnm.mx','yiBjlw0GBK',NULL),
('l17640077@piedad.tecnm.mx','VgVj7shCSg',NULL),
('l17640077@piedad.tecnm.mx','FoHNhMcdFi',NULL),
('l17640077@piedad.tecnm.mx','Tc3tmFnXF4',NULL),
('l17640077@piedad.tecnm.mx','94ucgwVHxy',NULL),
('l17640077@piedad.tecnm.mx','QyVaAjy3Td',NULL),
('l17640077@piedad.tecnm.mx','KDRcqW1kjo',NULL),
('lswaniawski@example.org','RhGym5Fg5w',NULL),
('lswaniawski@example.org','1vvQnvsGgx',NULL),
('lswaniawski@example.org','s9tBvWbhS5',NULL),
('lswaniawski@example.org','ytptOpcNrk',NULL),
('lswaniawski@example.org','EofnA6msNt',NULL),
('lswaniawski@example.org','DeNXlHrjlI',NULL),
('lswaniawski@example.org','G0DPlgHXFk',NULL),
('lswaniawski@example.org','7Xz0P4Suzf',NULL),
('lswaniawski@example.org','Asl8fF47ud',NULL),
('lswaniawski@example.org','tPPGkG1cQ2',NULL),
('l17640077@piedad.tecnm.mx','YQS2kKCdlD',NULL),
('l17640077@piedad.tecnm.mx','lHap4HObho',NULL),
('l17640077@piedad.tecnm.mx','s1EQOsTIeA',NULL),
('l17640077@piedad.tecnm.mx','5dYXJiKOuh',NULL),
('l17640077@piedad.tecnm.mx','KZ3uKM7QNU',NULL),
('lan@gmail.com','vogOcQipEg',NULL),
('lan@gmail.com','3dl5RskEWQ',NULL),
('lan@gmail.com','nWgehwwRnr',NULL),
('lan@gmail.com','rpcEIUsK94',NULL),
('lan@gmail.com','2Kam2ZBlD9',NULL),
('lan@gmail.com','Fp6zU1DL4i',NULL),
('lan@gmail.com','SUFAxwlxdQ',NULL),
('lan@gmail.com','MhNadg4RW1',NULL),
('lan@gmail.com','L46d6cbvdd',NULL),
('lan@gmail.com','wwUnM879Gp',NULL),
('lan@gmail.com','1jbXO3MAvF',NULL),
('lan@gmail.com','HtycW1svmJ',NULL),
('thudson@example.com','qWFUeV5YsQ',NULL),
('thudson@example.com','BXcle9AfOG',NULL),
('l17640077@piedad.tecnm.mx','yoVvJUibAn',NULL),
('l17640077@piedad.tecnm.mx','3IBXp1Lk5V',NULL),
('l17640077@piedad.tecnm.mx','qMqUH1eG7B',NULL),
('l17640077@piedad.tecnm.mx','5NZSNS7DBW',NULL),
('l17640077@piedad.tecnm.mx','Ja24XMOHrX',NULL),
('l17640077@piedad.tecnm.mx','ZY4YSlJDuj',NULL),
('l17640077@piedad.tecnm.mx','iqqeNSQEF1',NULL),
('l17640077@piedad.tecnm.mx','QRSVLOm3Rd',NULL),
('l17640062@piedad.tecnm.mx','fQIqH0DYy7',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promedio` smallint(20) unsigned NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`last_name`,`email`,`career`,`promedio`,`password`,`created_at`,`updated_at`) values 
(1,'Alejandra Daniela','Naranjo Belmonte','l17640077@piedad.tecnm.mx','Tecnologías de la Información y Comunicación',95,'$2y$10$PkE9zLQEPwEKQJSuePBcQuys5XXAj6sli0x2H9CwZ5/YhFHyBVbOO','2021-06-20 04:37:47','2021-06-27 18:02:04'),
(2,'Zenaida Nataly','Guillen Urbina','l17640068@piedad.tecnm.mx','Tecnologías de la Información y Comunicación',90,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-06-20 04:37:48','2021-06-20 04:37:48'),
(3,'Jocelyn','Veloz Briseño','l17640088@piedad.tecnm.mx','Tecnologías de la Información y Comunicación',85,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-06-20 04:37:48','2021-06-20 04:37:48'),
(4,'Luis David','Campos Solorio','l17640062@piedad.tecnm.mx','Tecnologías de la Información y Comunicación',90,'$2y$10$xeJr/U8RGO7.dCqCmJ1rFed3hPv8KPtif1//QHhv5Oknc.pg6hfUC','2021-06-20 04:37:48','2021-06-27 18:03:53'),
(5,'Jewell Larkin','Kuhn','chet.corkery@example.com','Sistemas',75,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-06-20 04:37:48','2021-06-20 04:37:48'),
(6,'Florine Haag','Brown','minnie68@example.com','Administración',84,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-06-20 04:37:48','2021-06-20 04:37:48'),
(7,'Dr. Jordy Vandervort','Kohler','mertz.lucio@example.net','Bioquímica',93,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-06-20 04:37:48','2021-06-20 04:37:48'),
(8,'Domingo Effertz','West','yost.alden@example.org','Bioquímica',70,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-06-20 04:37:48','2021-06-20 04:37:48'),
(9,'Loren Bosco','Bailey','terence.haley@example.net','Administración',70,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-06-20 04:37:48','2021-06-20 04:37:48'),
(10,'Lauretta Lemke','Watsica','thudson@example.com','Administración',70,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-06-20 04:37:48','2021-06-20 04:37:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
