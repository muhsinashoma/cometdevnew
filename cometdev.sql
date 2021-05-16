-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2021 at 10:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cometdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Fruits-est', 'fruits-est', 1, '2021-04-10 18:51:42', '2021-04-12 17:28:37'),
(12, 'Fish', 'fish', 0, '2021-04-10 19:15:03', '2021-04-28 21:02:57'),
(16, 'Dresses-test', '', 1, '2021-04-12 17:37:37', '2021-04-12 17:47:12'),
(17, 'Education', 'education', 1, '2021-04-12 17:47:42', '2021-04-12 17:47:42'),
(18, 'Food System', 'food-system', 1, '2021-04-12 18:01:56', '2021-04-12 18:01:56'),
(19, 'Korona Virus', 'korona-virus', 0, '2021-04-15 08:49:43', '2021-05-16 11:14:27'),
(20, 'Cartoon', 'cartoon', 0, '2021-04-28 09:51:48', '2021-05-16 11:14:19'),
(21, 'Eid Offer', 'eid-offer', 1, '2021-05-16 11:41:36', '2021-05-16 11:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2021_03_10_220722_create_roles_table', 2),
(15, '2021_04_08_191952_create_categories_table', 2),
(16, '2021_03_21_210315_create_posts_table', 3),
(17, '2021_03_25_212359_create_tags_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `user_id`, `slug`, `featured`, `content`, `status`, `trash`, `created_at`, `updated_at`) VALUES
(13, 'Govt issues notification extending lockdown', 2, 'govt-issues-notification-extending-lockdown', '{\"post_type\":\"Image\",\"post_image\":\"085a32dbe9c13c08cd693d0e1af66aa8.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>The government has issued a notification extending the ongoing countrywide lockdown till 28 April.</p>\r\n\r\n<p>The Cabinet division issued the notification on Tuesday.</p>\r\n\r\n<p>Earlier on Monday, a meeting of the cabinet division decided to extend the lockdown to control the surge of coronavirus cases in the country. The National Technical Advisory Committee on Covid-19 also recommended the extension for seven more days.</p>', 1, 1, '2021-04-20 10:50:58', '2021-04-28 21:22:23'),
(14, '7 more Hefazat men held', 3, '7-more-hefazat-men-held', '{\"post_type\":\"Image\",\"post_image\":\"1b8e4616bb183738e8dccfa3bf8cfb18.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>Police have apprehended seven more people in connection with last month&rsquo;s mayhem by the supporters of Islamist hardliner Hefazat-e-Islam in Brahmanbaria, taking the total number of arrests to 317, reports news agency UNB.</p>\r\n\r\n<p>The arrests were made from different parts of the district after identifying the accused from video footage and images taken during the violence, police said.</p>\r\n\r\n<p>So far, 55 cases have been filed and 414 accused identified in connection with the mayhem.</p>\r\n\r\n<p>On 27 March, at least five people were killed and around 50 others, including 25 cops, injured in clashes between the members of law enforcement agencies and locals during Hefazat&rsquo;s demonstrations at Nandanpur in Brahmanbaria sadar upazila.</p>', 1, 1, '2021-04-20 10:53:50', '2021-05-16 11:15:31'),
(15, 'Food Panda in Bangladesh', 2, 'food-panda-in-bangladesh', '{\"post_type\":\"Image\",\"post_image\":\"\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>Food Panda in Bangladesh</p>', 1, 1, '2021-04-20 19:47:32', '2021-05-16 11:27:26'),
(16, 'Corona Virus Effect', 3, 'corona-virus-effect', '{\"post_type\":\"Image\",\"post_image\":\"d4680e47a940576429e304a0d0981a6d.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<ul>\r\n	<li>Test purpose</li>\r\n	<li>Test -1</li>\r\n	<li>Test -2</li>\r\n	<li>Test -3</li>\r\n</ul>', 1, 0, '2021-04-20 19:55:03', '2021-04-20 19:55:03'),
(17, 'Burger  that we likes very much', 2, 'burger-that-we-likes-very-much', '{\"post_type\":\"Image\",\"post_image\":\"5b63b5672e6822e572bd111fc3d72fa1.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>Burger &nbsp;that we likes very much</p>', 1, 0, '2021-04-22 13:17:01', '2021-04-22 13:17:01'),
(19, 'Pizza', 3, 'pizza', '{\"post_type\":\"Image\",\"post_image\":\"154a7a1cd349db69b46154036dadd7db.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>Pizza&nbsp; that we likes very much</p>', 1, 1, '2021-04-22 13:18:07', '2021-05-16 11:19:41'),
(20, 'Others food item', 2, 'others-food-item', '{\"post_type\":\"Gallery\",\"post_image\":\"\",\"post_gallery\":[\"fcb1992582853230f0fdb9870184df76.jpg\",\"1c1558bf9908271d50a6e8f2a9c57021.jpg\",\"bf2034d982ea9ecf5a694363e0e4d410.jpg\"],\"post_video\":null,\"post_audio\":null}', '<p>Others food item</p>', 1, 1, '2021-04-22 13:19:27', '2021-05-16 11:20:25'),
(21, 'Education-Related Job Titles and Required Skills', 3, 'education-related-job-titles-and-required-skills', '{\"post_type\":\"Image\",\"post_image\":\"3197acc2160639794c389608c1abcb93.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>Being a teacher is just one of the many different types of jobs available within the education field. As well as teachers, schools require administrators, principals, crossing guards, and so many other roles, in order to run smoothly and serve students. And, of course, jobs in education extend beyond classrooms and school buildings.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you&#39;re considering working in education, get a glimpse into the field&#39;s outlook, as well as a comprehensive list of education-related job titles.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Requirements for Education-Related Roles&nbsp;</h2>', 1, 0, '2021-04-22 13:33:51', '2021-04-22 13:33:51'),
(23, 'Cultivation of Fruits & Flowers', 3, 'cultivation-of-fruits-flowers', '{\"post_type\":\"Gallery\",\"post_image\":\"\",\"post_gallery\":[\"9829b1fb9a43c5755d7ff13f8f744b08.jpeg\",\"1d52f592582aa260d5195e1685e75f1c.jpg\",\"b12e41ab910582b3978891ca1b7b395e.jpg\",\"ca8461bb1304e1528786535abcf32f12.jpg\"],\"post_video\":null,\"post_audio\":null}', '<p>Cultivation of Fruits &amp; Flowers</p>', 1, 0, '2021-04-22 15:06:32', '2021-04-28 21:05:24'),
(24, 'ঘরের বাইরে গেলে দুটি মাস্ক ব্যবহারের পরামর্শ', 2, 'ghrer-baire-gele-duti-mask-bzbharer-pramrs', '{\"post_type\":\"Image\",\"post_image\":\"9d0ba3aa7c9db316e7aa96cecbca6fec.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>করোনাভাইরাসের সংক্রমণ প্রতিরোধে মানুষকে মাস্ক ব্যবহার করতে বারবার নির্দেশনা দিচ্ছে সরকার। তারপরও মাস্ক পরার বিষয়ে অনেকের মধ্যে শিথিলতা দেখা যাচ্ছে। এ অবস্থায় বাইরে চলাফেরার সময় মাস্ক ব্যবহার না করলে কঠোর আইনি ব্যবস্থা গ্রহণ করা হবে বলে সরকারের পক্ষ থেকে ঘোষণা দেওয়া হয়েছে। প্রয়োজনে প্রত্যেককে দুটি মাস্ক ব্যবহার করার জন্য পরামর্শ দিচ্ছে সরকার।</p>\r\n\r\n<p><br />\r\nআজ সোমবার সরকারি তথ্য বিবরণীতে এ কথা বলা হয়েছে। এতে বলা হয়, জরুরি কাজে কেউ ঘরের বাইরে গেলে করোনাভাইরাসের সংক্রমণ প্রতিরোধে তাঁকে মাস্ক ব্যবহার করার জন্য সরকার বারবার নির্দেশনা দিয়েছে। কিন্তু লক্ষ করা যাচ্ছে, অনেকেই এ নির্দেশনা অমান্য করছেন।</p>', 1, 0, '2021-04-26 14:13:35', '2021-04-26 14:13:35'),
(31, 'Current Status of Bangladesh', 3, 'current-status-of-bangladesh', '{\"post_type\":\"Gallery\",\"post_image\":\"\",\"post_gallery\":[\"a990b4b320f01c9abdd60694711663db.jpeg\",\"cd98fd45bd50a6ee46baeab643f9abdc.jpg\",\"d3d4d7f2a40bead7def7909b8d93c842.jpg\",\"321de363a13ca5ba6af342765cee60f3.jpg\"],\"post_video\":\"\",\"post_audio\":null}', '<p>Current Status of Bangladesh</p>', 1, 0, '2021-05-16 11:11:59', '2021-05-16 11:11:59'),
(32, 'BISMILLAH', 2, 'bismillah', '{\"post_type\":\"Video\",\"post_image\":\"\",\"post_gallery\":[],\"post_video\":\"https:\\/\\/www.youtube.com\\/embed\\/pH-aMl4OHTQ\",\"post_audio\":null}', '<p>وأخيرا تم بحمد الله إنجاز فيديو كليب لأنشودة &laquo;بسم الله&raquo; ذات الشهرة العالمية (النسخة بالموسيقى ٢٠١٣) للمنشدة الصغيرة مريم</p>', 1, 0, '2021-05-16 12:05:30', '2021-05-16 12:05:30'),
(33, 'আল আকসা বাংলা এমেচার ডকুমেন্টারী', 2, 'al-aksa-bangla-emecar-dkumentaree', '{\"post_type\":\"Video\",\"post_image\":\"\",\"post_gallery\":[],\"post_video\":\"https:\\/\\/www.youtube.com\\/embed\\/3ZBSNGqM3JI\",\"post_audio\":null}', '<h1>আল আকসা বাংলা এমেচার ডকুমেন্টারী. Al Aqsa documentary in Bangla.</h1>', 1, 0, '2021-05-16 19:47:31', '2021-05-16 19:47:31'),
(34, 'Eid ul Fitr 2021: Traditional Dishes That You Must Try This Eid', 2, 'eid-ul-fitr-2021-traditional-dishes-that-you-must-try-this-eid', '{\"post_type\":\"Image\",\"post_image\":\"195bf41bb060795816677d8ede806202.jpg\",\"post_gallery\":[],\"post_video\":\"\",\"post_audio\":null}', '<p>The world is gearing up to celebrate Eid ul Fitr which will be observed on May 13 or 14. Eid marks the end of the holy month of Ramzan/Ramadan during which Muslims fast. On Eid&nbsp;ul&nbsp;Fitr, people offer prayers and gather for a lavish feast later in the day with a sumptuous spread of food to be enjoyed with family and friends, to mark the first daylight meal after a month.</p>\r\n\r\n<p><strong>Here are some of the traditional dishes that are had during Eid ul Fitr 2021 celebration:</strong></p>', 1, 0, '2021-05-16 20:29:00', '2021-05-16 20:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tag-1', 'tag-1', '1', '2021-04-12 19:06:21', '2021-04-12 19:06:21'),
(2, 'Tag- 2', 'tag-2', '1', '2021-04-12 19:07:04', '2021-04-12 19:07:04'),
(3, 'Tag Test Purpose', 'tag-test-purpose', '1', '2021-04-12 19:08:52', '2021-04-12 19:08:52'),
(4, 'Rag - Value', 'rag-value', '1', '2021-04-12 19:22:21', '2021-04-12 19:22:21'),
(5, 'Eid Offer', 'eid-offer', '1', '2021-04-14 06:17:56', '2021-04-14 06:17:56'),
(6, 'Lock down', 'lock-down', '1', '2021-04-14 18:10:58', '2021-04-14 18:10:58'),
(7, 'Current Tag', 'current-tag', '1', '2021-05-16 11:42:35', '2021-05-16 11:42:35'),
(8, 'Cartoon', 'cartoon', '1', '2021-05-16 12:02:25', '2021-05-16 12:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.jpg',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `phone_number`, `username`, `email_verified_at`, `password`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Muhsina Akter', 2, 'muhsina.akter2@gmail.com', '8801715022945', NULL, NULL, '$2y$10$4auDxhlPkUT2ifntDKxxa.VFJSZjo3QjDY0aTQkb3JNaoj9GGvKhy', 'avatar.jpg', 1, NULL, '2021-04-07 06:48:05', '2021-04-07 06:48:05'),
(3, 'Salim Islam', 2, 'salimhasanriad@gmail.com', '8801847102314', NULL, NULL, '$2y$10$IieOO6ZnALOx4jjjj1PF1.NbQxg6BV5fL30Cxc298O3gfdYkucEBy', 'avatar.jpg', 1, NULL, '2021-04-07 06:52:16', '2021-04-07 06:52:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
