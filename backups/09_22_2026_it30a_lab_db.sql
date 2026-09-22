-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2026 at 04:01 AM
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
-- Database: `it30a_lab_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(50) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_category` varchar(50) NOT NULL,
  `book_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_title`, `book_author`, `book_category`, `book_created_at`) VALUES
(1, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Fantasy', '2026-09-17 02:16:28'),
(2, 'The great gatsby', 'F.Scott Fitzgerald', 'Tragedy', '2026-09-17 02:16:28'),
(3, 'The catcher', 'J.D.Salinger', 'Fiction', '2026-09-17 02:16:28'),
(4, 'Harry Potter', 'J.K.Rowling', 'Fantasy', '2026-09-17 02:19:11'),
(5, 'The great gatsby', 'F.Scott Fitzgerald', 'Tragedy', '2026-09-17 02:19:11'),
(6, 'The catcher', 'J.D.Salinger', 'Fiction', '2026-09-17 02:19:11'),
(7, 'Harry Potter', 'J.K.Rowling', 'Fantasy', '2026-09-17 02:20:00'),
(8, 'The great gatsby', 'F.Scott Fitzgerald', 'Tragedy', '2026-09-17 02:20:00'),
(9, 'The catcher', 'J.D.Salinger', 'Fiction', '2026-09-17 02:20:00'),
(10, 'Harry Potter', 'J.K.Rowling', 'Fantasy', '2026-09-17 02:21:05'),
(11, 'The great gatsby', 'F.Scott Fitzgerald', 'Tragedy', '2026-09-17 02:21:05'),
(12, 'The catcher', 'J.D.Salinger', 'Fiction', '2026-09-17 02:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrow_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `borrow_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `borrow_return_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrow_id`, `student_id`, `book_id`, `borrow_date`, `borrow_return_date`) VALUES
(1, 1, 2, '2026-09-17 02:16:28', NULL),
(2, 2, 1, '2026-09-17 02:16:28', NULL),
(3, 3, 3, '2026-09-17 02:16:28', NULL),
(4, 1, 2, '2026-09-17 02:19:11', NULL),
(5, 2, 1, '2026-09-17 02:19:11', NULL),
(6, 3, 3, '2026-09-17 02:19:11', NULL),
(7, 1, 2, '2026-09-17 02:20:00', NULL),
(8, 2, 1, '2026-09-17 02:20:00', NULL),
(9, 3, 3, '2026-09-17 02:20:00', NULL),
(10, 1, 2, '2026-09-17 02:21:05', NULL),
(11, 2, 1, '2026-09-17 02:21:05', NULL),
(12, 3, 3, '2026-09-17 02:21:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_first_name` varchar(50) NOT NULL,
  `student_last_name` varchar(50) NOT NULL,
  `student_course` varchar(50) NOT NULL,
  `student_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_first_name`, `student_last_name`, `student_course`, `student_created_at`) VALUES
(1, 'Angel', 'Cruz', 'BSIT', '2026-09-17 02:16:28'),
(2, 'James', 'Smith', 'BSIT', '2026-09-17 02:16:28'),
(3, 'Jane', 'Watson', 'BSCS', '2026-09-17 02:16:28'),
(4, 'Nicole', 'David', 'BSCS', '2026-09-17 02:16:28'),
(5, 'Angel', 'Dela Cruz', 'BSIT', '2026-09-17 02:19:11'),
(6, 'James', 'Smith', 'BSIT', '2026-09-17 02:19:11'),
(7, 'Jane', 'Watson', 'BSCS', '2026-09-17 02:19:11'),
(8, 'Nicole', 'David', 'BSCS', '2026-09-17 02:19:11'),
(9, 'Angel', 'Dela Cruz', 'BSIT', '2026-09-17 02:20:00'),
(10, 'James', 'Smith', 'BSIT', '2026-09-17 02:20:00'),
(11, 'Jane', 'Watson', 'BSCS', '2026-09-17 02:20:00'),
(12, 'Nicole', 'David', 'BSCS', '2026-09-17 02:20:00'),
(13, 'Angel', 'Dela Cruz', 'BSIT', '2026-09-17 02:21:05'),
(14, 'James', 'Smith', 'BSIT', '2026-09-17 02:21:05'),
(15, 'Jane', 'Watson', 'BSCS', '2026-09-17 02:21:05'),
(16, 'Nicole', 'David', 'BSCS', '2026-09-17 02:21:05'),
(17, 'TEST', 'TEST', 'BSIT', '2026-09-22 01:59:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrow_id`),
  ADD KEY `fk_borrow_student` (`student_id`),
  ADD KEY `fk_borrow_book` (`book_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrow`
--
ALTER TABLE `borrow`
  ADD CONSTRAINT `fk_borrow_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_borrow_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
