-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 03:01 AM
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
-- Database: `angkatan3`
--
CREATE DATABASE IF NOT EXISTS `angkatan3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `angkatan3`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publisher` varchar(16) NOT NULL,
  `year_of_publication` int(10) NOT NULL,
  `author` varchar(255) NOT NULL,
  `created at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `id_category`, `title`, `publisher`, `year_of_publication`, `author`, `created at`, `updated at`) VALUES
(1, 1, 'The Great Adventure', 'Adventure Press', 2019, 'John Smith', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(2, 2, 'Belajar Python', 'Tech Publishing', 2021, 'Alice Johnson', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(3, 1, 'Dunia Fantasi', 'Fantasy House', 2018, 'Lucas Martin', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(4, 2, 'Matematika Dasar', 'Edukasi Cerdas', 2020, 'Siti Rahmawati', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(5, 5, 'Teknologi Masa Depan', 'Future Tech', 2023, 'Elon Musk', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(6, 3, 'Komik Petualangan', 'Manga World', 2022, 'Taro Suzuki', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(7, 2, 'Sejarah Dunia', 'Knowledge Media', 2017, 'Robert Lang', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(8, 5, 'Mengenal Komputer', 'Techno Books', 2020, 'Bill Gates', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(9, 4, 'Biografi Steve Jobs', 'Inspiring Life', 2015, 'Walter Isaacson', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(10, 2, 'Fisika untuk SMA', 'Edukasi Cerdas', 2022, 'Anton Prasetyo', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(11, 3, 'Komik Superhero', 'Comic Universe', 2023, 'Clark Kent', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(12, 5, 'Menjadi Programmer Hebat', 'Techno Books', 2021, 'Linus Torvalds', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(13, 1, 'Novel Romantis', 'Romance Publishi', 2019, 'Jane Austen', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(14, 4, 'Biografi Albert Einstein', 'Scientific Minds', 2016, 'Abraham Pais', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(15, 1, 'Journey to the West', 'Adventure World', 2020, 'Sun Wukong', '2024-10-17 01:58:02', '2024-10-17 01:58:02'),
(16, 2, 'Belajar Matematika untuk SMP', 'Edukasi Indonesi', 2021, 'Dr. Agus Wibowo', '2024-10-17 01:58:02', '2024-10-17 01:58:02'),
(17, 3, 'Komik Si Juki', 'Komik Indo', 2022, 'Faza Meonk', '2024-10-17 01:58:02', '2024-10-17 01:58:02'),
(18, 4, 'Biografi B.J. Habibie', 'Pustaka Nasional', 2019, 'Ilham Akbar Habibie', '2024-10-17 01:58:02', '2024-10-17 01:58:02'),
(19, 5, 'Teknologi Blockchain', 'Tech Future', 2023, 'Satoshi Nakamoto', '2024-10-17 01:58:02', '2024-10-17 01:58:02'),
(20, 1, 'The Mystery Island', 'Mystery Books', 2016, 'Ellen James', '2024-10-15 07:22:58', '2024-10-15 07:22:58'),
(21, 1, 'The Silent Sea', 'Oceanic Tales', 2018, 'Arthur Gold', '2024-10-17 02:14:09', '2024-10-17 02:14:09'),
(22, 2, 'Kimia Dasar untuk SMA', 'Edukasi Cendikia', 2021, 'Prof. Andi Syahputra', '2024-10-17 02:14:09', '2024-10-17 02:14:09'),
(23, 3, 'Komik Naruto', 'Shonen Jump', 2015, 'Masashi Kishimoto', '2024-10-17 02:14:09', '2024-10-17 02:14:09'),
(24, 4, 'Biografi Soekarno', 'Indonesia Merdek', 2020, 'Cindy Adams', '2024-10-17 02:14:09', '2024-10-17 02:14:09'),
(25, 5, 'Revolusi Industri 4.0', 'Tekno Modern', 2022, 'Dr. Fitriani Putra', '2024-10-17 02:14:09', '2024-10-17 02:14:09'),
(26, 1, 'Love in Paris', 'Romance Books', 2019, 'Marie Claire', '2024-10-17 02:14:09', '2024-10-17 02:14:09'),
(27, 2, 'Fisika Modern', 'Pustaka Pelajar', 2020, 'Dr. Arif Hidayat', '2024-10-17 02:14:09', '2024-10-17 02:14:09'),
(28, 3, 'Komik One Piece', 'Shueisha', 2018, 'Eiichiro Oda', '2024-10-17 02:14:09', '2024-10-17 02:14:09'),
(29, 4, 'Biografi Elon Musk', 'Future Vision', 2021, 'Ashlee Vance', '2024-10-17 02:14:09', '2024-10-17 02:14:09'),
(30, 5, 'Artificial Intelligence for Beginners', 'Tech Insight', 2023, 'John McCarthy', '2024-10-17 02:14:09', '2024-10-17 02:14:09'),
(31, 1, 'The Lost Symbol', 'Mystery Press', 2010, 'Dan Brown', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(32, 2, 'Fisika untuk Universitas', 'Academic Publish', 2019, 'Halliday & Resnick', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(33, 3, 'Komik Dragon Ball', 'Shueisha', 1995, 'Akira Toriyama', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(34, 4, 'Biografi Nelson Mandela', 'Inspiration Hous', 2013, 'Richard Stengel', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(35, 5, 'Cybersecurity Basics', 'TechWorld', 2020, 'Kevin Mitnick', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(36, 1, 'The Alchemist', 'HarperCollins', 2006, 'Paulo Coelho', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(37, 2, 'Kimia Organik Lanjutan', 'Science Publishe', 2018, 'John McMurry', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(38, 3, 'Komik Detective Conan', 'Shogakukan', 1994, 'Gosho Aoyama', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(39, 4, 'Biografi Mahatma Gandhi', 'Freedom Publishe', 2001, 'Louis Fischer', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(40, 5, 'Introduction to Machine Learning', 'MIT Press', 2022, 'Ethem Alpaydin', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(41, 1, 'Harry Potter and the Sorcerer\'s Stone', 'Bloomsbury', 1997, 'J.K. Rowling', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(42, 2, 'Matematika untuk SMA Kelas 12', 'Edukasi Nusantar', 2021, 'Dr. Irwan Hadi', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(43, 3, 'Komik Bleach', 'Shueisha', 2001, 'Tite Kubo', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(44, 4, 'Biografi Abraham Lincoln', 'Patriot Press', 2010, 'Doris Kearns Goodwin', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(45, 5, 'Quantum Computing Explained', 'FutureTech', 2023, 'David McMahon', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(46, 1, 'Pride and Prejudice', 'Penguin Classics', 2003, 'Jane Austen', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(47, 2, 'Biologi Dasar untuk SMA', 'Pustaka Pelajar', 2020, 'Neil Campbell', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(48, 3, 'Komik Attack on Titan', 'Kodansha', 2009, 'Hajime Isayama', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(49, 4, 'Biografi Marie Curie', 'Nobel Publishers', 2006, 'Eve Curie', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(50, 5, 'Artificial Intelligence: A Modern Approach', 'Pearson', 2020, 'Stuart Russell & Peter Norvig', '2024-10-17 02:22:11', '2024-10-17 02:22:11'),
(51, 1, 'The Hobbit', 'George Allen & U', 1937, 'J.R.R. Tolkien', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(52, 2, 'Physics for Scientists and Engineers', 'Cengage Learning', 2015, 'Raymond A. Serway', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(53, 3, 'Komik Spiderman', 'Marvel Comics', 1962, 'Stan Lee', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(54, 4, 'Biografi Albert Einstein', 'Oxford Universit', 1996, 'Walter Isaacson', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(55, 5, 'Deep Learning', 'MIT Press', 2016, 'Ian Goodfellow', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(56, 1, 'Moby Dick', 'Harper & Brother', 1851, 'Herman Melville', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(57, 2, 'Fundamentals of Organic Chemistry', 'Brooks/Cole', 2006, 'John E. McMurry', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(58, 3, 'Komik Naruto Shippuden', 'Shueisha', 2007, 'Masashi Kishimoto', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(59, 4, 'Biografi Winston Churchill', 'Penguin Books', 2012, 'Martin Gilbert', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(60, 5, 'Computer Networks', 'Prentice Hall', 2010, 'Andrew S. Tanenbaum', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(61, 1, 'War and Peace', 'The Russian Mess', 1869, 'Leo Tolstoy', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(62, 2, 'Calculus: Early Transcendentals', 'Pearson', 2018, 'James Stewart', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(63, 3, 'Komik One Punch Man', 'Shueisha', 2012, 'Yusuke Murata', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(64, 4, 'Biografi Steve Jobs', 'Simon & Schuster', 2011, 'Walter Isaacson', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(65, 5, 'Introduction to Algorithms', 'MIT Press', 2009, 'Thomas H. Cormen', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(66, 1, '1984', 'Secker & Warburg', 1949, 'George Orwell', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(67, 2, 'Kimia Dasar untuk SMA', 'Erlangga', 2017, 'Raymond Chang', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(68, 3, 'Komik Fairy Tail', 'Kodansha', 2006, 'Hiro Mashima', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(69, 4, 'Biografi Thomas Edison', 'Crown Publishing', 2005, 'Edmund Morris', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(70, 5, 'The Art of Computer Programming', 'Addison-Wesley', 1968, 'Donald E. Knuth', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(71, 1, 'The Catcher in the Rye', 'Little, Brown an', 1951, 'J.D. Salinger', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(72, 2, 'Biologi untuk SMA', 'Erlangga', 2019, 'Neil A. Campbell', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(73, 3, 'Komik Tokyo Ghoul', 'Shueisha', 2011, 'Sui Ishida', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(74, 4, 'Biografi Malcolm X', 'Grove Press', 1965, 'Alex Haley', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(75, 5, 'Clean Code', 'Prentice Hall', 2008, 'Robert C. Martin', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(76, 1, 'To Kill a Mockingbird', 'J.B. Lippincott ', 1960, 'Harper Lee', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(77, 2, 'Fisika Modern', 'Pustaka Pelajar', 2015, 'Paul A. Tipler', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(78, 3, 'Komik Black Clover', 'Shueisha', 2015, 'Yūki Tabata', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(79, 4, 'Biografi Barack Obama', 'Crown Publishing', 2020, 'Barack Obama', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(80, 5, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Addison-Wesley', 1994, 'Erich Gamma', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(81, 1, 'Great Expectations', 'Chapman & Hall', 1861, 'Charles Dickens', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(82, 2, 'Matematika untuk Universitas', 'Springer', 2019, 'Howard Anton', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(83, 3, 'Komik Death Note', 'Shueisha', 2003, 'Tsugumi Ohba', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(84, 4, 'Biografi Nikola Tesla', 'Penguin Books', 2016, 'W. Bernard Carlson', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(85, 5, 'Artificial Intelligence: Foundations of Computational Agents', 'Cambridge Univer', 2017, 'David L. Poole', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(86, 1, 'Crime and Punishment', 'The Russian Mess', 1866, 'Fyodor Dostoevsky', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(87, 2, 'Introduction to Quantum Mechanics', 'Pearson', 2014, 'David J. Griffiths', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(88, 3, 'Komik My Hero Academia', 'Shueisha', 2014, 'Kohei Horikoshi', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(89, 4, 'Biografi Muhammad Ali', 'Simon & Schuster', 2016, 'David Remnick', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(90, 5, 'Structure and Interpretation of Computer Programs', 'MIT Press', 1996, 'Harold Abelson', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(91, 1, 'Les Misérables', 'A. Lacroix, Verb', 1862, 'Victor Hugo', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(92, 2, 'Statistics for Business and Economics', 'Cengage Learning', 2019, 'Paul Newbold', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(93, 3, 'Komik Attack on Titan', 'Kodansha', 2009, 'Hajime Isayama', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(94, 4, 'Biografi Mahatma Gandhi', 'Penguin Books', 2013, 'Ramachandra Guha', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(95, 5, 'Python Crash Course', 'No Starch Press', 2019, 'Eric Matthes', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(96, 1, 'Brave New World', 'Chatto & Windus', 1932, 'Aldous Huxley', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(97, 2, 'Basic Economics', 'Basic Books', 2014, 'Thomas Sowell', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(98, 3, 'Komik Bleach', 'Shueisha', 2001, 'Tite Kubo', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(99, 4, 'Biografi Marie Curie', 'Doubleday', 1937, 'Eve Curie', '2024-10-17 02:29:07', '2024-10-17 02:29:07'),
(100, 5, 'The Pragmatic Programmer', 'Addison-Wesley', 1999, 'Andrew Hunt', '2024-10-17 02:29:07', '2024-10-17 02:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `borrowing`
--

CREATE TABLE `borrowing` (
  `id` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `borrowing_number` varchar(50) NOT NULL,
  `borrowing_date` date NOT NULL,
  `return_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowing`
--

INSERT INTO `borrowing` (`id`, `id_member`, `borrowing_number`, `borrowing_date`, `return_date`, `status`, `created_at`, `updated_at`) VALUES
(19, 10, 'PJM/171024001', '2024-10-17', '2024-10-23', '', '2024-10-17 03:38:37', '2024-10-17 03:38:37'),
(20, 13, 'PJM/171024020', '2024-10-17', '2024-10-23', '', '2024-10-17 04:07:32', '2024-10-17 04:07:32'),
(21, 20, 'PJM/171024021', '2024-10-19', '2024-10-22', '', '2024-10-17 07:49:50', '2024-10-17 07:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `borrowing_details`
--

CREATE TABLE `borrowing_details` (
  `id` int(11) NOT NULL,
  `id_borrowing` int(11) NOT NULL,
  `id_book` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowing_details`
