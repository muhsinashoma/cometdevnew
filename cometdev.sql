-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 05:11 PM
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
(1, 'Eid Offer', 'eid-offer', 1, '2021-05-17 13:54:02', '2021-05-17 13:54:02'),
(2, 'Food System', 'food-system', 1, '2021-05-17 13:54:24', '2021-05-17 13:54:24'),
(3, 'Flower', 'flower', 1, '2021-05-17 13:55:13', '2021-05-17 13:55:13'),
(4, 'Dress', 'dress', 1, '2021-05-17 14:03:38', '2021-05-17 14:03:38'),
(5, 'Cartoon', 'cartoon', 1, '2021-05-17 14:04:10', '2021-05-17 14:04:10'),
(6, 'Muslim', 'muslim', 1, '2021-05-17 14:48:15', '2021-05-17 14:48:15'),
(7, 'International', 'international', 1, '2021-05-17 15:31:59', '2021-05-17 15:31:59'),
(8, 'Potitics', 'potitics', 1, '2021-05-17 15:32:18', '2021-05-17 15:32:18'),
(9, 'Health', 'health', 1, '2021-05-18 12:32:33', '2021-05-18 12:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 38, 1, NULL, NULL),
(2, 38, 2, NULL, NULL),
(3, 38, 6, NULL, NULL),
(4, 39, 1, NULL, NULL),
(5, 40, 6, NULL, NULL),
(6, 41, 6, NULL, NULL),
(7, 42, 2, NULL, NULL),
(8, 42, 5, NULL, NULL),
(9, 42, 6, NULL, NULL),
(10, 42, 9, NULL, NULL);

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
(16, '2021_03_21_210315_create_posts_table', 3),
(17, '2021_03_25_212359_create_tags_table', 3),
(18, '2021_03_21_211321_create_categories_table', 4),
(19, '2021_04_01_233119_create_category_post_table', 4);

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
(38, 'টিকটক সামাজিক মাধ্যমে যেভাবে ভাইরাল হচ্ছে ইসরায়েল ফিলিস্তিন সংঘাতের খবর', 2, 'tiktk-samajik-madhzme-zevabe-vairal-hcche-israzel-filistin-sngghater-khbr', '{\"post_type\":\"Image\",\"post_image\":\"daa8441f2c25f54f0f360723e1ef0138.jpg\",\"post_gallery\":[],\"post_video\":\"\",\"post_audio\":null}', '<p dir=\"ltr\"><strong>ইসরায়েল আর ফিলিস্তিনের মধ্যে লড়াই যত তীব্র হচ্ছে, তত সেই উত্তেজনা প্রকাশের একটা বড় মাধ্যম হয়ে উঠছে সামাজিক মাধ্যমের ভিডিও অ্যাপ টিকটক।</strong></p>\r\n\r\n<p dir=\"ltr\">এই ভিডিও অ্যাপ একসময় সুপরিচিতি ছিল ভাইরাল হওয়া নাচ-গানের ভিডিওর জন্য। নাচ-গানের ভিডিও শেয়ারের এই সামাজিক প্ল্যাটফর্ম এখন ফিলিস্তিন এবং ইসরায়েলের তরুণ প্রজন্মের জন্য খবর শেয়ার করার একটা গুরুত্বপূর্ণ ফোরাম হয়ে উঠেছে।</p>\r\n\r\n<p dir=\"ltr\">চীনা মালিকানাধীন এই সাইট তরুণদের কাছে খুবই জনপ্রিয়। বিশ্বব্যাপী এই অ্যাপ সক্রিয়ভাবে ব্যবহার করে মাসে প্রায় ৭০ কোটি তরুণ।</p>\r\n\r\n<p dir=\"ltr\">ইসরায়েলকে লক্ষ্য করে ছোঁড়া রকেটের ফুটেজ, ইসরায়েলি হামলায় গাযা বিধ্বস্ত হওয়ার এবং ফিলিস্তিনিদের প্রতিবাদের নানা ছবি এই সাইটে এখন ভাইরাল হয়েছে। এর মাধ্যমে সংঘাতের চিত্র দ্রুত পৌঁছে যাচ্ছে বিশ্বের নানা প্রান্তে মানুষের মোবাইল ফোনের স্ক্রিনে।</p>', 1, 0, '2021-05-17 15:22:42', '2021-05-17 15:22:42'),
(39, 'লকডাউনের মেয়াদ আরেক দফা বাড়িয়েছে বাংলাদেশ সরকার', 2, 'lkdauner-mezad-arek-dfa-badizeche-banglades-srkar', '{\"post_type\":\"Image\",\"post_image\":\"17bd10a8a27f5140459801d65c7826d5.jpg\",\"post_gallery\":[],\"post_video\":\"\",\"post_audio\":null}', '<p dir=\"ltr\"><strong>করোনাভাইরাস নিয়ে অব্যাহত উদ্বেগের মধ্যে বাংলাদেশে সরকার লকডাউনের মেয়াদ আরও এক সপ্তাহ বাড়িয়েছে।</strong></p>\r\n\r\n<p dir=\"ltr\">সরকারের মন্ত্রিপরিষদ বিভাগের আদেশে জানানো হয়েছে, কোভিড-১৯ এর বিস্তার রোধে সব ধরণের কার্যক্রম ও চলাচলে বিধিনিষেধ এক সপ্তাহ অর্থাৎ ২৩শে মে মধ্যরাত পর্যন্ত বাড়ানো হয়েছে।</p>\r\n\r\n<p dir=\"ltr\">ঈদের আগের দিন গত ১৩ই মে এই সময়সীমা বাড়ানোর আভাস দেয়া হলেও রোববার মন্ত্রিপরিষদ বিভাগ প্রজ্ঞাপনের মাধ্যমের আনুষ্ঠানিক ঘোষণা দিল।</p>\r\n\r\n<p dir=\"ltr\">লকডাউন চলাকালে পূর্বের সব বিধিনিষেধ ও কার্যক্রম অব্যাহত থাকবে। এবারে নতুন করে দুটি শর্ত যোগ করা হয়েছে।</p>', 1, 0, '2021-05-17 15:26:59', '2021-05-17 15:26:59'),
(40, 'ভারতফেরত আরও তিনজনের শরীরে করোনার ভারতীয় ধরন মিলেছে', 2, 'vartfert-aroo-tinjner-sreere-kronar-varteey-dhrn-mileche', '{\"post_type\":\"Image\",\"post_image\":\"3e8b4edb18353f7d2cfea176b95bd0fe.png\",\"post_gallery\":[],\"post_video\":\"\",\"post_audio\":null}', '<p>যশোর ও নড়াইলে প্রাতিষ্ঠানিক কোয়ারেন্টিনে থাকা আরও তিনজনের নমুনায় করোনার ভারতীয় ধরন (ভ্যারিয়েন্ট) শনাক্ত হয়েছে। আজ মঙ্গলবার যশোর জিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ের জিনোম সেন্টার ল্যাব থেকে এই তথ্য প্রকাশ করা হয়েছে।</p>\r\n\r\n<p>ল্যাব সূত্রে জানা গেছে, ১২ মে যশোর সদর হাসপাতাল থেকে দুজনের এবং ১৬ মে নড়াইল থেকে একজনের নমুনা সংগ্রহ করে করোনা পরীক্ষার জন্য পাঠানো হয়। তাঁদের করোনা পজিটিভ প্রতিবেদন আসে।</p>', 1, 0, '2021-05-18 12:28:11', '2021-05-18 12:28:11'),
(41, 'MV BISMILLAH (2013 Edition - ENGLISH)', 2, 'mv-bismillah-2013-edition-english', '{\"post_type\":\"Video\",\"post_image\":\"\",\"post_gallery\":[],\"post_video\":\"https:\\/\\/www.youtube.com\\/embed\\/cHqfk5lMw-E\",\"post_audio\":null}', '<h1>MV BISMILLAH (2013 Edition - ENGLISH)</h1>', 1, 0, '2021-05-18 12:30:16', '2021-05-18 12:30:16'),
(42, 'ফাইজারের টিকা ১ মাস ফ্রিজে রাখা যাবে', 2, 'faijarer-tika-1-mas-frije-rakha-zabe', '{\"post_type\":\"Gallery\",\"post_image\":\"\",\"post_gallery\":[\"7d57cb32de6988f434c7c605bb76439a.png\",\"767c465ad7f174f8f53baa836aef6f76.jpg\",\"b6e296c64b9d1491513cbfaa4753310e.jpg\"],\"post_video\":\"\",\"post_audio\":null}', '<p>ফাইজার ও বায়োএনটেকের যৌথ উদ্যোগে তৈরি করোনার টিকা এখন আগের চেয়ে বেশি দিন রাখা যাবে ফ্রিজে। ইউরোপীয় ইউনিয়নের ওষুধ নিয়ন্ত্রক সংস্থা এমনটিই বলেছে বলে বিবিসির খবরে জানানো হয়েছে।</p>\r\n\r\n<p>দ্য ইউরোপিয়ান মেডিসিনস এজেন্সি (ইএমএ) জানায়, টিকার ভায়াল খোলা না হলে ফ্রিজে এক মাস পর্যন্ত রাখা যাবে। আগে এই সময়সীমা ছিল পাঁচ দিন।</p>', 1, 0, '2021-05-18 12:35:10', '2021-05-18 12:35:10');

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
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
