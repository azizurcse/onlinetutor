-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2018 at 06:49 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinetutor`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Laravel', '2018-02-22 04:55:23', '2018-02-22 04:55:23'),
(4, 'Wordpress', '2018-02-22 04:55:31', '2018-02-22 04:55:31'),
(5, 'Codeigniter', '2018-02-22 04:55:39', '2018-02-22 04:55:39'),
(6, 'Web design', '2018-02-22 04:55:50', '2018-02-22 04:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_13_064516_create_posts_table', 1),
(4, '2018_02_13_064917_create_categories_table', 1),
(5, '2018_02_19_111601_create_tags_table', 1),
(6, '2018_02_19_113356_create_post_tag_table', 1),
(7, '2018_02_21_042653_create_profiles_table', 1),
(8, '2018_02_21_114026_create_settings_table', 2),
(9, '2018_02_23_104923_insert_user_id_column', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content_post`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Laravel news', 'laravel-news', '<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Lorem ipsum dolor sit amet, penatibus amet donec, mi volutpat commodo platea egestas ultricies id nunc, neque vulputate fringilla aliquam. Ultrices euismod voluptatem eget, in in vestibulum dui pellentesque at arcu, at in. Ut elit massa vel dolor nullam, malesuada non fusce mauris molestie quisque. At mauris eget mauris arcu nec, ornare tempus vulputate, quis est volutpat eu. Rhoncus nam suscipit pede, enim tempor augue egestas consequat et, rhoncus ipsum vitae pretium, luctus nunc sodales erat vehicula leo, augue velit sodales vehicula. Ipsum tellus, a nunc, tempor tempor nec turpis gravida in rutrum, ante primis tellus ut porttitor et, class orci suspendisse sed risus eget.Laudantium in aliquam pede tortor mus, aenean risus ipsum id, auctor enim a lobortis sapien id, odio curabitur id eleifend sed mi placerat, rutrum libero eros sed vitae. Ac nisl ac neque eu repellat, dignissim mi nibh leo. Etiam lacus pariatur orci massa bibendum. In mi lobortis, nam ut, rutrum sit risus suscipit amet, felis a turpis mauris tempor, hendrerit pede quisque. Curabitur quis sed auctor nunc, eros duis, nisl elementum inceptos leo laoreet, vivamus tristique mauris, purus non quam sed. Nostra et tortor fringilla arcu ultricies id, tempus platea aptent euismod non, mauris in eleifend erat lorem. A sit id mattis tempus, pede amet nec, facilisis lorem ante id porta rhoncus, varius sodales diam pharetra quis et, integer urna nunc. At justo, consectetuer donec nullam eros, ligula natus eget pede sem.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Malesuada potenti consectetuer interdum dolor. Tempor pellentesque orci et mollis sit, dolor sed a bibendum neque dui, nam egestas egestas amet dui potenti phasellus, sed non eu tristique donec. Accumsan itaque, quod quisque, vestibulum faucibus nulla nibh donec id pellentesque, lacus ut donec ut et, vel volutpat vel ac nullam in. Augue ac senectus in nec. Metus cras egestas nam fermentum, pharetra duis tristique ullamcorper vestibulum, ligula rutrum neque massa. Vehicula sociis eu id orci, leo nullam, amet libero nonummy in, orci sociis. Libero scelerisque, at risus aptent, arcu accumsan suspendisse habitant libero malesuada nunc, est arcu sed sed, euismod ornare ut fugiat consequuntur. Ac imperdiet in, praesent wisi felis tempor vitae cursus tincidunt, mi fermentum eget at vitae nec diam, quis leo quisque. Sit velit, interdum odio, sed amet nunc vitae pretium porta sed. Fusce bibendum magna maecenas tincidunt ad, suspendisse fermentum. Sed nunc pede arcu enim feugiat donec, dui rhoncus ultrices condimentum quam sed ultricies, nulla in sit vestibulum vivamus morbi. Posuere wisi nunc egestas, odio cum non, odio urna quia et viverra egestas.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Eu enim libero condimentum, vel eu libero felis ac, morbi ut et non ac est, facilisis luctus nonummy, wisi morbi magna. Ultricies suspendisse ac nisl. Et adipiscing quisque nostra pretium, penatibus amet lobortis nulla tristique et blandit. Aliquet in, mattis non pharetra. Curabitur quam litora suscipit, interdum ultrices. Cras aliquet nec nulla nonummy turpis luctus, mi turpis dui fermentum wisi nisl, nibh lectus facilis. Sed metus felis habitasse, eget arcu sem est, quam felis, vitae placerat posuere quisque vitae neque, in turpis est vestibulum eget. Quam odio luctus eget, sit mus maecenas consequat odio ante imperdiet, iaculis viverra wisi cras netus et viverra, bibendum mattis, sodales arcu magna quisque. Sit fusce mattis. Donec velit nulla risus vel, leo arcu metus magna nascetur. A aliquam est, tortor nec amet felis orci orci magna, vulputate augue, lectus vitae integer ac facilisis.</p></div>', 3, 'uploads/posts/1519298209laravel.jpg', NULL, '2018-02-22 05:16:49', '2018-02-22 05:16:49', 1),
(2, 'Wordpress', 'wordpress', '<p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Lorem ipsum dolor sit amet, penatibus amet donec, mi volutpat commodo platea, egestas ultricies id nunc, neque vulputate fringilla aliquam. Ultrices euismod voluptatem eget, in in vestibulum dui pellentesque at arcu, at in. Ut elit massa vel dolor nullam, malesuada non fusce mauris molestie quisque. At mauris eget mauris arcu nec, ornare tempus vulputate, quis est volutpat eu. Rhoncus nam suscipit pede, enim tempor augue egestas consequat et, rhoncus ipsum vitae pretium, luctus nunc sodales erat vehicula leo, augue velit sodales vehicula. Ipsum tellus, a nunc, tempor tempor nec turpis gravida in rutrum, ante primis tellus ut porttitor et, class orci suspendisse sed risus eget.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Laudantium in aliquam pede tortor mus, aenean risus ipsum id, auctor enim a lobortis sapien id, odio curabitur id eleifend sed mi placerat, rutrum libero eros sed vitae. Ac nisl ac neque eu repellat, dignissim mi nibh leo. Etiam lacus pariatur orci massa bibendum. In mi lobortis, nam ut, rutrum sit risus suscipit amet, felis a turpis mauris tempor, hendrerit pede quisque. Curabitur quis sed auctor nunc, eros duis, nisl elementum inceptos leo laoreet, vivamus tristique mauris, purus non quam sed. Nostra et tortor fringilla arcu ultricies id, tempus platea aptent euismod non, mauris in eleifend erat lorem. A sit id mattis tempus, pede amet nec, facilisis lorem ante id porta rhoncus, varius sodales diam pharetra quis et, integer urna nunc. At justo, consectetuer donec nullam eros, ligula natus eget pede sem.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Malesuada potenti consectetuer interdum dolor. Tempor pellentesque orci et mollis sit, dolor sed a bibendum neque dui, nam egestas egestas amet dui potenti phasellus, sed non eu tristique donec. Accumsan itaque, quod quisque, vestibulum faucibus nulla nibh donec id pellentesque, lacus ut donec ut et, vel volutpat vel ac nullam in. Augue ac senectus in nec. Metus cras egestas nam fermentum, pharetra duis tristique ullamcorper vestibulum, ligula rutrum neque massa. Vehicula sociis eu id orci, leo nullam, amet libero nonummy in, orci sociis. Libero scelerisque, at risus aptent, arcu accumsan suspendisse habitant libero malesuada nunc, est arcu sed sed, euismod ornare ut fugiat consequuntur. Ac imperdiet in, praesent wisi felis tempor vitae cursus tincidunt, mi fermentum eget at vitae nec diam, quis leo quisque. Sit velit, interdum odio, sed amet nunc vitae pretium porta sed. Fusce bibendum magna maecenas tincidunt ad, suspendisse fermentum. Sed nunc pede arcu enim feugiat donec, dui rhoncus ultrices condimentum quam sed ultricies, nulla in sit vestibulum vivamus morbi. Posuere wisi nunc egestas, odio cum non, odio urna quia et viverra egestas.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Eu enim libero condimentum, vel eu libero felis ac, morbi ut et non ac est, facilisis luctus nonummy, wisi morbi magna. Ultricies suspendisse ac nisl. Et adipiscing quisque nostra pretium, penatibus amet lobortis nulla tristique et blandit. Aliquet in, mattis non pharetra. Curabitur quam litora suscipit, interdum ultrices. Cras aliquet nec nulla nonummy turpis luctus, mi turpis dui fermentum wisi nisl, nibh lectus facilis. Sed metus felis habitasse, eget arcu sem est, quam felis, vitae placerat posuere quisque vitae neque, in turpis est vestibulum eget. Quam odio luctus eget, sit mus maecenas consequat odio ante imperdiet, iaculis viverra wisi cras netus et viverra, bibendum mattis, sodales arcu magna quisque. Sit fusce mattis. Donec velit nulla risus vel, leo arcu metus magna nascetur. A aliquam est, tortor nec amet felis orci orci magna, vulputate augue, lectus vitae integer ac facilisis.</p>', 4, 'uploads/posts/1519298343wordpress.png', NULL, '2018-02-22 05:19:03', '2018-02-22 05:40:22', 3),
(3, 'Codeigniter', 'codeigniter', '<p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Lorem ipsum dolor sit amet, a suspendisse ultricies, morbi nec dictumst scelerisque tellus. Eget in vestibulum blandit sed, augue ac tempus orci, dui mi nullam praesent, hendrerit nec est morbi fringilla. Praesent curae nisl a. Sit ac urna integer neque, volutpat excepturi aliquam, sed sapien nulla aliquam etiam suspendisse sit, suspendisse ultricies mus. Magnis quam posuere lectus aenean, sem irure aenean pede, non platea ridiculus massa amet. Vivamus cum sem dignissim, quam quis, tempus id nunc neque quam sed, libero parturient non lorem dolor nec, gravida et massa lectus pellentesque dolor ut. Velit senectus eleifend interdum vestibulum, vivamus porta, class ut, justo egestas lacus wisi. Provident purus pede ac. In fusce sodales rutrum pellentesque, eu quam vitae lobortis, aliquam adipiscing proin, sed purus nunc magna justo ipsum, massa consequat morbi et amet vestibulum.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Rutrum fusce eleifend amet quam in, in vivamus in nec penatibus. Non id. Ad duis, ornare est quis, leo mauris vivamus nulla sit hac eget, pede a proin dignissim magna. In in ipsum sed. Suspendisse non mi nisl ut tempus lacinia, nunc donec rutrum, imperdiet dolor id, elit magnis eget. Nulla enim ligula, vitae varius tortor egestas at, at eros sapiente tempor purus quia, a leo. Nisl orci eu velit, orci vestibulum facilisis ullamcorper semper, fermentum euismod duis purus, a aliquam a eleifend litora ligula nibh, tristique imperdiet libero ipsum sed. Ante nibh lorem in, auctor suspendisse dictum neque neque nullam arcu, suscipit arcu.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Taciti platea mauris ridiculus quisque, vel dictumst lorem massa diam purus, incidunt sed mauris vestibulum duis fusce, est rhoncus morbi. Non ultrices magnis platea urna vitae, varius in enim, ultricies molestie mattis primis nulla ante. Feugiat magna. Nunc eget in nec, pellentesque ornare nascetur ullamcorper, ut proin conubia consectetuer per ut ligula. Nibh pellentesque bibendum nunc suscipit erat in. Dui venenatis dui, suspendisse quis dictum at, eros velit elementum fermentum ornare nulla, nec inceptos libero, nec sapien maecenas. Nibh id, ut ipsum ac fusce. Scelerisque fusce euismod, eros venenatis etiam magna. Consectetuer ac cras viverra amet auctor ac, curabitur purus in eleifend mollis a, wisi dui praesent sollicitudin varius sed, massa tortor felis torquent justo. Torquent cursus vitae id, lorem aliquam, nam nibh faucibus adipiscing ullamcorper erat tellus. Eleifend a praesent diam aliquet.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Fringilla sit massa suspendisse sit, dui cras risus nunc magnis. Sit venenatis id diam, dui nam. Venenatis qui ipsum ac, donec sapien sagittis dapibus, maecenas ac blandit. Auctor a. Sociis ac torquent mattis. Vitae natoque, amet et semper felis ornare quisque tempor. Aliquet vitae varius laoreet semper tempus, orci adipiscing etiam interdum volutpat, dicta lacus, etiam morbi, dui libero. Sunt odio wisi aliquam sociis faucibus maiores, viverra etiam neque sed vivamus iusto fusce, imperdiet ligula. Risus diam pretium lacinia convallis. Neque semper ligula et imperdiet sed, ornare sed massa, vel lacus nec orci vivamus.</p>', 5, 'uploads/posts/1519303848codeigniter2.jpeg', NULL, '2018-02-22 06:42:46', '2018-02-22 06:50:48', 3),
(4, 'wordpress guide', 'wordpress-guide', '<p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Lorem ipsum dolor sit amet, a suspendisse ultricies, morbi nec dictumst scelerisque tellus. Eget in vestibulum blandit sed, augue ac tempus orci, dui mi nullam praesent, hendrerit nec est morbi fringilla. Praesent curae nisl a. Sit ac urna integer neque, volutpat excepturi aliquam, sed sapien nulla aliquam etiam suspendisse sit, suspendisse ultricies mus. Magnis quam posuere lectus aenean, sem irure aenean pede, non platea ridiculus massa amet. Vivamus cum sem dignissim, quam quis, tempus id nunc neque quam sed, libero parturient non lorem dolor nec, gravida et massa lectus pellentesque dolor ut. Velit senectus eleifend interdum vestibulum, vivamus porta, class ut, justo egestas lacus wisi. Provident purus pede ac. In fusce sodales rutrum pellentesque, eu quam vitae lobortis, aliquam adipiscing proin, sed purus nunc magna justo ipsum, massa consequat morbi et amet vestibulum.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Rutrum fusce eleifend amet quam in, in vivamus in nec penatibus. Non id. Ad duis, ornare est quis, leo mauris vivamus nulla sit hac eget, pede a proin dignissim magna. In in ipsum sed. Suspendisse non mi nisl ut tempus lacinia, nunc donec rutrum, imperdiet dolor id, elit magnis eget. Nulla enim ligula, vitae varius tortor egestas at, at eros sapiente tempor purus quia, a leo. Nisl orci eu velit, orci vestibulum facilisis ullamcorper semper, fermentum euismod duis purus, a aliquam a eleifend litora ligula nibh, tristique imperdiet libero ipsum sed. Ante nibh lorem in, auctor suspendisse dictum neque neque nullam arcu, suscipit arcu.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Taciti platea mauris ridiculus quisque, vel dictumst lorem massa diam purus, incidunt sed mauris vestibulum duis fusce, est rhoncus morbi. Non ultrices magnis platea urna vitae, varius in enim, ultricies molestie mattis primis nulla ante. Feugiat magna. Nunc eget in nec, pellentesque ornare nascetur ullamcorper, ut proin conubia consectetuer per ut ligula. Nibh pellentesque bibendum nunc suscipit erat in. Dui venenatis dui, suspendisse quis dictum at, eros velit elementum fermentum ornare nulla, nec inceptos libero, nec sapien maecenas. Nibh id, ut ipsum ac fusce. Scelerisque fusce euismod, eros venenatis etiam magna. Consectetuer ac cras viverra amet auctor ac, curabitur purus in eleifend mollis a, wisi dui praesent sollicitudin varius sed, massa tortor felis torquent justo. Torquent cursus vitae id, lorem aliquam, nam nibh faucibus adipiscing ullamcorper erat tellus. Eleifend a praesent diam aliquet.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Fringilla sit massa suspendisse sit, dui cras risus nunc magnis. Sit venenatis id diam, dui nam. Venenatis qui ipsum ac, donec sapien sagittis dapibus, maecenas ac blandit. Auctor a. Sociis ac torquent mattis. Vitae natoque, amet et semper felis ornare quisque tempor. Aliquet vitae varius laoreet semper tempus, orci adipiscing etiam interdum volutpat, dicta lacus, etiam morbi, dui libero. Sunt odio wisi aliquam sociis faucibus maiores, viverra etiam neque sed vivamus iusto fusce, imperdiet ligula. Risus diam pretium lacinia convallis. Neque semper ligula et imperdiet sed, ornare sed massa, vel lacus nec orci vivamus.</p>', 4, 'uploads/posts/1519306382image5.png', NULL, '2018-02-22 07:33:02', '2018-02-22 07:33:02', 3),
(5, 'codeigniter second', 'codeigniter-second', '<p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Lorem ipsum dolor sit amet, a suspendisse ultricies, morbi nec dictumst scelerisque tellus. Eget in vestibulum blandit sed, augue ac tempus orci, dui mi nullam praesent, hendrerit nec est morbi fringilla. Praesent curae nisl a. Sit ac urna integer neque, volutpat excepturi aliquam, sed sapien nulla aliquam etiam suspendisse sit, suspendisse ultricies mus. Magnis quam posuere lectus aenean, sem irure aenean pede, non platea ridiculus massa amet. Vivamus cum sem dignissim, quam quis, tempus id nunc neque quam sed, libero parturient non lorem dolor nec, gravida et massa lectus pellentesque dolor ut. Velit senectus eleifend interdum vestibulum, vivamus porta, class ut, justo egestas lacus wisi. Provident purus pede ac. In fusce sodales rutrum pellentesque, eu quam vitae lobortis, aliquam adipiscing proin, sed purus nunc magna justo ipsum, massa consequat morbi et amet vestibulum.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Rutrum fusce eleifend amet quam in, in vivamus in nec penatibus. Non id. Ad duis, ornare est quis, leo mauris vivamus nulla sit hac eget, pede a proin dignissim magna. In in ipsum sed. Suspendisse non mi nisl ut tempus lacinia, nunc donec rutrum, imperdiet dolor id, elit magnis eget. Nulla enim ligula, vitae varius tortor egestas at, at eros sapiente tempor purus quia, a leo. Nisl orci eu velit, orci vestibulum facilisis ullamcorper semper, fermentum euismod duis purus, a aliquam a eleifend litora ligula nibh, tristique imperdiet libero ipsum sed. Ante nibh lorem in, auctor suspendisse dictum neque neque nullam arcu, suscipit arcu.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Taciti platea mauris ridiculus quisque, vel dictumst lorem massa diam purus, incidunt sed mauris vestibulum duis fusce, est rhoncus morbi. Non ultrices magnis platea urna vitae, varius in enim, ultricies molestie mattis primis nulla ante. Feugiat magna. Nunc eget in nec, pellentesque ornare nascetur ullamcorper, ut proin conubia consectetuer per ut ligula. Nibh pellentesque bibendum nunc suscipit erat in. Dui venenatis dui, suspendisse quis dictum at, eros velit elementum fermentum ornare nulla, nec inceptos libero, nec sapien maecenas. Nibh id, ut ipsum ac fusce. Scelerisque fusce euismod, eros venenatis etiam magna. Consectetuer ac cras viverra amet auctor ac, curabitur purus in eleifend mollis a, wisi dui praesent sollicitudin varius sed, massa tortor felis torquent justo. Torquent cursus vitae id, lorem aliquam, nam nibh faucibus adipiscing ullamcorper erat tellus. Eleifend a praesent diam aliquet.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Fringilla sit massa suspendisse sit, dui cras risus nunc magnis. Sit venenatis id diam, dui nam. Venenatis qui ipsum ac, donec sapien sagittis dapibus, maecenas ac blandit. Auctor a. Sociis ac torquent mattis. Vitae natoque, amet et semper felis ornare quisque tempor. Aliquet vitae varius laoreet semper tempus, orci adipiscing etiam interdum volutpat, dicta lacus, etiam morbi, dui libero. Sunt odio wisi aliquam sociis faucibus maiores, viverra etiam neque sed vivamus iusto fusce, imperdiet ligula. Risus diam pretium lacinia convallis. Neque semper ligula et imperdiet sed, ornare sed massa, vel lacus nec orci vivamus.</p>', 5, 'uploads/posts/1519306405image2.jpg', NULL, '2018-02-22 07:33:25', '2018-02-22 07:33:25', 1),
(6, 'codeigniter third', 'codeigniter-third', '<p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Lorem ipsum dolor sit amet, a suspendisse ultricies, morbi nec dictumst scelerisque tellus. Eget in vestibulum blandit sed, augue ac tempus orci, dui mi nullam praesent, hendrerit nec est morbi fringilla. Praesent curae nisl a. Sit ac urna integer neque, volutpat excepturi aliquam, sed sapien nulla aliquam etiam suspendisse sit, suspendisse ultricies mus. Magnis quam posuere lectus aenean, sem irure aenean pede, non platea ridiculus massa amet. Vivamus cum sem dignissim, quam quis, tempus id nunc neque quam sed, libero parturient non lorem dolor nec, gravida et massa lectus pellentesque dolor ut. Velit senectus eleifend interdum vestibulum, vivamus porta, class ut, justo egestas lacus wisi. Provident purus pede ac. In fusce sodales rutrum pellentesque, eu quam vitae lobortis, aliquam adipiscing proin, sed purus nunc magna justo ipsum, massa consequat morbi et amet vestibulum.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Rutrum fusce eleifend amet quam in, in vivamus in nec penatibus. Non id. Ad duis, ornare est quis, leo mauris vivamus nulla sit hac eget, pede a proin dignissim magna. In in ipsum sed. Suspendisse non mi nisl ut tempus lacinia, nunc donec rutrum, imperdiet dolor id, elit magnis eget. Nulla enim ligula, vitae varius tortor egestas at, at eros sapiente tempor purus quia, a leo. Nisl orci eu velit, orci vestibulum facilisis ullamcorper semper, fermentum euismod duis purus, a aliquam a eleifend litora ligula nibh, tristique imperdiet libero ipsum sed. Ante nibh lorem in, auctor suspendisse dictum neque neque nullam arcu, suscipit arcu.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Taciti platea mauris ridiculus quisque, vel dictumst lorem massa diam purus, incidunt sed mauris vestibulum duis fusce, est rhoncus morbi. Non ultrices magnis platea urna vitae, varius in enim, ultricies molestie mattis primis nulla ante. Feugiat magna. Nunc eget in nec, pellentesque ornare nascetur ullamcorper, ut proin conubia consectetuer per ut ligula. Nibh pellentesque bibendum nunc suscipit erat in. Dui venenatis dui, suspendisse quis dictum at, eros velit elementum fermentum ornare nulla, nec inceptos libero, nec sapien maecenas. Nibh id, ut ipsum ac fusce. Scelerisque fusce euismod, eros venenatis etiam magna. Consectetuer ac cras viverra amet auctor ac, curabitur purus in eleifend mollis a, wisi dui praesent sollicitudin varius sed, massa tortor felis torquent justo. Torquent cursus vitae id, lorem aliquam, nam nibh faucibus adipiscing ullamcorper erat tellus. Eleifend a praesent diam aliquet.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Fringilla sit massa suspendisse sit, dui cras risus nunc magnis. Sit venenatis id diam, dui nam. Venenatis qui ipsum ac, donec sapien sagittis dapibus, maecenas ac blandit. Auctor a. Sociis ac torquent mattis. Vitae natoque, amet et semper felis ornare quisque tempor. Aliquet vitae varius laoreet semper tempus, orci adipiscing etiam interdum volutpat, dicta lacus, etiam morbi, dui libero. Sunt odio wisi aliquam sociis faucibus maiores, viverra etiam neque sed vivamus iusto fusce, imperdiet ligula. Risus diam pretium lacinia convallis. Neque semper ligula et imperdiet sed, ornare sed massa, vel lacus nec orci vivamus.</p>', 5, 'uploads/posts/1519306428image1.jpg', NULL, '2018-02-22 07:33:48', '2018-02-22 07:33:48', 1),
(7, 'angular', 'angular', '<p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Lorem ipsum dolor sit amet, a suspendisse ultricies, morbi nec dictumst scelerisque tellus. Eget in vestibulum blandit sed, augue ac tempus orci, dui mi nullam praesent, hendrerit nec est morbi fringilla. Praesent curae nisl a. Sit ac urna integer neque, volutpat excepturi aliquam, sed sapien nulla aliquam etiam suspendisse sit, suspendisse ultricies mus. Magnis quam posuere lectus aenean, sem irure aenean pede, non platea ridiculus massa amet. Vivamus cum sem dignissim, quam quis, tempus id nunc neque quam sed, libero parturient non lorem dolor nec, gravida et massa lectus pellentesque dolor ut. Velit senectus eleifend interdum vestibulum, vivamus porta, class ut, justo egestas lacus wisi. Provident purus pede ac. In fusce sodales rutrum pellentesque, eu quam vitae lobortis, aliquam adipiscing proin, sed purus nunc magna justo ipsum, massa consequat morbi et amet vestibulum.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Rutrum fusce eleifend amet quam in, in vivamus in nec penatibus. Non id. Ad duis, ornare est quis, leo mauris vivamus nulla sit hac eget, pede a proin dignissim magna. In in ipsum sed. Suspendisse non mi nisl ut tempus lacinia, nunc donec rutrum, imperdiet dolor id, elit magnis eget. Nulla enim ligula, vitae varius tortor egestas at, at eros sapiente tempor purus quia, a leo. Nisl orci eu velit, orci vestibulum facilisis ullamcorper semper, fermentum euismod duis purus, a aliquam a eleifend litora ligula nibh, tristique imperdiet libero ipsum sed. Ante nibh lorem in, auctor suspendisse dictum neque neque nullam arcu, suscipit arcu.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Taciti platea mauris ridiculus quisque, vel dictumst lorem massa diam purus, incidunt sed mauris vestibulum duis fusce, est rhoncus morbi. Non ultrices magnis platea urna vitae, varius in enim, ultricies molestie mattis primis nulla ante. Feugiat magna. Nunc eget in nec, pellentesque ornare nascetur ullamcorper, ut proin conubia consectetuer per ut ligula. Nibh pellentesque bibendum nunc suscipit erat in. Dui venenatis dui, suspendisse quis dictum at, eros velit elementum fermentum ornare nulla, nec inceptos libero, nec sapien maecenas. Nibh id, ut ipsum ac fusce. Scelerisque fusce euismod, eros venenatis etiam magna. Consectetuer ac cras viverra amet auctor ac, curabitur purus in eleifend mollis a, wisi dui praesent sollicitudin varius sed, massa tortor felis torquent justo. Torquent cursus vitae id, lorem aliquam, nam nibh faucibus adipiscing ullamcorper erat tellus. Eleifend a praesent diam aliquet.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Fringilla sit massa suspendisse sit, dui cras risus nunc magnis. Sit venenatis id diam, dui nam. Venenatis qui ipsum ac, donec sapien sagittis dapibus, maecenas ac blandit. Auctor a. Sociis ac torquent mattis. Vitae natoque, amet et semper felis ornare quisque tempor. Aliquet vitae varius laoreet semper tempus, orci adipiscing etiam interdum volutpat, dicta lacus, etiam morbi, dui libero. Sunt odio wisi aliquam sociis faucibus maiores, viverra etiam neque sed vivamus iusto fusce, imperdiet ligula. Risus diam pretium lacinia convallis. Neque semper ligula et imperdiet sed, ornare sed massa, vel lacus nec orci vivamus.</p>', 3, 'uploads/posts/1519306451image3.jpg', NULL, '2018-02-22 07:34:11', '2018-02-22 07:34:11', 1),
(8, 'wordpress plugin', 'wordpress-plugin', '<p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Lorem ipsum dolor sit amet, a suspendisse ultricies, morbi nec dictumst scelerisque tellus. Eget in vestibulum blandit sed, augue ac tempus orci, dui mi nullam praesent, hendrerit nec est morbi fringilla. Praesent curae nisl a. Sit ac urna integer neque, volutpat excepturi aliquam, sed sapien nulla aliquam etiam suspendisse sit, suspendisse ultricies mus. Magnis quam posuere lectus aenean, sem irure aenean pede, non platea ridiculus massa amet. Vivamus cum sem dignissim, quam quis, tempus id nunc neque quam sed, libero parturient non lorem dolor nec, gravida et massa lectus pellentesque dolor ut. Velit senectus eleifend interdum vestibulum, vivamus porta, class ut, justo egestas lacus wisi. Provident purus pede ac. In fusce sodales rutrum pellentesque, eu quam vitae lobortis, aliquam adipiscing proin, sed purus nunc magna justo ipsum, massa consequat morbi et amet vestibulum.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Rutrum fusce eleifend amet quam in, in vivamus in nec penatibus. Non id. Ad duis, ornare est quis, leo mauris vivamus nulla sit hac eget, pede a proin dignissim magna. In in ipsum sed. Suspendisse non mi nisl ut tempus lacinia, nunc donec rutrum, imperdiet dolor id, elit magnis eget. Nulla enim ligula, vitae varius tortor egestas at, at eros sapiente tempor purus quia, a leo. Nisl orci eu velit, orci vestibulum facilisis ullamcorper semper, fermentum euismod duis purus, a aliquam a eleifend litora ligula nibh, tristique imperdiet libero ipsum sed. Ante nibh lorem in, auctor suspendisse dictum neque neque nullam arcu, suscipit arcu.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Taciti platea mauris ridiculus quisque, vel dictumst lorem massa diam purus, incidunt sed mauris vestibulum duis fusce, est rhoncus morbi. Non ultrices magnis platea urna vitae, varius in enim, ultricies molestie mattis primis nulla ante. Feugiat magna. Nunc eget in nec, pellentesque ornare nascetur ullamcorper, ut proin conubia consectetuer per ut ligula. Nibh pellentesque bibendum nunc suscipit erat in. Dui venenatis dui, suspendisse quis dictum at, eros velit elementum fermentum ornare nulla, nec inceptos libero, nec sapien maecenas. Nibh id, ut ipsum ac fusce. Scelerisque fusce euismod, eros venenatis etiam magna. Consectetuer ac cras viverra amet auctor ac, curabitur purus in eleifend mollis a, wisi dui praesent sollicitudin varius sed, massa tortor felis torquent justo. Torquent cursus vitae id, lorem aliquam, nam nibh faucibus adipiscing ullamcorper erat tellus. Eleifend a praesent diam aliquet.</p><p align=\"justify\" style=\"font-size: 12px; font-family: arial, helvetica, sans-serif; margin-bottom: 0px;\">Fringilla sit massa suspendisse sit, dui cras risus nunc magnis. Sit venenatis id diam, dui nam. Venenatis qui ipsum ac, donec sapien sagittis dapibus, maecenas ac blandit. Auctor a. Sociis ac torquent mattis. Vitae natoque, amet et semper felis ornare quisque tempor. Aliquet vitae varius laoreet semper tempus, orci adipiscing etiam interdum volutpat, dicta lacus, etiam morbi, dui libero. Sunt odio wisi aliquam sociis faucibus maiores, viverra etiam neque sed vivamus iusto fusce, imperdiet ligula. Risus diam pretium lacinia convallis. Neque semper ligula et imperdiet sed, ornare sed massa, vel lacus nec orci vivamus.</p>', 4, 'uploads/posts/1519306470image4.jpg', NULL, '2018-02-22 07:34:30', '2018-02-22 07:34:30', 3);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 3, 3, NULL, NULL),
(5, 4, 3, NULL, NULL),
(6, 5, 3, NULL, NULL),
(7, 6, 3, NULL, NULL),
(8, 7, 3, NULL, NULL),
(9, 8, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/1519204445avatar.png', 1, 'I am jibon .I am a web developer.I am jibon .I am a web developer.', 'https://www.facebook.com/', 'https://www.youtube.com/', '2018-02-21 00:40:12', '2018-02-23 05:08:17'),
(3, 'uploads/avatars/1519384887avaatar.png', 3, 'i am seo expert', 'https://www.facebook.com/', 'https://www.facebook.com/', '2018-02-21 00:46:13', '2018-02-23 05:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Online Tutor', '01956422380', 'azizur.jibon@gmail.com', 'malibagh,dhaka', '2018-02-21 07:47:33', '2018-02-21 07:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(3, 'html', '2018-02-22 05:11:11', '2018-02-22 05:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jibon', 'jibon@gmail.com', 1, '$2y$10$qWi2ij1zGBY/3y2PyMp7sOv3TcFuwP91clJFS3LThi.ZGhkHs9vQy', 'Xn1mmnAih1UbnMLkJ5xzaGeN3dk3vPizo7cNxT1ABjcGpyU0bo9iHaKdZqQL', '2018-02-21 00:40:12', '2018-02-21 00:40:12'),
(3, 'sifat', 'sifat@gmail.com', 0, '$2y$10$ZbeOyFGFzoWAHSBL2dAXxO1H7vBoXvYHvoLUK8FGaSE66PMDQaQ2S', 'KE0DHZtSPh3tVGGIIea6vRYPgUEdumsW1vFgjwVqFdTIsejFuufTNHanL9R2', '2018-02-21 00:46:13', '2018-02-21 01:08:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
