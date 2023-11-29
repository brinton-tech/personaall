-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 02:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_form`
--

CREATE TABLE `admin_form` (
  `id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_form`
--

INSERT INTO `admin_form` (`id`, `password`) VALUES
('admin', 'test'),
('admin', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `book_form`
--

CREATE TABLE `book_form` (
  `date` date NOT NULL,
  `topwear` varchar(10) NOT NULL,
  `bottomwear` varchar(10) NOT NULL,
  `woolen` varchar(10) NOT NULL,
  `others` varchar(50) NOT NULL,
  `servicetype` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_form`
--

INSERT INTO `book_form` (`date`, `topwear`, `bottomwear`, `woolen`, `others`, `servicetype`, `name`, `email`, `phone`, `address`, `description`) VALUES
('2023-01-31', '7', '0', '0', '0', 'ironing', 'kumar', 'alokkumar@gmail.com', 1234567890, 'achhi', 'please iron properly.'),
('2023-11-20', '32', '30', '10', 'nylon', 'stainremoval', 'BRINTON', 'aphaelII@gmail.com', 714526987, 'Nairobi', 'wash clean'),
('2023-12-12', '56', '50', '45', 'nylon', 'ironing', 'brinton otieno', 'bintonotieno20@gmail.com', 791743572, '435-60200', 'no'),
('2023-11-03', '34', '10', '10', 'nylon', 'ironing', 'BRINTON OTIENO', 'brintnoten020@gmail.com', 791743572, 'Nairobi', 'wash clean'),
('2023-11-03', '34', '10', '10', 'nylon', 'ironing', 'BRINTON OTIENO', 'brintnoten021@gmail.com', 791743572, 'Nairobi', 'wash clean'),
('2023-11-03', '34', '10', '10', 'nylon', 'ironing', 'BRINTON OTIENO', 'brintnoten02@gmail.com', 791743572, 'Nairobi', 'wash clean'),
('2023-11-03', '34', '10', '10', 'nylon', 'ironing', 'BRINTON OTIENO', 'brintnoteno20@gmail.com', 791743572, 'Nairobi', 'wash clean'),
('2023-11-03', '34', '10', '10', 'nylon', 'ironing', 'BRINTON OTIENO', 'brintnotieno20@gmail.com', 791743572, 'Nairobi', 'wash clean'),
('2023-12-18', '89', '67', '90', 'nothing', 'dryclean', 'brinton otieno', 'brintonoteo20@gmail.com', 791743572, 'Nairobi', 'jbjbkjbjk'),
('2023-11-28', '50', '50', '50', 'no', 'fabriccare', 'brinton otieno', 'brintonotieno20@gmail.com', 791743572, 'nairobok', 'no'),
('2023-11-21', '40', '60', '64', 'Please Wash Clean', 'dryclean', 'brinton otieno', 'brintonotieno45@gmail.com', 791743572, 'Nairobi', 'just contact me when you reach destination'),
('2023-12-18', '89', '67', '90', 'nothing', 'dryclean', 'brinton otieno', 'brintonotieo20@gmail.com', 791743572, 'Nairobi', 'jbjbkjbjk'),
('2023-12-01', '32', '30', '10', 'nylon', 'ironing', 'brinton otieno', 'brintonotieyno20@gmail.com', 791743572, 'Nairobi', 'drop me after washing'),
('2023-12-12', '56', '50', '45', 'nylon', 'stainremoval', 'brinton otieno', 'brintootieno20@gmail.com', 791743572, 'Nairobi', 'no'),
('2023-11-21', '34', '12', '10', 'have nylons please wash', 'fabriccare', 'brinton otieno', 'brntonotino20@gmail.com', 791743572, 'Nairobi', 'wash clean'),
('2023-01-19', '0', '0', '3', '0', 'dryclean', 'Chiranjib Parida', 'chiranjibparida99@gmail.com', 7788924623, 'Plot no-324, Laxmisagar, Bhubaneswar', 'I have 3 woolen cloths. please dry clean those.'),
('2023-10-22', '32', '10', '5', 'nylon', 'dryclean', 'brinton otieno', 'khalaklak21@gmail.com', 791743572, 'juba', 'wash clean'),
('2023-11-19', '34', '10', '10', 'nylon', 'dryclean', 'leslie', 'leislie@gmail.com', 791745326, 'Nairobi', 'wash clean'),
('2023-10-25', '34', '12', '10', 'have nylons please wash', 'dryclean', 'Raphel Kimani', 'raphael@gmail.com', 786868686, 'Nairobi', 'drop me after washing'),
('2023-11-20', '32', '30', '10', 'nylon', 'stainremoval', 'BRINTON', 'raphaelI@gmail.com', 714526987, 'Nairobi', 'wash clean'),
('2023-11-20', '32', '30', '10', 'nylon', 'stainremoval', 'BRINTON', 'raphaelII@gmail.com', 714526987, 'Nairobi', 'wash clean');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `card_num` bigint(20) NOT NULL,
  `card_cvc` int(5) NOT NULL,
  `card_exp_month` varchar(2) NOT NULL,
  `card_exp_year` varchar(5) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `item_price_currency` varchar(10) NOT NULL DEFAULT 'usd',
  `paid_amount` varchar(10) NOT NULL,
  `paid_amount_currency` varchar(10) NOT NULL,
  `txn_id` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup_form`
--

CREATE TABLE `signup_form` (
  `id` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `securityquestion` varchar(50) NOT NULL,
  `securityanswer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup_form`
--

INSERT INTO `signup_form` (`id`, `name`, `email`, `password`, `phone`, `address`, `securityquestion`, `securityanswer`) VALUES
(1, 'Alok Kumar', 'alokkumar@gmail.com', 'Patel@20', 8976546789, 'Unit-1, Bhubaneswar', 'petspecies', 'cat'),
(2, 'brinton', 'brintnoteno20@gmail.com', '1234', 714526987, 'Nairobi', 'color', 'dog'),
(3, 'brinton otieno', 'brintonotieno20@gmail.com', 'Patel@20', 791743572, 'Nairobi', 'petspecies', 'dog'),
(4, 'Chiranjib Parida', 'chiranjibparida99@gmail.com', 'Chiru@183', 7788924623, 'Plot no-324, Laxmisagar, Bhubaneswar', 'number', '8'),
(5, 'deliver', 'deliver@gmail.com', '12345', 714526987, 'Nairobi', 'petname', 'red'),
(6, 'patel', 'johnvomondi2002@gmail.com', '123456', 786543234, 'nairobokre', 'petname', 'cow'),
(7, 'BRINTON OTIENO', 'khalaklak21@gmail.com', '12345678', 714526987, 'Nairobi', 'petspecies', 'dog'),
(8, 'Khalaklak', 'khalaklak@gmail.com', 'Goamar@21', 791458732, 'juba', 'petspecies', 'cat'),
(9, 'Patrober', 'patrobaevans@gmail.com', 'Patrober1', 748484848, 'nairobi', 'number', '100'),
(10, 'leslie', 'raphael@gmail.com', '1234', 714526987, 'Nairobi', 'petspecies', 'patel');

-- --------------------------------------------------------

--
-- Table structure for table `status_form`
--

CREATE TABLE `status_form` (
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_form`
--

INSERT INTO `status_form` (`email`, `status`) VALUES
('alokkumar@gmail.com', 'In Progess'),
('bintonotieno20@gmail.com', 'In Progess'),
('brintnoten020@gmail.com', ' Order Recieved'),
('brintnoteno20@gmail.com', ' Order Recieved'),
('leislie@gmail.com', 'Completed'),
('raphael@gmail.com', 'Completed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_form`
--
ALTER TABLE `book_form`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup_form`
--
ALTER TABLE `signup_form`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `status_form`
--
ALTER TABLE `status_form`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
