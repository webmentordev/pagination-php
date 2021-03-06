-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 10:42 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author`, `title`, `body`, `created_at`) VALUES
(1, 'John Doe', 'Protect Environment ', 'In contrast to the natural environment is the built environment. In such areas where humans have fundamentally transformed landscapes such as urban settings and agricultural land conversion, the natural environment is greatly changed into a simplified hum', '2021-04-22 19:43:48'),
(2, 'Ben Nethan', 'Video Gaming', 'A video game is an electronic game that involves interaction with a user interface or input device – such as a joystick, controller, keyboard, or motion sensing device – to generate visual feedback for a player. This feedback is shown on a video display d', '2021-04-22 19:43:48'),
(5, 'Kevin LaSean', 'Web Development', 'Web development is the work involved in developing a Web site for the Internet or an intranet. Web development can range from developing a simple single static page of plain text to complex web applications, electronic businesses, and social network servi', '2021-04-22 19:45:55'),
(6, 'Marijn Haverbeke', 'Eloquent JavaScript', 'Completely revised and updated, this best-selling introduction to programming in JavaScript focuses on writing real applications. JavaScript lies at the heart of almost every modern web application, from social apps like Twitter to browser-based game fram', '2021-04-22 19:45:55'),
(7, 'Ahmer Tahir', 'PHP Database', 'A database is a collection of information that is organized so that it can be easily accessed, managed and updated. ', '2021-04-24 12:33:23'),
(8, 'Junaid Iqbal', 'Daraz Pakistan', 'Daraz is an online marketplace and logistics company which operates in markets of South Asia and Southeast Asia', '2021-04-24 12:33:23'),
(9, 'Steve Jobs', 'Apple Company', 'Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services', '2021-04-24 12:35:29'),
(10, 'Mark Zuckerberg', 'Facebook', 'Facebook, Inc., is an American technology conglomerate based in Menlo Park, California. It was founded by Mark Zuckerberg, along with his fellow roommates and students at Harvard College', '2021-04-24 12:35:29'),
(11, 'Brian Acton', 'Whatsapp', 'WhatsApp Messenger, or simply WhatsApp, is an American freeware, cross-platform centralized messaging and voice-over-IP (VoIP) service owned by Facebook, Inc It allows users to send text messages and voice messages.', '2021-04-24 12:36:51'),
(12, 'Mike Krieger', 'Instagram', 'Instagram (commonly abbreviated to IG or Insta) is an American photo and video sharing social networking service created by Kevin Systrom and Mike Krieger.', '2021-04-24 12:38:04'),
(13, 'Evan Spiegel', 'Snapchat', 'Snapchat is an American multimedia messaging app developed by Snap Inc., originally Snapchat Inc. One of the principal features of Snapchat is that pictures and messages', '2021-04-24 12:38:04'),
(14, 'Jane Stanford', 'Stanford University', 'Stanford University, officially Leland Stanford Junior University, is a private research university in Stanford, California. Stanford was founded in 1885 by Leland and Jane Stanford', '2021-04-24 12:39:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
