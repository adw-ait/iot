-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2019 at 09:39 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(14, 'arduino_01', 'arduino board', 'arduino', 1500, 1, 1500, '2019-02-21 12:37:23', 'a@gmail.com'),
(1, 'ENTHUSIASTS', 'RASPBERRY PI', 'RASPBERRY PI', 5000, 1, 5000, '2019-02-21 09:57:50', 'a@gmail.com'),
(15, 'ENTHUSIASTS', 'RASPBERRY PI', 'RASPBERRY PI', 5000, 1, 5000, '2019-02-22 10:10:05', 'nikhil@gmail.com'),
(16, 'arduino_01', 'arduino board', 'arduino', 1500, 1, 1500, '2019-02-22 10:10:06', 'nikhil@gmail.com'),
(17, 'ENTHUSIASTS', 'RASPBERRY PI', 'RASPBERRY PI', 5000, 2, 10000, '2019-02-22 23:10:20', 'nikhil@gmail.com'),
(18, 'arduino_01', 'ARDUINO UNO', 'arduino', 1500, 1, 1500, '2019-02-23 03:00:36', 'nikhil@gmail.com'),
(19, 'ENTHUSIASTS', 'RASPBERRY PI', 'RASPBERRY PI', 5000, 1, 5000, '2019-02-23 03:00:36', 'nikhil@gmail.com'),
(20, 'ENTHUSIASTS', 'RASPBERRY PI', 'RASPBERRY PI', 5000, 1, 5000, '2019-02-23 12:38:22', 'adwait@gmail.com'),
(21, 'arduino_01', 'ARDUINO UNO', 'arduino', 1500, 1, 1500, '2019-02-23 12:38:22', 'adwait@gmail.com'),
(22, 'home_auto', 'ECHO DOT', 'AMAZON ECHO', 3000, 1, 3000, '2019-02-23 12:38:23', 'adwait@gmail.com'),
(23, 'googleHome', 'GOOGLE HOME', 'google home', 10000, 1, 10000, '2019-02-23 12:38:23', 'adwait@gmail.com'),
(24, 'nest_th', 'NEST  THERMOSTAT', 'To maintain room temperature automatically using machine learning', 10000, 1, 10000, '2019-02-23 12:38:23', 'adwait@gmail.com'),
(25, 'arduino_02', 'ARDUINO YUN', 'arduino yun board for developers', 4000, 1, 4000, '2019-02-23 12:38:23', 'adwait@gmail.com'),
(26, 'arduino_01', 'ARDUINO UNO', 'arduino', 1500, 1, 1500, '2019-02-25 08:48:26', 'a@gmail.com'),
(27, 'arduino_01', 'ARDUINO UNO', 'arduino', 1500, 10, 15000, '2019-02-25 08:51:13', 'a@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'ENTHUSIASTS', 'RASPBERRY PI', 'RASPBERRY PI', 'raspi-4.jpg', 0, '5000.00'),
(2, 'arduino_01', 'ARDUINO UNO', 'arduino', 'arduino-3.jpg', 0, '1500.00'),
(3, 'home_auto', 'ECHO DOT', 'AMAZON ECHO', 'echo-dot.jpg', 39, '3000.00'),
(4, 'googleHome', 'GOOGLE HOME', 'google home', 'google-home-3.jpeg', 4, '10000.00'),
(5, 'nest_th', 'NEST  THERMOSTAT', 'To maintain room temperature automatically using machine learning', 'nest-thermostat-black.png', 3, '10000.00'),
(6, 'arduino_02', 'ARDUINO YUN', 'arduino yun board for developers', 'arduino_yun-3.jpg', 9, '4000.00'),
(7, 'echo_1', 'ECHO', 'amazon echo with alexa AI', 'echo.jpg', 8, '8000.00'),
(8, 'arduino_lilypad', 'LILYPAD BOARD', 'for wearable application', 'lillypad-1.jpg', 5, '300.00'),
(9, 'googleHome_mini', 'HOME MINI', 'Google home mini', 'home-mini-black.png', 5, '5000.00'),
(10, 'nodemcu', 'NODE MCU', 'wifi module to connect electrical hardware to internet', 'nodemcu.jpg', 5, '400.00'),
(11, 'breadboard', 'BREAD BOARD', 'breadboard size :8.5 cm x 5.5cm 400 small holes', 'breadboard.jpg', 10, '150.00'),
(12, 'wires', 'JUMPER WIRES', '10 X Male to female jumper wires', 'jumper_wires.jpg', 50, '60.00'),
(13, 'rasp_cam', 'RASP CAMERA MODULE', '5MP RASPBERRY PI CAMERA MODULE', 'rasp_cam.jpg', 10, '500.00'),
(14, 'cable', 'RJ45 CABLE', 'RJ45 CABLE', 'rj45_cable.jpg', 10, '100.00'),
(15, 'rasp_display', 'RASPBERRY PI DISPLAY', 'Raspberry Pi HDMI 7Inch LCD Capacitive Touchscreen 10point Touch', 'rasp_display.jpg', 10, '4000.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'adwait', 'yogaonkar', 'jm road', 'pune', 411005, 'a@gmail.com', 'adwait', 'user'),
(2, 'Admin', 'Webmaster', 'Internet', 'Electricity', 101010, 'admin@admin.com', 'admin', 'admin'),
(3, 'shrinivas', 'kale', 'ahmednagar', 'ahmednagar', 411005, 'shrinivas@g.com', 'shrinivas', 'user'),
(6, 'alex', 'jiang', 'china', 'beijing', 10111, 'alex@gmail.com', 'alec', 'user'),
(7, 'nikhil', 'nadya', 'ahmednagar', 'pune', 411005, 'nikhil@gmail.com', 'nikhil', 'user'),
(8, 'abhishek', 'sharma', 'dighi', 'pune', 411015, 'abhi@gmail.com', 'abhishek', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