--

INSERT INTO `borrowing_details` (`id`, `id_borrowing`, `id_book`) VALUES
(1, 19, 3),
(2, 19, 78),
(3, 19, 95),
(4, 19, 88),
(5, 20, 38),
(6, 20, 68),
(7, 21, 43),
(8, 21, 69),
(9, 21, 93),
(10, 21, 59),
(11, 21, 50),
(12, 21, 34);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Novel', '2024-10-15 07:19:46', '2024-10-15 07:19:46'),
(2, 'Pelajaran', '2024-10-15 07:19:46', '2024-10-15 07:19:46'),
(3, 'Komik', '2024-10-15 07:19:46', '2024-10-15 07:19:46'),
(4, 'Biografi', '2024-10-15 07:19:46', '2024-10-15 07:19:46'),
(5, 'Teknologi', '2024-10-15 07:19:46', '2024-10-15 07:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(16) NOT NULL,
  `level_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2024-10-16 01:53:12', '2024-10-16 01:53:12'),
(2, 'Anggota', '2024-10-16 01:53:20', '2024-10-16 01:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `member_name`, `phone_number`, `email`, `address`) VALUES
(1, 'John Doe', '081234567890', 'john@gmail.com', 'Jl. Sudirman No. 1, Jakarta'),
(2, 'Jane Smith', '081987654321', 'jane@gmail.com', 'Jl. Thamrin No. 5, Jakarta'),
(3, 'Michael Johnson', '081223344556', 'michael@gmail.com', 'Jl. Gatot Subroto No. 10, Jakarta'),
(4, 'Emily Davis', '081234443322', 'emily@gmail.com', 'Jl. Kuningan No. 8, Jakarta'),
(5, 'David Lee', '081234123456', 'david@gmail.com', 'Jl. Tebet No. 15, Jakarta'),
(6, 'Sophia Wilson', '081255566677', 'sophia@gmail.com', 'Jl. Senayan No. 7, Jakarta'),
(7, 'Daniel Martinez', '081266677788', 'daniel@gmail.com', 'Jl. Cipete No. 11, Jakarta'),
(8, 'Emma Taylor', '081277788899', 'emma@gmail.com', 'Jl. Prapanca No. 4, Jakarta'),
(9, 'James Anderson', '081288899900', 'james@gmail.com', 'Jl. Kemang Raya No. 2, Jakarta'),
(10, 'Olivia Thomas', '081299900011', 'olivia@gmail.com', 'Jl. Melawai No. 9, Jakarta'),
(11, 'Andi Pratama', '081234567890', 'andi.pratama@email.com', 'Jl. Merdeka No. 45, Jakarta'),
(12, 'Budi Santoso', '081234567891', 'budi.santoso@email.com', 'Jl. Sudirman No. 12, Bandung'),
(13, 'Citra Lestari', '081234567892', 'citra.lestari@email.com', 'Jl. Gajah Mada No. 10, Surabaya'),
(14, 'Dewi Wulandari', '081234567893', 'dewi.wulandari@email.com', 'Jl. Diponegoro No. 5, Yogyakarta'),
(15, 'Eko Nugroho', '081234567894', 'eko.nugroho@email.com', 'Jl. Slamet Riyadi No. 3, Solo'),
(16, 'Fajar Setiawan', '081234567895', 'fajar.setiawan@email.com', 'Jl. Ahmad Yani No. 22, Medan'),
(17, 'Gina Permata', '081234567896', 'gina.permata@email.com', 'Jl. K.H. Ahmad Dahlan No. 7, Makassar'),
(18, 'Hendra Wijaya', '081234567897', 'hendra.wijaya@email.com', 'Jl. Pahlawan No. 88, Semarang'),
(19, 'Indra Saputra', '081234567898', 'indra.saputra@email.com', 'Jl. Imam Bonjol No. 9, Bali'),
(20, 'Joko Prasetyo', '081234567899', 'joko.prasetyo@email.com', 'Jl. Jenderal Sudirman No. 14, Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `level` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone_number` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `level`, `name`, `email`, `password`, `gender`, `phone_number`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Male', '08123456789'),
(2, 'Member', 'Bob Johnson', 'bob@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Male', '2345678901'),
(3, 'Member', 'Charlie Brown', 'charlie@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Male', '3456789012'),
(4, 'Admin', 'Diana Prince', 'diana@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Female', '4567890123'),
(5, 'Member', 'Edward Nygma', 'edward@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Male', '5678901234'),
(6, 'Admin', 'Fiona Glenanne', 'fiona@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Female', '6789012345'),
(7, 'Member', 'George Costanza', 'george@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Male', '7890123456'),
(8, 'Member', 'Hannah Montana', 'hannah@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Female', '8901234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `borrowing`
--
ALTER TABLE `borrowing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowing_details`
--
ALTER TABLE `borrowing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `borrowing`
--
ALTER TABLE `borrowing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `borrowing_details`
--
ALTER TABLE `borrowing_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `berita_acara`
--
CREATE DATABASE IF NOT EXISTS `berita_acara` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `berita_acara`;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `level_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level_name`, `created_at`, `update_at`) VALUES
(1, 'Administrator', '2024-09-07 01:43:47', '2024-09-07 01:44:01'),
(2, 'Admin', '2024-09-07 01:43:47', '2024-09-07 01:44:06'),
(3, 'Pic', '2024-09-07 01:43:47', '2024-09-07 01:43:47'),
(4, 'Instruktur', '2024-09-07 01:43:47', '2024-09-07 01:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2024-09-07 02:00:00', '2024-09-07 02:00:00'),
(6, 'Fajar Suci Ramadhan', 'fsr@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2024-09-10 02:00:30', '2024-09-10 02:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE `user_levels` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`id`, `user_id`, `level_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-09-07 02:04:57', '2024-09-10 02:25:25'),
(2, 2, 1, '2024-09-07 02:04:57', '2024-09-10 01:58:52'),
(3, 0, 3, '2024-09-09 07:22:03', '2024-09-09 07:22:03'),
(4, 0, 3, '2024-09-09 07:22:33', '2024-09-09 07:22:33'),
(5, 0, 3, '2024-09-09 07:26:07', '2024-09-09 07:26:07'),
(6, 4, 3, '2024-09-09 07:27:28', '2024-09-09 07:27:28'),
(7, 6, 1, '2024-09-10 02:00:51', '2024-09-10 02:25:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_levels`
--
ALTER TABLE `user_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `compro-laravel`
--
CREATE DATABASE IF NOT EXISTS `compro-laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `compro-laravel`;

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
('fajarsr@gmail.com|127.0.0.1', 'i:1;', 1723598223),
('fajarsr@gmail.com|127.0.0.1:timer', 'i:1723598223;', 1723598223),
('fjr@gmail.com|127.0.0.1', 'i:1;', 1724289540),
('fjr@gmail.com|127.0.0.1:timer', 'i:1724289540;', 1724289540),
('samsonkuat@gmail.com|127.0.0.1', 'i:1;', 1722843924),
('samsonkuat@gmail.com|127.0.0.1:timer', 'i:1722843924;', 1722843924),
('upin@gmail.com|127.0.0.1', 'i:1;', 1724289556),
('upin@gmail.com|127.0.0.1:timer', 'i:1724289556;', 1724289556);

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
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_level` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `nama_level`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'User', NULL, NULL);

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
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(6, '2024_08_01_041136_create_levels_table', 2),
(7, '0001_01_01_000000_create_users_table', 3),
(8, '2024_08_08_033241_create_profiles_table', 4),
(9, '2024_08_08_041244_add_picture_to_profiles', 5),
(10, '2024_08_14_020036_add_status_to_profiles', 6);

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
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `picture` varchar(177) DEFAULT NULL,
  `nama_lengkap` varchar(55) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telpon` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `facebook` varchar(177) NOT NULL,
  `instagram` varchar(177) NOT NULL,
  `twitter` varchar(177) NOT NULL,
  `linkedin` varchar(177) NOT NULL,
  `descriptions` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `status`, `picture`, `nama_lengkap`, `alamat`, `no_telpon`, `email`, `facebook`, `instagram`, `twitter`, `linkedin`, `descriptions`, `created_at`, `updated_at`) VALUES
(9, 0, '2Mwo1WK5MurEhBASOzOhHFUYNzYI6ScXSQRQsqOM.jpg', 'Acc Empaire', 'asfd', 123456789, 'acc@gmail.com', 'https://example.com', 'https://example.com', 'https://example.com', 'https://example.com', 'sadf', '2024-08-14 00:20:32', '2024-08-21 21:42:13'),
(10, 0, 'mawFy8BSyfU33G1qSryTxFVsp3VatPonnmncOy9n.jpg', 'Bellato Union', 'fdsa', 987654321, 'bels@gmail.com', 'https://example.com', 'https://example.com', 'https://example.com', 'https://example.com', 'sfda', '2024-08-14 00:21:04', '2024-08-21 21:42:13'),
(11, 1, 'MxuXRVfnxIAFTy0LovzaymTiJdWAujPQoWznOmbP.png', 'Cora Alliance', 'fwe', 789451236, 'cora@gmail.com', 'https://example.com', 'https://example.com', 'https://example.com', 'https://example.com', 'few', '2024-08-14 00:21:37', '2024-08-21 21:42:13');

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
('Lg5HQDTFignkwtYi6oDEGP1Iz6Tu11Ece5ADpb6u', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazlpNDljVnFKQ1oxZDFGQkxrYnlLYkxTVldsOFhCU3U0ejdWaVN1RCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1723624827),
('Zf8ExWgx2qZJ1KcoDlgnASNhKl2uMQck0JqF6b3t', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRUdQQ2xpc2R3dUJjWDZwdW8zMVJmaU1HZGljUUxnQXAyOXFocW5ZeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wcm9maWxlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1724301733);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_level` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_level`, `nama_lengkap`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fajar Suci Ramadhan', 'fajarsr14@gmail.com', '$2y$12$W9Gi5JauGiRannXhG1PTguErnOgg/tlPW4FBu02GK4qX7OTZ2nUMO', NULL, '2024-08-01 00:39:37', '2024-08-01 00:39:37'),
(2, 2, 'riocayankadimas', 'rimas@gmail.com', '$2y$12$SA7XbA8IA04AYfNDI.gvbO0Dp0Nf2/GaqiRJyGAFta7H2ryg1F5YO', NULL, '2024-08-01 00:55:51', '2024-08-01 00:55:51'),
(3, 1, 'babeh', 'babehyoh@gmail.com', '$2y$12$WqK3PUg68/8Tf3TVj9AvEOpQjXM5RYvJfrLo7U1GwYLnc6zYNMHAG', NULL, '2024-08-01 17:55:01', '2024-08-01 17:55:01'),
(4, 2, 'Upin', 'upinabang@gmail.com', '$2y$12$1Va3GSVJdaKgn4.po9O5lObQiCmZwwQFOb4HqfiCvFcoviQI.RhW2', NULL, '2024-08-01 23:17:37', '2024-08-01 23:17:37'),
(5, 1, 'mayukai', 'mayu@gmail.com', '$2y$12$r5ukI/wVztlRpJViGJMRr./yV6RNyw9JIQeojGE.javy764prUF2q', NULL, '2024-08-02 00:42:23', '2024-08-02 00:42:23'),
(6, 2, 'nanu', 'nanu@gmail.com', '$2y$12$SdNZ7u7d9tB45TEE3nU/IOAwqog5fMSL27Q31ZvuZZ0YIHyBCf0Gq', NULL, '2024-08-02 00:43:21', '2024-08-02 00:43:21'),
(7, 2, 'bayo', 'babayo@gmail.com', '$2y$12$tG6Ghfia.gdDFUFPbtkTFuoIORSXrkMQ23wAbyERzCimGgiBModT2', NULL, '2024-08-02 00:49:17', '2024-08-02 00:49:17'),
(8, 2, 'Kurama', 'kurama@gmail.com', '$2y$12$AI95c35S5S7Kh6SRTbUbTe5Va1oLdt5Kc0d8hAbBx27AyTpwJyLNy', NULL, '2024-08-08 18:24:30', '2024-08-08 18:24:30');

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
-- Indexes for table `levels`
--
ALTER TABLE `levels`
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
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_level_foreign` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_level_foreign` FOREIGN KEY (`id_level`) REFERENCES `levels` (`id`) ON DELETE CASCADE;
--
-- Database: `db_angkatan2`
--
CREATE DATABASE IF NOT EXISTS `db_angkatan2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_angkatan2`;

-- --------------------------------------------------------

--
-- Table structure for table `accordion`
--

CREATE TABLE `accordion` (
  `id` int(11) NOT NULL,
  `id_intro` int(11) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `descs` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accordion`
--

INSERT INTO `accordion` (`id`, `id_intro`, `judul`, `descs`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Bagaimana cara memesan buku in', 'cara memesan buku ini adalah anda cukup membayar seharga 500 jt rupiah', '2024-07-23', NULL, NULL),
(2, 1, 'Bagiamana jika buku iini rusak', 'tinggal beli baru lagi wkwkwkwk', '0000-00-00', NULL, NULL),
(3, 1, 'Bagaimana caranya?', 'begini caranya', '2024-07-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `btn_class`
--

CREATE TABLE `btn_class` (
  `id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `btn_class`
--

INSERT INTO `btn_class` (`id`, `class`) VALUES
(1, 'btn-outline-primary'),
(2, 'btn-outline-secondary'),
(3, 'btn-outline-success'),
(4, 'btn-outline-danger');

-- --------------------------------------------------------

--
-- Table structure for table `card_class`
--

CREATE TABLE `card_class` (
  `id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_class`
--

INSERT INTO `card_class` (`id`, `class`) VALUES
(1, 'border-primary border-2'),
(2, 'border-0');

-- --------------------------------------------------------

--
-- Table structure for table `datauser`
--

CREATE TABLE `datauser` (
  `id` int(11) NOT NULL,
  `id_intro` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nomor_Hp` varchar(13) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datauser`
--

INSERT INTO `datauser` (`id`, `id_intro`, `full_name`, `email`, `nomor_Hp`, `subject`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'asddas', 'asd@gmail.com', 'asdas', 'asdas', 'asdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(2, 1, 'Fadli', 'fadliaja@gmail.com', '0831213', 'Caranya gimana', 'Gimana caranya?\r\n', '2024-07-24', '0000-00-00', '0000-00-00'),
(3, 1, 'Rio', 'rio@gmail.com', 'asdasda', 'Caranya gimana', 'asdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(4, 1, 'Ali', 'ali@gmail.com', '1231312', 'apamyua', 'apamya\r\n', '2024-07-24', '0000-00-00', '0000-00-00'),
(5, 1, 'asddas', 'asd@gmail.com', 'ada', 'Caranya gimana', 'asdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(6, 1, 'asddas', 'ada@gmail.com', '0831213', 'Caranya gimana', 'ASASASASAS', '2024-07-24', '0000-00-00', '0000-00-00'),
(7, 1, 'Fadli', 'fadliaja@gmail.com', '0831213', 'Caranya gimana', 'ASASAASASASA', '2024-07-24', '0000-00-00', '0000-00-00'),
(8, 1, 'Diak Winanta', 'asd@gmail.com', 'asdas', 'Caranya gimana', 'asasd', '2024-07-24', '0000-00-00', '0000-00-00'),
(9, 1, 'asddas', 'asd@gmail.com', '0831213', 'asdas', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(10, 1, 'asddas', 'asd@gmail.com', '0831213', 'asdas', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(11, 1, 'Dika', 'dika@gmail.com', '0812121', 'Cara mandi', 'tinggal guyur', '2024-07-24', '0000-00-00', '0000-00-00'),
(12, 1, 'Fadli', 'fadliaja@gmail.com', 'asdas', 'asdas', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(13, 1, 'asd', 'asd@gmail.com', 'asdas', 'asd', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(14, 1, 'Fadli', 'fadliaja@gmail.com', '0831213', 'Caranya gimana', 'asdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(15, 1, 'Fadli', 'asd@gmail.com', 'ada', 'Caranya gimana', 'asdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(16, 1, 'Fadli', 'asd@gmail.com', '0831213', 'Caranya gimana', 'asdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(17, 1, 'Fadli', 'asd@gmail.com', '0831213', 'Caranya gimana', 'asasd', '2024-07-24', '0000-00-00', '0000-00-00'),
(18, 1, 'Fadli', 'asd@gmail.com', '0831213', 'Caranya gimana', 'ssss', '2024-07-24', '0000-00-00', '0000-00-00'),
(19, 1, 'Fadli', 'asd@gmail.com', '0831213', 'Caranya gimana', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(20, 1, 'Digidaw', 'asd@gmail.com', '0831213', 'Caranya gimana', 'asasdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(21, 2, 'Fadli', 'asd@gmail.com', '0831213', 'Caranya gimana', 'asdsa', '2024-07-24', '0000-00-00', '0000-00-00'),
(22, 1, 'Fadli', 'fadliaja@gmail.com', '0831213', 'Caranya gimana', 'asdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(23, 1, 'Fadli', 'asd@gmail.com', '0831213', 'Caranya gimana', 'hiblobu', '2024-07-24', '0000-00-00', '0000-00-00'),
(24, 1, '', 'asd@gmail.com', '', 'Caranya gimana', '32333333333', '2024-07-24', '0000-00-00', '0000-00-00'),
(25, 1, 'Fadli', 'asd@gmail.com', '0831213', 'Caranya gimana', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(26, 1, 'Fadli', 'asd@gmail.com', '0831213', 'Caranya gimana', 'asdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(27, 1, 'Fadli', 'asd@gmail.com', '0831213', 'Caranya gimana', 'asdasasdasdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(28, 1, 'Fadli', 'asd@gmail.com', '0831213', 'Caranya gimana', 'asdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(29, 1, 'Dwika', 'dwika@gmail.com', '083123132', 'Caranya gimana', 'asdas', '2024-07-24', '0000-00-00', '0000-00-00'),
(30, 1, 'Fadli', 'rio@gmail.com', 'asdas', 'asdas', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(31, 1, 'Fadli', 'rio@gmail.com', 'asdsa', 'asdas', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(32, 1, 'Fadli', 'rio@gmail.com', '0831213', 'asda', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(33, 1, 'Fadli', 'rio@gmail.com', 'asdas', 'asdas', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(34, 1, 'Fadli', 'damnile@gmail.com', 'asdas', 'adas', 'asd', '2024-07-24', '0000-00-00', '0000-00-00'),
(35, 1, 'Fadli', 'danile@gmail.com', 'asdas', 'asdas', 'asda', '2024-07-24', '0000-00-00', '0000-00-00'),
(36, 1, 'Digidaw', 'Lovlfy@gmail.com', '0812121231', 'Apaan Ini?', 'Caranya gimana', '2024-07-25', '0000-00-00', '0000-00-00'),
(37, 1, 'Dika Wibowo', 'dika2@gmail.com', '08312312', 'Apakah ini works?', 'asdasdasd', '2024-07-29', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `intro`
--

CREATE TABLE `intro` (
  `id` int(11) NOT NULL,
  `judulWebsite` varchar(45) DEFAULT NULL,
  `judul` varchar(45) DEFAULT NULL,
  `subJudul` varchar(45) DEFAULT NULL,
  `isiKonten` varchar(255) DEFAULT NULL,
  `gambar` varchar(70) DEFAULT NULL,
  `gambar2` varchar(70) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intro`
--

INSERT INTO `intro` (`id`, `judulWebsite`, `judul`, `subJudul`, `isiKonten`, `gambar`, `gambar2`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fajar SR-PPKDJP', 'Cara bengong', 'bagaimana sih caranya bengong?', 'Caranya Tinggal Ngelamun', 'php.jpeg', 'random.png', 1, '2024-07-22', NULL, NULL),
(2, 'Hahuw How -PPKDJP', 'Cara bernafas', 'Caranya adalah anda harus ...', 'Agar anda bisa bernafas adalah tutup hidung dan buang paru-paru anda', 'random.png', 'random.png', 0, '2024-07-22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL,
  `id_intro` int(11) NOT NULL,
  `pilihedisi` varchar(45) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `deskripsi` varchar(65) DEFAULT NULL,
  `card_class` varchar(70) DEFAULT NULL,
  `header` varchar(30) DEFAULT NULL,
  `subtitle` varchar(30) DEFAULT NULL,
  `btn_class` varchar(30) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `id_intro`, `pilihedisi`, `harga`, `deskripsi`, `card_class`, `header`, `subtitle`, `btn_class`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 2, 'ED010203', 150000, 'wah', 'wuy', 'sdh', 'hsdff', 'success', '2024-07-30', NULL, NULL),
(12, 2, 'ED010203', 150000, 'rgesg', 'rsrsrsrsr', 'sjhagjhgsahfgasgfj', 'hsdff', 'success', '2024-07-30', NULL, NULL),
(13, 1, 'ED01020343', 2147483647, 'Mehong', 'Mehong', 'Mehong', 'Mehong', 'Mehong', '2024-07-30', NULL, NULL),
(14, 1, 'ED01020353', 2147483647, 'Mehong', 'Mehong', 'Mehong', 'Mehong', 'Mehong', '2024-07-30', NULL, NULL),
(15, 1, 'ED010203734', 2147483647, 'Mehong', 'Mehong', 'Mehong', 'Mehong', 'Mehong', '2024-07-30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `id_intro` int(11) NOT NULL DEFAULT 0,
  `nama` varchar(30) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `rating` float(2,1) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `id_intro`, `nama`, `judul`, `rating`, `deskripsi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Dika Gundal Gandul', 'Keren banget borrr bukanya', 5.0, 'Keren banget bukaanya gokilll abiezzzzzz', NULL, NULL, NULL),
(2, 1, 'Patrick Rx King', 'Bukunya gampanng kebakar', 2.0, 'bukunya gampang banget kebakar', NULL, NULL, NULL),
(3, 2, 'Sugeng Susanti', 'Buku nya keren sekaliiii', 4.5, 'caranya adalah?', '2024-07-23', NULL, NULL),
(4, 1, 'Digidaw Rio Ajazzz', 'Bukunya gampang basah', 2.5, 'Bukunya ga waterproff, saya siram air bukunya masah huhuhuhuhuhuhhu', '2024-07-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_level` int(9) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accordion`
--
ALTER TABLE `accordion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_acordion_intro` (`id_intro`);

--
-- Indexes for table `btn_class`
--
ALTER TABLE `btn_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_class`
--
ALTER TABLE `card_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datauser`
--
ALTER TABLE `datauser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_form_intro` (`id_intro`);

--
-- Indexes for table `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pricing_intro` (`id_intro`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reviws_intro` (`id_intro`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accordion`
--
ALTER TABLE `accordion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `btn_class`
--
ALTER TABLE `btn_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `card_class`
--
ALTER TABLE `card_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `datauser`
--
ALTER TABLE `datauser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `intro`
--
ALTER TABLE `intro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accordion`
--
ALTER TABLE `accordion`
  ADD CONSTRAINT `fk_acordion_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`);

--
-- Constraints for table `datauser`
--
ALTER TABLE `datauser`
  ADD CONSTRAINT `fk_form_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`);

--
-- Constraints for table `pricing`
--
ALTER TABLE `pricing`
  ADD CONSTRAINT `fk_pricing_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_reviws_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`);
--
-- Database: `db_angkatan2_fjr`
--
CREATE DATABASE IF NOT EXISTS `db_angkatan2_fjr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_angkatan2_fjr`;

-- --------------------------------------------------------

--
-- Table structure for table `acordion`
--

CREATE TABLE `acordion` (
  `id` int(11) NOT NULL,
  `id_intro` int(9) DEFAULT NULL,
  `chapter` varchar(25) DEFAULT NULL,
  `judul_capter` varchar(45) DEFAULT NULL,
  `isi_capter` varchar(180) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acordion`
--

INSERT INTO `acordion` (`id`, `id_intro`, `chapter`, `judul_capter`, `isi_capter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Chapter 1', 'Your First Web Page', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Porro dignissimos cupiditate eveniet iure, ex facilis qui accusantium suscipit error incidunt officiis hic ipsa! Iusto, te', '2024-07-23', NULL, NULL),
(2, 1, 'Chapter 2', 'Your Second Web Page', 'This is the second item\'s accordion body. It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control t', '2024-07-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `btn_class`
--

CREATE TABLE `btn_class` (
  `id` int(9) NOT NULL,
  `btn_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `btn_class`
--

INSERT INTO `btn_class` (`id`, `btn_name`) VALUES
(1, 'btn btn-primary'),
(2, 'btn btn-secondary'),
(3, 'btn btn-success'),
(4, 'btn btn-danger'),
(5, 'btn btn-warning'),
(6, 'btn btn-info'),
(7, 'btn btn-light'),
(8, 'btn btn-dark'),
(9, 'btn btn-link'),
(10, 'w-100 btn btn-lg btn-outline-primary');

-- --------------------------------------------------------

--
-- Table structure for table `card_class`
--

CREATE TABLE `card_class` (
  `id` int(9) NOT NULL,
  `card_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_class`
--

INSERT INTO `card_class` (`id`, `card_name`) VALUES
(1, 'border-primary border-2'),
(2, 'border-0'),
(3, 'card mb-4 rounded-3 shadow');

-- --------------------------------------------------------

--
-- Table structure for table `getintouch`
--

CREATE TABLE `getintouch` (
  `id` int(11) NOT NULL,
  `id_intro` int(11) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phonenumber` int(13) DEFAULT NULL,
  `subjek` varchar(70) DEFAULT NULL,
  `pesan` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `getintouch`
--

INSERT INTO `getintouch` (`id`, `id_intro`, `nama`, `email`, `phonenumber`, `subjek`, `pesan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 'Fajar Suci Ramadhan', 'Fajarimut@gmail.com', 88888888, 'keren', 'Wah kerennya', '2024-07-24', NULL, NULL),
(9, 1, 'adimas', 'adimascemuut@gmail.com', 999999, 'WebSite', 'Mantap kali wah indahnya dalam web ini. ikan asin bawa garam i love u gram.', '2024-07-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `intro`
--

CREATE TABLE `intro` (
  `id` int(9) NOT NULL,
  `judulwebsite` varchar(45) DEFAULT NULL,
  `judul` varchar(45) DEFAULT NULL,
  `subjudul` varchar(45) DEFAULT NULL,
  `isikonten` varchar(255) DEFAULT NULL,
  `gambar` varchar(70) DEFAULT NULL,
  `gambar2` varchar(70) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `intro`
--

INSERT INTO `intro` (`id`, `judulwebsite`, `judul`, `subjudul`, `isikonten`, `gambar`, `gambar2`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fajar Suci Ramadhan --PPKD', 'Black Belt', 'Koding Skill Anda', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cupiditate vitae pariatur animi architecto nemo delectus.', 'php.jpg', 'php.png', 1, '2024-07-22', '2024-07-22', NULL),
(2, 'Nama_anda-PPKD', 'Black Belt', 'Koding Skill Anda', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cupiditate vitae pariatur animi architecto nemo delectus.\r\n\r\n', 'php.png', 'php.jpg', 0, '2024-07-22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(9) NOT NULL,
  `id_intro` int(9) NOT NULL,
  `pilihedisi` varchar(45) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `deskripsi` varchar(65) DEFAULT NULL,
  `card_class` varchar(25) DEFAULT NULL,
  `header` varchar(30) DEFAULT NULL,
  `subtitle` varchar(30) DEFAULT NULL,
  `btn_class` varchar(50) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `id_intro`, `pilihedisi`, `harga`, `deskripsi`, `card_class`, `header`, `subtitle`, `btn_class`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Pro 111222', 50000000, '20 users included 10 GB of storage Priority email support Help yu', 'card mb-4 rounded-3 shado', 'yakin', 'gggga', 'w-100 btn btn-lg btn-outline-primary', '2024-07-22', '2024-07-30', NULL),
(2, 1, 'Murah', 10000, 'Lebih ekonomis', 'card mb-4 rounded-3 shado', 'Most Popular', 'beli dua dapat dua', 'w-100 btn btn-lg btn-outline-primary', '2024-07-23', '2024-07-30', NULL),
(3, 1, 'Samson', 400000, 'cvfgfgf', 'border-primary border-2', 'cjhvgjvj', 'bn.lnk.l;', 'w-100 btn btn-lg btn-outline-primary', '2024-07-26', '2024-08-01', NULL),
(4, 1, 'nambah kelas', 3000000, 'yakin nambah?', 'card mb-4 rounded-3 shado', 'nambah aja', 'bayar', 'w-100 btn btn-lg btn-outline-primary', '2024-07-26', '2024-07-30', '2024-08-01'),
(5, 1, 'Adimas  yakin', 3000000, '10000', 'card mb-4 rounded-3 shado', 'Adimas sayang semua', 'nambah nambah lagi lagi dan la', 'w-100 btn btn-lg btn-outline-primary', '2024-07-26', '2024-07-30', '2024-08-01'),
(6, 1, 'Adimas sering bengong', 200000, 'mikirin pacar', 'card mb-4 rounded-3 shado', 'Adimas pusing', 'Abis diputusin', 'w-100 btn btn-lg btn-outline-primary', '2024-07-26', '2024-07-30', '2024-08-01'),
(7, 1, 'Fajar sudah tak suci lagi', 1000000, 'Karena Adimas', 'card mb-4 rounded-3 shado', 'Adimas ngapain Fajar', 'sampai tak suci lagi', 'w-100 btn btn-lg btn-outline-primary', '2024-07-26', '2024-07-30', '2024-08-01'),
(8, 1, 'Aaaa Lutuna Adimas', 33333333, 'tapi boong', 'card mb-4 rounded-3 shado', 'Adimas sayang mama', 'tapi boong', 'w-100 btn btn-lg btn-outline-primary', '2024-07-26', '2024-07-30', '2024-08-01'),
(11, 1, 'Fajar cayang Adimas', 2147483647, 'Adimas sayang Fajar', 'card mb-4 rounded-3 shado', 'Tapi boong', 'Cayang adimas', 'w-100 btn btn-lg btn-outline-primary', '2024-07-26', '2024-07-30', '2024-08-01'),
(14, 1, 'YYYYYY', 10000000, 'vxfbhdfghb', 'card mb-4 rounded-3 shado', 'dfghdfgh', 'fghfgh', 'w-100 btn btn-lg btn-outline-primary', '2024-07-30', '2024-07-30', '2024-08-01'),
(15, 1, 'sdrhgdr', 3000, 'gfbhfhb', 'card mb-4 rounded-3 shado', 'aaaa', 'aaaaa', 'w-100 btn btn-lg btn-outline-primary', '2024-07-30', '2024-07-30', '2024-08-01'),
(16, 1, 'osas', 3, 'cvfgfgf', 'dchch', 'cjhvgjvj', 'bn.lnk.l;', 'vjvjvbj', '2024-07-30', NULL, '2024-08-01'),
(17, 1, 'fajar', 211222, 'vdsvf', 'dfdf', 'sdvd', 'sdfgsdf', 'sddfdsf', '2024-07-30', NULL, '2024-08-01'),
(18, 1, 'hjhikjhik', 121212, 'fghfgfgswgwh', 'cfwhfcgwhefcghwef', 'ghwfghcfweghfcweghf', 'cweghfwcgweghfc', 'weghcfweghfcweghfcgwhfchgw3', '2024-07-31', NULL, '2024-08-01'),
(19, 1, 'f23ghff1hgf', 2147483647, 'gfdghafghdfaghdfasghfdh', 'asfashfdghasfdgafd', 'afdhafdghasfdghasfdasghf', 'daghfdafdsafgdaf', 'dhfahdfsaghfashdf', '2024-07-31', NULL, '2024-08-01'),
(20, 1, 'asgfdghafdgha', 12331, 'gshfadgshdfasghfdasghf', 'dasghdfaghfsdagh', 'dfgahdfasghf', 'dgahsfdashdfasgh', 'faghfdagh', '2024-07-31', NULL, '2024-08-01'),
(24, 1, 'pro seklai', 2344, 'gdrsg', 'dsgfsdg', 'dsg', 'sdgsd', 'dsgsdg', '2024-08-01', NULL, NULL),
(25, 1, 'sffes', 242, 'fdsg', 'gsdgfsd', 'gfdsg', 'gfdsg', 'gsdg', '2024-08-01', NULL, NULL),
(26, 1, 'fasd', 424, 'dsgd', 'gfsdg', 'sdgf', 'fsdg', 'dsgd', '2024-08-01', NULL, NULL),
(27, 1, 'fads', 2424, 'gsdgdsfg', 'fdsgd', 'sdgsdgsd', 'sdgsdgds', 'sgds', '2024-08-01', NULL, NULL),
(29, 2, '1', 1111, '11111', '111111111', '11', '11', '11', '2024-08-01', NULL, NULL),
(30, 2, '2', 222222, '22222222', '22222222', '22', '22', '22', '2024-08-01', NULL, NULL),
(31, 2, '3', 33333, '33333333', '33333', '33', '33', '33', '2024-08-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `id_intro` int(11) DEFAULT NULL,
  `rating` float(2,1) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `id_intro`, `rating`, `title`, `content`, `author`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5.0, 'Web Bagus yang buat keren', 'Bagus Banget', 'Fajar Suci Ramadhan', '2024-07-23', NULL, NULL),
(2, 1, 5.0, 'webnya keren poulll', 'kErEn B4n93t', 'Adimas Nopiyanto', '2024-07-23', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acordion`
--
ALTER TABLE `acordion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_acordion_intro` (`id_intro`);

--
-- Indexes for table `btn_class`
--
ALTER TABLE `btn_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_class`
--
ALTER TABLE `card_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `getintouch`
--
ALTER TABLE `getintouch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_getintouch_intro` (`id_intro`);

--
-- Indexes for table `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pricing_intro` (`id_intro`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_review_intro` (`id_intro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acordion`
--
ALTER TABLE `acordion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `btn_class`
--
ALTER TABLE `btn_class`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `card_class`
--
ALTER TABLE `card_class`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `getintouch`
--
ALTER TABLE `getintouch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `intro`
--
ALTER TABLE `intro`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acordion`
--
ALTER TABLE `acordion`
  ADD CONSTRAINT `fk_acordion_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `getintouch`
--
ALTER TABLE `getintouch`
  ADD CONSTRAINT `fk_getintouch_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pricing`
--
ALTER TABLE `pricing`
  ADD CONSTRAINT `fk_pricing_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_review_intro` FOREIGN KEY (`id_intro`) REFERENCES `intro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `db_siswa`
--
CREATE DATABASE IF NOT EXISTS `db_siswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_siswa`;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `name`) VALUES
(1, 'Junior Web Programming'),
(2, 'Bahasa Inggris'),
(3, 'Content Creator');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`) VALUES
(1, '---'),
(2, 'admin'),
(3, 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `nik` int(16) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_status` tinyint(3) DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `nik`, `email`, `id_jurusan`, `gambar`, `password`, `is_status`, `files`, `created_at`, `updated_at`) VALUES
(5, 'Reza Ibrahim', 214748362, 'dani@gmail.com', 1, '666bc33a1a254.png', '$2y$10$S4ocK/Y5wjlknwhU8ZLPd.AWeVCW9lBe9mvwp3jmGEKCjSxlpP/.2', 0, '666bc316bdf06.pdf', '2024-06-14', '2024-06-14'),
(10, 'Rahmat', 987654321, 'dani@gmail.com', 1, '666bee6f48542.png', '$2y$10$UR5LufZhhO5xA4ARU9XLseLGgLSlLAl7Gi5xP92sSR.r517W8Zb2G', 0, '', '2024-06-14', '2024-06-14'),
(12, 'Reza Ibrahim', 987654321, 'dani@gmail.com', 1, '666bef27b8d06.png', '$2y$10$UruR9dPwNP0jvdDlI498Oub42JXO30NF3kFmG.FT.9J88kvSyURZi', 0, '666bef27c5fb2.pdf', '2024-06-14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_level` int(11) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_level`, `username`, `email`, `password`) VALUES
(2, 2, 'Susi Susanti', 'susi@gmail.com', '$2y$10$TLOl03qG7L5T6FrJi3rUIuUxGoIvwAQ1VPmxahOuWezeVAnpvvJRK'),
(3, 3, 'Santoso Leonardo', 'santoso@gmail.com', '$2y$10$TLOl03qG7L5T6FrJi3rUIuUxGoIvwAQ1VPmxahOuWezeVAnpvvJRK');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_siswa`
-- (See below for the actual view)
--
CREATE TABLE `view_siswa` (
`id` int(11)
,`nama` varchar(45)
,`nik` int(16)
,`email` varchar(45)
,`name` varchar(45)
,`gambar` varchar(100)
,`files` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `view_siswa`
--
DROP TABLE IF EXISTS `view_siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_siswa`  AS SELECT `siswa`.`id` AS `id`, `siswa`.`nama` AS `nama`, `siswa`.`nik` AS `nik`, `siswa`.`email` AS `email`, `jurusan`.`name` AS `name`, `siswa`.`gambar` AS `gambar`, `siswa`.`files` AS `files` FROM (`siswa` join `jurusan` on(`siswa`.`id_jurusan` = `jurusan`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_siswa` (`id_jurusan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_level` (`id_level`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `fk_siswa` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_level`) REFERENCES `level` (`id`);
--
-- Database: `laravel_pendaftaran`
--
CREATE DATABASE IF NOT EXISTS `laravel_pendaftaran` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_pendaftaran`;

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `hobby` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pengalaman` varchar(50) NOT NULL,
  `nama_instansi` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sm` varchar(50) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2024_08_28_095705_create_profiles_table', 1),
(5, '2024_08_28_100351_create_skills_table', 1),
(6, '2024_08_29_095939_create_projects_table', 1),
(7, '2024_08_30_030742_create_addcoloum', 1),
(8, '2024_08_30_032041_create_addcoloum_about', 1),
(9, '2024_08_30_064118_create_abouts_table', 1),
(10, '2024_09_01_151150_create_pendidikans_table', 1),
(11, '2024_09_02_035014_create_experiences_table', 1),
(12, '2024_09_02_045647_create_links_table', 1),
(13, '2024_09_02_072913_add_coloum_gambar', 1);

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
-- Table structure for table `pendidikans`
--

CREATE TABLE `pendidikans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `tingkat_pendidikan` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tahun_kelulusan` varchar(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_project` varchar(50) NOT NULL,
  `nama_client` varchar(50) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('pending','progress','completed','cancelled') NOT NULL,
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
('wK4CWKb9Y2Qf1P97qInXmLUy3hOQ4dtDF5cUb5E9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXNOb29JNnhBV3dXY1J3M3lVV1lQVkFxSzdkOUlPUkJOY3JOUHVISSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1726624056);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_skills` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
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
-- Indexes for table `links`
--
ALTER TABLE `links`
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
-- Indexes for table `pendidikans`
--
ALTER TABLE `pendidikans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pendidikans`
--
ALTER TABLE `pendidikans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel_pendaftaran_siswa`
--
CREATE DATABASE IF NOT EXISTS `laravel_pendaftaran_siswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_pendaftaran_siswa`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `gelombangs`
--

CREATE TABLE `gelombangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_gelombang` varchar(255) NOT NULL,
  `aktif` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gelombangs`
--

INSERT INTO `gelombangs` (`id`, `nama_gelombang`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 'Gelombang 1', 2, '2024-09-15 00:05:09', '2024-09-15 00:05:43'),
(2, 'Gelombang 2', 2, '2024-09-15 00:05:19', '2024-09-15 00:06:08'),
(3, 'Gelombang 3', 1, '2024-09-15 00:05:31', '2024-09-15 00:05:31');

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
-- Table structure for table `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
(1, 'Operator Komputer', '2024-09-15 00:02:33', '2024-09-15 00:02:33'),
(2, 'Bahasa Inggris', '2024-09-15 00:03:16', '2024-09-15 00:03:16'),
(3, 'Desain Grafis', '2024-09-15 00:03:32', '2024-09-15 00:03:32'),
(4, 'Tata Boga', '2024-09-15 00:03:48', '2024-09-15 00:03:48'),
(5, 'Tata Graha (perhotelan)', '2024-09-15 00:04:06', '2024-09-15 00:04:06'),
(7, 'Teknik Komputer', '2024-09-16 18:38:38', '2024-09-16 18:38:38'),
(8, 'Jaringan Komputer', '2024-09-16 18:38:49', '2024-09-16 18:38:49'),
(9, 'Tata Busana', '2024-09-16 18:39:01', '2024-09-16 18:39:01'),
(10, 'Teknik Pendingin', '2024-09-16 18:39:10', '2024-09-16 18:39:10'),
(11, 'Otomotif Sepeda Motor', '2024-09-16 18:39:23', '2024-09-16 18:39:23'),
(12, 'Barista', '2024-09-16 18:39:31', '2024-09-16 18:39:31'),
(13, 'Bahasa Korea', '2024-09-16 18:39:40', '2024-09-16 18:39:40'),
(14, 'Make Up Artis', '2024-09-16 18:39:52', '2024-09-16 18:39:52'),
(15, 'Multimedia - Video Editor', '2024-09-16 18:40:11', '2024-09-16 18:40:11'),
(16, 'Content Creator', '2024-09-16 18:40:22', '2024-09-16 18:40:22'),
(17, 'Web Programing', '2024-09-16 18:40:30', '2024-09-16 18:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `nama_level`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2024-09-15 00:06:30', '2024-09-15 00:06:30'),
(2, 'Admin Aplikasi', '2024-09-15 00:06:41', '2024-09-16 20:58:02'),
(3, 'Pic', '2024-09-15 00:06:52', '2024-09-15 00:06:52'),
(4, 'Instruktur', '2024-09-15 00:07:08', '2024-09-15 00:07:08');

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
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2024_09_10_094122_create_pesertas_table', 1),
(4, '2024_09_11_012441_create_jurusans_table', 1),
(5, '2024_09_11_015638_create_levels_table', 1),
(6, '2024_09_11_022143_create_users_table', 1),
(7, '2024_09_12_095418_create_gelombangs_table', 1),
(8, '2024_09_14_114931_create_change_data_type', 1),
(9, '2024_09_15_065335_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pesertas`
--

CREATE TABLE `pesertas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_jurusan` bigint(20) UNSIGNED NOT NULL,
  `id_gelombang` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `kartu_keluarga` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pendidikan_terakhir` varchar(50) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `kejuruan` varchar(50) NOT NULL,
  `nomor_hp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `aktivitas_saat_ini` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesertas`
--

INSERT INTO `pesertas` (`id`, `id_jurusan`, `id_gelombang`, `nama_lengkap`, `nik`, `kartu_keluarga`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `pendidikan_terakhir`, `nama_sekolah`, `kejuruan`, `nomor_hp`, `email`, `aktivitas_saat_ini`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Nisi laborum Sunt s', '7', '46', 'Perempuan', 'Fuga Sapiente nesci', '1993-03-07', 'S3', 'Omnis veniam amet', 'Rerum quidem ea accu', '15', 'nenihobe@mailinator.com', 'Atque amet pariatur', 2, '2024-09-15 00:08:11', '2024-09-15 00:08:57'),
(2, 9, 3, 'Vel impedit quia qu', '76', '65', 'Perempuan', 'Id proident nesciun', '2003-07-21', 'S3', 'Rerum error sed fugi', 'Accusantium est ips', '54', 'tequtikoky@mailinator.com', 'Voluptatem Quasi si', 1, '2024-09-16 21:37:27', '2024-09-17 01:04:01'),
(3, 1, 3, 'Eiusmod incidunt fu', '28', '37', 'Laki-laki', 'Dolor velit id rerum', '1991-01-07', 'S2', 'Quaerat sunt volupta', 'Dolor voluptate eaqu', '22', 'ryfupaf@mailinator.com', 'Ea quas quia cupidit', 0, '2024-09-16 21:47:08', '2024-09-16 21:47:08'),
(4, 5, 3, 'Voluptates facilis e', '28', '64', 'Laki-laki', 'Enim dolor neque eni', '1988-09-28', 'SMK', 'Expedita ea deserunt', 'Recusandae Maxime u', '51', 'dafuqu@mailinator.com', 'Quia eveniet eligen', 0, '2024-09-16 21:48:47', '2024-09-16 21:48:47'),
(5, 1, 3, 'Minima Nam qui bland', '95', '46', 'Perempuan', 'Ad ut voluptatem sin', '1984-05-12', 'SMA', 'Ducimus temporibus', 'Deserunt fugiat offi', '45', 'befuk@mailinator.com', 'Rerum sequi neque si', 0, '2024-09-17 01:01:24', '2024-09-17 01:01:24'),
(6, 17, 3, 'Est cum quae fugiat', '12', '26', 'Laki-laki', 'Consequuntur similiq', '1983-05-19', 'S2', 'Nostrud est cupidita', 'Officiis veritatis e', '21', 'hoxureqo@mailinator.com', 'Ducimus irure tempo', 0, '2024-09-17 02:27:57', '2024-09-17 02:27:57'),
(7, 9, 3, 'Laborum Est aut vel', '23', '55', 'Perempuan', 'Odio commodo vel exe', '2024-12-23', 'D3', 'Eum in aut ut at rat', 'Quisquam excepteur v', '96', 'kysonis@mailinator.com', 'Neque est perferendi', 0, '2024-09-17 02:44:01', '2024-09-17 02:44:01');

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
('sv5flOhcpnfL7c3rMgCmBxj6B3FAHLLzu7XcoUY8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1cxeHk2bUtBNExuRllLMkhPUFRSQmhsb2FUVWtBMUdsSm9TdjVsOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb25maXJtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1726566241);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_level` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_level`, `nama_lengkap`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fajar Suci Ramadhan', 'fjrrmdhn@gmail.com', '$2y$12$sWip2KpI/wAsFrZx2yF3E.8hUw7yPHHrcZv.DRbc8c7PrzIAPF2sy', NULL, NULL),
(5, 3, 'Upin', 'upin@gmail.com', '12345678', '2024-09-16 13:01:47', '2024-09-16 13:01:47'),
(6, 3, 'Uden', 'uden@gmail.com', '12345678', '2024-09-16 13:04:09', '2024-09-16 13:04:09'),
(7, 3, 'Lolys', 'lol@gmail.com', '12345678', '2024-09-16 18:25:00', '2024-09-16 18:28:57'),
(11, 3, 'Opak', 'opak@gmail.com', '12345678', '2024-09-16 21:19:34', '2024-09-16 21:19:34'),
(12, 3, 'Lolo', 'lolo@gmail.com', '12345678', '2024-09-16 21:34:03', '2024-09-16 21:34:03'),
(13, 3, 'Pic Tata Boga', 'ptb@gmail.com', '12345678', '2024-09-16 21:36:44', '2024-09-16 21:36:44'),
(14, 3, 'Jolo', 'jolo@gmail.com', '$2y$12$E8Fmoupj7PXZULjp3B027.2A5K9WfV8Yy57NDlzr4oi7TPFtDlZ/.', '2024-09-17 00:17:22', '2024-09-17 00:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_jurusans`
--

CREATE TABLE `user_jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_jurusan` bigint(20) UNSIGNED NOT NULL,
  `id_level` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_jurusans`
--

INSERT INTO `user_jurusans` (`id`, `id_jurusan`, `id_level`, `id_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 3, 3, 6, '2024-09-16 13:04:27', '2024-09-16 13:04:27', NULL),
(5, 1, 3, 6, '2024-09-16 13:05:22', '2024-09-16 13:05:22', NULL),
(6, 5, 3, 5, '2024-09-16 13:06:23', '2024-09-16 13:06:23', NULL),
(8, 4, 3, 7, '2024-09-16 18:28:28', '2024-09-16 18:28:28', NULL),
(11, 2, 3, 11, '2024-09-16 21:22:14', '2024-09-16 21:22:14', NULL),
(12, 7, 3, 12, '2024-09-16 21:34:21', '2024-09-16 21:34:21', NULL),
(13, 4, 3, 13, '2024-09-16 21:37:00', '2024-09-16 21:37:00', NULL);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gelombangs`
--
ALTER TABLE `gelombangs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesertas`
--
ALTER TABLE `pesertas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pesertas_id_gelombang_foreign` (`id_gelombang`),
  ADD KEY `pesertas_id_jurusan_foreign` (`id_jurusan`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_jurusans`
--
ALTER TABLE `user_jurusans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gelombangs`
--
ALTER TABLE `gelombangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pesertas`
--
ALTER TABLE `pesertas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_jurusans`
--
ALTER TABLE `user_jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesertas`
--
ALTER TABLE `pesertas`
  ADD CONSTRAINT `pesertas_id_gelombang_foreign` FOREIGN KEY (`id_gelombang`) REFERENCES `gelombangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pesertas_id_jurusan_foreign` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusans` (`id`) ON DELETE CASCADE;
--
-- Database: `learn`
--
CREATE DATABASE IF NOT EXISTS `learn` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `learn`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `level` int(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `level`, `nama`, `email`, `password`) VALUES
(5, 4, 'err', 'joni@1234', ''),
(6, 3, 'ryi', '123@cvbr', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `pendaftaran_siswa_jar`
--
CREATE DATABASE IF NOT EXISTS `pendaftaran_siswa_jar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pendaftaran_siswa_jar`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
(1, 'Web Programing', '2024-09-10 06:59:10', '2024-09-10 06:59:10'),
(2, 'Jaringan Komputer', '2024-09-10 06:59:10', '2024-09-10 06:59:10'),
(3, 'Operator Komputer', '2024-09-10 07:10:44', '2024-09-10 07:10:44'),
(4, 'Sistem Komputer', '2024-09-10 07:10:44', '2024-09-10 07:10:44');

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
(4, '2024_09_10_033234_create_personal_access_tokens_table', 2),
(5, '2024_09_10_040145_create_table_jurusan', 3),
(6, '2024_09_10_040534_create_jurusan_table', 4),
(7, '2024_09_10_040739_create_jurusans_table', 5);

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
('BkGV6M85EUgO7BSgXULf6pyhkp3ZVVoNNP9ZK3bK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0h3bUlmNHRxRThhckttUUpUaEFwOTFVd1o0YnBDeTc4azNWb2NESCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9qdXJ1c2FuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1726624218),
('ePeUGqURZUeat2FwVrcfTy4xg32UnF87T22jcnE3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFZydDFDNWRmY3dTNTNSU2NzVFNVRWVvMVB4TlNMRVhXVG5oMkpOQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725953252);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
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
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `perpus`
--
CREATE DATABASE IF NOT EXISTS `perpus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `perpus`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nisn` varchar(16) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nisn`, `nama_lengkap`, `jenis_kelamin`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, '202443502401', 'Mei Mie', 'Perempuan', '081234567893', 'Jl. satu', '2024-08-16 08:25:35', '2024-08-16 08:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` varchar(5) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `id_kategori`, `judul`, `jumlah`, `penerbit`, `tahun_terbit`, `penulis`, `created_at`, `updated_at`) VALUES
(1, 2, 'Aritmatika', 10, 'Yudidi', '2024', 'Yadi', '2024-08-16 08:25:18', '2024-08-16 08:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `id` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_peminjaman`
--

INSERT INTO `detail_peminjaman` (`id`, `id_peminjaman`, `id_buku`, `id_kategori`) VALUES
(1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah', '', '2024-08-16 08:24:20', '2024-08-16 08:24:20'),
(2, 'Perhitungan', '', '2024-08-16 08:24:32', '2024-08-16 08:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `nama_level`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '', '2024-08-06 01:20:41', '2024-08-06 01:21:43'),
(2, 'Admin', '', '2024-08-06 01:20:41', '2024-08-06 01:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kode_transaksi` varchar(30) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `id_anggota`, `id_user`, `kode_transaksi`, `tgl_pinjam`, `tgl_kembali`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 'PJ16082024001', '2024-08-16', '2024-08-17', 2, '2024-08-16 08:25:53', '2024-08-16 08:26:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `kode_pengembalian` varchar(30) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `terlambat` int(1) NOT NULL,
  `denda` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id`, `id_peminjaman`, `kode_pengembalian`, `tgl_pengembalian`, `terlambat`, `denda`, `created_at`, `updated_at`) VALUES
(1, 1, '', '2024-08-17', 0, 0, '2024-08-16 08:26:17', '2024-08-16 08:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_level`, `nama_lengkap`, `email`, `password`, `created_at`, `updated_at`) VALUES
(2, 1, 'Fajar Suci Ramadhan', 'fjr@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2024-07-29 02:14:48', '2024-08-16 08:20:17'),
(3, 2, 'upin@gmail.com', 'upin@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2024-07-31 02:13:21', '2024-08-16 08:20:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'anggota', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"angkatan3\",\"table\":\"borrowing_details\"},{\"db\":\"angkatan3\",\"table\":\"books\"},{\"db\":\"angkatan3\",\"table\":\"members\"},{\"db\":\"angkatan3\",\"table\":\"borrowing\"},{\"db\":\"angkatan3\",\"table\":\"users\"},{\"db\":\"angkatan3\",\"table\":\"levels\"},{\"db\":\"angkatan3\",\"table\":\"categories\"},{\"db\":\"angkatan3\",\"table\":\"anggota\"},{\"db\":\"angkatan3\",\"table\":\"category\"},{\"db\":\"angkatan3\",\"table\":\"category_books\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('angkatan3', 'books', 'title'),
('db_angkatan2', 'review', 'id_intro'),
('db_angkatan2', 'topic', 'chapter');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'angkatan3', 'users', '[]', '2024-10-15 01:09:49'),
('root', 'compro-laravel', 'profiles', '{\"sorted_col\":\"`profiles`.`status` DESC\"}', '2024-08-14 07:22:09'),
('root', 'laravel_pendaftaran_siswa', 'pesertas', '{\"sorted_col\":\"`id_gelombang` ASC\"}', '2024-09-13 07:52:46'),
('root', 'perpus', 'buku', '[]', '2024-08-16 08:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-10-18 01:00:53', '{\"Console\\/Mode\":\"collapse\",\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `portfolio`
--
CREATE DATABASE IF NOT EXISTS `portfolio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `portfolio`;

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `hobby` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `nama_lengkap`, `tgl_lahir`, `alamat`, `jenis_kelamin`, `agama`, `pekerjaan`, `hobby`, `created_at`, `updated_at`, `image`) VALUES
(7, 'Fajar Suci Ramadhan', '1999-09-09', 'Jl. Famyly Tanjung Barat', 'Laki-laki', 'Islam', 'Juragan Tambang Emas, Batu Bara', 'Rebahan', '2024-09-01 19:25:12', '2024-09-03 21:30:59', 'image/f4AG3NJov0OQJzwq3xlqJiTllnyUa9s2WwBlM8Ww.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pengalaman` varchar(50) NOT NULL,
  `nama_instansi` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `nama_pengalaman`, `nama_instansi`, `alamat`, `periode`, `created_at`, `updated_at`) VALUES
(4, 'Praktek Kerja Lapangan (PKL)', 'Walikota Depok', 'Jl. Sawangan', '2016', '2024-09-01 21:13:02', '2024-09-01 21:13:12'),
(5, 'Magang', 'Shoes Cleaning Service', 'Jl. Ciracas', '2023', '2024-09-01 21:19:39', '2024-09-01 21:19:39'),
(6, 'Tenaga Pendidikan (Guru)', 'SMP Islam YPS', 'Lenteng Agung LA', '2023', '2024-09-01 21:20:20', '2024-09-02 01:29:31');

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
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sm` varchar(50) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `nama_sm`, `nama_pengguna`, `created_at`, `updated_at`) VALUES
(2, 'Instagram', '@fjr_r', '2024-09-01 22:09:55', '2024-09-03 23:26:00'),
(3, 'X', '@FajarSRamadhan', '2024-09-01 22:10:06', '2024-09-03 23:26:11'),
(4, 'LinkIn', 'Fajar S Ramadhan', '2024-09-02 01:30:00', '2024-09-02 01:30:00'),
(5, 'WhatsApp', '0857*********', '2024-09-03 21:10:30', '2024-09-03 21:10:30');

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
(4, '2024_08_28_095705_create_profiles_table', 1),
(5, '2024_08_28_100351_create_skills_table', 1),
(7, '2024_08_29_095939_create_projects_table', 1),
(8, '2024_08_30_030742_create_addcoloum', 1),
(9, '2024_08_30_032041_create_addcoloum_about', 1),
(12, '2024_08_30_064118_create_abouts_table', 3),
(13, '2024_09_01_142801_create_educations_table', 4),
(14, '2024_09_01_151150_create_pendidikans_table', 5),
(15, '2024_09_02_035014_create_experiences_table', 6),
(16, '2024_09_02_045647_create_links_table', 7),
(17, '2024_09_02_072913_add_coloum_gambar', 8);

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
-- Table structure for table `pendidikans`
--

CREATE TABLE `pendidikans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `tingkat_pendidikan` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tahun_kelulusan` varchar(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendidikans`
--

INSERT INTO `pendidikans` (`id`, `nama_sekolah`, `tingkat_pendidikan`, `alamat`, `tahun_kelulusan`, `created_at`, `updated_at`) VALUES
(11, 'Universitas Indraprasta PGRI', 'Sarjana', 'Jl. Caglak', '2023', '2024-09-02 18:03:38', '2024-09-02 18:03:38'),
(12, 'SMK Islam Wijaya Kusuma', 'SMK', 'Lenteng Agung', '2018', '2024-09-03 20:33:07', '2024-09-03 20:33:07'),
(13, '08 Pagi', 'SD', 'Jl.Istimewa', '2012', '2024-09-16 20:20:05', '2024-09-16 20:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_project` varchar(50) NOT NULL,
  `nama_client` varchar(50) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('pending','progress','completed','cancelled') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `nama_project`, `nama_client`, `tgl_mulai`, `tgl_selesai`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Website Orang Pusing', 'Siiiiuuuuuuu', '2024-08-31', '2024-09-04', 'Jago parah', 'pending', '2024-08-30 03:02:51', '2024-09-03 23:24:59');

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
('2R7FSOmLcZCrTE9JyElkreWef0dzqigJMEQ9qimC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWU5TnJBS3djRU9YM1JWaGtjbE5jS0h2WUV1eUdTSVpQYUNRa25MVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725586243),
('fljZzNQVSoDPxet9FgjaoKiFNxJC2aWrX1kWhsCM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzNaaTVST292OVNHcHlBYU40S2NEUXVZQWtLSENVRHd3UUpYT3IxTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725434823),
('fTH5epbQJh5a8oIvZcNwWCuYQ4BLAENZ9ZFuLfWq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlRPQzhxZVZWSFpEemlzMVdLc09pVWVzOWFreWx6clZUWVF2S01FbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726543504),
('jHGs1d4cNcPsvet4oFsNyn40yasf2fGNM23LdZZf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFZxOUt5VDdMaVNaU3pqbVFGOGRYcXpsZExvbWlFQk4wTE1QeFhOayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1725875810);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_skills` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `nama_skills`, `level`, `deskripsi`, `created_at`, `updated_at`) VALUES
(13, 'Kagebunsin', 'Expert', 'No Limit', '2024-09-01 19:26:11', '2024-09-03 21:21:47');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fajar Suci Ramadhan', 'fjrrmdhn@gmail.com', NULL, '$2y$12$75yTpumatFowgRswMmOMzu0JmTHXS571GpvEoIamCa/j6E3lDO6XO', NULL, NULL, NULL),
(2, 'Test User', 'test@example.com', '2024-09-02 00:32:40', '$2y$12$kXcUvgTO1TNxZlMpIqLjBe9i0nOq0J4usYjt5rAcMb.2AzrHsFYbW', 'Ed4AMFJh4h', '2024-09-02 00:32:40', '2024-09-02 00:32:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
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
-- Indexes for table `links`
--
ALTER TABLE `links`
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
-- Indexes for table `pendidikans`
--
ALTER TABLE `pendidikans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pendidikans`
--
ALTER TABLE `pendidikans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `pos-laravel-fajar`
--
CREATE DATABASE IF NOT EXISTS `pos-laravel-fajar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pos-laravel-fajar`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_sales`
--

CREATE TABLE `detail_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `sub_total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2024_09_18_074956_create_categories_table', 2),
(5, '2024_09_18_075038_create_products_table', 2),
(6, '2024_09_18_075106_create_sales_table', 2),
(7, '2024_09_18_075153_create_detail_sales_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_code` varchar(50) NOT NULL,
  `trans_date` date NOT NULL,
  `trans_total_price` bigint(20) NOT NULL,
  `trans_paid` bigint(20) NOT NULL,
  `trans_change` bigint(20) NOT NULL,
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
('i3v30Peq46x4q4cPFPJO1JaB4stY5mVlwfZFBo9R', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidlF1U0pLZUNjQlJkNVJCaTRVSkdLWUNVa3p4Q2pwdThmYUdYWjVIbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1726650629),
('WpYK8ZW81k0vlPAjckkQynEGVOOMXF6B0pWJPMiT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTJ1bEt0bXo3SDgxa1dvcldQdTAxZjNVTkJWS1ZDZ3IxSDJaR1VnbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726643160);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$LjAueX6Kopv.ZcdIxLLZJOOr03EIwSi3CSRYVsAIqtq.epGcyLHKW', NULL, '2024-09-18 01:39:06', '2024-09-18 01:39:06');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_sales_sales_id_foreign` (`sales_id`),
  ADD KEY `detail_sales_product_id_foreign` (`product_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_sales`
--
ALTER TABLE `detail_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD CONSTRAINT `detail_sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_sales_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
--
-- Database: `pos_laravel`
--
CREATE DATABASE IF NOT EXISTS `pos_laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pos_laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(14, 'Makanan', '2024-08-21 01:17:55', '2024-08-21 01:17:55'),
(15, 'Minuman', '2024-08-21 01:19:32', '2024-09-18 18:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `detail_sales`
--

CREATE TABLE `detail_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `sub_total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_sales`
--

INSERT INTO `detail_sales` (`id`, `sales_id`, `product_id`, `qty`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 3, 300000, '2024-08-26 22:47:17', '2024-08-26 22:47:17'),
(2, 1, 5, 3, 300000, '2024-08-26 22:47:17', '2024-08-26 22:47:17'),
(3, 2, 5, 5, 500000, '2024-08-26 23:37:12', '2024-08-26 23:37:12'),
(4, 3, 5, 2, 200000, '2024-08-27 00:21:06', '2024-08-27 00:21:06'),
(5, 4, 5, 2, 200000, '2024-08-27 00:21:13', '2024-08-27 00:21:13'),
(6, 5, 5, 2, 200000, '2024-08-27 00:23:34', '2024-08-27 00:23:34'),
(7, 6, 5, 2, 200000, '2024-08-27 00:29:39', '2024-08-27 00:29:39'),
(8, 7, 8, 2, 20000, '2024-08-27 00:31:44', '2024-08-27 00:31:44'),
(9, 8, 5, 2, 200000, '2024-08-27 20:16:13', '2024-08-27 20:16:13'),
(11, 10, 8, 5, 50000, '2024-08-27 21:32:11', '2024-08-27 21:32:11'),
(12, 10, 8, 5, 50000, '2024-08-27 21:32:11', '2024-08-27 21:32:11'),
(13, 11, 5, 5, 500000, '2024-08-27 21:55:56', '2024-08-27 21:55:56'),
(14, 12, 9, 6, 72000, '2024-08-27 22:35:20', '2024-08-27 22:35:20'),
(15, 12, 9, 6, 72000, '2024-08-27 22:35:20', '2024-08-27 22:35:20'),
(16, 12, 9, 6, 72000, '2024-08-27 22:35:20', '2024-08-27 22:35:20'),
(17, 12, 9, 6, 72000, '2024-08-27 22:35:20', '2024-08-27 22:35:20'),
(18, 12, 9, 6, 72000, '2024-08-27 22:35:20', '2024-08-27 22:35:20'),
(19, 12, 9, 6, 72000, '2024-08-27 22:35:20', '2024-08-27 22:35:20'),
(20, 13, 5, 6, 600000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(21, 13, 5, 6, 600000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(22, 13, 5, 6, 600000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(23, 13, 5, 6, 600000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(24, 13, 5, 6, 600000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(25, 13, 5, 6, 600000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(26, 13, 5, 6, 600000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(27, 13, 5, 6, 600000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(28, 13, 5, 6, 600000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(29, 13, 5, 6, 600000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(30, 14, 8, 1, 10000, '2024-09-18 17:48:47', '2024-09-18 17:48:47');

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
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `level_name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level_name`, `created_at`, `updated_at`) VALUES
(2, 'Pimpinan', '2024-09-06 01:43:31', '2024-09-18 18:07:06'),
(3, 'Kasir', '2024-09-06 01:43:31', '2024-09-18 18:07:12'),
(4, 'administrator', '2024-09-18 01:02:37', '2024-09-18 17:47:47');

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
(4, '2024_08_21_034442_create_categories_table', 2),
(5, '2024_08_21_034538_create_products_table', 2),
(6, '2024_08_26_072658_create_sales_table', 3),
(7, '2024_08_26_073606_create_detail_sales_table', 4),
(8, '2024_09_18_072724_create_levels_table', 5),
(9, '2024_09_18_094209_create_coloumn', 5);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_qty`, `product_price`, `description`, `created_at`, `updated_at`) VALUES
(5, 14, 'Martabak Kue', 10, 100000, NULL, '2024-08-25 19:37:49', '2024-08-25 20:04:34'),
(6, 14, 'Kacang Pendek', 10, 2000, NULL, '2024-08-25 20:05:22', '2024-08-25 20:05:22'),
(8, 15, 'Jus Bejek', 5, 10000, NULL, '2024-08-25 20:06:22', '2024-08-25 20:06:22'),
(9, 15, 'Jus Monggo', 15, 12000, NULL, '2024-08-25 20:06:58', '2024-08-25 20:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_code` varchar(50) NOT NULL,
  `trans_date` date NOT NULL,
  `trans_total_price` bigint(20) NOT NULL,
  `trans_paid` bigint(20) NOT NULL,
  `trans_change` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `trans_code`, `trans_date`, `trans_total_price`, `trans_paid`, `trans_change`, `created_at`, `updated_at`) VALUES
(1, 'SL27082024001', '2024-08-27', 600000, 1000000, 400000, '2024-08-26 22:47:17', '2024-08-26 22:47:17'),
(2, 'SL27082024002', '2024-08-27', 500000, 700000, 200000, '2024-08-26 23:37:12', '2024-08-26 23:37:12'),
(3, 'SL27082024003', '2024-08-27', 200000, 50000, -150000, '2024-08-27 00:21:06', '2024-08-27 00:21:06'),
(4, 'SL27082024003', '2024-08-27', 200000, 500000, 300000, '2024-08-27 00:21:13', '2024-08-27 00:21:13'),
(5, 'SL27082024003', '2024-08-27', 200000, 500000, 300000, '2024-08-27 00:23:34', '2024-08-27 00:23:34'),
(6, 'SL27082024003', '2024-08-27', 200000, 500000, 300000, '2024-08-27 00:29:39', '2024-08-27 00:29:39'),
(7, 'SL27082024007', '2024-08-27', 20000, 10000, -10000, '2024-08-27 00:31:44', '2024-08-27 00:31:44'),
(8, 'SL28082024008', '2024-08-28', 200000, 100000, -100000, '2024-08-27 20:16:13', '2024-08-27 20:16:13'),
(9, 'SL28082024009', '2024-08-28', 85000, 100000, 15000, '2024-08-27 20:22:57', '2024-08-27 20:22:57'),
(10, 'SL28082024010', '2024-08-28', 100000, 100000, 50000, '2024-08-27 21:32:11', '2024-08-27 21:32:11'),
(11, 'SL28082024011', '2024-08-28', 500000, 400000, -100000, '2024-08-27 21:55:56', '2024-08-27 21:55:56'),
(12, 'SL28082024012', '2024-08-28', 432000, 500000, 68000, '2024-08-27 22:35:20', '2024-08-27 22:35:20'),
(13, 'SL28082024013', '2024-08-28', 6000000, 500000, -4900000, '2024-08-27 23:30:28', '2024-08-27 23:30:28'),
(14, 'SL19092024014', '2024-09-19', 10000, 10000, 0, '2024-09-18 17:48:47', '2024-09-18 17:48:47');

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
('2tibEHjyvoQuRLz0cHrMMXkwt0JGahJpFzeFum57', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzdhcW5Ycnh0VFhQVmRwVDROdFZLTlJIcVBQejR3WmhTS1Bwd0lvZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726707161),
('l4mGumVyRs3liifzoeA3nD5FXBtYetF88YHJUxFo', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYUx3eEVsWmswWnFEcEw4Ykg2Zk1wVWRPVjdSVFl4UVlwSHAxQUpnayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1726708075);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_level` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_level`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Adimas nopianto', 'administrator@gmail.com', NULL, '$2y$12$jUzO/.5eXbngODKif79zL.cwB2sTxxqKVryeMuHIrf4FJGMLcDSLO', NULL, '2024-09-18 02:48:15', '2024-09-18 03:08:31'),
(4, 2, 'Adimas', 'admin@gmail.com', NULL, '$2y$12$WTKS6KHkaL0pwbg83i1aIOM7SRQT9NZ3W0u2jWIXURlTTYAEi2a66', NULL, '2024-09-18 02:57:30', '2024-09-18 03:08:22'),
(5, 3, 'adimas  nopiyanto', 'kasir@gmail.com', NULL, '$2y$12$IHR1pUg1pPiJS9czBCU8y.JTD.xaHtaHk8tcbrgIOavDktRPy0Yb.', NULL, '2024-09-18 03:07:12', '2024-09-18 03:08:12');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_sales_sales_id_foreign` (`sales_id`),
  ADD KEY `detail_sales_product_id_foreign` (`product_id`);

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
-- Indexes for table `levels`
--
ALTER TABLE `levels`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `detail_sales`
--
ALTER TABLE `detail_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD CONSTRAINT `detail_sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_sales_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
--
-- Database: `pos_ujk_fajar`
--
CREATE DATABASE IF NOT EXISTS `pos_ujk_fajar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pos_ujk_fajar`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_sales`
--

CREATE TABLE `detail_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `sub_total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2024_08_21_034441_create_categories_table', 1),
(5, '2024_08_21_034526_create_products_table', 1),
(6, '2024_08_26_072655_create_sales_table', 1),
(7, '2024_08_26_073543_create_detail_sales_table', 1),
(8, '2024_09_07_032721_create_personal_access_tokens_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_code` varchar(50) NOT NULL,
  `trans_date` date NOT NULL,
  `trans_total_price` bigint(20) NOT NULL,
  `trans_paid` bigint(20) NOT NULL,
  `trans_change` bigint(20) NOT NULL,
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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_sales_sales_id_foreign` (`sales_id`),
  ADD KEY `detail_sales_product_id_foreign` (`product_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_sales`
--
ALTER TABLE `detail_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD CONSTRAINT `detail_sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_sales_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
--
-- Database: `rate_limiter`
--
CREATE DATABASE IF NOT EXISTS `rate_limiter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rate_limiter`;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `created_at`) VALUES
(1, 'judul 1', 'body 1', '2024-09-03 03:38:31'),
(2, 'judul 2', 'body 2', '2024-09-03 03:38:31'),
(3, 'judul 3', 'body 3', '2024-09-03 03:39:08'),
(4, 'judul 4', 'body 4', '2024-09-03 03:38:31'),
(5, 'judul 5', 'judul 5', '2024-09-03 03:38:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `web_fadli_pendaftaransiswa`
--
CREATE DATABASE IF NOT EXISTS `web_fadli_pendaftaransiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `web_fadli_pendaftaransiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `gelombang`
--

CREATE TABLE `gelombang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_gelombang` varchar(255) NOT NULL,
  `aktig` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gelombang`
--

INSERT INTO `gelombang` (`id`, `nama_gelombang`, `aktig`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Gelombang 1', 0, '2024-09-05 20:53:20', '2024-09-10 23:32:40', NULL),
(2, 'Gelombang 2', 0, '2024-09-05 20:54:47', '2024-09-05 20:55:08', '2024-09-05 20:55:08'),
(3, 'Gelombang 2', 0, '2024-09-05 21:13:47', '2024-09-10 23:32:40', NULL),
(4, 'Gelombang 3', 1, '2024-09-05 23:32:59', '2024-09-10 23:32:40', NULL),
(5, 'Gelombang 4', 0, '2024-09-10 18:16:24', '2024-09-10 23:32:40', NULL);

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
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Operator Komputer', NULL, NULL, NULL),
(6, 'Bahasa Inggris', NULL, NULL, NULL),
(7, 'Desain Grafis', NULL, NULL, NULL),
(8, 'Tata Boga', NULL, NULL, NULL),
(9, 'Tata Graha', NULL, NULL, NULL),
(10, 'Teknik Pendingin', NULL, NULL, NULL),
(11, 'Teknik Komputer', NULL, NULL, NULL),
(12, 'Otomotis Sepeda Motor', NULL, NULL, NULL),
(13, 'Jaringan Komputer', NULL, NULL, NULL),
(14, 'Barista', NULL, NULL, NULL),
(15, 'Bahasa Korea', NULL, NULL, NULL),
(16, 'Makeup Artist', NULL, NULL, NULL),
(17, 'Video Editor', NULL, NULL, NULL),
(18, 'Content Creator', NULL, NULL, NULL),
(19, 'Web Proramming', NULL, NULL, NULL);

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
(1, '2024_09_06_014020_create_roles_table', 1),
(2, '2024_09_06_014154_create_gelombang_table', 1),
(3, '2024_09_06_014348_create_jurusan_table', 1),
(4, '0001_01_01_000000_create_users_table', 2),
(5, '0001_01_01_000001_create_cache_table', 2),
(6, '0001_01_01_000002_create_jobs_table', 2),
(7, '2024_09_06_014821_create_pesertas_table', 2),
(8, '2024_09_06_032609_create_soft_delete', 3),
(9, '2024_09_06_032626_create_soft_delete_gel', 3),
(10, '2024_09_06_032652_create_soft_delete_jur', 3),
(11, '2024_09_06_032717_create_soft_delete_peserta', 4),
(12, '2024_09_06_032743_create_soft_delete_user', 4),
(13, '2024_09_06_041310_create_change_tiny', 5),
(14, '2024_09_06_065323_create_pasnullable', 6),
(15, '2024_09_10_034609_create_personal_access_tokens_table', 7);

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
-- Table structure for table `peserta_pelatihan`
--

CREATE TABLE `peserta_pelatihan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_jurusan` bigint(20) UNSIGNED NOT NULL,
  `id_gelombang` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `kartu_keluarga` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pendidikan_terakhir` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `kejuruan` varchar(100) NOT NULL,
  `nomorHp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `aktivasi_saat_ini` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peserta_pelatihan`
--

INSERT INTO `peserta_pelatihan` (`id`, `id_jurusan`, `id_gelombang`, `nama_lengkap`, `nik`, `kartu_keluarga`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `pendidikan_terakhir`, `nama_sekolah`, `kejuruan`, `nomorHp`, `email`, `aktivasi_saat_ini`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 8, 3, 'Brock', 'Pariatur Facere quo', 'Sit voluptatum duis', 'male', 'At numquam non et vo', '1978-09-16', 'SMA', 'Rhoda Merrill', 'Ullam sed voluptas a', '+1 (787) 972', 'Et quas asperiores b', 'Et quas asperiores b', 1, '2024-09-09 18:00:19', '2024-09-09 18:00:19', NULL),
(5, 19, 3, 'Muhammad Fadli Kurniawan', '31245698702546', '312456987021545', 'male', 'Jakarta', '2005-09-10', 'SMK', 'SMK Media Informatika', 'Rekayasa Perangkat Lunak', '081281019853', 'Rebahan', 'Rebahan', 1, '2024-09-09 18:16:58', '2024-09-09 18:16:58', NULL),
(6, 18, 3, 'Fad', '31245698702546', '31245698702546', 'male', 'Eius labore rerum ar', '2024-09-20', 'SMP', 'Gunadarma University', 'Perspiciatis verita', '+1 (604)', 'Sunt illo sunt omni', 'Sunt illo sunt omni', 1, '2024-09-09 20:06:39', '2024-09-09 20:06:39', NULL),
(7, 11, 3, 'Kaitlin', '35', '92', 'male', 'Quia molestias nostr', '2022-12-10', 'S1', 'Hilary Osborne', 'Non mollitia illum', '+1 (672) 41', 'zisoweb@mailinator.com', 'Est non ab quia solu', 1, '2024-09-09 20:08:15', '2024-09-09 20:08:15', NULL),
(8, 18, 3, 'Jordan', '47', '78', 'Lainnya', 'Ut sit non pariatur', '2011-11-13', 'SMK', 'Maggie Yates', 'Saepe excepturi earu', '+1 (314) 159-', 'dusulab@mailinator.com', 'Est placeat nulla a', 1, '2024-09-09 20:09:22', '2024-09-09 20:09:22', NULL),
(9, 19, 3, 'Dimas Anjay Mabar', '31245698702546', '31242648304547', 'Pria', 'Jakarta', '2024-09-30', 'SMK', 'Shoshana Silva', 'Remember', '0813132131', 'raka@gmail.com', 'Mencintai salah satu anak korea', 1, '2024-09-10 02:20:07', '2024-09-10 02:20:07', NULL),
(10, 5, 3, 'Hope', '21', '35', 'Pria', 'Dolorem est eum arc', '1996-03-12', 'SMP', 'Kyle Rojas', 'Ea ut commodi cupidi', '+1 (593) 73', 'sonibehy@mailinator.com', 'Ex quas nulla dolore', 1, '2024-09-10 02:24:57', '2024-09-10 02:24:57', NULL),
(11, 19, 4, 'Shoshana', '80', '97', 'Wanita', 'Est et voluptas sint', '1996-01-27', 'S1', 'Dawn Harper', 'Fuga Maxime repelle', '+1 (662) 557', 'fesymola@mailinator.com', 'Nam ut labore suscip', 1, '2024-09-10 18:59:12', '2024-09-10 18:59:12', NULL),
(12, 10, 4, 'Amethyst', '12', '55', 'Pria', 'Modi rerum at volupt', '1994-05-04', 'SMA', 'Pamela Navarro', 'Aperiam at facere qu', '+1 (593) 52', 'gozasohu@mailinator.com', 'Cumque illo blanditi', 1, '2024-09-10 19:33:41', '2024-09-10 19:33:41', NULL),
(13, 19, 4, 'Mollie', '5', '86', 'Lainnya', 'Ut laboris nesciunt', '2005-09-26', 'SMP', 'Hall Sherman', 'Officia et assumenda', '+1 (815)', 'ryhi@mailinator.com', 'Rerum explicabo Nul', 1, '2024-09-10 19:49:41', '2024-09-10 19:49:41', NULL),
(14, 6, 4, 'Brian', '26', '63', 'Lainnya', 'Dolore voluptate min', '1971-07-16', 'S2', 'Joy King', 'Ducimus nesciunt h', '+1 (251) 1', 'futuxolyv@mailinator.com', 'Ex repudiandae adipi', 1, '2024-09-10 19:54:58', '2024-09-10 19:54:58', NULL),
(15, 19, 4, 'Shelly', '25', '92', 'Wanita', 'Aliquam beatae omnis', '2014-06-26', 'SMK', 'Brenden Workman', 'Minus tempora itaque', '+1 (553) 823', 'hucusecaj@mailinator.com', 'Expedita aut nisi se', 1, '2024-09-10 19:55:15', '2024-09-10 19:55:15', NULL),
(16, 6, 4, 'Paloma', '30', '55', 'Pria', 'Qui quia a ut except', '2018-01-07', 'SD', 'Ulla Miranda', 'Eiusmod est tenetur', '65494651464', 'huwoqinife@mailinator.com', 'Officia tempora labo', 1, '2024-09-10 23:02:48', '2024-09-10 23:02:48', NULL),
(17, 19, 4, 'Dudul', '31245698702546', '31245698702546', 'Pria', 'Jakarta', '1997-10-29', 'SMK', 'SMK Dudul Jaya', 'ZRPL', '+1 (731) 609\\', 'dudul@gmail.com', 'Sunt illo sunt omni', 1, '2024-09-10 23:30:31', '2024-09-10 23:30:31', NULL),
(18, 12, 4, 'Lillian', '12', '1', 'Pria', 'Aute eum omnis dolor', '2019-08-09', 'S1', 'Piper Wilkinson', 'Sit architecto quod', '+1 (555)', 'kymyqiloq@mailinator.com', 'Qui vitae voluptatem', 1, '2024-09-11 00:15:08', '2024-09-11 00:15:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_role` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama_role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', '2024-09-05 20:16:02', '2024-09-05 20:23:48', NULL),
(2, 'PIC', '2024-09-05 20:17:48', '2024-09-05 20:17:48', NULL),
(3, 'admin aplikasi', '2024-09-05 20:24:30', '2024-09-05 20:30:17', '2024-09-05 20:30:17'),
(6, 'Admin Aplikasi', '2024-09-10 23:33:59', '2024-09-10 23:33:59', NULL);

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
('No2KN3sYlHnGSEpUAsndPO12OKEmmu3jDxjO3kuI', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibmxVSGV6T3FGcWJyakFtMjZWbmw4UkFmNE9UM3VEejNZQlNYNjdTTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dvdXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1726042046),
('PmOuPpaEX925WPOpxTiFKLV5fiAVQrVs9WyMd9W3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTXVwcUtzamFmSGR6TDBqUnpXcDBGMHJSRzY5SGNTVng0dHYzdTE5SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8iO319', 1726049560),
('Sju12r8bQiqc8TZiy0O9oKMgXVSO2WObVysdtkuh', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiN3ZlSU1VcndXZkhYc0N4N2xkeXFORk1hUTRFQ204NzI5TmFRbXFOaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZXNlcnRhLzEyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwLyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1726108848);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_level` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_level`, `nama_lengkap`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Muhammad Fadli Kurniawan', 'fadli@gmail.com', NULL, '$2y$12$uff56Cp0wpDX6J29oGtwUOe3X1kqOBAFtblrkcw0SRP4n5AdT1RVm', NULL, '2024-09-05 23:46:19', '2024-09-09 04:36:55', NULL),
(2, 2, 'Udin Kechup', 'duin@gmail.com', NULL, '$2y$12$Eh7R7RSvigkgxBpOugnLNenIwU2LuxRftVPysDKiD7cp/7AJA4nBm', NULL, '2024-09-06 00:03:43', '2024-09-09 04:23:16', NULL),
(3, 6, 'Dimas Drajat', 'dimas@gmail.com', NULL, '$2y$12$bFN966asio7hJf.P0hn0zO9kXMR7I1NeJ3Y4NiQH1NAaX6LlxjCDy', NULL, '2024-09-10 23:34:18', '2024-09-10 23:34:18', NULL);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gelombang`
--
ALTER TABLE `gelombang`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
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
-- Indexes for table `peserta_pelatihan`
--
ALTER TABLE `peserta_pelatihan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `peserta_pelatihan_email_unique` (`email`),
  ADD KEY `peserta_pelatihan_id_jurusan_foreign` (`id_jurusan`),
  ADD KEY `peserta_pelatihan_id_gelombang_foreign` (`id_gelombang`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_level_foreign` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gelombang`
--
ALTER TABLE `gelombang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peserta_pelatihan`
--
ALTER TABLE `peserta_pelatihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peserta_pelatihan`
--
ALTER TABLE `peserta_pelatihan`
  ADD CONSTRAINT `peserta_pelatihan_id_gelombang_foreign` FOREIGN KEY (`id_gelombang`) REFERENCES `gelombang` (`id`),
  ADD CONSTRAINT `peserta_pelatihan_id_jurusan_foreign` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_level_foreign` FOREIGN KEY (`id_level`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
