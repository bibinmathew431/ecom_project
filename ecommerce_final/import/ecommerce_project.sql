-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2019 at 08:16 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_email` varchar(100) NOT NULL,
  `user_pass` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_email`, `user_pass`) VALUES
('test@gmail.com', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Cloth Brand');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL,
  `qty` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Electronics'),
(2, 'Ladies Wears'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Furnitures'),
(6, 'Home Appliances'),
(7, 'Electronics Gadgets');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(55) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `p_status` varchar(50) NOT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `p_status`, `order_date`) VALUES
(575, 4, 8, 'completed', '2019-06-27 19:27:08'),
(576, 4, 5, 'completed', '2019-06-27 19:32:12'),
(577, 4, 6, 'completed', '2019-06-27 21:33:25'),
(578, 4, 36, 'completed', '2019-06-27 21:53:58'),
(579, 4, 5, 'completed', '2019-06-27 22:22:11'),
(580, 4, 6, 'completed', '2019-06-27 22:50:08'),
(581, 4, 8, 'completed', '2019-06-27 23:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `amount` int(10) NOT NULL,
  `payment_type` varchar(1020) NOT NULL,
  `payment_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `full_name` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `name_card` varchar(10) DEFAULT NULL,
  `credit_number` int(10) DEFAULT NULL,
  `exp_month` varchar(10) DEFAULT NULL,
  `exp_year` int(10) DEFAULT NULL,
  `cvv` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `amount`, `payment_type`, `payment_date`, `full_name`, `email`, `address`, `city`, `state`, `zip`, `name_card`, `credit_number`, `exp_month`, `exp_year`, `cvv`) VALUES
(4, 4, 35000, 'credit_card', '2019-06-27 22:50:08', 'dasas', 'ass@gmail.com', 'aa', 'aaa', 'aa', 1, 'a', 1, 'a', 1, 1),
(5, 4, 75000, 'credit_card', '2019-06-27 23:00:31', 'dasas', 'ass@gmail.com', 'aa', 'aaa', 'aa', 1, 'a', 1, 'a', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(2, 1, 3, 'iPhone 5s', 25000, 'iphone 5s', 'iphone mobile.jpg', 'mobile iphone apple'),
(5, 1, 2, 'iPad 2', 10000, 'samsung ipad', 'ipad 2.jpg', 'ipad tablet samsung'),
(6, 1, 1, 'Hp Laptop r series', 35000, 'Hp Red and Black combination Laptop', 'k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', 'hp laptop '),
(7, 1, 1, 'Laptop Pavillion', 50000, 'Laptop Hp Pavillion', '12039452_525963140912391_6353341236808813360_n.png', 'Laptop Hp Pavillion'),
(8, 1, 4, 'Sony', 40000, 'Sony Mobile', 'sony mobile.jpg', 'sony mobile'),
(9, 1, 3, 'iPhone New', 12000, 'iphone', 'white iphone.png', 'iphone apple mobile'),
(10, 2, 6, 'Red Ladies dress', 1000, 'red dress for girls', 'red dress.jpg', 'red dress '),
(11, 2, 6, 'Blue Heave dress', 1200, 'Blue dress', 'images.jpg', 'blue dress cloths'),
(13, 2, 6, 'SpringAutumnDress', 1200, 'girls dress', 'Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'girl dress'),
(14, 2, 6, 'Casual Dress', 1400, 'girl dress', 'download.jpg', 'ladies cloths girl'),
(15, 2, 6, 'Formal Look', 1500, 'girl dress', 'shutterstock_203611819.jpg', 'ladies wears dress girl'),
(16, 3, 6, 'Sweter for men', 600, '2012-Winter-Sweater-for-Men-for-better-outlook', '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'black sweter cloth winter'),
(17, 3, 6, 'Gents formal', 1000, 'gents formal look', 'gents-formal-250x250.jpg', 'gents wear cloths'),
(19, 3, 6, 'Formal Coat', 3000, 'ad', 'images (1).jpg', 'coat blazer gents'),
(20, 3, 6, 'Mens Sweeter', 1600, 'jg', 'Winter-fashion-men-burst-sweater.png', 'sweeter gents '),
(21, 3, 6, 'T shirt', 800, 'ssds', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', 'formal t shirt black'),
(22, 4, 6, 'Yellow T shirt ', 1300, 'yello t shirt with pant', '1.0x0.jpg', 'kids yellow t shirt'),
(23, 4, 6, 'Girls cloths', 1900, 'sadsf', 'GirlsClothing_Widgets.jpg', 'formal kids wear dress'),
(24, 4, 6, 'Blue T shirt', 700, 'g', 'images.jpg', 'kids dress'),
(25, 4, 6, 'Yellow girls dress', 750, 'as', 'images (3).jpg', 'yellow kids dress'),
(26, 0, 0, 'Skyblue dress', 625, '<p>nbk</p>', '', 'skyblue kids dress'),
(27, 0, 0, 'Formal look', 600, '<p>sd</p>', '', 'formal kids dress'),
(32, 5, 0, 'Book Shelf', 2500, 'book shelf', 'furniture-book-shelf-250x250.jpg', 'book shelf furniture'),
(34, 6, 4, 'Emergency Light', 1000, 'Emergency Light', 'emergency light.JPG', 'emergency light'),
(35, 6, 0, 'Vaccum Cleaner', 6000, 'Vaccum Cleaner', 'images (2).jpg', 'Vaccum Cleaner'),
(36, 6, 5, 'Iron', 1500, 'gj', 'iron.JPG', 'iron'),
(37, 6, 5, 'LED TV', 20000, 'LED TV', 'images (4).jpg', 'led tv lg'),
(38, 6, 4, 'Microwave Oven', 3500, 'Microwave Oven', 'images.jpg', 'Microwave Oven'),
(39, 6, 5, 'Mixer Grinder', 2500, 'Mixer Grinder', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'Mixer Grinder'),
(40, 2, 6, 'Formal girls dress', 3000, 'Formal girls dress', 'girl-walking.jpg', 'ladies');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(255) NOT NULL,
  `user_id` int(100) NOT NULL,
  `payment_id` int(100) NOT NULL,
  `order_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `user_id`, `payment_id`, `order_id`) VALUES
(10000, 4, 0, 0),
(10001, 4, 104, 241),
(10002, 4, 105, 242),
(10003, 4, 106, 243),
(10004, 4, 107, 244),
(10005, 4, 108, 245),
(10006, 4, 109, 246),
(10007, 4, 110, 247),
(10008, 4, 111, 248),
(10009, 4, 112, 249),
(10010, 4, 113, 250),
(10011, 4, 114, 251),
(10012, 4, 115, 252),
(10013, 4, 116, 253),
(10014, 4, 117, 254),
(10015, 4, 118, 255),
(10016, 4, 119, 256),
(10017, 4, 120, 257),
(10018, 4, 121, 258),
(10019, 4, 122, 259),
(10020, 4, 123, 260),
(10021, 4, 124, 261),
(10022, 4, 125, 262),
(10023, 4, 126, 263),
(10024, 4, 127, 264),
(10025, 4, 128, 265),
(10026, 4, 129, 266),
(10027, 4, 130, 267),
(10028, 4, 131, 268),
(10029, 4, 132, 269),
(10030, 4, 133, 270),
(10031, 4, 134, 271),
(10032, 4, 135, 272),
(10033, 4, 136, 273),
(10034, 4, 137, 274),
(10035, 4, 138, 275),
(10036, 4, 139, 276),
(10037, 4, 140, 277),
(10038, 4, 141, 278),
(10039, 4, 142, 279),
(10040, 4, 143, 280),
(10041, 4, 144, 281),
(10042, 4, 145, 282),
(10043, 4, 146, 283),
(10044, 4, 147, 284),
(10045, 4, 148, 285),
(10046, 4, 149, 286),
(10047, 4, 150, 287),
(10048, 4, 151, 288),
(10049, 4, 152, 289),
(10050, 4, 153, 290),
(10051, 4, 154, 291),
(10052, 4, 155, 292),
(10053, 4, 156, 293),
(10054, 4, 157, 294),
(10055, 4, 158, 295),
(10056, 4, 159, 296),
(10057, 4, 160, 297),
(10058, 4, 161, 298),
(10059, 4, 162, 299),
(10060, 4, 163, 300),
(10061, 4, 164, 301),
(10062, 4, 165, 302),
(10063, 4, 166, 303),
(10064, 4, 167, 304),
(10065, 4, 168, 305),
(10066, 4, 169, 306),
(10067, 4, 170, 307),
(10068, 4, 171, 308),
(10069, 4, 172, 309),
(10070, 4, 173, 310),
(10071, 4, 174, 311),
(10072, 4, 175, 312),
(10073, 4, 176, 313),
(10074, 4, 177, 314),
(10075, 4, 178, 315),
(10076, 4, 179, 316),
(10077, 4, 180, 317),
(10078, 4, 181, 318),
(10079, 4, 182, 319),
(10080, 4, 183, 320),
(10081, 4, 184, 321),
(10082, 4, 185, 322),
(10083, 4, 186, 323),
(10084, 4, 187, 324),
(10085, 4, 188, 325),
(10086, 4, 189, 326),
(10087, 4, 190, 327),
(10088, 4, 191, 328),
(10089, 4, 192, 329),
(10090, 4, 193, 330),
(10091, 4, 194, 331),
(10092, 4, 195, 332),
(10093, 4, 196, 333),
(10094, 4, 197, 334),
(10095, 4, 198, 335),
(10096, 4, 199, 336),
(10097, 4, 200, 337),
(10098, 4, 201, 338),
(10099, 4, 202, 339),
(10100, 4, 203, 340),
(10101, 4, 204, 341),
(10102, 4, 205, 342),
(10103, 4, 206, 343),
(10104, 4, 207, 344),
(10105, 4, 208, 345),
(10106, 4, 209, 346),
(10107, 4, 210, 347),
(10108, 4, 211, 348),
(10109, 4, 212, 349),
(10110, 4, 213, 350),
(10111, 4, 214, 351),
(10112, 4, 215, 352),
(10113, 4, 216, 353),
(10114, 4, 217, 354),
(10115, 4, 218, 355),
(10116, 4, 219, 356),
(10117, 4, 220, 357),
(10118, 4, 221, 358),
(10119, 4, 222, 359),
(10120, 4, 223, 360),
(10121, 4, 224, 361),
(10122, 4, 225, 362),
(10123, 4, 226, 363),
(10124, 4, 227, 364),
(10125, 4, 228, 365),
(10126, 4, 229, 366),
(10127, 4, 230, 367),
(10128, 4, 231, 368),
(10129, 4, 232, 369),
(10130, 4, 233, 370),
(10131, 4, 234, 371),
(10132, 4, 235, 372),
(10133, 4, 236, 373),
(10134, 4, 237, 374),
(10135, 4, 238, 375),
(10136, 4, 239, 376),
(10137, 4, 240, 377),
(10138, 4, 241, 378),
(10139, 4, 242, 379),
(10140, 4, 243, 380),
(10141, 4, 244, 381),
(10142, 4, 245, 382),
(10143, 4, 246, 383),
(10144, 4, 247, 384),
(10145, 4, 248, 385),
(10146, 4, 249, 386),
(10147, 4, 250, 387),
(10148, 4, 251, 388),
(10149, 4, 252, 389),
(10150, 4, 253, 390),
(10151, 4, 254, 391),
(10152, 4, 255, 392),
(10153, 4, 256, 393),
(10154, 4, 257, 394),
(10155, 4, 258, 395),
(10156, 4, 259, 396),
(10157, 4, 260, 397),
(10158, 4, 261, 398),
(10159, 4, 262, 399),
(10160, 4, 263, 400),
(10161, 4, 264, 401),
(10162, 4, 265, 402),
(10163, 4, 266, 403),
(10164, 4, 267, 404),
(10165, 4, 268, 405),
(10166, 4, 269, 406),
(10167, 4, 270, 407),
(10168, 4, 271, 408),
(10169, 4, 272, 409),
(10170, 4, 273, 410),
(10171, 4, 274, 411),
(10172, 4, 275, 412),
(10173, 4, 276, 413),
(10174, 4, 277, 414),
(10175, 4, 278, 415),
(10176, 4, 279, 416),
(10177, 4, 280, 417),
(10178, 4, 281, 418),
(10179, 4, 282, 419),
(10180, 4, 283, 420),
(10181, 4, 284, 421),
(10182, 4, 285, 422),
(10183, 4, 286, 423),
(10184, 4, 287, 424),
(10185, 4, 288, 425),
(10186, 4, 289, 426),
(10187, 4, 290, 427),
(10188, 4, 291, 428),
(10189, 4, 292, 429),
(10190, 4, 293, 430),
(10191, 4, 294, 431),
(10192, 4, 295, 432),
(10193, 4, 296, 433),
(10194, 4, 297, 434),
(10195, 4, 298, 435),
(10196, 4, 299, 436),
(10197, 4, 300, 437),
(10198, 4, 301, 438),
(10199, 4, 302, 439),
(10200, 4, 303, 440),
(10201, 4, 304, 441),
(10202, 4, 305, 442),
(10203, 4, 306, 443),
(10204, 4, 307, 444),
(10205, 4, 308, 445),
(10206, 4, 309, 446),
(10207, 4, 310, 447),
(10208, 4, 311, 448),
(10209, 4, 312, 449),
(10210, 4, 313, 450),
(10211, 4, 314, 451),
(10212, 4, 315, 452),
(10213, 4, 316, 453),
(10214, 4, 317, 454),
(10215, 4, 318, 455),
(10216, 4, 319, 456),
(10217, 4, 320, 457),
(10218, 4, 321, 458),
(10219, 4, 322, 459),
(10220, 4, 323, 460),
(10221, 4, 324, 461),
(10222, 4, 325, 462),
(10223, 4, 326, 463),
(10224, 4, 327, 464),
(10225, 4, 328, 465),
(10226, 4, 329, 466),
(10227, 4, 330, 467),
(10228, 4, 331, 468),
(10229, 4, 332, 469),
(10230, 4, 333, 470),
(10231, 4, 334, 471),
(10232, 4, 335, 472),
(10233, 4, 336, 473),
(10234, 4, 337, 474),
(10235, 4, 338, 475),
(10236, 4, 339, 476),
(10237, 4, 340, 477),
(10238, 4, 341, 478),
(10239, 4, 342, 479),
(10240, 4, 343, 480),
(10241, 4, 344, 481),
(10242, 4, 345, 482),
(10243, 4, 346, 483),
(10244, 4, 347, 484),
(10245, 4, 348, 485),
(10246, 4, 349, 486),
(10247, 4, 350, 487),
(10248, 4, 351, 488),
(10249, 4, 352, 489),
(10250, 4, 353, 490),
(10251, 4, 354, 491),
(10252, 4, 355, 492),
(10253, 4, 356, 493),
(10254, 4, 357, 494),
(10255, 4, 358, 495),
(10256, 4, 359, 496),
(10257, 4, 360, 497),
(10258, 4, 361, 498),
(10259, 4, 362, 499),
(10260, 4, 363, 500),
(10261, 4, 364, 501),
(10262, 4, 365, 502),
(10263, 4, 366, 503),
(10264, 4, 367, 504),
(10265, 4, 368, 505),
(10266, 4, 369, 506),
(10267, 4, 370, 507),
(10268, 4, 371, 508),
(10269, 4, 372, 509),
(10270, 4, 373, 510),
(10271, 4, 374, 511),
(10272, 4, 375, 512),
(10273, 4, 376, 513),
(10274, 4, 377, 514),
(10275, 4, 378, 515),
(10276, 4, 379, 516),
(10277, 4, 380, 517),
(10278, 4, 381, 518),
(10279, 4, 382, 519),
(10280, 4, 383, 520),
(10281, 4, 384, 521),
(10282, 4, 385, 522),
(10283, 4, 386, 523),
(10284, 4, 387, 524),
(10285, 4, 388, 525),
(10286, 4, 389, 526),
(10287, 4, 390, 527),
(10288, 4, 391, 528),
(10289, 4, 392, 529),
(10290, 4, 393, 530),
(10291, 4, 394, 531),
(10292, 4, 395, 532),
(10293, 4, 396, 533),
(10294, 4, 397, 534),
(10295, 4, 398, 535),
(10296, 4, 399, 536),
(10297, 4, 400, 537),
(10298, 4, 401, 538),
(10299, 4, 402, 539),
(10300, 4, 403, 540),
(10301, 4, 404, 541),
(10302, 4, 405, 542),
(10303, 4, 406, 543),
(10304, 4, 407, 544),
(10305, 4, 408, 545),
(10306, 4, 409, 546),
(10307, 4, 410, 547),
(10308, 4, 411, 548),
(10309, 4, 412, 549),
(10310, 4, 413, 550),
(10311, 0, 414, 551),
(10312, 4, 415, 552),
(10313, 4, 416, 553),
(10314, 4, 417, 554),
(10315, 4, 418, 555),
(10316, 4, 419, 556),
(10317, 4, 420, 557),
(10318, 4, 421, 558),
(10319, 4, 422, 559),
(10320, 4, 423, 560),
(10321, 4, 424, 561),
(10322, 4, 425, 562),
(10323, 4, 426, 563),
(10324, 4, 427, 564),
(10325, 4, 428, 565),
(10326, 4, 429, 566),
(10327, 4, 430, 567),
(10328, 4, 431, 568),
(10329, 4, 432, 569),
(10330, 4, 433, 570),
(10331, 4, 434, 571),
(10332, 4, 435, 572),
(10333, 4, 436, 573),
(10334, 4, 437, 574),
(10335, 4, 438, 575),
(10336, 4, 439, 576),
(10337, 4, 1, 577),
(10338, 4, 2, 578),
(10339, 4, 3, 579),
(10340, 4, 4, 580),
(10341, 4, 5, 581),
(10342, 4, 6, 582);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(4, 'Bibin', 'Mathew', 'mathew2221@gm.com', '25f9e794323b453885f5181f1b624d0b', '9930808975', 'assda dasasassa dasdas adsdas', 'sdadas ddas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10343;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
