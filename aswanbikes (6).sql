-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 11:08 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aswanbikes`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `startdate` datetime DEFAULT NULL,
  `returndate` datetime DEFAULT NULL,
  `price` float DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `quantity`, `user_id`, `product_id`, `startdate`, `returndate`, `price`, `total`) VALUES
(101, NULL, 69, 45, NULL, NULL, NULL, NULL),
(102, NULL, 69, 46, NULL, NULL, NULL, NULL),
(103, NULL, 69, 44, NULL, NULL, NULL, NULL),
(112, 3, 72, 44, '2022-11-08 02:51:00', '2022-11-09 02:51:00', 2, 144),
(115, 1, 72, 45, '2022-11-08 02:59:00', '2022-11-09 02:59:00', 2, 48),
(116, 2, 72, 46, '2022-11-08 02:59:00', '2022-11-09 02:59:00', 3, 144),
(117, NULL, 72, 45, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'historical'),
(2, 'entertaining');

-- --------------------------------------------------------

--
-- Table structure for table `order_`
--

CREATE TABLE `order_` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_`
--

INSERT INTO `order_` (`id`, `user_id`, `total_price`) VALUES
(30, 69, 0),
(31, 69, 0),
(32, 69, 0),
(33, 69, 0),
(34, 69, 0),
(35, 70, 8280),
(36, 70, 8280),
(37, 70, 8280),
(38, 70, 8280),
(39, 70, 8280),
(40, 70, 8280),
(41, 70, 8280),
(42, 70, 8280),
(43, 70, 8280),
(44, 71, 1152),
(45, 71, 1440),
(46, 71, 1440),
(47, 72, 0),
(48, 72, 96),
(49, 72, 96);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `rent_date` datetime NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `size` varchar(15) NOT NULL,
  `COLOR` varchar(15) DEFAULT NULL,
  `img` varchar(200) NOT NULL,
  `describe` varchar(1000) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `sport_id`, `type_id`, `size`, `COLOR`, `img`, `describe`, `name`, `price`) VALUES
