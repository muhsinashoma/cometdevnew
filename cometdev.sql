-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 01:14 PM
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
(10, 42, 9, NULL, NULL),
(11, 43, 7, NULL, NULL),
(12, 43, 8, NULL, NULL),
(13, 43, 9, NULL, NULL),
(14, 44, 3, NULL, NULL),
(15, 44, 4, NULL, NULL),
(16, 44, 5, NULL, NULL);

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
(19, '2021_04_01_233119_create_category_post_table', 4),
(20, '2021_05_19_162418_create_post_tag_table', 5);

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
(42, 'ফাইজারের টিকা ১ মাস ফ্রিজে রাখা যাবে', 2, 'faijarer-tika-1-mas-frije-rakha-zabe', '{\"post_type\":\"Gallery\",\"post_image\":\"\",\"post_gallery\":[\"7d57cb32de6988f434c7c605bb76439a.png\",\"767c465ad7f174f8f53baa836aef6f76.jpg\",\"b6e296c64b9d1491513cbfaa4753310e.jpg\"],\"post_video\":\"\",\"post_audio\":null}', '<p>ফাইজার ও বায়োএনটেকের যৌথ উদ্যোগে তৈরি করোনার টিকা এখন আগের চেয়ে বেশি দিন রাখা যাবে ফ্রিজে। ইউরোপীয় ইউনিয়নের ওষুধ নিয়ন্ত্রক সংস্থা এমনটিই বলেছে বলে বিবিসির খবরে জানানো হয়েছে।</p>\r\n\r\n<p>দ্য ইউরোপিয়ান মেডিসিনস এজেন্সি (ইএমএ) জানায়, টিকার ভায়াল খোলা না হলে ফ্রিজে এক মাস পর্যন্ত রাখা যাবে। আগে এই সময়সীমা ছিল পাঁচ দিন।</p>', 1, 0, '2021-05-18 12:35:10', '2021-05-18 12:35:10'),
(43, 'ইসরায়েল-ফিলিস্তিন সংঘাত নিয়ে যা বলল সৌদি আরব', 4, 'israyel-filistin-sngghat-niye-za-bll-soudi-arb', '{\"post_type\":\"Gallery\",\"post_image\":\"7874b63a8b3dd41b15225d6e5456b4d0.jpg\",\"post_gallery\":[],\"post_video\":\"\",\"post_audio\":null}', '<p>ইসরায়েল-ফিলিস্তিন সংঘাত পুরো অঞ্চলকে &lsquo;ভুল পথে&rsquo; নিয়ে যাচ্ছে বলে মন্তব্য করেছে সৌদি আরব। বার্তা সংস্থা এএফপির প্রতিবেদনে এ তথ্য জানানো হয়।</p>\r\n\r\n<p>সৌদি আরবের পররাষ্ট্রমন্ত্রী ফয়সাল বিন ফারহান ইসরায়েল-ফিলিস্তিন সংঘাত নিয়ে গতকাল মঙ্গলবার এ মন্তব্য করেন। একই সঙ্গে তিনি এ সংঘাত বন্ধের আহ্বান জানিয়েছেন।</p>\r\n\r\n<p>এক সপ্তাহের বেশি সময় ধরে গাজায় রক্তক্ষয়ী হামলা চালাচ্ছে ইসরায়েল। গাজার স্বাস্থ্য কর্তৃপক্ষের তথ্যমতে, ইসরায়েলি হামলায় এখন পর্যন্ত অন্তত ২১৭ জন ফিলিস্তিনি নিহত হয়েছেন। নিহত ব্যক্তিদের মধ্যে প্রায় ১০০ জন নারী ও শিশু। হামলায় আহত হয়েছেন প্রায় দেড় হাজার ফিলিস্তিনি।</p>\r\n\r\n<p>হামলার জবাবে গাজা থেকে ইসরায়েল লক্ষ্য করে রকেট ছুড়ছে হামাস। ইসরায়েলের ভাষ্য, চলমান সংঘাতে ইসরায়েলের পক্ষে ১২ জন নিহত হয়েছেন। তার মধ্যে দুটি শিশু।</p>\r\n\r\n<p>দুই পক্ষের সংঘাত বন্ধে আন্তর্জাতিক পর্যায়ে কূটনৈতিক তৎপরতা চলছে। আন্তর্জাতিক মহল যুদ্ধবিরতির আহ্বান জানাচ্ছে। তবে ইসরায়েল হামলা অব্যাহত রাখার কথা বলছে।</p>\r\n\r\n<p>সৌদির পররাষ্ট্রমন্ত্রী ফয়সাল বিন ফারহান বার্তা সংস্থা এএফপিকে বলেন, &lsquo;এসব (সংঘাত) আমাদের পুরোপুরি ভুল পথে ঠেলে দিচ্ছে। এর অর্থ হলো, আমরা টেকসই শান্তির দিকে যাত্রাকে আরও কঠিন করে তুলছি।&rsquo;</p>\r\n\r\n<p>সুদান ও আফ্রিকা নিয়ে ফ্রান্সে অনুষ্ঠিত সম্মেলনের ফাঁকে কথা বলেন সৌদির পররাষ্ট্রমন্ত্রী। ইসরায়েল-ফিলিস্তিন সংঘাত উগ্রবাদীদের ক্ষমতায়িত করছে বলেও মন্তব্য করেন ফয়সাল বিন ফারহান।&nbsp;</p>\r\n\r\n<p>সৌদির পররাষ্ট্রমন্ত্রী বলেন, &lsquo;এটি আমাদের অঞ্চলের সবচেয়ে অসহিষ্ণু কণ্ঠকে শক্তিশালী করছে। সত্যিকারের শান্তি অনুসন্ধানের পথকে কঠিন করে তুলছে।&rsquo;</p>\r\n\r\n<p>ফয়সাল বিন ফারহান বলেন, গুরুত্বসহকারে সব পক্ষকে আলোচনায় উৎসাহিত করার জন্য সবাইকে একসঙ্গে কাজ করতে হবে। সৌদি পররাষ্ট্রমন্ত্রী বলেন, প্রথমেই সহিংসতা বন্ধ করতে হবে। তারপর চূড়ান্ত নিষ্পত্তির জন্য গুরুত্বসহকারে শান্তি আলোচনায় বসতে হবে।</p>\r\n\r\n<p>ফয়সাল বিন ফারহান আরও বলেন, চূড়ান্ত বন্দোবস্তে অবশ্যই পূর্ব জেরুজালেমকে রাজধানী রেখে একটি ফিলিস্তিন রাষ্ট্রের বিষয়টি অন্তর্ভুক্ত থাকতে হবে।</p>\r\n\r\n<p>&nbsp;</p>', 1, 0, '2021-05-19 10:51:23', '2021-05-19 10:51:23'),
(44, 'Coronavirus India Live Updates: Centre only worried about its image in Singapore, says Sisodia; Tamil Nadu top contributor to India’s caseload', 4, 'coronavirus-india-live-updates-centre-only-worried-about-its-image-in-singapore-says-sisodia-tamil-nadu-top-contributor-to-indias-caseload', '{\"post_type\":\"Gallery\",\"post_image\":\"\",\"post_gallery\":[\"41946b5c8f22a45b533e820c4dc03663.jpg\",\"a284dfe7d13888e7e88b6ffdb97a105a.jpg\",\"707b79bc847e2f504cbfc1329d002432.png\"],\"post_video\":\"\",\"post_audio\":null}', '<p><strong><a href=\"https://indianexpress.com/about/coronavirus/\">Coronavirus</a>&nbsp;India Live Updates:</strong>&nbsp;Hours after External Affairs Minister slammed Delhi Chief Minister for his remarks on &ldquo;Singapore strain,&rdquo; Deputy CM Manish Sisodia hit back accusing the Centre of being bothered only about its &ldquo;image in Singapore.&rdquo; Stating that the Centre was doing &ldquo;cheap politics,&rdquo; Sisodia said, &ldquo;Centre is worried about its image in Singapore but not about children under threat from COVID strain. It did not consider alerts about COVID London strain and many lost their family members due to it.&rdquo;</p>\r\n\r\n<p>India reported 4,529 deaths on Tuesday, the highest so far in a day. Maharashtra reported over 1,300 deaths, nearly half of which were more than a week old. Karnataka reported 525 deaths, while Tamil Nadu added 364 to the toll. Over 2.67 lakh fresh cases were reported in the country. While Tamil Nadu recorded more than 33,000 cases, Karnataka and Kerala both reported over 30,000 cases. Maharashtra, which was leading the list for months reported the country&rsquo;s fourth highest case count with 28,438 new infections. The active cases in the country dropped further to 32.26 lakh.</p>', 1, 0, '2021-05-19 11:00:23', '2021-05-19 11:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 43, 5, NULL, NULL),
(2, 43, 8, NULL, NULL),
(3, 44, 6, NULL, NULL),
(4, 44, 7, NULL, NULL),
(5, 44, 8, NULL, NULL);

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
(1, 'Food', 'food', '1', '2021-04-12 19:06:21', '2021-04-12 19:06:21'),
(2, 'Health', 'health', '1', '2021-04-12 19:07:04', '2021-04-12 19:07:04'),
(3, 'International', 'International', '1', '2021-04-12 19:08:52', '2021-04-12 19:08:52'),
(4, 'Corona Virous', 'corona-virous', '1', '2021-04-12 19:22:21', '2021-04-12 19:22:21'),
(5, 'Eid Offer', 'eid-offer', '1', '2021-04-14 06:17:56', '2021-04-14 06:17:56'),
(6, 'Lock down', 'lock-down', '1', '2021-04-14 18:10:58', '2021-04-14 18:10:58'),
(7, 'Bangladesh', 'bangladesh', '1', '2021-05-16 11:42:35', '2021-05-16 11:42:35'),
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
(3, 'Salim Islam', 2, 'salimhasanriad@gmail.com', '8801847102314', NULL, NULL, '$2y$10$IieOO6ZnALOx4jjjj1PF1.NbQxg6BV5fL30Cxc298O3gfdYkucEBy', 'avatar.jpg', 1, NULL, '2021-04-07 06:52:16', '2021-04-07 06:52:16'),
(4, 'Radia Islam', 2, 'radia.islam@gmail.com', '909090', NULL, NULL, '$2y$10$uur651qXFhGVdq423eetJudbXvTpWSsar.Rr9rHg/QMGsKO9DrIwy', 'avatar.jpg', 1, NULL, '2021-05-19 10:32:36', '2021-05-19 10:32:36');

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
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
