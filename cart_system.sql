-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2021 lúc 04:52 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cart_system`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(57, 'Sichuan Pork', '350000', '/Herios/images/Foods/sichuan-pork.jpg', 2, '700000', 'p1001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`, `description`) VALUES
(1, 'Chongqing HotPot', '300000', 1, '/Herios/images/Foods/hotpot.webp', 'p1000', 'Hotpot is a “dish” to tell apart from real Chinese food lovers. If you really appreciate hotpot rather than just ordering fried rice, chow mein, and dim sum all the time, you are truly a Chinese cuisine fan!\r\n\r\nThe secret of whether a hotpot is good or not lies in the broth, in which all the meat slices and vegetables are cooked. Normally you get to choose your own broth flavor, such as mushroom, tomato, original, or spicy. But still, the flavor can be different according to the sauce you choose to go with the meat. There are hundreds of kinds: a classic one is peanut butter with smashed garlic and chopped onion dressed with sesame oil.'),
(2, 'Sichuan Pork', '350000', 1, '/Herios/images/Foods/sichuan-pork.jpg', 'p1001', 'Hotpot is a “dish” to tell apart from real Chinese food lovers. If you really appreciate hotpot rather than just ordering fried rice, chow mein, and dim sum all the time, you are truly a Chinese cuisine fan!\r\n\r\nThe secret of whether a hotpot is good or not lies in the broth, in which all the meat slices and vegetables are cooked. Normally you get to choose your own broth flavor, such as mushroom, tomato, original, or spicy. But still, the flavor can be different according to the sauce you choose to go with the meat. There are hundreds of kinds: a classic one is peanut butter with smashed garlic and chopped onion dressed with sesame oil.'),
(3, 'Braised Pork Balls in Gravy', '350000', 1, '/Herios/images/Foods/Braised-Pork-Balls.webp', 'p1002', 'Braised pork balls in gravy are also known as “Chinese meatballs” (many of our clients call them this). If you like meatballs and spaghetti, you’ll probably appreciate Chinese meatballs as well. The super-smooth and flavory gravy is almost like a “drug sauce” keeping your taste buds wanting more and more. How many calories does it have? Trust me, you wouldn’t care at all!'),
(4, 'Shrimp with Vermicelli and Garlic', '250000', 1, '/Herios/images/Foods/shrimp-garlic.webp', 'p1003', 'Hotpot is a “dish” to tell apart from real Chinese food lovers. If you really appreciate hotpot rather than just ordering fried rice, chow mein, and dim sum all the time, you are truly a Chinese cuisine fan!\r\n\r\nThe secret of whether a hotpot is good or not lies in the broth, in which all the meat slices and vegetables are cooked. Normally you get to choose your own broth flavor, such as mushroom, tomato, original, or spicy. But still, the flavor can be different according to the sauce you choose to go with the meat. There are hundreds of kinds: a classic one is peanut butter with smashed garlic and chopped onion dressed with sesame oil.'),
(5, 'Sweet and Sour Pork', '450000', 1, '/Herios/images/Foods/sweetsour-pork.webp', 'p1004', 'Sweet and sour pork has a bright orange-red color, and a delicious sweet and sour taste.\r\n\r\nAt the very beginning there was only sweet and sour pork, but to meet demands, there have been some developments on this dish. Now, the pork can be substituted by other ingredients like chicken, beef or pork ribs.'),
(6, 'Ma Po Tofu', '350000', 1, '/Herios/images/Foods/mapo-Tofu.webp', 'p1005', 'Ma po tofu is one of the most famous dishes in Chuan Cuisine with a history of more than 100 years. Ma describes a spicy and hot taste which comes from pepper powder, one kind of condiment usually used in Chuan Cuisine.\r\n\r\nThe milky tofu is enriched with brownish red ground beef and chopped green onion. It is really a tasty delicacy.'),
(7, 'Peking Roasted Duck', '450000', 1, '/Herios/images/Foods/duck.webp', 'p1006', 'Peking duck is a famous dish from Beijing, enjoying world fame, and considered as one of China’s national dishes.\r\n\r\nPeking duck is savored for its thin and crispy skin. The Sliced Peking duck is often eaten with pancakes, sweet bean sauce, or soy with mashed garlic. It is a must-taste dish in Beijing!'),
(9, 'Steamed Vermicelli Rolls', '250000', 1, '/Herios/images/Foods/steamedvermicellirolls.webp', 'p1007', 'Steamed vermicelli rolls are definitely one of the must-orders of any dim sum meal! They are not only an expert choice in Guangzhou teahouses, morning tea restaurants, and street food night bazaars, but also a delicacy for many people\'s breakfasts in the rest of China’s middle-class restaurants.\r\n\r\nWhite sheets of rice starch are rolled with various fillings. Some popular choices are beef/pork, shrimp, even oyster, with mushroom, egg, lettuce, watercress etc. The rolls are steamed till all flavors blender together and then sprinkled with cooked peanut oil, raw soy sauce, chili sauce, or sesame paste depending on individual preferences.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