(47, 1, 2, '54', 'Red & Balck', 'WhatsApp Image 2022-11-08 at 10.23.23 AM.jpeg', 'Brand:TRINIX\r\n\r\nModel: TEMPO 1.4\r\n\r\nType: Road bike\r\n\r\nBreaks type: Disc brake\r\n Speeds: 21 Speeds barkes\r\n\r\nType of suspension: NO suspension', 'Trinx Tempo 1.4', 40),
(48, 1, 2, '54', 'Blue', '20190328102914_424.jpg', 'Brand:TRINIX Model: TEMPO 1.1 Type: Road Bike Breaks Type: Disc Brake Type Of Suspension: NO Suspensio', 'Trinx Tempo 1.1', 40),
(49, 1, 3, '54', 'Red & black', '71oJy-aGhZS._AC_SX679_.jpg', 'It comes with 14 speeds front and back from Shimano\r\n	Front wheel speed: 2 speeds\r\n	Back wheel speed: 7 speeds\r\n	Aluminum frame\r\n	Disc brake\r\nWheel frame 700 millimeters', 'Hybrid Galaxy', 40),
(50, 1, 15, '26', 'Black & Green', '6196jJZiZJL._AC_SX679_.jpg', 'Type: MTB\r\n	Size: 26 inches\r\n	No of Speeds: Speeds\r\n	Brakes Type: Disc Brakes\r\n	Type of Suspensions: Front Suspension\r\n	Type of Weight: 8 Kg', 'Galaxy A5', 40),
(51, 1, 15, '26', 'Black & Red', '61kClDGeacL._AC_SX679_.jpg', 'Size: 26 inches\r\n	No of Speeds: 21 Speeds\r\n	Brakes Type: Disc Brakes\r\n	Type of Suspensions: Front Suspension\r\n	Type of Weight: 12 Kg', 'MT16', 30),
(52, 1, 15, '15', 'White &  Purple', 'ML150L.jpg', 'Model number: ML150L\r\n	Department: women and girl\r\n	Perfect for gift\r\n	Comes in a proper and secure packaging', 'ML150L', 25),
(53, 1, 3, '24', 'Pink', '61wMREdoYUS._AC_SL1500_.jpg', 'High quality material\r\nULTRA PERFORMANCE\r\nSafe to use\r\nPacked with features\r\nSeamless functionality', 'Trinx Cute 1.0 City Bicycle', 30),
(55, 16, 13, '27 Inch', 'Black', '280603212_1422570058187099_4079114989238822417_n.jpg', 'Zhoya Professional Wooden Kids Girl Custom Wheels Blank Patinetas Longboard Skateboard Skate Board Complete For Adults Boys', 'Board', 25),
(56, 16, 12, '27', 'Blue', '41lOiSqm2EL._AC_.jpg', '27 Inch Cruiser Skateboard Plastic Skate Board Retro Graphic Galaxy Starry Floral Fade Printed Penny Style Board', 'Penny Board', 25),
(57, 2, 16, '112 x 43 x 113', 'Black', 'WhatsApp Image 2022-11-08 at 9.39.26 AM (1).jpeg', 'Brand	Xiaomi\r\nColour	Black\r\nAge range (description)	5 Years & Up\r\nWeight limit	100 Kilograms\r\nItem dimensions LxWxH	112 x 43 x 113 centimeters\r\nModel name	FBC4025GL\r\nItem weight	14.2 Kilograms\r\nWheel size	8.5 Inches\r\nWheel type	Solid\r\nBrake style	Rear Braking', 'Electric scooter', 25),
(58, 2, 14, '112 x 43 x 113', 'White', '41bReHmGyLL._AC_SX679_.jpg', 'Age range (description)	7 - 10 Years\r\nIt provides endless hours of fun and entertainment\r\nIt is good to improve imagination and creativity\r\nPerfect for developing kid\'s imagination and manual dexterity\r\nIt helps improving motor skills, hand-eye coordination\r\nPerfect for developing kid\'s imagination and manual dexterity', 'Genaric', 30),
(59, 3, 8, '40', 'Black', 'PR4537BI15252_880313_36863_Aztec_SZ4_1024x.jpg', 'Fast 80mm controllable wheels combined with long-lasting ABEC 5 bearings will keep you rolling. The frame is composed of a 3D embossed strong aluminium that provides excellent power transfer and helps distribute weight evenly.', 'Powerslide', 30),
(60, 3, 9, '41', 'Black & Yellow', 'PR4034BI15191_908376_36660_Imperial_Yellow_80_SZ4.jpg', '243mm aluminum frame, fast and grippy 80mm Spinner wheels, and WICKED ABEC 7 bearings the Imperial offers urban freeride skaters the perfect mix of speed, durability, and control. ', 'Powerslide', 25),
(61, 3, 10, '42', 'Black', '1623241137358_720x_af1a7227-1385-4618-aa1e-6a8f3c4eba00_720x.jpg', 'Brand: COUGAR / customized\r\nMaterial: Imported Polypropylene strong plastic\r\nBearing: ABEC-7 Chrome \r\nWheels: 78/80/80/78MM 85A Wear-resistant wheels\r\nFrame: 4MM CNC Aluminum Rockered Frame\r\nStyle: Freestyle/ Urban skating\r\n', '307', 30),
(62, 3, 10, '313', 'Pink & Blue', 'H03b51349702f4fccad9fe83c30704862p.jpg_960x960 (1).jpg', 'Polyurethane 82A - All Wheels Flashing\r\nwheel size:XS: 64mm / S: 68mm / M: 72mm / L: 76mm\r\nBrakes:TPR Durable Brake\r\nBearings: ABEC-9 Carbon Steel', 'Cougar 313', 40),
(63, 3, 10, '35', 'Purple', '312716238_1547984005645703_1393746192565197974_n.jpg', 'Polyurethane 82A - All Wheels Flashing wheel size:XS: 64mm / S: 68mm / M: 72mm / L: 76mm Brakes:TPR Durable Brake Bearings: ABEC-9 Carbon Steel', 'Cougar 315', 30),
(64, 3, 10, '27', 'Pink', 'Hfb23b3b00d8e4412b3cf4a57754a8efeo.jpg_960x960.jpg', 'Model Number:\r\nMZS807PS-QS Funny lion\r\nFeature:\r\nRetractable Inline Skates\r\nChassis:\r\nAluminum Chassis\r\nWheels:\r\n60/64/70mm all flashing wheels\r\nWheel Material:\r\nPU 82A\r\nBrake:\r\nTPR(Moveable)', 'Cougar Combo', 30);

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`id`, `name`) VALUES
(1, 'Bike'),
(2, 'Scooter'),
(3, 'Skate'),
(16, 'Board');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `description` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `category_id`, `img`, `description`) VALUES
(18, 1, 'Abu Simple.jpg', 'Abu Simbel is a historic site comprising two massive rock-cut temples in the village of Abu Simbel (Arabic: أبو سمبل), Aswan Governorate, Upper Egypt, near the border with Sudan. It is situated on the western bank of Lake Nasser, about 230 km (140 mi) southwest of Aswan (about 300 km (190 mi) by road).'),
(19, 1, 'elfanten.jpg', 'Philae is mentioned by numerous ancient writers, including Strabo, Diodorus Siculus, Ptolemy,Seneca,Pliny the Elder. It was, as the plural name indicates, the appellation of two small islands situated in latitude 24° north, just above the First Cataract near Aswan (Egyptian Swenet \"Trade;\" Ancient'),
(20, 1, 'Kom Ombo Temple.jpg', 'The Temple of Kom Ombo is an unusual double temple in the town of Kom Ombo in Aswan Governorate, Upper Egypt. It was constructed during the Ptolemaic dynasty, 180–47 BC. Some additions to it were later made during the Roman period'),
(21, 1, 'Unfinished obelisk.jpg', 'The Temple of Kom Ombo is an unusual double temple in the town of Kom Ombo in Aswan Governorate, Upper Egypt. It was constructed during the Ptolemaic dynasty, 180–47 BC. Some additions to it were later made during the Roman period'),
(22, 1, 'Temple of Kalabsha.jpg', 'The Temple of Kalabsha (also Temple of Mandulis) is an ancient Egyptian temple that was originally located at Bab al-Kalabsha (Gate of Kalabsha), approximately 50 km south of Aswan.'),
(23, 1, 'High Dam.jpg', 'In 1952, the Greek-Egyptian engineer Adrian Daninos began to develop the plan of the new Aswan Dam. Although the Low Dam was almost overtopped in 1946, the government of King Farouk showed no interest in Daninos\'s plans. Instead the Nile Valley Plan by the British hydrologist Harold Edwin Hurst was favored, which proposed to store water in Sudan and Ethiopia'),
(24, 1, 'Nubian Museum.jpg', 'The Nubian Museum covers an area of 50,000 square meters, 7,000 of which are devoted to the building, while the rest are devoted to gardens and other public spaces.The building has three floors for displaying and housing, in addition to a library and information center'),
(25, 1, 'family-aswan-museum-egypt-ancient-antiques-september-104083321.jpg', 'Aswan Museum is a museum in Elephantine, located on the south-eastern side of Aswan, Egypt. It was set up in 1912 by the British Egyptologist Cecil Mallaby Firth.[1] The museum features artifacts from Nubia, which were housed there during the construction of the Aswan Dam. In 1990, a new department was inaugurated'),
(26, 2, 'visiting-aswan-egypt-october-owners-stalls-selling-mixture-spices-clothing-tourist-souvenirs-october-48283956.jpg', 'Aswan Souk is a colorful bazaar that offers Egyptian and African goods. Locally known as Sharia as-Souq, it is the cheapest place to buy souvenirs in Aswan.'),
(27, 2, 'elnbatat.jpg', 'El Nabatat Island is one of two major islands on the Nile in vicinity of Aswan, the other one being Elephantine. Elephantine is the larger one, and is located between El Nabatat Island and the city of Aswan (east bank). Therefore, it can be hard to see the smaller El Nabatat Island from Aswan: \"Aswan disappears behind Elephantine Island'),
(28, 2, 'kournesh.jpg', 'Pictures of the sunrise over the great Nile and over the landmarks of Aswan and the desert in a wonderful and irresistible landscape.\r\n\r\nIf you want to walk along the Corniche, do not miss this view and watch it from the restaurants or restaurants spread on the Corniche, or in the hotel you are staying, you can take a picnic of the boats spread along the Nile, the view of the sunset in the middle of the Nile River, which is an animation'),
(29, 2, 'feryal.jpg', 'It was brought up by King Farouk and gifted to his daughter, Princess Faryal, on her birthday during the 1940s. The Faryal Garden is distinguished by the fact that from within it, anyone can follow the sunset until it plunges into the Nile, which is the pleasure of every tourist visiting Aswan, the same event that he is keen to follow from the terrace of a hotel The old Cataract, where the beauty of nature and the genius of the place, which includes granite terraces overlooking the most beautiful part of the Nile River with its dazzling blue, and the design of the garden is unparalleled'),
(30, 2, 'WhatsApp Image 2022-11-08 at 10.42.06 AM.jpeg', 'It is one of the Nubian gatherings in the city of Aswan and is located on a sandy slope west of the Nile River. The village was established about a hundred years ago, when the old Aswan Dam was built in 1902, and its first elevation in 1912. The name of the village is due to its location west of Sohail Island.');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(2, 'Road'),
(3, 'Hybrid'),
(8, 'Aztec'),
(9, 'Imperial'),
(10, 'Cougar'),
(12, 'Penny Board'),
(13, 'Skateboard'),
(14, 'Manual scooter'),
(15, 'Mountain'),
(16, 'Electric scooter');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `address` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `role` enum('user','admin') DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `img`, `role`, `phone`, `gender`, `country`) VALUES
(69, 'shimaa', 'user1@gmail.com', '$2y$10$osPd/v0kusyvMgKJQijP5.KBxfCd6nqb7HGNHeIeByEs1QWUUtl5e', 'asfqwfqgaaasfaf', '2022-11-06 (3).jpg', 'user', '12123344444444', 'male', 'Albania'),
(70, 'sara', 'sara@gmail.com', '$2y$10$GI1kzK/sFm7Cqlv2n0k/XuzqJtVTr3.Mhg9BQL4w84JUCVTMrbCmq', 'aswan', 'Hfbcca3af7ed04e718cca40276bce6c94R.jpg_960x960 (1).jpg', 'user', '01126677508', 'female', 'Egypt'),
(71, 'ali', 'ali@gmail.com', '$2y$10$uuUyn14CE5PCUVajv1aWzeOZ7tLZ.xeSwcKTl7L6aMLajLWwAlhK6', 'aswan', 'Hfbcca3af7ed04e718cca40276bce6c94R.jpg_960x960.jpg', 'user', '011203543', 'male', 'Egypt'),
(72, 'admin', 'admin@gmail.com', '$2y$10$74ZyRxEi0FjUFU3e4AYdseg/HdMuHYBmrKtqlNBEMI8DZKYC0Ko6G', 'adafq', 'Hfbcca3af7ed04e718cca40276bce6c94R.jpg_960x960.jpg', 'user', '12123344444444', 'male', 'American Samoa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_`
--
ALTER TABLE `order_`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sport_id` (`sport_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_`
--
ALTER TABLE `order_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_`
--
ALTER TABLE `order_`
  ADD CONSTRAINT `order__ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order_` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
