-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 12, 2023 at 09:56 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be19_cr6_bigeventstaulanthoxha`
--
CREATE DATABASE IF NOT EXISTS `be19_cr6_bigeventstaulanthoxha` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `be19_cr6_bigeventstaulanthoxha`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811140433', '2023-08-11 14:04:53', 191);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int NOT NULL,
  `street_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date_time`, `description`, `picture_url`, `capacity`, `email`, `phone_number`, `street_name`, `zip`, `city_name`, `url`, `type`) VALUES
(13, 'Charity Gala Dinner', '2023-09-08 22:05:00', 'An elegant evening to raise funds for a good cause.', 'Charity Gala Dinner.jpg', 2000, 'charity@fundraiser.org', 2147483647, 'Grand Avenue', 54321, 'Big City', 'fundraiser.org/gala', 'Charity'),
(14, 'Yoga in the Park', '2023-08-18 22:20:00', 'Connect with nature and rejuvenate your body and mind.', 'Yoga-in-the-Park-64d6986789773.jpg', 50, 'yogainfo@healthyliving.com', 2147483647, 'Green Way', 67890, 'Serenityville', 'healthyliving.com/yoga', 'Fitness'),
(15, 'Artisan Craft Fair', '2023-08-30 22:23:00', 'Explore unique handcrafted items from local artisans.', 'Artisan-Craft-Fair-64d69918d6613.jpg', 100, 'artisans@creativityhub.net', 1112223333, 'Market Street', 24680, 'Creativityville', 'creativityhub.net/crafts', 'Arts & Crafts'),
(16, 'Tech Innovators Conference', '2023-11-05 09:00:00', 'A two-day event showcasing the latest technological breakthroughs.', 'Movie Under the Stars.jpg', 300, 'info@techinnovators.com', 0, 'Innovation Lane', 13579, 'Techtopia', 'techinnovators.com/conference', 'Technology'),
(17, 'Food Truck Fiesta', '2023-09-22 11:30:00', 'Indulge in a variety of delicious cuisines from food trucks.', 'Food Truck Fiesta.jpg', 150, 'foodies@tasteexplorers.net', 0, 'Foodie Avenue', 76432, 'Flavorville', 'tasteexplorers.net/foodfiesta', 'Food & Drink'),
(18, 'Comedy Night', '2023-08-30 20:00:00', 'Get ready to laugh out loud with hilarious stand-up comedians.', 'Comedy Night.jpg', 75, 'laughter@comedyclub.org', 0, 'Jokes Lane', 10101, 'Humorville', 'comedyclub.org/comedy-night', 'Entertainment'),
(19, 'Environmental Workshop', '2023-09-05 13:00:00', 'Learn about sustainability and eco-friendly practices.', 'Environmental Workshop.jpg', 50, 'ecoawareness@earthcare.org', 0, 'Green Street', 56789, 'Earthsville', 'earthcare.org/workshop', 'Education'),
(20, 'Fashion Runway Show', '2023-10-15 19:00:00', 'Experience the latest fashion trends on the runway.', 'Fashion Runway Show.jpg', 200, 'style@fashionhub.com', 0, 'Catwalk Avenue', 98765, 'Trendy Town', 'fashionhub.com/runway', 'Fashion'),
(21, 'Movie Under the Stars', '2023-08-19 20:30:00', 'Enjoy a classic film night under the open sky.', 'Movie Under the Stars.jpg', 100, 'cinema@moviemagic.net', 0, 'Starlight Street', 24601, 'Cinemaville', 'moviemagic.net/outdoor-cinema', 'Film'),
(23, 'Literary Symposium', '2023-10-05 09:00:00', 'Immerse yourself in discussions, workshops, and readings from renowned authors, celebrating the world of literature.', 'Literary Symposium.jpg', 150, 'literature@symposium.org', 0, 'Bookworm Boulevard', 54321, 'Litville', 'symposium.org', 'Literature'),
(28, 'Summer Music Festival', '2023-08-20 14:00:00', 'Join us for a day of live music, food, and fun in the sun!', 'Summer Music Festival.jpg', 500, 'info@musicfestivals.com', 0, 'Melody Lane', 12345, 'Harmonyville', 'musicfestivals.com/summer', 'Music'),
(29, 'Jazz Night at the Park', '2023-09-10 19:30:00', 'An evening of soulful jazz music under the starry sky.', 'Jazz Night at the Park.jpg', 150, 'jazz@musiclovers.net', 0, 'Rhythm Avenue', 54321, 'Groovetown', 'musiclovers.net/jazz-night', 'Music'),
(30, 'Classic Movie Night', '2023-08-25 20:00:00', 'Relive the magic of timeless films on the big screen.', 'Classic Movie Night.png', 200, 'movies@classiccinema.com', 0, 'Cinephile Lane', 24680, 'Filmville', 'classiccinema.com/movie-night', 'Film'),
(31, 'Horror Movie Marathon', '2023-09-20 18:00:00', 'Get ready for a night of spine-chilling horror films!', 'Horror Movie Marathon.jpg', 100, 'horror@moviemarathon.net', 0, 'Thrill Street', 13579, 'Scareville', 'moviemarathon.net/horror', 'Film'),
(32, 'Gallery Opening: Modern Art Showcase', '2023-10-05 17:30:00', 'Explore cutting-edge modern artworks by emerging artists.', 'Gallery Opening.jpg', 150, 'art@galleryhub.com', 0, 'Canvas Avenue', 12345, 'Artville', 'galleryhub.com/modern-art', 'Art'),
(33, 'Sculpture Symposium', '2023-09-15 13:00:00', 'Witness sculptors create stunning masterpieces in real time.', 'Sculpture Symposium.jpg', 75, 'sculpture@symposium.org', 0, 'Artisan Street', 56789, 'Arttopia', 'symposium.org/sculptures', 'Art'),
(34, 'Mixed Media Workshop', '2023-11-08 10:00:00', 'Explore the world of mixed media art and create your own unique pieces.', 'Mixed Media Workshop.jpg', 100, 'art@creativityworkshop.net', 0, 'Inspiration Lane', 10101, 'Creativityville', 'creativityworkshop.net/mixed-media', 'Art');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
