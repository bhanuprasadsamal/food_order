-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2023 at 07:10 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Malay Kumar', 'malay', '54f09841de9e84b180588db9427c9976'),
(13, 'Bijay Kumar', 'Bijay', '8f671153afe94c1191b84b18e20c6080');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(6, 'Biryani', 'Food_Category_906.jpg', 'Yes', 'Yes'),
(7, 'Chicken', 'Food_Category_862.jpg', 'Yes', 'Yes'),
(8, 'Burger', 'Food_Category_518.jpg', 'Yes', 'Yes'),
(9, 'Rolls', 'Food_Category_806.JPG', 'Yes', 'Yes'),
(10, 'Ice Cream', 'Food_Category_721.jpg', 'Yes', 'Yes'),
(11, 'Pizza', 'Food_Category_952.jpg', 'Yes', 'Yes'),
(12, 'Main course', 'Food_Category_756.jpg', 'Yes', 'Yes'),
(13, 'Drinks', 'Food_Category_302.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(11, 'Chicken 65', 'popular South Indian chicken dishes in which boneless fried chicken cooked', '239.00', 'Food_Name_687.jpeg', 7, 'Yes', 'Yes'),
(12, 'Chicken Lollipop', 'Crispy and Juicy. Deep fried chicken drumsticks tossed with hot garlic sauce.', '249.00', 'Food_Name_60.jpeg', 7, 'Yes', 'No'),
(13, 'Chicken Kabab', 'Chunks of boneless thigh chicken marinated in garden fresh herbs.', '345.00', 'Food_Name_738.jpeg', 7, 'Yes', 'No'),
(14, 'Chicken Tikka', 'The classic murgh tikka with a twist of lime baked using skewers marinating in Indian spices and dahi.', '339.00', 'Food_Name_892.jpeg', 7, 'Yes', 'No'),
(15, 'Tandoori Chicken', 'Fresh chicken marinated in yogurt, spices and tandoori masala and roasted in tandoor.', '269.00', 'Food_Name_571.jpg', 7, 'Yes', 'No'),
(16, 'Crispy Chicken Burger', 'Juicy and crisp, piled onto soft buns and mayonnaise.', '149.00', 'Food-Name-4311.jpg', 8, 'Yes', 'Yes'),
(17, 'BBQ Chicken Burger', 'BBQ seasoned breast fillet or chicken stripped off the bone on a buttered and toasted bun', '149.00', 'Food_Name_912.jpg', 8, 'Yes', 'No'),
(18, 'Vegetable Burger', 'Roasted vegetable burger with Hummus', '90.00', 'Food-Name-1670.webp', 8, 'Yes', 'No'),
(19, 'Egg Burger', 'Egg in creamy sauces with fresh lettuce', '129.00', 'Food_Name_283.jpg', 8, 'Yes', 'No'),
(20, 'Chicken Egg Roll', 'Egg wtih double chicken roll', '95.00', 'Food_Name_501.webp', 9, 'Yes', 'Yes'),
(21, 'Kolkata style egg roll', 'A simple egg and veggies roll that you can eat on the go.', '80.00', 'Food_Name_725.jpg', 9, 'Yes', 'No'),
(23, 'Paneer Roll', 'Paneer roll is flavorful, aromatic and totally delicious.', '75.00', 'Food_Name_60.webp', 9, 'Yes', 'No'),
(24, 'Chowmein Spring Roll', 'Freshly prepared chowmein with veggies. Deep fried spring roll.', '99.00', 'Food_Name_388.webp', 9, 'Yes', 'No'),
(25, 'Hot Chocolate Fudge Sundae', 'Vanilla ice cream, covered with luscious chocolate fudge topped with nuts', '199.00', 'Food-Name-3973.webp', 10, 'Yes', 'Yes'),
(26, 'ButterScotch Ice Cream', 'Simple and Classic', '95.00', 'Food_Name_5.webp', 10, 'Yes', 'No'),
(27, 'American Nut Ice Cream', 'Filled with lots of nuts', '304.00', 'Food_Name_785.jpg', 10, 'Yes', 'No'),
(28, 'Stick Kulfi', 'Made with boiled milk with nuts.', '60.00', 'Food_Name_374.jpg', 10, 'Yes', 'No'),
(30, 'Strawbery-Ginger Lemonade', 'A red strawbery soda that is traditionally served.', '110.00', 'Food-Name-8283.jpg', 13, 'Yes', 'Yes'),
(31, 'Cold Coffee', 'Milk with coffee.', '85.00', 'Food_Name_427.jpg', 13, 'Yes', 'No'),
(32, 'Masala Soda', 'Cola with ginger, black salt, lemon, jal jeera, ice...', '40.00', 'Food_Name_358.webp', 13, 'Yes', 'No'),
(33, 'Chicken Biryani', 'Chicken marinated and cooked in biryani masala and layered with basmati rice for a dum', '140.00', 'Food_Name_41.webp', 6, 'Yes', 'Yes'),
(34, 'Mutton Biryani', 'Tender pieces of mutton cooked with spices and aromatic rice', '360.00', 'Food-Name-4266.jpg', 6, 'Yes', 'No'),
(35, 'Fish Biryani', 'Fiery fish tikka grilled in tandoor and cooked in our biryani masala and layered with basmati rice', '150.00', 'Food_Name_329.jpg', 6, 'Yes', 'No'),
(36, 'Veg Biryani', 'Fresh vegetables cooked and layered with basmati rice', '120.00', 'Food_Name_84.webp', 6, 'Yes', 'No'),
(37, 'Chicken Tikka Pizza', '', '299.00', 'Food_Name_453.jpg', 11, 'Yes', 'No'),
(38, 'Paneer Tikka Masala Rice', 'Pan fry pieces of paneer in a rich tomato sauce.', '325.00', 'Food_Name_583.jpeg', 12, 'Yes', 'Yes'),
(39, 'Veg Extravegant Pizza', 'Topped with mushroom, corn, black olives, tomatoes, onions.', '250.00', 'Food_Name_480.jpg', 11, 'Yes', 'Yes'),
(40, 'Paneer Butter Masala', 'Delicious, rich, creamy Indian paneer curry with butter', '250.00', 'Food-Name-5439.jpeg', 12, 'Yes', 'No'),
(41, 'Aloo Gobi', 'This flavorful is the ultimate Indian home-style dish', '55.00', 'Food_Name_354.jpeg', 12, 'Yes', 'No'),
(42, 'Chana Masala', 'Made in restaurant style', '50.00', 'Food_Name_406.jpg', 12, 'Yes', 'No'),
(43, 'Dal Makhani', 'Delicious, rich, creamy dish made with black lentils, spices, butter', '80.00', 'Food_Name_461.jpeg', 12, 'Yes', 'No'),
(44, 'Saag Paneer', 'Indian dish with plenty of flavour, well-loved vegeterian side dish.', '190.00', 'Food_Name_256.jpeg', 12, 'Yes', 'No'),
(45, 'Aloo Paratha', 'Masala aloo stuffed in soft paratha', '30.00', 'Food_Name_133.jpeg', 12, 'Yes', 'No'),
(46, 'Masala Dosa', 'Crispy South Indian Dosa with sambar and cocunut chutney.', '80.00', 'Food_Name_307.jpeg', 12, 'Yes', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) UNSIGNED NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_address`) VALUES
(1, 'Dumplings Specials', '350.00', 1, '350.00', '2022-11-02 07:13:57', 'Ordered', 'Gourab Padhan', '8984827236', 'GIET University, Gunupur, Odisha'),
(2, 'Best Burger', '130.00', 1, '130.00', '2022-11-02 07:16:08', 'Delivered', 'Chinmaya Padhan', '8114997492', 'GIET University, Gunupur, Odisha'),
(3, 'Dumplings Specials', '350.00', 1, '350.00', '2022-11-02 07:17:38', 'Cancelled', 'Abhik Das', '7205791870', 'GIETU Gunupur'),
(4, 'Best Burger', '130.00', 1, '130.00', '2022-11-02 07:24:05', 'Delivered', 'Malay Kumar Hembram', '7684050327', 'Gunupur'),
(5, 'Best Burger', '130.00', 2, '260.00', '2022-11-02 07:42:23', 'On Delivery', 'Bhanu Prasad Samal', '8018931867', 'GIET University'),
(6, 'Smoky BBQ Pizza', '150.00', 1, '150.00', '2022-11-07 05:55:56', 'Delivered', 'Abhik Das', '7205791870', 'Sambalpur'),
(7, 'Best Burger', '130.00', 1, '130.00', '2022-11-07 07:28:31', 'Cancelled', 'Bhanu Prasad Samal', '8018931867', 'gcfy'),
(8, 'Chicken Lollipop', '249.00', 1, '249.00', '2022-11-07 08:00:16', 'Cancelled', 'Bhanu Prasad Samal', '8018931867', 'Jajpur'),
(9, 'Chicken 65', '239.00', 1, '239.00', '2022-11-12 12:19:59', 'Ordered', 'Bhanu Prasad Samal', '8018931867', 'sss'),
(10, 'Veg Extravegant Pizza', '250.00', 0, '-1250.00', '2022-11-17 08:10:07', 'Ordered', 'sdff', 'sdd', 'ddd'),
(11, 'Chicken Egg Roll', '95.00', 0, '-570.00', '2022-11-17 08:13:49', 'Ordered', 'dfeffef', '666689', 'gthth'),
(12, 'Chicken 65', '239.00', 1, '239.00', '2022-11-27 07:50:22', 'Ordered', 'sdff', 'dfrgf', 'dsfdsgd'),
(13, 'Chicken 65', '239.00', 1, '239.00', '2022-12-03 07:54:16', 'Ordered', 'asjjjjjd', '1234', 'dffhkd'),
(14, 'Paneer Butter Masala', '250.00', 1, '250.00', '2023-09-11 07:01:36', 'Delivered', 'malay kumar hembram', '7684050327', 'gunupur');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `mobile`, `password`) VALUES
(2, 'Gourab Padhan', '8984827236', '15e8bbc1e8b2f20b759b5b9103e87411'),
(3, 'Abhik Das', '7205791870', '09726305e74bab5e09c9d6c9672e6085'),
(4, 'Bhanu Prasad Samal', '8018931867', 'ecf6fbc4690b6ecd2245d8db1602bda7'),
(5, 'Abhik Das', '2372947200', '97dce9d30b138fc66d43d2145b986f1b'),
(6, 'Abhik Das', '7205791870', '21232f297a57a5a743894a0e4a801fc3'),
(7, 'Abhik', '7205791870', '97dce9d30b138fc66d43d2145b986f1b'),
(8, 'Abhik Das', '7205791870', '21232f297a57a5a743894a0e4a801fc3'),
(9, 'Malay Kumar', '7684050327', '30e1ad98a62af422ec23bea99b102709');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
