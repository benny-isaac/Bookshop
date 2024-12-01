-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 02:52 AM
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
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `store` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `genre`, `price`, `file_path`, `store`, `created_at`, `updated_at`) VALUES
(1, 'The Lord of the Rings', 'J. R. R. Tolkien', 'For the first time ever, a very special edition of the classic masterpiece, with the complete text and illustrated throughout by the author himself.\r\n\r\nSince it was first published in 1954, The Lord of the Rings has been a book people have treasured. Steeped in unrivalled magic and otherworldliness, its sweeping fantasy and epic adventure has touched the hearts of young and old alike. Over 150 million copies of its many editions have been sold around the world, and occasional collectors’ editions become prized and valuable items of publishing.\r\n\r\nThis one-volume eBook edition contains the complete text and features, for the very first time, thirty illustrations, maps and sketches drawn by Tolkien himself as he composed this epic work. These include the pages from the Book of Mazarbul, reproduced to accompany the famous ‘Bridge of Khazad-dum’ chapter. Also appearing are two full-size maps drawn by Christopher Tolkien revealing all the detail of Middle-earth.\r\n\r\nSympathetically packaged to reflect the classic look of the first edition, this new eBook edition will prove irresistible to old and new fans alike.', 'Adventure', 900.00, 'books/DTV3pgDFgKY1vg5ZBhGSOLKenNAb901qCx4fpphY.png', 'Manhattan', '2024-11-26 16:27:39', '2024-11-26 16:37:46'),
(2, 'Married In Name Only', 'Paisely Morgan', 'Paisley Morgan just discovered that Texas’s most infamous billionaire could be her real father. Now she needs the help of her infuriating and incredibly sexy ex, investigator Lucas Ford. But Lucas will accept only one payment: Paisley’s hand in marriage. But will his thirst for revenge outlast their passion-filled nights as Paisley proves to be much more than a wife in name only?', 'Romance', 500.00, 'books/1732639237_6745fa0583921.jpg', 'Queens', '2024-11-26 16:40:37', '2024-11-26 16:40:37'),
(3, 'Hot Texas Night', 'Aria Jensen', 'And just like that, Aria Jensen reunites with her longtime friend, commitment-shy Ethan Barringer. They’re working together on the new Texas Cattleman’s Club in Houston. Why not leave the friend zone and have a little fun? But their no-strings fling deepens when Ethan steps in as her fake fiancé…to keep her father from forcing her to marry! Will Aria gamble her heart in this high-stakes game?', 'Romance', 699.99, 'books/1732639344_6745fa70996fa.jpg', 'Staten Island', '2024-11-26 16:42:24', '2024-11-26 16:42:24'),
(4, 'Harry Potter and the Goblet of Fire', 'J.K Rowling', 'Stephen Fry brings the richness of these magical stories to life in the original British recordings.\r\n\r\n\'There will be three tasks, spaced throughout the school year, and they will test the champions in many different ways ... their magical prowess - their daring - their powers of deduction - and, of course, their ability to cope with danger.\'\r\n\r\nTreat your ears to a performance so rich and captivating you\'ll imagine yourself in the halls of Hogwarts. Wherever you listen, the unmistakable voice of Stephen Fry is guaranteed to guide you ever more deeply into this magical story and transport you to the heart of the adventure.\r\n\r\nThe Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesn\'t stop Harry dreaming that he will win the competition. Then at Hallowe\'en, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!\r\n\r\nTheme music composed by James Hannigan\r\n\r\nHaving become classics of our time, the Harry Potter stories never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new listeners.', 'Adventure', 750.99, 'books/1732639587_6745fb63d4f81.jpg', 'Brooklyn', '2024-11-26 16:46:27', '2024-11-26 16:46:27'),
(5, 'The Max Porter Box Set: Volume 1', 'Max Porter', 'Delve into a world both Real and Supernatural when North Carolina history mixes with the paranormal in this pulse-pounding series. The Max Porter Paranormal Mysteries is a highly addictive series that\'ll keep you turning pages late into the night. Fun, funny, suspenseful, and scary, this omnibus edition includes the first THREE books in the bestselling series with hundreds of excitement-filled pages!\r\n\r\n\"Southern Bound gets it right! A great blend of ghosts and gumshoes. If you like haunting mysteries you\'ll love Southern Bound!\" - Edgar-nominated author, Joel Goldman', 'Novel', 500.00, 'books/1732639771_6745fc1b078ff.jpg', 'The Bronx', '2024-11-26 16:49:31', '2024-11-26 16:49:31'),
(6, 'Sister Witches Of Raven Falls Cozy Mystery Series, Books 1-3', 'Nix Haliwell', 'Welcome to Raven Falls, where four sisters—Spring, Summer, Autumn, & Winter—run their witchy shop, Conjure, and find themselves up to their magickal tea cups in murder, mystery, and romance!', 'Dark', 480.99, 'books/1732639932_6745fcbc54457.jpg', 'Rochester', '2024-11-26 16:52:12', '2024-11-26 16:52:12');

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
(4, '2024_11_25_224522_create_stores_table', 1),
(5, '2024_11_26_013457_create_books_table', 1),
(6, '2024_11_26_105636_create_sales_table', 1),
(7, '2024_11_26_160245_add_genre_to_sales_table', 1);

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
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `totalPrice` decimal(15,2) NOT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `card_num` varchar(255) NOT NULL,
  `expiration` varchar(255) NOT NULL,
  `cvv` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `store`, `title`, `author`, `quantity`, `price`, `email`, `address`, `totalPrice`, `zip`, `date`, `name`, `card_num`, `expiration`, `cvv`, `created_at`, `updated_at`, `genre`) VALUES
(1, 'Brooklyn', 'The Hobbit', 'J.R.R. Tolkien', 9, 55.80, 'price.judge@steuber.com', '76626 Rosenbaum Plains\nNew Coy, MN 23934-8574', 502.20, '49853', '2023-11-20', 'Myra Pacocha PhD', '4024007187281125', '07/27', '543', NULL, NULL, 'Fantasy'),
(2, 'Brooklyn', 'The Hunger Games', 'Suzanne Collins', 2, 52.15, 'omoore@hotmail.com', '9373 Kuhlman Greens\nFraneckichester, MS 08618-6647', 104.30, '62723-9093', '2023-06-13', 'Mireille Mraz', '2326759206797445', '01/25', '664', NULL, NULL, 'Dystopian'),
(3, 'Brooklyn', 'The Hobbit', 'J.R.R. Tolkien', 10, 91.91, 'hoeger.ola@gutkowski.com', '4101 Allan Throughway Apt. 189\nRowlandchester, CA 83440', 919.10, '85816-3978', '2022-04-28', 'Deon Bergnaum', '5497898669620888', '03/25', '865', NULL, NULL, 'Fantasy'),
(4, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 1, 46.41, 'angelina.langosh@yahoo.com', '3460 Javon Mall Apt. 185\nMarianneberg, NC 58809', 46.41, '69662', '2020-03-31', 'Mr. Lamont Sanford', '4493872570448', '10/27', '939', NULL, NULL, 'Non-fiction'),
(5, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 5, 96.80, 'mohr.ayana@yahoo.com', '64847 Wiegand Circles\nIsmaelshire, KY 11296', 484.00, '35128-1483', '2014-01-05', 'Mr. Keeley Adams', '5372941703791263', '08/27', '979', NULL, NULL, 'Adventure'),
(6, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 4, 67.85, 'howe.efrain@hotmail.com', '99912 Dickens Cliffs Suite 851\nMaynardborough, IL 63099', 271.40, '76796-3723', '2022-02-15', 'Larue Schuppe', '2521865843329840', '03/25', '245', NULL, NULL, 'Fantasy'),
(7, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 5, 39.00, 'elda27@weissnat.com', '199 Marietta Freeway\nNorth Davonteburgh, NJ 02883', 195.00, '06039-6798', '2021-08-24', 'Cole Goldner', '4403427598233807', '11/26', '233', NULL, NULL, 'Fiction'),
(8, 'Brooklyn', 'The Catcher in the Rye', 'J.D. Salinger', 7, 80.09, 'fparisian@gmail.com', '213 Lebsack Bridge Suite 753\nWest Lillian, MT 85560', 560.63, '49666-2667', '2024-07-22', 'Deron Ledner I', '4716587167580557', '01/27', '441', NULL, NULL, 'Fiction'),
(9, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 9, 73.17, 'jamir.oberbrunner@yahoo.com', '7346 Eladio Rue\nNew Loma, MS 53840-9684', 658.53, '17865-8381', '2014-08-17', 'Elva Herman MD', '4485113761946869', '07/27', '920', NULL, NULL, 'Adventure'),
(10, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 6, 14.29, 'alan.schaefer@gmail.com', '7550 Magdalena Lane Apt. 781\nNehaberg, CA 51207', 85.74, '79984', '2011-06-21', 'Mr. Jerrell Yost Sr.', '4556220462908835', '09/26', '691', NULL, NULL, 'Fiction'),
(11, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 2, 33.66, 'tveum@rogahn.com', '8809 Becker Port\nNedtown, AZ 33023-4397', 67.32, '97472', '2021-01-23', 'Eriberto Rowe Sr.', '4532868322875385', '04/26', '626', NULL, NULL, 'Adventure'),
(12, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 4, 49.76, 'lori12@yahoo.com', '169 Meaghan Causeway Suite 012\nLake Calista, KS 92946-5189', 199.04, '78422-8818', '2011-02-26', 'Savanah Reinger', '2520497706979767', '01/27', '141', NULL, NULL, 'Non-fiction'),
(13, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 10, 51.12, 'reta23@wisozk.com', '333 Darion Forks Suite 667\nLake Eloy, HI 58271', 511.20, '34773-5351', '2024-05-28', 'Charley Herman', '6011664363794790', '02/26', '313', NULL, NULL, 'Thriller'),
(14, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 9, 83.24, 'ebruen@friesen.info', '1162 Mertz Islands\nEffertztown, KY 90283', 749.16, '45216-4605', '2013-07-18', 'Salvatore Boehm', '4024007167062701', '01/25', '974', NULL, NULL, 'Adventure'),
(15, 'Brooklyn', 'The Hobbit', 'J.R.R. Tolkien', 6, 38.77, 'cremin.esteban@yahoo.com', '80701 Godfrey Haven Apt. 915\nPort Anahitown, IL 11815', 232.62, '02354-1979', '2023-08-18', 'Katlyn Von', '6011190507253535', '04/27', '242', NULL, NULL, 'Fantasy'),
(16, 'Brooklyn', 'The Book Thief', 'Markus Zusak', 1, 35.24, 'huel.zachary@medhurst.com', '1130 Langworth Path Suite 176\nSouth Warrenstad, AL 89223', 35.24, '36553', '2016-01-19', 'Shanelle Witting DDS', '4716938740965882', '11/26', '604', NULL, NULL, 'Historical Fiction'),
(17, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 1, 78.01, 'lorena.stanton@schaefer.com', '681 Crist Overpass Apt. 116\nSouth Baronberg, MA 22922-1626', 78.01, '98828', '2018-03-10', 'Lisandro Balistreri III', '4940722196744621', '11/26', '961', NULL, NULL, 'Adventure'),
(18, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 7, 55.38, 'aletha.langosh@murazik.com', '94279 Elsa Bridge\nLake Florianberg, WY 61250', 387.66, '92898-0057', '2019-01-28', 'Sunny Weber', '4044457879051540', '11/26', '876', NULL, NULL, 'Adventure'),
(19, 'Brooklyn', '1984', 'George Orwell', 3, 64.75, 'thompson.marisa@gmail.com', '328 Arnoldo Bridge\nRaynorberg, LA 40047-6054', 194.25, '88229-7469', '2020-12-22', 'Kaycee Schowalter', '4556782629163', '07/27', '559', NULL, NULL, 'Dystopian'),
(20, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 6, 31.51, 'prohaska.aliza@gmail.com', '826 Nova Vista Suite 987\nJaquelinland, OR 08063-2689', 189.06, '78390', '2018-05-20', 'Mr. Soledad Hoeger', '4485662395741542', '03/27', '324', NULL, NULL, 'Thriller'),
(21, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 9, 63.73, 'reynolds.river@gmail.com', '53679 Steuber Mountain Suite 388\nSouth Geraldinetown, GA 29376-0044', 573.57, '09944', '2021-03-11', 'Stephan D\'Amore', '2564455947805289', '01/25', '983', NULL, NULL, 'Fiction'),
(22, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 7, 44.19, 'jeromy.stark@dubuque.net', '424 Salvatore Glens Suite 711\nErnaberg, GA 88048', 309.33, '67115-6657', '2018-11-03', 'Lisa Legros I', '2221700299125868', '11/26', '732', NULL, NULL, 'Fantasy'),
(23, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, 96.24, 'abshire.valentine@sauer.com', '7423 Curt Junctions\nEast Mercedes, VA 93986', 481.20, '65388-2698', '2013-11-04', 'Brandt Parker II', '4556396860040221', '06/25', '335', NULL, NULL, 'Fiction'),
(24, 'Brooklyn', 'The Hunger Games', 'Suzanne Collins', 7, 44.96, 'johnson.chloe@hotmail.com', '5825 Turner Trail\nStantonfort, VA 83978-9815', 314.72, '95823-5532', '2024-11-04', 'Keshaun Anderson PhD', '5384833951998623', '04/26', '428', NULL, NULL, 'Dystopian'),
(25, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 8, 91.88, 'wilkinson.lauretta@cole.com', '1679 Lang Lock\nSouth Nona, NY 61074-9473', 735.04, '69735', '2017-01-13', 'Doyle Feeney', '2720180224011754', '09/26', '462', NULL, NULL, 'Thriller'),
(26, 'Brooklyn', 'The Book Thief', 'Markus Zusak', 2, 86.86, 'ortiz.nico@dickens.biz', '3886 Carroll Lights\nSouth Kadinport, NM 63530', 173.72, '62261', '2015-05-23', 'Ada Homenick', '4539900103892256', '07/25', '868', NULL, NULL, 'Historical Fiction'),
(27, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 2, 30.18, 'dickinson.corine@hotmail.com', '569 Franecki Burg Apt. 012\nNew Delmertown, RI 25638', 60.36, '69288-8426', '2024-11-10', 'Lindsey Bernier', '5310664212099300', '10/26', '721', NULL, NULL, 'Thriller'),
(28, 'Brooklyn', 'The Catcher in the Rye', 'J.D. Salinger', 3, 87.29, 'shoeger@yahoo.com', '55487 Beatty Well\nNew David, DC 16655', 261.87, '11488-6479', '2022-01-15', 'Dr. Connor Stehr', '5555331037955884', '04/26', '211', NULL, NULL, 'Fiction'),
(29, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 1, 78.46, 'sanford.bettye@hotmail.com', '89209 Prohaska Port Suite 378\nNew Ottilieberg, NM 35700-9384', 78.46, '23455', '2011-10-25', 'Paolo Schiller', '4024007171008880', '01/25', '955', NULL, NULL, 'Fiction'),
(30, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 10, 84.24, 'rosa.powlowski@hotmail.com', '504 Simonis Roads Suite 279\nMaeveside, WI 19578-8341', 842.40, '50531-3993', '2021-07-08', 'Rebeka Borer', '4532984557381757', '02/26', '465', NULL, NULL, 'Non-fiction'),
(31, 'Brooklyn', '1984', 'George Orwell', 8, 78.65, 'hills.lew@deckow.net', '3399 Braun Lights\nNorth Gay, NJ 38983', 629.20, '65635-0526', '2015-10-27', 'Mr. Salvatore Spencer', '4716114730200587', '12/24', '196', NULL, NULL, 'Dystopian'),
(32, 'Brooklyn', '1984', 'George Orwell', 8, 99.92, 'lera34@bauch.com', '14619 Palma Gateway Suite 083\nSouth Ford, SD 01650-9954', 799.36, '61775-6518', '2017-03-01', 'Amira Nienow', '5499997334059999', '12/26', '963', NULL, NULL, 'Dystopian'),
(33, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 3, 31.24, 'qswift@yahoo.com', '69444 Forrest Mountain\nEast Dewayne, NC 49904', 93.72, '29605-7303', '2013-02-02', 'Prof. Damien Goyette', '4916792251401268', '10/26', '499', NULL, NULL, 'Thriller'),
(34, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 1, 15.44, 'mnicolas@klocko.net', '6790 Bill Mountain Suite 953\nBrendenview, SC 79046-7356', 15.44, '36108-3699', '2021-01-14', 'Brannon Reilly', '4556523478505481', '07/26', '399', NULL, NULL, 'Adventure'),
(35, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 1, 50.06, 'lorena.bosco@hotmail.com', '388 Jillian Port\nNorth Rocioburgh, MI 76105-3798', 50.06, '88972-7354', '2022-07-29', 'Mr. Charlie Corwin MD', '4716293247675257', '08/27', '340', NULL, NULL, 'Non-fiction'),
(36, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 4, 21.94, 'pacocha.gretchen@spinka.net', '3034 Bradly Forge Suite 123\nAyanaport, KY 81770-8280', 87.76, '60580-9184', '2016-11-07', 'Letha Williamson PhD', '2504059655648437', '10/25', '308', NULL, NULL, 'Adventure'),
(37, 'Brooklyn', 'Pride and Prejudice', 'Jane Austen', 10, 26.26, 'bflatley@satterfield.com', '79700 Mills Square Apt. 430\nPort Caseyfurt, RI 38819-8131', 262.60, '06400-5576', '2023-06-01', 'Ronny O\'Kon', '4929930848428650', '08/27', '685', NULL, NULL, 'Romance'),
(38, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 7, 74.72, 'stokes.erick@yahoo.com', '188 Queen Isle Apt. 971\nEast Juanita, NE 03482', 523.04, '08687-8748', '2015-01-30', 'Marianna Heller DDS', '4556504576173158', '01/27', '652', NULL, NULL, 'Fiction'),
(39, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 4, 93.96, 'purdy.oren@ferry.info', '19728 Nolan Shores Suite 906\nHayesshire, DC 06954-1544', 375.84, '73841', '2017-10-12', 'Kayleigh Grady', '2550193916325916', '12/24', '546', NULL, NULL, 'Adventure'),
(40, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 8, 12.64, 'eyundt@hotmail.com', '1426 Buckridge Track\nPort Daphneberg, KY 27617-9662', 101.12, '77292', '2019-07-25', 'Willy Thiel', '3528510515580327', '08/25', '698', NULL, NULL, 'Non-fiction'),
(41, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 5, 62.28, 'adalberto.feest@gmail.com', '58349 Isabella Ville Apt. 066\nPort Alexieton, OR 64073', 311.40, '55383-9457', '2024-11-18', 'Shanie Thompson', '5474978829370108', '12/26', '656', NULL, NULL, 'Fiction'),
(42, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 1, 96.81, 'anais01@yost.info', '651 Schmidt Junctions\nD\'Amorefurt, MI 77087-6589', 96.81, '54643-9656', '2022-12-18', 'Karlie Collins', '2221395431438061', '04/27', '989', NULL, NULL, 'Fiction'),
(43, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 9, 27.37, 'abner.hackett@yahoo.com', '133 Pagac Row\nMaynardberg, MD 36939', 246.33, '07584-8545', '2017-09-03', 'Narciso Stoltenberg', '3528973060364879', '08/25', '915', NULL, NULL, 'Fiction'),
(44, 'Brooklyn', 'Pride and Prejudice', 'Jane Austen', 10, 32.38, 'vwalker@gmail.com', '1397 Barrows Landing\nGeovannychester, PA 08069-5704', 323.80, '13320-0301', '2018-07-02', 'Stevie Hermiston', '2648231668777027', '12/25', '376', NULL, NULL, 'Romance'),
(45, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 10, 32.96, 'schmeler.eden@fahey.com', '97025 Friesen Mission\nMosciskistad, ND 74220-4089', 329.60, '86521', '2020-01-18', 'Cassandre Crist', '3589295304728354', '08/27', '510', NULL, NULL, 'Adventure'),
(46, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 8, 27.11, 'trycia.ankunding@bahringer.org', '926 Lurline Stravenue\nWest Magdalen, AZ 91875', 216.88, '32119', '2022-09-04', 'Felicia Corwin', '4929808100404', '10/26', '903', NULL, NULL, 'Thriller'),
(47, 'Brooklyn', 'Becoming', 'Michelle Obama', 6, 63.60, 'imelda00@hotmail.com', '6105 Kessler Flat\nEast Annetteberg, WI 31498', 381.60, '25447-7845', '2018-07-21', 'Dr. Hazel Wunsch', '3589745378107315', '04/26', '426', NULL, NULL, 'Memoir'),
(48, 'Brooklyn', 'Pride and Prejudice', 'Jane Austen', 8, 28.36, 'nlangworth@yahoo.com', '1347 Collier Branch Apt. 019\nTreutelview, UT 49178', 226.88, '27010', '2019-03-20', 'Mrs. Marcella Mosciski', '4716767536428536', '09/25', '166', NULL, NULL, 'Romance'),
(49, 'Brooklyn', 'The Catcher in the Rye', 'J.D. Salinger', 4, 82.74, 'alexanne.prohaska@yahoo.com', '118 Steuber Radial Apt. 889\nWest Edna, NE 95108-9981', 330.96, '92574-2783', '2023-03-01', 'Ursula Hermann', '4563592321866748', '07/26', '685', NULL, NULL, 'Fiction'),
(50, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 4, 84.84, 'gavin64@greenfelder.com', '965 Fiona Drives Suite 962\nPort Cristinaburgh, AR 43314', 339.36, '89355', '2019-06-29', 'Katelyn Stroman I', '5446674051601972', '01/26', '132', NULL, NULL, 'Fiction'),
(51, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 6, 37.25, 'gdaniel@yahoo.com', '9036 Boyle Squares\nParkerfort, NC 56812-7171', 223.50, '59612-6824', '2011-12-11', 'Susie Bayer', '4556166410605512', '01/27', '428', NULL, NULL, 'Non-fiction'),
(52, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 1, 13.22, 'rhuel@yahoo.com', '6196 Ricardo Summit Apt. 945\nNathanaelburgh, GA 45625', 13.22, '18706-9492', '2015-06-02', 'Dr. Justice King II', '2352263877270920', '10/27', '460', NULL, NULL, 'Non-fiction'),
(53, 'Brooklyn', 'The Book Thief', 'Markus Zusak', 10, 44.88, 'brendan51@jerde.com', '4522 Isobel Road\nHuelsview, IA 20523-9472', 448.80, '89172', '2011-02-16', 'Isaiah Stiedemann', '5385330734561041', '10/25', '267', NULL, NULL, 'Historical Fiction'),
(54, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 6, 65.98, 'tlarkin@hotmail.com', '9264 Wyman Squares Suite 105\nSouth Alysonland, VT 64652', 395.88, '22599-8649', '2020-08-24', 'Casandra Leannon', '379271788940914', '12/25', '702', NULL, NULL, 'Fiction'),
(55, 'Brooklyn', 'The Fault in Our Stars', 'John Green', 9, 90.02, 'jaquan49@yahoo.com', '93160 Katrina Falls\nKunzeport, RI 07681', 810.18, '57746-5613', '2023-04-09', 'Dr. Anya Ankunding Jr.', '4024007194810', '04/27', '646', NULL, NULL, 'Romance'),
(56, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 3, 40.71, 'vandervort.cortez@gmail.com', '16460 Rau Skyway Apt. 160\nAliport, DC 11152-8757', 122.13, '19541-3976', '2017-08-03', 'Alan Herzog', '3589784437679675', '11/27', '869', NULL, NULL, 'Adventure'),
(57, 'Brooklyn', 'The Hobbit', 'J.R.R. Tolkien', 10, 86.38, 'ebayer@gmail.com', '221 Abner Square Suite 982\nCarolefort, NC 43660', 863.80, '31020', '2020-06-05', 'Salvatore Spencer', '3528697850463878', '08/26', '773', NULL, NULL, 'Fantasy'),
(58, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 6, 33.49, 'myrtle.gerlach@yahoo.com', '626 Cassie Garden Suite 387\nHegmannmouth, CO 68025', 200.94, '67086-2163', '2011-05-30', 'Clay O\'Hara', '2720244580025715', '06/26', '589', NULL, NULL, 'Non-fiction'),
(59, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 10, 37.64, 'spencer.otho@smitham.org', '693 Alessia Extension Suite 374\nWest Ronnytown, WA 52724', 376.40, '94322', '2015-03-04', 'Mable Rodriguez', '4929304353652163', '07/25', '393', NULL, NULL, 'Fiction'),
(60, 'Brooklyn', 'Pride and Prejudice', 'Jane Austen', 10, 55.34, 'kaela81@stark.com', '43459 Little Rapids Suite 652\nNew Dulceburgh, KY 64455', 553.40, '88894', '2011-01-10', 'Dr. Rebecca Okuneva Sr.', '4024007186215124', '10/25', '115', NULL, NULL, 'Romance'),
(61, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 1, 62.62, 'kshanahan@ruecker.com', '17563 Helena Road\nCollinsmouth, WI 82690', 62.62, '49639', '2017-05-17', 'Prof. Kylee Volkman', '4532552923718430', '11/26', '760', NULL, NULL, 'Adventure'),
(62, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 9, 57.97, 'maudie.schuster@hotmail.com', '345 Oberbrunner Vista Suite 308\nKautzerville, KS 30773-7574', 521.73, '39081', '2013-07-01', 'Luella Bergstrom', '4556638365692539', '09/26', '409', NULL, NULL, 'Fiction'),
(63, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 10, 15.93, 'vladimir65@gerlach.com', '893 Damien Road\nChamplinborough, WA 52168-8908', 159.30, '77778', '2020-08-26', 'Dr. Elmer Schneider', '5460154744616605', '06/27', '700', NULL, NULL, 'Adventure'),
(64, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 1, 20.92, 'walton17@yahoo.com', '470 Reichert Junction\nSchuppemouth, NV 94903', 20.92, '04498', '2021-07-16', 'Mr. Otho Hettinger Sr.', '4024007168468261', '01/26', '951', NULL, NULL, 'Non-fiction'),
(65, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 4, 25.16, 'johann.collins@yahoo.com', '154 Thompson Springs Apt. 915\nTressiebury, NC 37745', 100.64, '78691', '2017-10-01', 'Shemar Hansen', '2221689420133513', '10/25', '586', NULL, NULL, 'Fantasy'),
(66, 'Brooklyn', 'The Book Thief', 'Markus Zusak', 3, 52.94, 'hill.nakia@gmail.com', '35591 Predovic Trafficway Suite 680\nWest Juneberg, TN 62044', 158.82, '32174', '2018-12-31', 'Skyla Terry', '4556633139435570', '08/25', '763', NULL, NULL, 'Historical Fiction'),
(67, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 90.20, 'osvaldo97@gmail.com', '729 Lakin Meadow\nEast Lexiemouth, NJ 56009-2581', 631.40, '34914-2416', '2014-09-10', 'Jany Schinner', '4485973833773272', '08/26', '641', NULL, NULL, 'Fiction'),
(68, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 10, 11.04, 'stevie95@yahoo.com', '704 Roberts Villages\nNew Aidachester, HI 54259', 110.40, '05302', '2014-12-30', 'Karianne Lakin', '5351204377391703', '01/25', '846', NULL, NULL, 'Fantasy'),
(69, 'Brooklyn', 'Pride and Prejudice', 'Jane Austen', 8, 89.92, 'adrien.prohaska@corkery.com', '544 Senger Skyway\nBoyleland, OR 86399-9241', 719.36, '23466-4528', '2011-11-05', 'Dr. Sally Haley', '4539111121962341', '07/26', '527', NULL, NULL, 'Romance'),
(70, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 9, 66.31, 'dustin.romaguera@cole.com', '7289 Olen Trail Suite 499\nWest Tianaview, MT 00331', 596.79, '78589', '2013-12-02', 'Lowell Wintheiser', '4532540783246', '04/26', '283', NULL, NULL, 'Fiction'),
(71, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 1, 99.33, 'eliane.nienow@morar.biz', '72778 Conor Freeway\nWindlerview, ND 97032', 99.33, '85067', '2013-11-05', 'Odie Farrell Jr.', '345164937656419', '09/26', '651', NULL, NULL, 'Fiction'),
(72, 'Brooklyn', 'The Fault in Our Stars', 'John Green', 2, 44.58, 'pollich.erwin@stark.com', '109 Von Cove\nLaverntown, WY 92289-8234', 89.16, '61704-6710', '2024-03-09', 'Hollie Thompson', '4929839967656985', '05/25', '824', NULL, NULL, 'Romance'),
(73, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 4, 25.40, 'dkozey@hotmail.com', '2682 Selina Fall Suite 798\nWest Kraig, TX 24215', 101.60, '67079-7898', '2018-09-30', 'Loy Lindgren V', '4420953163975', '08/26', '196', NULL, NULL, 'Fantasy'),
(74, 'Brooklyn', 'The Book Thief', 'Markus Zusak', 10, 59.17, 'qsatterfield@auer.net', '257 Hansen Cliff\nCathrynshire, RI 73234-7720', 591.70, '02390', '2018-06-10', 'Cordelia Cremin DVM', '3528871432472570', '08/27', '100', NULL, NULL, 'Historical Fiction'),
(75, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 7, 23.52, 'donald00@schuppe.net', '73751 Hoeger Radial\nRaeganstad, CA 09650-0044', 164.64, '63376-2169', '2012-10-27', 'Leta Jerde', '4716547121891599', '08/26', '529', NULL, NULL, 'Non-fiction'),
(76, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 8, 22.01, 'milford60@yahoo.com', '86988 Dibbert Stream\nBlaisebury, ME 83069', 176.08, '80843', '2022-02-08', 'Prof. Dominic Steuber III', '2720371729378190', '08/25', '875', NULL, NULL, 'Adventure'),
(77, 'Brooklyn', 'The Book Thief', 'Markus Zusak', 5, 84.11, 'leopold.wehner@ritchie.com', '7710 Winston Keys\nWest Nolanshire, MN 25041-5480', 420.55, '45636', '2012-06-09', 'Carmine Kunze MD', '6011871020103592', '09/25', '591', NULL, NULL, 'Historical Fiction'),
(78, 'Brooklyn', 'The Hunger Games', 'Suzanne Collins', 9, 99.51, 'ollie45@mann.com', '5862 Tabitha Locks\nJakubowskiborough, CT 66649-2359', 895.59, '73928-1265', '2014-10-04', 'Prof. Rusty Schoen', '3589590444407301', '03/27', '271', NULL, NULL, 'Dystopian'),
(79, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 10, 54.27, 'giovani.friesen@wiegand.org', '3711 Rosenbaum Shore Apt. 903\nJermaineberg, TX 35665', 542.70, '74649-7891', '2019-01-29', 'Dr. Kim Walsh', '2586626268327442', '04/26', '491', NULL, NULL, 'Non-fiction'),
(80, 'Brooklyn', 'The Book Thief', 'Markus Zusak', 5, 18.60, 'hayden03@gmail.com', '920 Rutherford Spurs Suite 262\nNorth Aaronport, NM 89905', 93.00, '10530', '2021-01-08', 'Eugene Braun', '374290083371588', '01/25', '123', NULL, NULL, 'Historical Fiction'),
(81, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 7, 50.34, 'elsa54@yahoo.com', '87531 Jermey Bridge\nNorth Vivienne, NJ 85827', 352.38, '47838', '2013-08-16', 'Leilani Predovic', '4556257441938', '12/25', '427', NULL, NULL, 'Fantasy'),
(82, 'Brooklyn', 'Pride and Prejudice', 'Jane Austen', 5, 14.27, 'florine88@johns.info', '4253 Jude Harbors\nBrandtberg, UT 05265-4387', 71.35, '52362', '2012-09-22', 'Paul Sanford', '4916788621715', '07/26', '479', NULL, NULL, 'Romance'),
(83, 'Brooklyn', 'The Catcher in the Rye', 'J.D. Salinger', 4, 96.50, 'jerrell.mckenzie@gmail.com', '817 Kristopher River Suite 957\nNorth Terrell, NE 82525-7195', 386.00, '50168-3547', '2012-12-24', 'Mr. Wilfred Crist', '4532811837199305', '01/25', '406', NULL, NULL, 'Fiction'),
(84, 'Brooklyn', 'The Fault in Our Stars', 'John Green', 7, 65.08, 'manuel.crist@yahoo.com', '95764 Nichole Gardens\nEast Brennan, PA 78795', 455.56, '55901-3231', '2018-10-06', 'Dr. Janae Frami DVM', '4539414409201683', '05/26', '533', NULL, NULL, 'Romance'),
(85, 'Brooklyn', 'The Hunger Games', 'Suzanne Collins', 5, 39.67, 'jeremy97@yahoo.com', '452 Oberbrunner Rapid\nNew Marilie, VT 03268', 198.35, '93451', '2012-06-05', 'Lora Schmidt', '5227024602101541', '11/27', '685', NULL, NULL, 'Dystopian'),
(86, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 2, 23.03, 'vbartoletti@predovic.org', '413 Grimes Fords Apt. 885\nTremblaytown, GA 01390-9819', 46.06, '69044-7473', '2022-02-16', 'Gertrude Reichel', '4929879575757', '06/26', '674', NULL, NULL, 'Adventure'),
(87, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 5, 54.58, 'bette75@gmail.com', '1500 Duane Mountain\nNikolausbury, CA 83560-0705', 272.90, '82271', '2016-07-20', 'Victoria Schaefer', '4539293211937', '07/25', '753', NULL, NULL, 'Adventure'),
(88, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 6, 89.13, 'sbrekke@gmail.com', '346 Ida Lock\nLake Jacinto, NM 10566', 534.78, '37682-1670', '2022-03-12', 'Berry Leuschke', '4539533486062427', '01/26', '494', NULL, NULL, 'Adventure'),
(89, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 3, 83.98, 'mcglynn.jeramie@gmail.com', '152 Howe Camp\nNew Taylortown, AZ 17996-7615', 251.94, '26724-5031', '2024-11-22', 'Dr. Amber Schimmel', '2593094753196809', '02/25', '490', NULL, NULL, 'Non-fiction'),
(90, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 9, 44.81, 'oswaldo08@medhurst.org', '17243 Kirsten Gardens Suite 339\nRunolfssontown, ND 58107-3582', 403.29, '07996-1865', '2018-09-28', 'Alek Kreiger', '2444922447888210', '06/27', '206', NULL, NULL, 'Fiction'),
(91, 'Brooklyn', 'The Fault in Our Stars', 'John Green', 9, 38.25, 'lblanda@yahoo.com', '3337 Edmund Forks\nNew Lavernfort, NM 60145', 344.25, '28226', '2024-03-24', 'Miss Gabriella Schmitt', '2720554439079931', '12/26', '133', NULL, NULL, 'Romance'),
(92, 'Brooklyn', 'The Catcher in the Rye', 'J.D. Salinger', 7, 47.22, 'anika51@gmail.com', '1198 Klein Dam\nEast Declanview, KY 85250-8402', 330.54, '93408', '2018-02-06', 'Rosemary Rodriguez', '4485704390573', '12/24', '961', NULL, NULL, 'Fiction'),
(93, 'Brooklyn', 'The Hobbit', 'J.R.R. Tolkien', 3, 49.15, 'zheaney@zemlak.com', '49182 Langosh Mission\nOlaftown, SC 80807', 147.45, '35983', '2023-03-08', 'Mr. Randi Huels', '4532735570549', '07/27', '946', NULL, NULL, 'Fantasy'),
(94, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 7, 63.79, 'xblick@hotmail.com', '4307 Carlie Vista\nMarvinland, CO 55658', 446.53, '50851-6828', '2019-03-30', 'Ora Doyle', '2502462409751451', '09/27', '380', NULL, NULL, 'Non-fiction'),
(95, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 6, 81.09, 'tressa10@hotmail.com', '32280 Florine Avenue\nStoltenbergfort, KS 98068', 486.54, '97329', '2022-05-20', 'Yesenia Conroy', '6011643074285520', '06/27', '777', NULL, NULL, 'Fiction'),
(96, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 9, 25.39, 'demetrius.rau@hudson.com', '25385 Ewell Mountain\nRobertshire, OK 73819-1617', 228.51, '92412', '2024-03-24', 'Elyse D\'Amore', '3528390176026450', '03/27', '210', NULL, NULL, 'Adventure'),
(97, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 3, 89.69, 'berry50@quitzon.com', '1654 Loma Court\nZettafort, WY 23926-7887', 269.07, '30759', '2013-05-26', 'Maximus Hand PhD', '5418088896308566', '09/27', '583', NULL, NULL, 'Thriller'),
(98, 'Brooklyn', 'The Catcher in the Rye', 'J.D. Salinger', 8, 29.63, 'gutmann.manley@hotmail.com', '3253 Luz Forges Suite 844\nHudsonview, KS 91941-3033', 237.04, '43664-2606', '2014-08-09', 'Pierce Ullrich', '4024007196371057', '02/27', '600', NULL, NULL, 'Fiction'),
(99, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 9, 23.74, 'shanelle98@hahn.info', '34715 Brekke Ways\nWilkinsontown, WI 58029-5205', 213.66, '12900-6043', '2015-10-23', 'Marianna Paucek', '2221870948798348', '07/26', '838', NULL, NULL, 'Thriller'),
(100, 'Brooklyn', 'The Catcher in the Rye', 'J.D. Salinger', 5, 83.83, 'marcelina75@gmail.com', '7477 Crona Flat\nLamarside, MS 78082-4276', 419.15, '09540', '2021-11-24', 'Vesta Kuhic IV', '6011703122124129', '07/27', '701', NULL, NULL, 'Fiction'),
(101, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 3, 31.68, 'cstroman@yahoo.com', '43161 Sanford Dam Apt. 782\nRolfsonbury, VA 06564', 95.04, '86981', '2011-10-22', 'Agustin Harris', '4716170177653191', '04/25', '265', NULL, NULL, 'Fantasy'),
(102, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1, 66.04, 'cronin.stuart@runolfsdottir.org', '5020 Jaydon Motorway Suite 347\nPort Elisha, OK 48878-2415', 66.04, '20633', '2016-11-27', 'Jeanie Trantow', '5336867470740107', '02/25', '145', NULL, NULL, 'Fantasy'),
(103, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 4, 73.38, 'matilda.moore@schultz.com', '106 Botsford Corner\nNorth Antonietta, WI 11559', 293.52, '51278', '2019-12-31', 'Adelle Kreiger DDS', '4826823910629', '04/25', '259', NULL, NULL, 'Fantasy'),
(104, 'Brooklyn', 'Becoming', 'Michelle Obama', 5, 45.27, 'royal70@daugherty.info', '822 Funk Knolls Suite 680\nNew Darwin, FL 08447', 226.35, '25926-4614', '2019-01-09', 'Dr. Jovan Parker', '2321705487755466', '02/26', '393', NULL, NULL, 'Memoir'),
(105, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 9, 29.09, 'maeve.ratke@hotmail.com', '10676 D\'Amore Harbors\nLaynefort, IA 98287-3677', 261.81, '95280-2955', '2017-02-24', 'Pascale Barrows', '4485632588710', '10/26', '487', NULL, NULL, 'Adventure'),
(106, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 10, 82.93, 'rempel.stefan@feest.org', '412 Gilda Ranch Suite 805\nEast Chelsea, SC 33718', 829.30, '70707', '2019-07-26', 'Lester Schowalter', '5394814561669646', '02/26', '566', NULL, NULL, 'Fiction'),
(107, 'Brooklyn', 'The Fault in Our Stars', 'John Green', 6, 21.32, 'fleannon@hotmail.com', '791 Sanford Villages\nWest Hayliefurt, ME 50255-3562', 127.92, '09668', '2021-02-04', 'Agnes Ledner III', '4532015697491', '05/26', '978', NULL, NULL, 'Romance'),
(108, 'Brooklyn', 'Becoming', 'Michelle Obama', 6, 79.61, 'lillian72@yahoo.com', '910 Creola Loaf Apt. 059\nLake Claire, SD 50433', 477.66, '92381', '2013-11-25', 'Fleta King', '5345200478311250', '07/27', '104', NULL, NULL, 'Memoir'),
(109, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 2, 56.08, 'braun.torrey@schiller.com', '65623 Bashirian Road Suite 367\nTreutelshire, WA 56637-5347', 112.16, '35844-7674', '2011-07-20', 'Mike Armstrong MD', '4024007150149622', '09/27', '158', NULL, NULL, 'Fantasy'),
(110, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 4, 70.18, 'darrell.corwin@moen.org', '5832 Armani Ways Suite 570\nGreenchester, AK 80552-1821', 280.72, '89500-3511', '2012-03-12', 'Eldon Renner', '2544770213266767', '12/26', '194', NULL, NULL, 'Fiction'),
(111, 'Brooklyn', 'The Hunger Games', 'Suzanne Collins', 2, 56.35, 'linda00@hotmail.com', '42676 Retha Port Suite 145\nAntonetteview, CO 88795-4095', 112.70, '35793-6397', '2017-07-23', 'Monica McGlynn', '2658070080240892', '12/26', '714', NULL, NULL, 'Dystopian'),
(112, 'Brooklyn', 'The Hobbit', 'J.R.R. Tolkien', 3, 66.83, 'mohr.ryley@altenwerth.org', '933 Mateo Prairie\nWildermanhaven, TX 27295', 200.49, '08837-0550', '2020-05-16', 'Mrs. Meagan Senger', '6011462867281509', '04/27', '513', NULL, NULL, 'Fantasy'),
(113, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 6, 20.22, 'berge.marcos@rau.org', '11210 Carter Valley\nNorth Adrian, NY 70767', 121.32, '01485', '2015-02-05', 'Dr. Abdullah Stehr Jr.', '4556299424504064', '03/27', '387', NULL, NULL, 'Fantasy'),
(114, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 8, 15.50, 'hjakubowski@walsh.com', '852 O\'Keefe Prairie\nReingerport, MN 92660', 124.00, '15720-4633', '2012-10-02', 'Lorenz Thompson III', '5531206076908318', '09/27', '337', NULL, NULL, 'Fiction'),
(115, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 7, 75.51, 'theresa.strosin@medhurst.com', '927 Darius Stravenue Apt. 636\nKenyonborough, CO 14201-6779', 528.57, '79374', '2015-05-02', 'Demetris Senger', '4556942143267634', '04/27', '109', NULL, NULL, 'Fiction'),
(116, 'Brooklyn', 'The Book Thief', 'Markus Zusak', 1, 79.15, 'hannah95@grady.com', '3042 Stamm Rapid Apt. 743\nWelchberg, IL 31032-8146', 79.15, '10574-1585', '2021-09-21', 'Zander Eichmann Jr.', '6011126141052255', '09/27', '549', NULL, NULL, 'Historical Fiction'),
(117, 'Brooklyn', 'The Hobbit', 'J.R.R. Tolkien', 5, 82.36, 'mckenzie.everette@jacobs.org', '461 Block Course\nCieloton, CT 95153', 411.80, '88539-0432', '2016-08-11', 'Rafaela Hahn', '2545702163882755', '04/27', '672', NULL, NULL, 'Fantasy'),
(118, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 10, 19.11, 'elmira.pagac@okeefe.com', '52213 Wolff Dam Apt. 386\nGroverfort, MT 82563', 191.10, '04553', '2024-04-29', 'Ms. Rae Vandervort', '378273236168875', '11/27', '177', NULL, NULL, 'Fiction'),
(119, 'Brooklyn', 'The Book Thief', 'Markus Zusak', 2, 41.62, 'mschmitt@hotmail.com', '659 Turner Green Suite 999\nNorth Heath, MA 07994', 83.24, '82625-6667', '2018-02-11', 'Dr. Rolando Goodwin V', '2631422726451395', '09/27', '493', NULL, NULL, 'Historical Fiction'),
(120, 'Brooklyn', 'Pride and Prejudice', 'Jane Austen', 9, 36.81, 'herman.ratke@damore.org', '931 Milo Shores Apt. 281\nRemingtonmouth, OR 99145', 331.29, '71826', '2021-04-12', 'Shakira Stiedemann', '374617515565538', '10/25', '216', NULL, NULL, 'Romance'),
(121, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 3, 59.27, 'pat97@yahoo.com', '7475 Anjali Forges\nMacyshire, WI 10292-2126', 177.81, '32998', '2018-06-02', 'Amanda Konopelski', '4024007184606530', '06/26', '420', NULL, NULL, 'Thriller'),
(122, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 7, 66.99, 'spouros@thiel.com', '8464 Simeon Crossroad\nBatztown, PA 77736', 468.93, '74786-8943', '2020-01-24', 'Frances Ortiz', '4929689335001970', '09/26', '570', NULL, NULL, 'Thriller'),
(123, 'Brooklyn', 'Becoming', 'Michelle Obama', 4, 53.42, 'ward.terry@yahoo.com', '8747 Graham Greens Apt. 648\nWest Jessyton, IL 13967-0321', 213.68, '05064', '2014-09-24', 'Thalia Bradtke III', '341598681175957', '09/25', '730', NULL, NULL, 'Memoir'),
(124, 'Brooklyn', 'The Fault in Our Stars', 'John Green', 4, 58.39, 'legros.eudora@wunsch.com', '48368 Agnes Spring Apt. 181\nWest Stephania, MT 21117-6143', 233.56, '07220-8666', '2023-05-18', 'Hellen Tromp', '346471907626697', '11/27', '164', NULL, NULL, 'Romance'),
(125, 'Brooklyn', 'To Kill a Mockingbird', 'Harper Lee', 4, 28.69, 'irowe@hotmail.com', '326 Ona Prairie Apt. 272\nShawnabury, MI 51699-9495', 114.76, '31594', '2017-01-31', 'Abbey Grant', '6011058793427149', '09/27', '523', NULL, NULL, 'Fiction'),
(126, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 7, 74.17, 'okey83@yahoo.com', '30322 Krajcik Lodge Apt. 104\nSouth Aubreychester, WV 64573', 519.19, '63393', '2013-08-22', 'Elinor Rohan', '3528936300291814', '11/26', '143', NULL, NULL, 'Non-fiction'),
(127, 'Brooklyn', 'The Hunger Games', 'Suzanne Collins', 7, 35.79, 'achristiansen@yahoo.com', '1695 Sadye Harbor Suite 531\nRicemouth, NH 23185-7779', 250.53, '07282', '2021-03-24', 'Mason Legros', '2333778711137054', '10/26', '172', NULL, NULL, 'Dystopian'),
(128, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 10, 18.57, 'armstrong.tressie@kozey.biz', '2170 Ova Prairie\nWindlerside, WA 32725', 185.70, '95282-5286', '2023-12-22', 'Rico Bartell', '5318907035119389', '01/25', '329', NULL, NULL, 'Non-fiction'),
(129, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1, 59.77, 'ajerde@yahoo.com', '79796 Keon Drive\nPort Bettyborough, NC 95840-2180', 59.77, '78324', '2014-02-06', 'Maud Nitzsche Sr.', '4532549390708068', '11/26', '892', NULL, NULL, 'Fantasy'),
(130, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 1, 20.92, 'crona.lenny@hotmail.com', '6486 Kautzer Garden Suite 588\nDomenicport, MI 30279-6168', 20.92, '83125', '2023-06-27', 'Prof. Tyrique Strosin', '4929430942489120', '04/25', '126', NULL, NULL, 'Adventure'),
(131, 'Brooklyn', 'Moby-Dick', 'Herman Melville', 4, 57.41, 'areilly@heidenreich.com', '2939 Laron Throughway Apt. 606\nLake Erling, NC 25013', 229.64, '13884', '2021-10-19', 'Ms. Wilhelmine McCullough Sr.', '4485163417612365', '10/27', '799', NULL, NULL, 'Adventure'),
(132, 'Brooklyn', 'The Hunger Games', 'Suzanne Collins', 9, 67.73, 'ashlee75@dooley.com', '882 Vickie Loaf Suite 823\nPort Harryland, MT 74276', 609.57, '69761-9391', '2011-06-14', 'Wilber Stoltenberg', '4024007136266201', '11/26', '431', NULL, NULL, 'Dystopian'),
(133, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 10.16, 'ernest.strosin@gmail.com', '758 Tanya Bridge Apt. 857\nEast Agustina, IL 25979', 71.12, '29504-1229', '2023-06-10', 'Dr. Otilia Reichel', '4716331535852756', '06/26', '140', NULL, NULL, 'Fiction'),
(134, 'Brooklyn', 'The Catcher in the Rye', 'J.D. Salinger', 5, 30.82, 'roob.leanne@hotmail.com', '93718 Marquardt Well\nSouth Johnstad, WY 17577', 154.10, '52301-6206', '2018-11-21', 'Madelynn Bartoletti Jr.', '3589811449697062', '02/25', '309', NULL, NULL, 'Fiction'),
(135, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 8, 43.09, 'yoshiko13@kris.net', '603 Daniel Glen\nNew Dorothy, AR 29036', 344.72, '23485', '2016-05-12', 'Ms. Mollie Price II', '4929188014608809', '06/27', '979', NULL, NULL, 'Fantasy'),
(136, 'Brooklyn', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 10, 14.06, 'markus69@jast.net', '42464 Berge Rapid\nPourosland, RI 17171-8348', 140.60, '79133-9201', '2016-08-11', 'Dr. Francisca Legros', '2221419886654871', '04/26', '955', NULL, NULL, 'Non-fiction'),
(137, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 7, 72.31, 'marguerite74@larkin.com', '313 Vandervort Bridge\nNew Gretchen, VA 32659', 506.17, '39711', '2024-09-29', 'Gabriel Kautzer', '5316345802995396', '10/26', '954', NULL, NULL, 'Fantasy'),
(138, 'Brooklyn', 'Becoming', 'Michelle Obama', 9, 54.64, 'joanny49@stark.com', '588 Nader Union Apt. 435\nHaydenfurt, TX 72083', 491.76, '39565', '2012-09-03', 'Derrick Russel', '2523033604374665', '10/26', '332', NULL, NULL, 'Memoir'),
(139, 'Brooklyn', 'Becoming', 'Michelle Obama', 7, 50.36, 'fweimann@yahoo.com', '6927 Edwardo Track\nNew Garrickburgh, UT 61464', 352.52, '01839', '2018-04-18', 'Eulah Mitchell', '2506888665307941', '09/26', '600', NULL, NULL, 'Memoir'),
(140, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1, 79.27, 'pfannerstill.twila@cronin.net', '62723 Amber Spurs Apt. 080\nZulaufport, MT 86273', 79.27, '54494', '2017-11-16', 'Daija Pacocha', '4916719315704460', '03/27', '743', NULL, NULL, 'Fantasy'),
(141, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 8, 85.90, 'emanuel.toy@johns.com', '3748 Waters Track\nAlfordmouth, KS 42433-6206', 687.20, '47585', '2020-02-05', 'Dr. Chet Harber IV', '2577105559688342', '12/26', '176', NULL, NULL, 'Fantasy'),
(142, 'Brooklyn', '1984', 'George Orwell', 3, 27.92, 'goyette.austin@marvin.org', '31437 Reinger Keys\nEast Tressatown, NV 90380', 83.76, '52248', '2021-08-03', 'Jeff Buckridge', '5581336199871801', '09/25', '804', NULL, NULL, 'Dystopian'),
(143, 'Brooklyn', 'The Alchemist', 'Paulo Coelho', 9, 11.60, 'klocko.elvera@hotmail.com', '30100 Linwood Rest Apt. 264\nFerryfort, TN 43651-3124', 104.40, '30936', '2016-11-24', 'Layne Miller DDS', '4959126418744245', '04/25', '346', NULL, NULL, 'Adventure'),
(144, 'Brooklyn', 'The Hobbit', 'J.R.R. Tolkien', 3, 23.31, 'alysson37@klocko.org', '411 McKenzie Street\nPort Nicholas, WY 39851', 69.93, '37101-6985', '2017-05-05', 'Sam Collier', '4967528262345203', '11/24', '871', NULL, NULL, 'Fantasy'),
(145, 'Brooklyn', 'The Hobbit', 'J.R.R. Tolkien', 8, 42.38, 'teresa.rolfson@anderson.net', '52331 Powlowski Ramp Apt. 997\nBodemouth, MT 36216-1763', 339.04, '13134-1147', '2017-10-02', 'Nathaniel Corwin', '6011226574701046', '10/27', '698', NULL, NULL, 'Fantasy'),
(146, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 10, 27.86, 'kassulke.buford@dibbert.net', '38481 Eula Streets Suite 605\nEast Johnathonburgh, IN 64890-9607', 278.60, '67003-1245', '2017-08-07', 'Bernita Beier', '2720394291494013', '03/26', '225', NULL, NULL, 'Fiction'),
(147, 'Brooklyn', 'The Hunger Games', 'Suzanne Collins', 5, 42.22, 'ronny.predovic@johnson.com', '75683 Gorczany Village\nJontown, IL 96216', 211.10, '76479-2407', '2023-07-16', 'Lavada Durgan', '2316844232218400', '06/27', '335', NULL, NULL, 'Dystopian'),
(148, 'Brooklyn', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 8, 83.33, 'shayne92@raynor.biz', '230 Barton Forge\nMalikafurt, LA 75960', 666.64, '34356', '2018-09-18', 'Abraham Predovic', '2343821598020874', '03/25', '144', NULL, NULL, 'Fantasy'),
(149, 'Brooklyn', 'The Da Vinci Code', 'Dan Brown', 10, 98.67, 'howard.zieme@hotmail.com', '30955 Lemke Causeway\nSouth Virginiachester, WA 34621', 986.70, '41353-1201', '2021-08-12', 'Delfina Nitzsche', '3589631672939589', '10/26', '741', NULL, NULL, 'Thriller'),
(150, 'Brooklyn', 'The Great Gatsby', 'F. Scott Fitzgerald', 3, 17.48, 'corkery.tom@johnston.com', '3044 Runolfsdottir Mission Apt. 309\nKentonborough, IN 21212-7580', 52.44, '30022-3483', '2022-06-29', 'Brandon Hettinger Sr.', '4556997616252', '09/26', '860', NULL, NULL, 'Fiction'),
(151, 'Queens', 'Pride and Prejudice', 'Jane Austen', 2, 65.78, 'dubuque.shakira@gmail.com', '57149 Johnston Mount Suite 727\nNorth Domenickbury, NJ 61299', 131.56, '01355', '2017-11-08', 'Ms. Kattie Jerde', '5160836048596854', '09/26', '100', NULL, NULL, 'Romance'),
(152, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, 88.53, 'gpouros@gmail.com', '35776 Mann Gateway Suite 596\nEast Carlos, DC 19954-2526', 442.65, '55714', '2013-07-17', 'Aditya Kreiger', '4485636945337613', '05/27', '584', NULL, NULL, 'Fiction'),
(153, 'Queens', 'Pride and Prejudice', 'Jane Austen', 3, 57.46, 'onitzsche@kirlin.com', '48195 Ashton Ferry Apt. 889\nSouth Estafort, MN 31608-4575', 172.38, '86316', '2022-07-23', 'Elmo Wolf', '4532825322292730', '10/27', '703', NULL, NULL, 'Romance'),
(154, 'Queens', 'The Hunger Games', 'Suzanne Collins', 2, 94.36, 'areynolds@johnston.com', '53866 Schamberger Way\nSouth Oscarside, LA 16386-9123', 188.72, '23387-1324', '2014-11-21', 'Mrs. Kianna Zemlak', '4556701635014635', '11/26', '795', NULL, NULL, 'Dystopian'),
(155, 'Queens', 'The Da Vinci Code', 'Dan Brown', 9, 13.69, 'bkerluke@kuvalis.net', '1125 Prohaska Parks Suite 827\nLarkinview, CO 13030', 123.21, '37021-2260', '2015-06-12', 'Art Dickinson', '4929974730781073', '10/27', '432', NULL, NULL, 'Thriller'),
(156, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 8, 98.54, 'ntorphy@kuphal.com', '83334 Samir Flats\nRebeccaton, ID 00691-9312', 788.32, '02207-9347', '2020-02-22', 'Mr. Felton Carter Sr.', '3589504717257889', '06/26', '315', NULL, NULL, 'Fantasy'),
(157, 'Queens', 'The Fault in Our Stars', 'John Green', 2, 20.07, 'jaskolski.tyson@gmail.com', '4658 Nathan Cliffs Suite 082\nSouth Fannietown, SC 93335-0596', 40.14, '67950', '2015-11-27', 'Angus Hintz', '4761775399341', '07/27', '760', NULL, NULL, 'Romance'),
(158, 'Queens', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 2, 46.30, 'tremblay.steve@hotmail.com', '19464 Corwin Pines\nNew Augustaville, NJ 36601', 92.60, '78020', '2019-07-16', 'Alberto Blanda', '4673771389201835', '06/27', '130', NULL, NULL, 'Non-fiction'),
(159, 'Queens', 'The Catcher in the Rye', 'J.D. Salinger', 3, 99.77, 'kelli.kutch@christiansen.com', '2898 Celia Spurs Apt. 162\nNew Curt, NC 53498-1664', 299.31, '21671', '2013-02-08', 'Prof. Denis Collins I', '4485592023388475', '02/25', '445', NULL, NULL, 'Fiction'),
(160, 'Queens', 'The Alchemist', 'Paulo Coelho', 4, 30.48, 'bernice54@wolff.info', '25267 Charles Forks\nMalindaburgh, AZ 35488', 121.92, '26851', '2022-05-14', 'Lionel Howe', '2516434948454446', '04/27', '955', NULL, NULL, 'Adventure'),
(161, 'Queens', 'Becoming', 'Michelle Obama', 9, 65.04, 'lhodkiewicz@kassulke.com', '7143 Stark Rest\nWest Antone, LA 84383-2224', 585.36, '39794-1329', '2012-06-17', 'Ansel Hand', '3589596741111983', '05/27', '872', NULL, NULL, 'Memoir'),
(162, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 8, 60.84, 'senger.ewell@weimann.com', '168 Toy Pine Apt. 568\nJohnsland, HI 61143', 486.72, '15657', '2023-07-30', 'Winfield Cremin V', '5299882315723544', '05/27', '329', NULL, NULL, 'Fantasy'),
(163, 'Queens', 'The Alchemist', 'Paulo Coelho', 9, 23.49, 'gunnar42@hotmail.com', '94634 Rosenbaum Forest\nNew Armand, NV 90464', 211.41, '19883', '2018-03-11', 'Ms. Joelle Robel PhD', '6011356631614518', '12/26', '455', NULL, NULL, 'Adventure'),
(164, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 90.65, 'mozell81@upton.com', '4925 Ortiz Rue Suite 835\nNorth Ginofort, PA 10836-6818', 634.55, '76627', '2021-04-30', 'Samson Batz V', '2692238251914573', '04/25', '189', NULL, NULL, 'Fiction'),
(165, 'Queens', 'The Book Thief', 'Markus Zusak', 6, 12.32, 'kathryn.rempel@hotmail.com', '456 Lilian Summit\nOsinskifurt, CA 69707-1881', 73.92, '65061-8829', '2011-08-18', 'Melisa Christiansen II', '4716682690434610', '05/25', '827', NULL, NULL, 'Historical Fiction'),
(166, 'Queens', 'The Fault in Our Stars', 'John Green', 1, 85.77, 'douglas.nikko@torphy.com', '4776 Stoltenberg Island Apt. 701\nJaniyamouth, AL 71645-0893', 85.77, '72356', '2015-11-16', 'Jordi Wuckert', '5259663894987686', '08/25', '274', NULL, NULL, 'Romance'),
(167, 'Queens', '1984', 'George Orwell', 4, 35.70, 'koepp.alberta@yahoo.com', '81079 Odell Circle Suite 829\nMullerton, MI 04136-0428', 142.80, '61874', '2022-06-12', 'Jermaine Bechtelar', '2484615041133345', '09/25', '945', NULL, NULL, 'Dystopian'),
(168, 'Queens', 'Moby-Dick', 'Herman Melville', 4, 13.58, 'savannah.becker@hotmail.com', '18239 Frank Plain Suite 958\nNorth Odiehaven, AK 97396-5580', 54.32, '13249', '2012-02-09', 'Easter Anderson', '4916163692422', '01/27', '836', NULL, NULL, 'Adventure'),
(169, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 30.66, 'hortense45@jerde.org', '507 Batz Brook Apt. 789\nLake Kelsie, CT 97865', 214.62, '88115', '2019-02-09', 'Miss Carmella Simonis', '5164994411139921', '08/25', '752', NULL, NULL, 'Fiction'),
(170, 'Queens', 'The Hunger Games', 'Suzanne Collins', 3, 93.32, 'hilma.predovic@hilpert.info', '849 Hilton Cliff Apt. 626\nLake Betty, WA 35830-5172', 279.96, '11740-8738', '2017-01-06', 'Mrs. Alexandra Shanahan', '2221349588176156', '08/26', '518', NULL, NULL, 'Dystopian'),
(171, 'Queens', 'The Alchemist', 'Paulo Coelho', 2, 75.49, 'tierra.harvey@pouros.com', '95736 Giuseppe Track\nNorth Laneyton, TX 23986-4299', 150.98, '48831', '2019-03-17', 'Alex Klocko', '4556871489676373', '08/27', '150', NULL, NULL, 'Adventure'),
(172, 'Queens', 'Becoming', 'Michelle Obama', 6, 89.74, 'friesen.zoie@corwin.com', '356 Shaniya Trail Apt. 583\nWest Angelo, AL 70772', 538.44, '62723', '2019-09-28', 'Sarah Davis', '3589344297344553', '10/26', '720', NULL, NULL, 'Memoir'),
(173, 'Queens', 'To Kill a Mockingbird', 'Harper Lee', 8, 37.83, 'bria58@gmail.com', '1584 Pfeffer Islands Suite 693\nSouth Wava, WV 18629-3728', 302.64, '67408-1750', '2021-04-03', 'Owen Robel', '4539957253123809', '01/27', '164', NULL, NULL, 'Fiction'),
(174, 'Queens', 'The Da Vinci Code', 'Dan Brown', 5, 27.60, 'kiley.beier@purdy.biz', '9433 Brekke Creek\nNorth Lonnie, AK 91423-9008', 138.00, '42095', '2013-10-23', 'Miss Lacey Conroy', '4716661314203205', '12/24', '285', NULL, NULL, 'Thriller'),
(175, 'Queens', 'Becoming', 'Michelle Obama', 5, 53.65, 'connelly.garfield@gmail.com', '10761 Altenwerth Ports\nEast Pierre, GA 32797-9972', 268.25, '58898-1979', '2020-03-29', 'Prof. Roosevelt Bartoletti', '2496208753071881', '05/26', '402', NULL, NULL, 'Memoir'),
(176, 'Queens', 'Becoming', 'Michelle Obama', 2, 50.30, 'griffin72@gerhold.org', '2403 Friesen Isle Suite 801\nPresleystad, MI 81928', 100.60, '31188-1874', '2011-08-14', 'Dr. Anthony Wuckert', '4532024448118', '02/25', '380', NULL, NULL, 'Memoir'),
(177, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 10, 87.84, 'nader.parker@wiegand.com', '76390 Celestino Point\nLurlinefurt, MT 63443-0513', 878.40, '29588', '2015-04-25', 'Prof. Mose Walker', '4024007174133917', '02/27', '418', NULL, NULL, 'Fantasy'),
(178, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 79.39, 'pearline.schulist@jakubowski.biz', '751 Michale Row\nLoismouth, MS 60397', 555.73, '09539-9953', '2018-08-05', 'Cleveland Harvey II', '344970428125669', '01/27', '749', NULL, NULL, 'Fiction'),
(179, 'Queens', 'Moby-Dick', 'Herman Melville', 8, 19.86, 'adan.grady@yahoo.com', '34480 Goodwin Pines Suite 867\nLilaborough, CT 85518', 158.88, '94917', '2019-12-08', 'Isaias Veum', '4637583550799017', '03/26', '145', NULL, NULL, 'Adventure'),
(180, 'Queens', 'The Hunger Games', 'Suzanne Collins', 8, 44.05, 'nolan.macy@casper.biz', '95013 Shaun Summit\nSantiagobury, MD 07305', 352.40, '31663-7776', '2021-08-15', 'Layne Murray', '4556373913289014', '04/26', '632', NULL, NULL, 'Dystopian'),
(181, 'Queens', 'Pride and Prejudice', 'Jane Austen', 6, 62.67, 'ywilderman@botsford.com', '565 Senger Lane\nEast Kaylah, WV 58821-6188', 376.02, '59702', '2017-08-25', 'Eli Kuvalis', '3589934080979894', '11/26', '195', NULL, NULL, 'Romance'),
(182, 'Queens', 'Becoming', 'Michelle Obama', 7, 70.07, 'fhilpert@yahoo.com', '869 Jayden Ferry Apt. 264\nEast Crystelton, VA 41754', 490.49, '09394-1672', '2017-03-01', 'Dr. Ayana Schuppe', '6011218300414119', '08/27', '899', NULL, NULL, 'Memoir'),
(183, 'Queens', 'Moby-Dick', 'Herman Melville', 2, 99.77, 'gutkowski.troy@hotmail.com', '5525 McGlynn Square\nNorth Nikki, ID 27598-9399', 199.54, '37265-3196', '2022-03-28', 'Dorian Blanda', '2221135369207272', '11/25', '468', NULL, NULL, 'Adventure'),
(184, 'Queens', 'The Catcher in the Rye', 'J.D. Salinger', 1, 38.30, 'cummings.coleman@hotmail.com', '36366 Zachery Crest Suite 632\nEast Minervaburgh, AL 12331-2721', 38.30, '36090', '2018-08-19', 'Elmira Shields', '2720142205988152', '07/26', '561', NULL, NULL, 'Fiction'),
(185, 'Queens', 'The Da Vinci Code', 'Dan Brown', 2, 78.86, 'emilia39@hotmail.com', '6576 Turcotte Heights\nWest Delilahfort, LA 70837', 157.72, '69407', '2012-04-27', 'Eliza Nader', '4556374803600740', '04/26', '471', NULL, NULL, 'Thriller'),
(186, 'Queens', 'The Fault in Our Stars', 'John Green', 7, 74.83, 'bahringer.quincy@gmail.com', '7922 Madeline Ranch Suite 450\nNorth Margaritamouth, MO 85311', 523.81, '51959', '2020-11-02', 'Lupe Batz', '2478324053788108', '03/27', '656', NULL, NULL, 'Romance'),
(187, 'Queens', 'Becoming', 'Michelle Obama', 4, 82.13, 'kunde.nettie@hotmail.com', '81218 Kerluke Turnpike Suite 361\nNorth Johnathonberg, ID 95337-2366', 328.52, '80916-3589', '2014-01-03', 'Willard Walsh', '4556748187998590', '09/27', '688', NULL, NULL, 'Memoir'),
(188, 'Queens', 'Moby-Dick', 'Herman Melville', 7, 79.31, 'idouglas@hoppe.com', '9089 Akeem Union\nMayerstad, RI 78803', 555.17, '86087-7893', '2016-12-24', 'Prof. Stuart Marquardt I', '4916128874023140', '07/25', '622', NULL, NULL, 'Adventure'),
(189, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 4, 94.46, 'hgerlach@hotmail.com', '94482 Schaefer Cove\nFelicitahaven, MD 46960', 377.84, '98079-8573', '2024-10-16', 'Dora Goodwin', '346249868570413', '04/26', '909', NULL, NULL, 'Fiction'),
(190, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 3, 43.32, 'efeeney@hermann.com', '84019 Odie Estates Suite 470\nPort Dimitribury, IA 83784', 129.96, '27928-6178', '2013-09-16', 'Olga Wiza Sr.', '2355496659072307', '08/25', '585', NULL, NULL, 'Fantasy'),
(191, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 1, 42.70, 'cummings.giovanna@hotmail.com', '414 Franecki Ford\nBranttown, GA 49504-4921', 42.70, '05093', '2017-06-25', 'Eloise Bradtke', '4532588071823796', '11/25', '743', NULL, NULL, 'Fantasy'),
(192, 'Queens', '1984', 'George Orwell', 7, 64.17, 'hoppe.peggie@zboncak.info', '8456 Zoila Centers\nHilpertfort, AZ 16023-4306', 449.19, '73985-4197', '2016-05-02', 'Jewel Green', '2380151602786516', '04/27', '354', NULL, NULL, 'Dystopian');
INSERT INTO `sales` (`id`, `store`, `title`, `author`, `quantity`, `price`, `email`, `address`, `totalPrice`, `zip`, `date`, `name`, `card_num`, `expiration`, `cvv`, `created_at`, `updated_at`, `genre`) VALUES
(193, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 8, 97.24, 'fritsch.rae@yahoo.com', '1370 Bernita Gateway\nCharleneland, WI 34157', 777.92, '93774-6952', '2017-10-05', 'Osborne Jaskolski', '3589476944854988', '12/24', '110', NULL, NULL, 'Fantasy'),
(194, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 6, 66.50, 'evelyn.shields@wisozk.info', '5603 Eden Fork Suite 445\nEast Odell, OR 95896-2384', 399.00, '59699', '2014-04-16', 'Justus Schinner', '4539482091204794', '07/26', '853', NULL, NULL, 'Fiction'),
(195, 'Queens', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 3, 55.40, 'jeanette.gibson@gmail.com', '16037 Joelle Run Suite 837\nWest Aureliaberg, SD 44996', 166.20, '05727', '2019-01-09', 'Santos Blanda', '2623032347084747', '09/27', '997', NULL, NULL, 'Non-fiction'),
(196, 'Queens', 'The Alchemist', 'Paulo Coelho', 3, 63.33, 'dgoldner@yahoo.com', '619 Veum Lodge\nWittingside, PA 79196-5987', 189.99, '06332', '2017-04-06', 'Dr. Ruth Wilkinson', '4024007169739', '01/25', '524', NULL, NULL, 'Adventure'),
(197, 'Queens', 'The Book Thief', 'Markus Zusak', 7, 21.01, 'xbeier@yahoo.com', '648 Onie Mills Apt. 139\nZboncakberg, KY 00531', 147.07, '75632-7052', '2017-03-26', 'Wilson Doyle', '4485183556767036', '04/25', '579', NULL, NULL, 'Historical Fiction'),
(198, 'Queens', 'Pride and Prejudice', 'Jane Austen', 7, 13.69, 'qjacobi@mann.org', '386 Champlin Spurs\nBoyleview, NJ 80910-2269', 95.83, '06455', '2019-05-30', 'Trycia Hintz Sr.', '341918893923681', '04/27', '738', NULL, NULL, 'Romance'),
(199, 'Queens', 'Pride and Prejudice', 'Jane Austen', 5, 74.49, 'kozey.corrine@gmail.com', '5028 Herzog Mountain\nAngelaburgh, NV 29596', 372.45, '91418', '2023-02-24', 'Mrs. Celia Stehr', '4485328600461348', '04/27', '540', NULL, NULL, 'Romance'),
(200, 'Queens', 'The Hunger Games', 'Suzanne Collins', 7, 17.11, 'lbode@hotmail.com', '44363 Emard Crossing\nNorth Lottiemouth, SC 49788-3377', 119.77, '55513-9788', '2011-02-20', 'Alessia Legros', '4916491098052', '06/25', '728', NULL, NULL, 'Dystopian'),
(201, 'Queens', '1984', 'George Orwell', 9, 78.18, 'brycen95@gmail.com', '349 Dorris Spur\nNew Melisaport, SD 79780', 703.62, '31043', '2023-03-22', 'Chesley Emmerich', '2370279838751749', '08/26', '608', NULL, NULL, 'Dystopian'),
(202, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 9, 80.64, 'uherman@parker.com', '3958 Kyla Via\nMelyssaton, MS 25138', 725.76, '27923-4536', '2017-12-07', 'Jon O\'Hara', '4916460041489783', '09/27', '686', NULL, NULL, 'Fantasy'),
(203, 'Queens', '1984', 'George Orwell', 5, 15.30, 'telly.damore@hotmail.com', '6821 Cummings Estate Apt. 785\nNew Johanna, HI 05894-1524', 76.50, '36481-7433', '2014-11-28', 'Lea Davis PhD', '3589222246450111', '02/25', '877', NULL, NULL, 'Dystopian'),
(204, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, 59.45, 'zane84@gmail.com', '517 Marisol Harbor Apt. 643\nPort Virginiestad, SC 77400', 297.25, '73407-5558', '2024-01-20', 'Geraldine Cremin I', '4507895680103564', '06/26', '387', NULL, NULL, 'Fiction'),
(205, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 3, 88.34, 'braun.vince@luettgen.net', '23306 Elenor Route Suite 445\nLake Brody, ID 20577-6974', 265.02, '59483', '2021-01-30', 'Dr. Ansel Boehm', '2580657137414133', '01/26', '588', NULL, NULL, 'Fantasy'),
(206, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 2, 55.82, 'qrunte@hotmail.com', '15791 Merle Landing Suite 209\nNorth George, AR 42357', 111.64, '33577', '2011-02-14', 'Dario Mertz', '374517090155145', '01/27', '907', NULL, NULL, 'Fantasy'),
(207, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 3, 30.22, 'tierra38@hotmail.com', '650 Gaylord Groves Suite 310\nWest Libby, SC 19459', 90.66, '08677-9377', '2021-02-14', 'Quinten Langosh', '4485864902763742', '08/25', '420', NULL, NULL, 'Fantasy'),
(208, 'Queens', 'To Kill a Mockingbird', 'Harper Lee', 5, 79.45, 'hilpert.keith@gutmann.com', '173 Verdie Junctions Apt. 854\nNew Antonina, MN 43230-6113', 397.25, '21063-7826', '2015-08-18', 'Kylie Rohan I', '4539008566245580', '12/25', '844', NULL, NULL, 'Fiction'),
(209, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 1, 70.70, 'mclaughlin.melody@gmail.com', '7362 Tia Crescent Apt. 963\nPort Sonia, HI 40719', 70.70, '65996', '2024-01-05', 'Pearline Harvey', '2339883341203997', '03/26', '374', NULL, NULL, 'Fiction'),
(210, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 4, 92.68, 'itzel.bartoletti@hotmail.com', '578 Antwan Points Apt. 924\nGaylordfort, MD 76759-2294', 370.72, '03631', '2015-02-04', 'Miss Maya Goldner DDS', '4916738496084468', '10/27', '234', NULL, NULL, 'Fantasy'),
(211, 'Queens', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 9, 35.49, 'willy49@hamill.com', '7490 Labadie Tunnel\nNolanville, VA 59985-7114', 319.41, '25458', '2021-11-28', 'Opal Dooley', '4556212024475908', '03/27', '475', NULL, NULL, 'Non-fiction'),
(212, 'Queens', 'The Alchemist', 'Paulo Coelho', 2, 47.00, 'celestine84@gmail.com', '150 O\'Conner Mills Apt. 714\nLake Ola, AL 26415-0683', 94.00, '52283-1294', '2021-02-12', 'Leopoldo Zemlak', '6011025610487358', '09/25', '143', NULL, NULL, 'Adventure'),
(213, 'Queens', 'The Da Vinci Code', 'Dan Brown', 1, 52.86, 'oceane83@hotmail.com', '10318 Ines Highway Apt. 091\nDooleyport, HI 92110-8784', 52.86, '01754', '2015-12-22', 'Lauriane VonRueden', '4434446304347167', '12/24', '139', NULL, NULL, 'Thriller'),
(214, 'Queens', 'To Kill a Mockingbird', 'Harper Lee', 8, 17.42, 'ekohler@welch.com', '5710 Mayert Mountains\nLake Mariashire, MI 34208', 139.36, '49063', '2012-01-09', 'Sage Pouros III', '2626243758266601', '12/24', '455', NULL, NULL, 'Fiction'),
(215, 'Queens', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 3, 40.52, 'kraig.hettinger@greenfelder.com', '54244 Marquardt Row\nRobertsmouth, NJ 28117', 121.56, '13974-1390', '2022-01-08', 'Edwina Reilly', '4621351078378724', '03/25', '783', NULL, NULL, 'Non-fiction'),
(216, 'Queens', 'Moby-Dick', 'Herman Melville', 7, 74.84, 'ggutmann@hotmail.com', '18984 Adan Ports\nLutherfurt, ID 24216-7939', 523.88, '07060', '2012-12-25', 'Marlene Moen', '4929589058979', '10/25', '339', NULL, NULL, 'Adventure'),
(217, 'Queens', '1984', 'George Orwell', 3, 91.58, 'will.adams@thiel.net', '54815 Wolf Mountain\nJohnsburgh, ME 20471', 274.74, '31810', '2023-05-08', 'Roxane Osinski', '2648500198690565', '09/26', '388', NULL, NULL, 'Dystopian'),
(218, 'Queens', 'The Fault in Our Stars', 'John Green', 1, 53.90, 'jerde.stefanie@gmail.com', '186 Ondricka Land\nNew Kentonland, OH 61579', 53.90, '62100', '2023-07-05', 'Derrick Moore', '375383961298608', '10/25', '860', NULL, NULL, 'Romance'),
(219, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 2, 10.50, 'ngrant@funk.com', '7039 Friesen Haven Suite 796\nLake Rashadville, NV 74605-0537', 21.00, '43702', '2022-05-30', 'Jillian Heaney PhD', '5442734303445679', '03/27', '648', NULL, NULL, 'Fiction'),
(220, 'Queens', 'The Book Thief', 'Markus Zusak', 7, 10.46, 'weissnat.verla@gmail.com', '64245 Jennie Run\nWest Joyce, OH 89002', 73.22, '42040-4986', '2014-08-02', 'Izabella Heller', '3589890528425058', '10/26', '714', NULL, NULL, 'Historical Fiction'),
(221, 'Queens', 'The Hunger Games', 'Suzanne Collins', 1, 29.15, 'rogers.hauck@gmail.com', '4461 Danika Ways Apt. 857\nLake Mablefurt, NH 03872-6316', 29.15, '73353', '2018-04-02', 'Barry Kihn', '4539626267606', '12/25', '772', NULL, NULL, 'Dystopian'),
(222, 'Queens', 'The Fault in Our Stars', 'John Green', 2, 34.70, 'felicia.altenwerth@oberbrunner.com', '854 Cummings Fields\nNorth Deborahfort, NM 29124-6501', 69.40, '40943', '2021-02-03', 'Barbara Hayes', '5122583228737653', '01/25', '391', NULL, NULL, 'Romance'),
(223, 'Queens', 'The Book Thief', 'Markus Zusak', 3, 74.08, 'maribel.gaylord@gutmann.org', '873 Bruen Locks Suite 274\nBoehmview, OK 68142-4373', 222.24, '00764-0310', '2014-06-10', 'Cleve Heaney', '5482427638056599', '03/25', '691', NULL, NULL, 'Historical Fiction'),
(224, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 2, 98.43, 'angelica14@gmail.com', '779 Goldner Forks\nNew Laceyhaven, IN 88681-8577', 196.86, '37017', '2018-02-14', 'Casimer Pfannerstill III', '344189748888282', '02/27', '114', NULL, NULL, 'Fantasy'),
(225, 'Queens', 'Becoming', 'Michelle Obama', 5, 89.94, 'ksimonis@bradtke.com', '7046 Brice Prairie\nSouth Mosheside, AR 74817-1325', 449.70, '75978-8302', '2017-06-14', 'Cornelius Langworth DVM', '4716622787753605', '08/25', '353', NULL, NULL, 'Memoir'),
(226, 'Queens', 'Moby-Dick', 'Herman Melville', 7, 81.75, 'eda53@larkin.org', '5144 Russel Shores\nWiegandshire, WY 42794-5141', 572.25, '56391-4705', '2017-11-14', 'Rosalyn Legros', '2720781229491436', '12/25', '718', NULL, NULL, 'Adventure'),
(227, 'Queens', 'Pride and Prejudice', 'Jane Austen', 10, 79.84, 'willa89@gmail.com', '7246 Leonora Centers Apt. 200\nSwiftville, MI 80143-7303', 798.40, '48620-3430', '2023-11-22', 'Marlene Fisher PhD', '4916275055681129', '05/25', '992', NULL, NULL, 'Romance'),
(228, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 10, 97.28, 'volkman.chase@gmail.com', '8159 Hirthe Loop Apt. 402\nLeannonstad, SC 57116-4804', 972.80, '64898', '2018-11-20', 'Clara VonRueden', '5463190154113532', '12/25', '923', NULL, NULL, 'Fiction'),
(229, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 7, 35.86, 'cruz.schmeler@kuhn.org', '24862 Martin Roads\nBrakusshire, IA 30848', 251.02, '18866', '2021-09-21', 'Kaela Cole', '370268717524164', '12/24', '593', NULL, NULL, 'Fantasy'),
(230, 'Queens', 'To Kill a Mockingbird', 'Harper Lee', 5, 31.11, 'brown.clotilde@breitenberg.org', '16242 Gerlach Wells\nNorth Loma, MA 70262', 155.55, '45928', '2014-07-18', 'Dr. Sid Volkman', '4929257161558560', '06/25', '448', NULL, NULL, 'Fiction'),
(231, 'Queens', 'Moby-Dick', 'Herman Melville', 3, 22.21, 'imohr@hotmail.com', '65259 Otto Tunnel\nWest Westleyland, CT 66816', 66.63, '15626', '2024-10-23', 'Ms. Virginia Mann', '4532457175417907', '10/25', '208', NULL, NULL, 'Adventure'),
(232, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, 70.17, 'bryon73@gerlach.com', '4796 Jacobson Squares\nPort Kattie, MN 27699', 350.85, '95233-7424', '2013-09-01', 'Lavern Bogisich Jr.', '2519542043894873', '08/27', '931', NULL, NULL, 'Fiction'),
(233, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 2, 13.26, 'gavin97@rogahn.com', '414 Murphy Well Apt. 449\nWest Ebonystad, TX 58707', 26.52, '42096', '2015-03-13', 'Myrl O\'Kon', '343065337131717', '03/26', '234', NULL, NULL, 'Fiction'),
(234, 'Queens', 'Pride and Prejudice', 'Jane Austen', 8, 45.48, 'mara.sawayn@spinka.com', '778 Sophia Route Apt. 406\nNorth Judahbury, WA 59176-7257', 363.84, '32975-8282', '2014-01-03', 'Melvina VonRueden', '4024007168446184', '10/25', '148', NULL, NULL, 'Romance'),
(235, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 2, 89.72, 'chanel.cormier@parker.com', '1196 Johnson Isle\nLake Joelle, AL 55029', 179.44, '73960', '2022-05-17', 'Hallie Willms', '2379327263264794', '09/25', '906', NULL, NULL, 'Fiction'),
(236, 'Queens', 'The Alchemist', 'Paulo Coelho', 2, 74.81, 'austen.swift@hoppe.com', '4067 Dalton Ports\nWest Holliefurt, AL 37036-0991', 149.62, '64046', '2019-04-18', 'Prof. Damien Hagenes', '2461677831134443', '08/25', '762', NULL, NULL, 'Adventure'),
(237, 'Queens', 'Becoming', 'Michelle Obama', 5, 50.74, 'okirlin@rolfson.com', '1305 Wintheiser Spur Suite 317\nSouth Jackieburgh, ID 07994', 253.70, '85320-9782', '2022-05-23', 'Thalia Baumbach', '2221448621249150', '01/26', '587', NULL, NULL, 'Memoir'),
(238, 'Queens', 'The Alchemist', 'Paulo Coelho', 7, 93.18, 'stracke.jaylin@hintz.biz', '29161 Joannie Plains Suite 758\nMadisynberg, WV 68677', 652.26, '69045', '2013-01-02', 'Theresia Kovacek', '6011905402260198', '03/26', '845', NULL, NULL, 'Adventure'),
(239, 'Queens', 'The Alchemist', 'Paulo Coelho', 7, 23.67, 'brekke.myah@trantow.org', '1759 Aufderhar Prairie\nWest Aprilberg, NY 00467', 165.69, '48808', '2014-12-03', 'Marlee Jacobson', '5307233392217028', '08/26', '351', NULL, NULL, 'Adventure'),
(240, 'Queens', 'Becoming', 'Michelle Obama', 1, 43.59, 'damaris79@morissette.com', '44844 Adrian Place\nNorth Ila, FL 50280-5134', 43.59, '47679-6141', '2023-10-24', 'Mathias Cole', '370440098162670', '06/27', '291', NULL, NULL, 'Memoir'),
(241, 'Queens', 'The Fault in Our Stars', 'John Green', 7, 68.48, 'xlakin@yahoo.com', '790 Romaguera Lights\nHahnborough, CT 77611-8687', 479.36, '78657-9533', '2019-05-09', 'Nayeli Walker', '4716392065363267', '06/25', '799', NULL, NULL, 'Romance'),
(242, 'Queens', 'The Alchemist', 'Paulo Coelho', 4, 90.50, 'alana.terry@kris.net', '391 Kessler Walk Apt. 874\nNorth Heath, IN 87028', 362.00, '94852-4526', '2019-01-10', 'Mrs. Dora Tillman III', '3589768472492789', '04/26', '373', NULL, NULL, 'Adventure'),
(243, 'Queens', 'The Hunger Games', 'Suzanne Collins', 1, 45.94, 'wolf.colleen@ullrich.info', '251 Leffler Glens\nWest Margaretttown, CT 03993-8002', 45.94, '26100-4550', '2022-10-26', 'Ernest Predovic III', '4837214506409430', '02/26', '206', NULL, NULL, 'Dystopian'),
(244, 'Queens', 'To Kill a Mockingbird', 'Harper Lee', 1, 37.73, 'stephany66@yahoo.com', '22803 Gleichner Ways Apt. 722\nWest Maddison, UT 87354-2434', 37.73, '96715', '2011-06-05', 'Dr. Aniyah Dickinson DVM', '4556752114735927', '02/27', '782', NULL, NULL, 'Fiction'),
(245, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 10, 55.95, 'ruthie.schmeler@smith.com', '7537 Nelda Village Suite 631\nWest Willardchester, WY 54974', 559.50, '36465', '2013-12-25', 'Glennie Cole', '4539796882594950', '09/25', '120', NULL, NULL, 'Fantasy'),
(246, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 3, 76.22, 'schowalter.elias@hotmail.com', '753 Frami Unions\nBiankaborough, NE 99056', 228.66, '57853', '2024-11-24', 'Dr. Sim Littel', '4929995300247898', '01/27', '559', NULL, NULL, 'Fantasy'),
(247, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 9, 82.26, 'konopelski.kennith@kuphal.com', '4131 Sporer Pine Suite 428\nWest Evelynton, NV 92327', 740.34, '12976', '2022-05-13', 'Prof. Alberta Watsica PhD', '5560587949427725', '10/26', '985', NULL, NULL, 'Fiction'),
(248, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 5, 89.26, 'enrique74@hotmail.com', '40945 Brooke Tunnel\nEast Quinton, MD 92363', 446.30, '38069-1593', '2012-01-17', 'Richie Welch', '4485239506669373', '08/27', '703', NULL, NULL, 'Fantasy'),
(249, 'Queens', 'Becoming', 'Michelle Obama', 8, 11.08, 'pollich.dax@kihn.com', '77561 Wiegand Prairie\nFelicitaville, HI 62944-7023', 88.64, '86879-0833', '2024-02-11', 'Bernice Thompson', '2500979082925591', '01/25', '430', NULL, NULL, 'Memoir'),
(250, 'Queens', 'Becoming', 'Michelle Obama', 3, 32.12, 'alford95@hotmail.com', '351 Walsh Valley\nEldamouth, NC 50325-1554', 96.36, '91011-1546', '2011-11-15', 'Dr. Dejon Koch', '6011316885693758', '08/26', '660', NULL, NULL, 'Memoir'),
(251, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, 80.73, 'abagail39@lueilwitz.com', '64146 Tyson View Suite 181\nEast Adan, GA 65470', 403.65, '98890', '2015-06-25', 'Bulah Dicki', '2221032968520868', '12/24', '360', NULL, NULL, 'Fiction'),
(252, 'Queens', 'Pride and Prejudice', 'Jane Austen', 3, 38.40, 'clarissa52@konopelski.com', '841 Jonathan Prairie\nGreenfelderborough, KY 10107', 115.20, '87310-5917', '2012-01-10', 'Keven Hyatt', '5407735849861470', '07/27', '767', NULL, NULL, 'Romance'),
(253, 'Queens', 'The Catcher in the Rye', 'J.D. Salinger', 9, 75.04, 'felipe.kutch@feest.com', '9965 Kunze Ridges Suite 015\nNew Carmenburgh, NJ 23243', 675.36, '95261-8268', '2011-03-10', 'Godfrey Lubowitz', '2440735829202725', '10/26', '983', NULL, NULL, 'Fiction'),
(254, 'Queens', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 4, 79.70, 'jose.murphy@koss.biz', '61757 Blake Run\nNellieshire, CO 38455-5724', 318.80, '17644', '2021-07-08', 'Dr. Sylvia Adams', '3528706647843217', '09/26', '525', NULL, NULL, 'Non-fiction'),
(255, 'Queens', '1984', 'George Orwell', 5, 80.23, 'virgil67@gmail.com', '67591 Maggio View\nEddieville, VT 05243-2820', 401.15, '98437-5266', '2022-08-10', 'Prof. Dwight Mayert III', '348678498079502', '01/26', '243', NULL, NULL, 'Dystopian'),
(256, 'Queens', 'To Kill a Mockingbird', 'Harper Lee', 3, 44.43, 'summer71@ferry.org', '8815 Hamill Well Suite 548\nWeberville, AR 68479-1637', 133.29, '42298-6368', '2019-04-30', 'Prof. Darrin Franecki I', '3589422458999926', '12/26', '856', NULL, NULL, 'Fiction'),
(257, 'Queens', '1984', 'George Orwell', 2, 13.55, 'marilie.bins@becker.net', '42174 Barton Curve Apt. 510\nMyahport, OR 34141-3746', 27.10, '07813-9326', '2015-02-16', 'Elsie Fadel', '4861287286681989', '07/25', '508', NULL, NULL, 'Dystopian'),
(258, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 6, 33.53, 'jules47@kling.com', '477 Nienow Isle Apt. 549\nJanellemouth, LA 32178', 201.18, '25574-7392', '2013-02-13', 'Lillian Hoeger', '4532830580654324', '06/27', '995', NULL, NULL, 'Fantasy'),
(259, 'Queens', 'Moby-Dick', 'Herman Melville', 4, 96.77, 'nkoch@runolfsson.com', '833 Alexandre Burg Apt. 736\nAlveramouth, MD 00981', 387.08, '89856-1539', '2014-04-20', 'Noemi White Sr.', '4556448167768424', '06/25', '155', NULL, NULL, 'Adventure'),
(260, 'Queens', 'To Kill a Mockingbird', 'Harper Lee', 3, 30.44, 'dianna08@yahoo.com', '454 Shany Pine\nPort Era, KS 18665', 91.32, '50402-1129', '2014-01-26', 'Jorge Leannon PhD', '4929512600251', '05/26', '543', NULL, NULL, 'Fiction'),
(261, 'Queens', 'The Alchemist', 'Paulo Coelho', 3, 11.58, 'christelle.franecki@hane.com', '233 McClure Spur\nDouglasborough, ID 93314-3782', 34.74, '45426-8395', '2015-02-18', 'Gino Schimmel', '4556216987253665', '08/27', '706', NULL, NULL, 'Adventure'),
(262, 'Queens', 'The Alchemist', 'Paulo Coelho', 5, 76.96, 'dashawn.brakus@leffler.com', '43217 Ebert Mission\nNorth Michelehaven, CT 74397-4321', 384.80, '73836', '2024-10-29', 'Dallin Ebert', '6011464542030517', '06/25', '486', NULL, NULL, 'Adventure'),
(263, 'Queens', 'The Fault in Our Stars', 'John Green', 1, 83.34, 'kaycee.damore@price.biz', '93915 Aurelia Village Apt. 012\nNew Dorothea, OR 40431', 83.34, '65768-6855', '2024-05-04', 'Destany Mosciski', '5422709115070992', '04/27', '763', NULL, NULL, 'Romance'),
(264, 'Queens', 'Becoming', 'Michelle Obama', 1, 81.45, 'meredith.glover@ohara.com', '592 Mauricio Harbor Suite 826\nKarleestad, AL 78962-9362', 81.45, '50498-7034', '2023-05-16', 'Miss Jessyca Mante', '348006895234209', '02/26', '893', NULL, NULL, 'Memoir'),
(265, 'Queens', 'Becoming', 'Michelle Obama', 10, 20.67, 'ohara.hellen@gmail.com', '19678 Dameon Drive\nPort Koby, TN 59971-4977', 206.70, '87617-1523', '2014-06-12', 'Triston Gleichner', '379778916732013', '02/25', '850', NULL, NULL, 'Memoir'),
(266, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 9, 12.00, 'ukuhic@roob.com', '9146 Dante Station\nPfannerstillport, MN 67599', 108.00, '55590', '2013-04-13', 'Lennie Jacobs', '6011845824577243', '02/27', '669', NULL, NULL, 'Fantasy'),
(267, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 6, 23.83, 'breanna54@hotmail.com', '5418 Grady Courts\nPfefferfurt, AL 17372', 142.98, '93422', '2018-06-15', 'Milo Schowalter IV', '4929424664169747', '05/25', '215', NULL, NULL, 'Fiction'),
(268, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 6, 11.68, 'fanny.grady@hotmail.com', '84596 Bernadine Cliffs\nNew Emmanuelport, UT 07723', 70.08, '57684', '2019-09-14', 'Dwight Fahey Jr.', '2605259415084174', '04/25', '765', NULL, NULL, 'Fantasy'),
(269, 'Queens', 'The Fault in Our Stars', 'John Green', 5, 93.42, 'river33@wuckert.com', '1280 Delta Ford Apt. 246\nAnnabellefurt, PA 30141', 467.10, '83554-9451', '2012-06-05', 'Ulices Johnson', '4024007113369051', '11/25', '738', NULL, NULL, 'Romance'),
(270, 'Queens', 'The Hunger Games', 'Suzanne Collins', 1, 20.82, 'vivien48@bogisich.com', '829 Layne Flats\nSavannachester, IL 98882', 20.82, '94950', '2019-02-18', 'Jasmin Schiller', '3528888005803007', '01/25', '439', NULL, NULL, 'Dystopian'),
(271, 'Queens', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 10, 22.90, 'akeem.cummerata@yahoo.com', '343 Nienow Walk\nWest Ashlynnchester, NE 37123', 229.00, '76698', '2016-12-17', 'Reva Smith', '3528727633108183', '03/27', '504', NULL, NULL, 'Non-fiction'),
(272, 'Queens', 'The Alchemist', 'Paulo Coelho', 9, 58.75, 'regan.corwin@mccullough.com', '761 Price Rest\nWest Nicolette, MD 12175-2176', 528.75, '95859-7332', '2023-11-01', 'Geoffrey Reynolds', '5384316312086783', '08/26', '576', NULL, NULL, 'Adventure'),
(273, 'Queens', 'Moby-Dick', 'Herman Melville', 6, 40.22, 'nayeli36@lindgren.biz', '6351 Koss Walk\nLindgrenview, KY 04408-9034', 241.32, '42780', '2012-05-28', 'Giovani Von', '2610134994258932', '12/25', '918', NULL, NULL, 'Adventure'),
(274, 'Queens', 'Moby-Dick', 'Herman Melville', 2, 85.71, 'iliana26@gmail.com', '6736 Jany Course Apt. 341\nNorth Talia, SC 44476-3815', 171.42, '74628-2306', '2014-12-18', 'Billy Daniel', '3528779941356756', '06/27', '599', NULL, NULL, 'Adventure'),
(275, 'Queens', 'The Fault in Our Stars', 'John Green', 2, 14.51, 'winfield19@effertz.com', '3580 Trantow Vista Suite 099\nManteberg, TX 44651-8958', 29.02, '68818', '2024-08-23', 'Ms. Loraine Gislason', '4916571383995342', '09/25', '921', NULL, NULL, 'Romance'),
(276, 'Queens', 'To Kill a Mockingbird', 'Harper Lee', 4, 53.17, 'iswaniawski@strosin.info', '22498 Considine Prairie\nLake Antwanside, HI 74152-1116', 212.68, '98508-0482', '2017-04-04', 'Mr. Merle Brakus MD', '6011285350551306', '08/25', '830', NULL, NULL, 'Fiction'),
(277, 'Queens', 'The Da Vinci Code', 'Dan Brown', 4, 52.49, 'irenner@torp.com', '2274 Schaefer Trace\nPort Hans, NH 54546-1634', 209.96, '86632', '2017-09-28', 'Kaleb Bode', '2377113490456680', '04/26', '822', NULL, NULL, 'Thriller'),
(278, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 2, 55.47, 'liliana26@skiles.com', '579 Skiles Union\nEbonymouth, MT 18935', 110.94, '89236', '2011-11-14', 'Adrian Schowalter', '4916078646912155', '12/26', '241', NULL, NULL, 'Fantasy'),
(279, 'Queens', 'The Hunger Games', 'Suzanne Collins', 8, 23.07, 'robyn99@mcdermott.com', '58649 Margarett Ford\nNew Marielle, GA 53099', 184.56, '27331-3680', '2016-02-01', 'Alexandria King', '4556852036586752', '11/26', '976', NULL, NULL, 'Dystopian'),
(280, 'Queens', 'The Fault in Our Stars', 'John Green', 4, 44.34, 'barbara.dicki@hotmail.com', '2971 Pansy Isle\nWest Meggie, AZ 94163', 177.36, '89517', '2018-04-05', 'Prof. Elvie Nienow', '2438866715041184', '11/25', '767', NULL, NULL, 'Romance'),
(281, 'Queens', 'The Great Gatsby', 'F. Scott Fitzgerald', 8, 69.97, 'declan.oreilly@hotmail.com', '77554 Schmeler Way Apt. 463\nSchmittchester, AZ 38854-4082', 559.76, '30560-6196', '2021-05-11', 'Isabella Vandervort', '2720190214882312', '10/25', '747', NULL, NULL, 'Fiction'),
(282, 'Queens', 'Moby-Dick', 'Herman Melville', 9, 15.37, 'hilpert.luigi@sanford.com', '535 Ally Brooks\nLake Tressabury, CT 03442-0240', 138.33, '51226', '2017-04-05', 'Prof. Monserrate Hauck Sr.', '4532396957050702', '03/25', '760', NULL, NULL, 'Adventure'),
(283, 'Queens', 'The Alchemist', 'Paulo Coelho', 8, 67.99, 'sylvester.bayer@gmail.com', '36529 Coleman Estates Suite 889\nPort Dawsonview, MT 52899', 543.92, '47737-2220', '2017-12-08', 'Dillan Mertz Jr.', '4539348077841281', '09/26', '831', NULL, NULL, 'Adventure'),
(284, 'Queens', 'To Kill a Mockingbird', 'Harper Lee', 8, 88.08, 'vharris@yahoo.com', '7716 Hill Knoll Suite 135\nO\'Connellburgh, TN 64523-6446', 704.64, '29299-0155', '2022-02-04', 'Orpha Rempel', '4539515681580170', '07/26', '535', NULL, NULL, 'Fiction'),
(285, 'Queens', 'The Book Thief', 'Markus Zusak', 1, 83.11, 'fstoltenberg@daniel.com', '184 Simonis Meadows\nHartmannfurt, SC 50388', 83.11, '21166-6498', '2024-06-24', 'Mrs. Destini Fritsch', '2221184271528714', '02/25', '549', NULL, NULL, 'Historical Fiction'),
(286, 'Queens', 'The Hunger Games', 'Suzanne Collins', 6, 59.37, 'dtowne@lubowitz.info', '53168 Medhurst Isle Suite 924\nSouth Merl, HI 91680-0178', 356.22, '94276', '2017-10-26', 'Joyce Reilly', '4392892205482', '08/26', '934', NULL, NULL, 'Dystopian'),
(287, 'Queens', 'The Da Vinci Code', 'Dan Brown', 4, 65.77, 'sheldon.white@yahoo.com', '1723 Kihn Pines Suite 364\nDeckowchester, NH 76670', 263.08, '94213', '2013-03-26', 'Reva Cruickshank', '2420107780762432', '12/26', '478', NULL, NULL, 'Thriller'),
(288, 'Queens', 'The Catcher in the Rye', 'J.D. Salinger', 3, 57.38, 'anissa.yost@bins.com', '881 Madyson Stream\nFloberg, MI 61874', 172.14, '52139-4006', '2015-11-20', 'Miss Queen Zieme', '4929600788409719', '11/25', '797', NULL, NULL, 'Fiction'),
(289, 'Queens', 'The Hunger Games', 'Suzanne Collins', 5, 62.42, 'rebekah.kreiger@yahoo.com', '665 Kassulke Manors Apt. 364\nEast Cydney, TX 89310', 312.10, '18792-7720', '2023-03-25', 'Mortimer Mraz', '6011540839444360', '06/25', '519', NULL, NULL, 'Dystopian'),
(290, 'Queens', 'Moby-Dick', 'Herman Melville', 3, 94.96, 'arden.hodkiewicz@yahoo.com', '85759 Rosenbaum Lodge Suite 747\nNorth Cristianshire, AL 03972-4181', 284.88, '69484', '2024-03-12', 'Marge Cassin', '6011170857901487', '01/27', '597', NULL, NULL, 'Adventure'),
(291, 'Queens', 'The Catcher in the Rye', 'J.D. Salinger', 9, 26.27, 'vkertzmann@satterfield.com', '958 Lowell Ports Apt. 968\nMarquardtbury, RI 03900', 236.43, '29999-2667', '2013-08-23', 'Camren Luettgen', '3589238084116697', '09/26', '798', NULL, NULL, 'Fiction'),
(292, 'Queens', 'To Kill a Mockingbird', 'Harper Lee', 3, 19.15, 'lulu.erdman@yahoo.com', '7192 Maxie Village Apt. 906\nPort Adrianaview, SC 70209-8164', 57.45, '88446', '2014-09-21', 'Cory Ward', '2583427972533182', '01/27', '437', NULL, NULL, 'Fiction'),
(293, 'Queens', 'The Hunger Games', 'Suzanne Collins', 7, 30.46, 'jpacocha@gmail.com', '472 Lessie Station Apt. 697\nGottliebchester, TN 33811', 213.22, '42062', '2017-09-02', 'Ronaldo Quigley', '5555916947207671', '09/26', '118', NULL, NULL, 'Dystopian'),
(294, 'Queens', 'Pride and Prejudice', 'Jane Austen', 7, 73.01, 'towne.krystal@gmail.com', '16982 Aufderhar Extensions Suite 094\nZiemannmouth, WA 42301-4117', 511.07, '13192-4367', '2013-01-07', 'Joanne Jast V', '4716471739179836', '05/25', '328', NULL, NULL, 'Romance'),
(295, 'Queens', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 5, 22.82, 'judy52@nicolas.com', '78943 Lockman Ranch Apt. 950\nLockmanfort, AR 35077', 114.10, '34519-0837', '2013-04-07', 'Candelario Kuphal Sr.', '4024007175361707', '03/27', '404', NULL, NULL, 'Fantasy'),
(296, 'Queens', 'The Hunger Games', 'Suzanne Collins', 4, 44.99, 'rozella.corkery@hotmail.com', '2680 Alda Lodge\nUriahside, TN 45580-2266', 179.96, '41606-5501', '2021-09-19', 'Alize Runolfsdottir', '4652839680883513', '10/25', '439', NULL, NULL, 'Dystopian'),
(297, 'Queens', 'The Hobbit', 'J.R.R. Tolkien', 9, 21.85, 'anya92@robel.com', '571 VonRueden Expressway Suite 720\nKaelashire, MI 71091-8940', 196.65, '92340-6734', '2013-03-16', 'Zella Carter', '6011714822135232', '07/27', '117', NULL, NULL, 'Fantasy'),
(298, 'Queens', 'The Hunger Games', 'Suzanne Collins', 3, 82.04, 'babbott@hill.info', '1890 Jany Summit Suite 559\nEast Easter, CA 62636', 246.12, '38248', '2022-08-04', 'Issac Beier', '4532380476033696', '01/27', '149', NULL, NULL, 'Dystopian'),
(299, 'Queens', '1984', 'George Orwell', 1, 73.34, 'isobel45@gmail.com', '57518 Barton Lakes Suite 735\nPort Thadshire, LA 08197-1071', 73.34, '44236', '2024-10-30', 'Annamarie Harvey', '4556367953832949', '01/27', '105', NULL, NULL, 'Dystopian'),
(300, 'Queens', 'The Catcher in the Rye', 'J.D. Salinger', 1, 81.02, 'ellis.thiel@hotmail.com', '5815 Mitchell Rapid Suite 529\nSouth Catalinaburgh, MN 92098-5848', 81.02, '25723-7978', '2017-01-16', 'Jazlyn Rippin', '2476128991143926', '10/27', '142', NULL, NULL, 'Fiction'),
(301, 'The Bronx', 'Becoming', 'Michelle Obama', 6, 13.69, 'eloise.schiller@hotmail.com', '815 Hudson Extensions Suite 232\nSantosland, MA 70733-4855', 82.14, '90453', '2017-02-23', 'Orpha Langosh', '5185055657160735', '05/27', '614', NULL, NULL, 'Memoir'),
(302, 'The Bronx', 'The Fault in Our Stars', 'John Green', 7, 61.29, 'parisian.pat@dietrich.com', '21819 Alvena Mission Suite 753\nWunschside, HI 95084', 429.03, '58515-0698', '2011-11-05', 'Alba Cremin', '4532019545853052', '04/25', '358', NULL, NULL, 'Romance'),
(303, 'The Bronx', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 7, 69.54, 'ualtenwerth@hotmail.com', '4072 Renner Turnpike\nWest Romainemouth, HI 35418', 486.78, '16314-3256', '2019-04-16', 'Aniyah Ernser', '6011922269622840', '10/27', '381', NULL, NULL, 'Fantasy'),
(304, 'The Bronx', 'The Fault in Our Stars', 'John Green', 3, 96.40, 'ykassulke@waelchi.org', '56863 Flatley Causeway Suite 275\nPort Mayra, WY 22370', 289.20, '51074', '2024-11-11', 'Dr. Annabel Mills', '3589176289982937', '03/25', '910', NULL, NULL, 'Romance'),
(305, 'The Bronx', 'The Alchemist', 'Paulo Coelho', 6, 91.42, 'lschoen@cummerata.biz', '132 Green Key\nPacochamouth, VT 60508', 548.52, '75999', '2011-10-01', 'Brielle Huel', '2620779397522132', '11/27', '374', NULL, NULL, 'Adventure'),
(306, 'The Bronx', 'The Alchemist', 'Paulo Coelho', 6, 54.37, 'wisoky.russ@gmail.com', '5313 Antwan Orchard\nPort Ricky, WV 65478', 326.22, '94481-1678', '2012-01-22', 'Lauryn Fahey', '3589452614605182', '04/25', '408', NULL, NULL, 'Adventure'),
(307, 'The Bronx', 'The Fault in Our Stars', 'John Green', 7, 81.74, 'wunsch.ned@zieme.com', '54134 Chaya Gardens\nPort Addiemouth, SD 44018', 572.18, '86827-2213', '2019-12-09', 'Sedrick Gibson', '4716241315281995', '08/26', '439', NULL, NULL, 'Romance'),
(308, 'The Bronx', 'Moby-Dick', 'Herman Melville', 10, 25.33, 'clifford.hammes@yahoo.com', '836 Blaze Ports\nStehrfurt, AK 67683', 253.30, '84409-7006', '2016-04-22', 'Rogelio Bashirian DVM', '4716678314329749', '12/26', '633', NULL, NULL, 'Adventure'),
(309, 'The Bronx', 'The Hobbit', 'J.R.R. Tolkien', 10, 85.59, 'zula.sawayn@hotmail.com', '42789 Ullrich Landing Apt. 714\nWest Damaristown, CT 73919-8432', 855.90, '73566-7833', '2023-04-19', 'Tia Gerlach II', '5276615971462644', '06/26', '606', NULL, NULL, 'Fantasy'),
(310, 'The Bronx', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 3, 63.45, 'rau.claude@hayes.com', '14306 Kris Place Apt. 207\nClairburgh, ID 08199-8063', 190.35, '03324', '2019-10-30', 'Hettie Mohr', '4024007137797188', '08/25', '774', NULL, NULL, 'Fantasy'),
(311, 'The Bronx', 'The Alchemist', 'Paulo Coelho', 4, 92.63, 'ayana.haag@hotmail.com', '4133 Rita Road\nLeorafurt, MO 93675', 370.52, '56154', '2011-09-28', 'Mr. Tyler Torphy', '3528984985259441', '08/26', '681', NULL, NULL, 'Adventure'),
(312, 'The Bronx', '1984', 'George Orwell', 1, 47.97, 'garnet09@grimes.net', '1968 Gibson Estates Apt. 777\nSouth Orphaborough, NJ 00274', 47.97, '08812-7659', '2023-09-12', 'Natalie Ryan', '2456936810212415', '11/27', '777', NULL, NULL, 'Dystopian'),
(313, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 10, 63.30, 'brekke.genevieve@gmail.com', '3808 Maureen Ford\nProhaskatown, WI 84174', 633.00, '57534-2682', '2013-05-27', 'Dr. Jordon Haag Sr.', '3528771475608330', '05/26', '754', NULL, NULL, 'Fiction'),
(314, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 2, 49.65, 'efren88@yahoo.com', '30723 Hamill Junctions\nDickiton, NE 18031', 99.30, '26386', '2013-07-29', 'Victoria Wehner', '4916575747269872', '01/25', '274', NULL, NULL, 'Fiction'),
(315, 'The Bronx', 'The Catcher in the Rye', 'J.D. Salinger', 1, 18.26, 'franco04@kuvalis.com', '60922 Kertzmann Harbor Apt. 248\nNew Kaden, TN 52153-1504', 18.26, '89019-5446', '2021-01-07', 'Adrian Reynolds', '4589891866731', '01/25', '800', NULL, NULL, 'Fiction'),
(316, 'The Bronx', 'The Alchemist', 'Paulo Coelho', 7, 98.71, 'immanuel.durgan@botsford.com', '60191 Mann Ways Suite 551\nPort Citlallifort, CT 77311-0836', 690.97, '78790-2593', '2023-05-20', 'Katheryn Thompson', '370944125859182', '01/27', '942', NULL, NULL, 'Adventure'),
(317, 'The Bronx', 'The Hobbit', 'J.R.R. Tolkien', 10, 36.14, 'blanda.alexie@gmail.com', '3101 Ratke Coves Suite 803\nFunktown, IN 52197', 361.40, '30901', '2023-10-18', 'Dr. Mckayla Zboncak Sr.', '3528354534385727', '04/27', '319', NULL, NULL, 'Fantasy'),
(318, 'The Bronx', 'The Alchemist', 'Paulo Coelho', 7, 10.17, 'damien.fritsch@hotmail.com', '1061 Boyle Road\nAlizeland, ND 74575', 71.19, '02820-9662', '2014-09-19', 'Nash Treutel', '342364289644855', '12/26', '916', NULL, NULL, 'Adventure'),
(319, 'The Bronx', 'Moby-Dick', 'Herman Melville', 6, 58.12, 'vbreitenberg@yahoo.com', '511 Layla Flats\nJoannyfort, PA 02777', 348.72, '58530-4546', '2015-05-29', 'Arthur Mitchell', '4024007113943', '01/26', '363', NULL, NULL, 'Adventure'),
(320, 'The Bronx', '1984', 'George Orwell', 7, 36.55, 'lind.sherman@bogisich.org', '38964 Jacobson Ranch Apt. 169\nEast Hesterfurt, CA 60956', 255.85, '68096-2094', '2024-03-02', 'Mr. Leon Koepp PhD', '2304991457266186', '01/25', '971', NULL, NULL, 'Dystopian'),
(321, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 10, 83.58, 'predovic.laurie@yahoo.com', '8578 Rohan Light Apt. 667\nEast Karihaven, OK 82580', 835.80, '53663', '2018-11-14', 'Mr. Marquis Shanahan Sr.', '2446663263101027', '10/26', '924', NULL, NULL, 'Fiction'),
(322, 'The Bronx', 'The Fault in Our Stars', 'John Green', 1, 32.35, 'bogisich.mazie@zulauf.com', '939 Thad Squares Suite 883\nAglaebury, NY 83921-5771', 32.35, '45584', '2011-12-04', 'Laurine Mraz', '2438353867847189', '08/25', '892', NULL, NULL, 'Romance'),
(323, 'The Bronx', 'The Catcher in the Rye', 'J.D. Salinger', 4, 82.70, 'ines.oreilly@goodwin.com', '666 Clarissa Brook Apt. 712\nNew Ahmadshire, AR 22604-8216', 330.80, '60233', '2011-05-24', 'Dr. Alfonzo Olson', '4024007156636762', '05/27', '287', NULL, NULL, 'Fiction'),
(324, 'The Bronx', 'Moby-Dick', 'Herman Melville', 2, 26.14, 'mireya.stracke@schumm.com', '3541 Camron Terrace\nEast Fleta, WV 85362', 52.28, '16993', '2024-10-11', 'Elwyn Becker II', '5281548628165745', '09/26', '657', NULL, NULL, 'Adventure'),
(325, 'The Bronx', 'The Catcher in the Rye', 'J.D. Salinger', 10, 70.62, 'gaylord.margarete@green.biz', '6568 Koss Mews Suite 054\nSchusterburgh, NC 63585', 706.20, '21648-6392', '2013-08-20', 'Ms. Viva Schuppe', '5409664216314731', '01/26', '458', NULL, NULL, 'Fiction'),
(326, 'The Bronx', 'The Da Vinci Code', 'Dan Brown', 10, 48.44, 'vgoyette@gmail.com', '187 Jordy Stream Suite 707\nLurlineside, MN 64921', 484.40, '35988-1474', '2021-10-09', 'Laverna Jacobs III', '4716206227040631', '12/25', '984', NULL, NULL, 'Thriller'),
(327, 'The Bronx', '1984', 'George Orwell', 2, 20.88, 'bryana.greenfelder@gmail.com', '966 Marks Forks\nWest Leonie, FL 69425-4650', 41.76, '16797', '2018-02-17', 'Isaac Beahan', '4556741013269', '02/27', '894', NULL, NULL, 'Dystopian'),
(328, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 10, 82.70, 'burdette.luettgen@gmail.com', '58755 Pearline Crossing Suite 765\nLake Patrick, NY 11052', 827.00, '95246-7086', '2012-05-08', 'Helene Jakubowski', '4485591519830271', '10/25', '175', NULL, NULL, 'Romance'),
(329, 'The Bronx', 'To Kill a Mockingbird', 'Harper Lee', 2, 31.91, 'pete.brekke@hotmail.com', '8879 Dee Ranch Apt. 340\nPort Dollytown, WA 64548-1389', 63.82, '29494', '2022-08-29', 'Nyah Stamm', '5263876825181286', '05/27', '967', NULL, NULL, 'Fiction'),
(330, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 8, 75.92, 'sylvester.schowalter@harber.com', '245 Bechtelar Trail Apt. 994\nPort Frederik, RI 58082-5542', 607.36, '11598-0757', '2019-07-04', 'Lavada Gaylord DVM', '4532518435101431', '08/25', '624', NULL, NULL, 'Romance'),
(331, 'The Bronx', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 5, 44.31, 'iconsidine@gmail.com', '7160 Schmitt Expressway Apt. 847\nWest Hailie, NY 75547-4989', 221.55, '15422', '2019-03-29', 'Ernesto Walter V', '5562813437103000', '08/26', '385', NULL, NULL, 'Fantasy'),
(332, 'The Bronx', '1984', 'George Orwell', 9, 37.48, 'oliver.hoeger@yahoo.com', '6302 Alf Forks\nParkerchester, WA 50349', 337.32, '79097', '2021-03-07', 'Ayla Keebler IV', '5245663490100426', '12/24', '527', NULL, NULL, 'Dystopian'),
(333, 'The Bronx', 'The Hobbit', 'J.R.R. Tolkien', 4, 75.78, 'devante.lueilwitz@gmail.com', '611 Braden Stravenue\nNew Elisabethville, IL 64293-0928', 303.12, '33859-3546', '2024-07-31', 'Eva Rutherford', '5524915860709646', '08/27', '914', NULL, NULL, 'Fantasy'),
(334, 'The Bronx', 'The Fault in Our Stars', 'John Green', 5, 82.12, 'buddy04@bogan.com', '8244 Gusikowski Run\nNorth Myriamville, PA 96332-9814', 410.60, '70453-7661', '2016-05-20', 'Prof. Fannie Brekke DDS', '4485692051328', '03/26', '216', NULL, NULL, 'Romance'),
(335, 'The Bronx', 'The Catcher in the Rye', 'J.D. Salinger', 9, 60.67, 'alison87@bauch.com', '834 Elise Brook\nAaliyahfurt, GA 23186-2632', 546.03, '47049-7146', '2020-09-05', 'Craig Connelly', '4539952751602453', '05/25', '638', NULL, NULL, 'Fiction'),
(336, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 1, 74.70, 'nestor45@wisozk.org', '7027 Chyna Shoal\nHellerfurt, MN 85558', 74.70, '20797', '2020-07-07', 'Mason Stanton V', '6011544504330490', '05/27', '526', NULL, NULL, 'Fiction'),
(337, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 10, 60.77, 'justina.brown@thiel.biz', '999 Sally Fields\nTurcotteside, LA 02823-5040', 607.70, '35830-6122', '2024-03-15', 'Ms. Marisa Schroeder', '5313289262532302', '07/26', '799', NULL, NULL, 'Romance'),
(338, 'The Bronx', 'Becoming', 'Michelle Obama', 3, 81.99, 'lbrown@hotmail.com', '52681 Lowe Centers\nSouth Kristy, TN 65054-9735', 245.97, '80519-8006', '2016-05-06', 'Ms. Lauretta Fadel', '4024007176277597', '10/26', '420', NULL, NULL, 'Memoir'),
(339, 'The Bronx', 'The Hobbit', 'J.R.R. Tolkien', 8, 52.72, 'mgaylord@hegmann.biz', '90013 Stark Road\nWest Erynberg, FL 54872', 421.76, '37031', '2020-04-13', 'Miss Jany Boyer', '4485259476633720', '09/26', '965', NULL, NULL, 'Fantasy'),
(340, 'The Bronx', 'Becoming', 'Michelle Obama', 7, 11.91, 'brenna.hodkiewicz@kulas.com', '3900 Zella Stravenue Apt. 738\nEast Mateo, WV 82420', 83.37, '73876', '2012-05-03', 'Oral Maggio', '3589018280085221', '12/26', '779', NULL, NULL, 'Memoir'),
(341, 'The Bronx', '1984', 'George Orwell', 1, 54.44, 'jon.bosco@gmail.com', '12290 Nicolas Freeway\nLake Jennyfer, CO 12826-8576', 54.44, '39451', '2010-11-29', 'Miss Kristy Grimes III', '378256908091574', '05/25', '363', NULL, NULL, 'Dystopian'),
(342, 'The Bronx', 'The Book Thief', 'Markus Zusak', 3, 77.61, 'mireya14@jakubowski.com', '72009 Johnston Drives Suite 922\nBoscoburgh, UT 58476', 232.83, '13223-3010', '2012-01-18', 'Prof. Ignatius Christiansen IV', '2720554636084767', '05/27', '837', NULL, NULL, 'Historical Fiction'),
(343, 'The Bronx', 'The Book Thief', 'Markus Zusak', 9, 60.83, 'ladams@smitham.com', '482 Shania Well Suite 217\nWest Delphinefurt, AL 46869-9657', 547.47, '71911-5277', '2011-08-19', 'Lessie Grimes', '5340933652192394', '01/26', '324', NULL, NULL, 'Historical Fiction'),
(344, 'The Bronx', 'The Fault in Our Stars', 'John Green', 5, 48.88, 'cummings.kobe@yahoo.com', '135 Murphy Land\nPort Alexane, WY 27450-9243', 244.40, '08137', '2020-01-21', 'Ms. Maymie Predovic V', '4539683863332727', '08/27', '961', NULL, NULL, 'Romance'),
(345, 'The Bronx', 'The Fault in Our Stars', 'John Green', 6, 36.59, 'donnie09@emmerich.com', '3512 Giovanna Station\nAltenwerthville, LA 13482-3849', 219.54, '08762', '2014-10-23', 'Libby Hermiston', '378919832046853', '10/25', '933', NULL, NULL, 'Romance'),
(346, 'The Bronx', 'Becoming', 'Michelle Obama', 10, 63.53, 'buster.ledner@yahoo.com', '79009 Kassandra Fields\nVeumland, IN 37893-0004', 635.30, '30625', '2020-02-18', 'Ella Jakubowski', '4716311196041436', '09/25', '268', NULL, NULL, 'Memoir'),
(347, 'The Bronx', 'The Catcher in the Rye', 'J.D. Salinger', 10, 68.47, 'junior.grady@yahoo.com', '7582 Alberta Circle Suite 391\nEichmannview, GA 91845', 684.70, '09773', '2016-11-01', 'Zelma Gottlieb Jr.', '4556379243641550', '07/27', '393', NULL, NULL, 'Fiction'),
(348, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 8, 77.37, 'abernathy.broderick@hotmail.com', '66025 Reichel Loaf\nLake Ethylshire, GA 88017', 618.96, '40549', '2017-06-23', 'Kenyon Batz', '348350564194660', '08/27', '623', NULL, NULL, 'Fiction'),
(349, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 2, 56.74, 'araceli.grimes@haag.net', '88127 Parker Plaza Apt. 324\nAbefurt, HI 52906', 113.48, '38902', '2017-05-02', 'Shanny Rempel', '376467631508295', '06/26', '215', NULL, NULL, 'Fiction'),
(350, 'The Bronx', 'The Da Vinci Code', 'Dan Brown', 2, 70.07, 'cara.abernathy@hotmail.com', '275 Schinner Prairie\nNew Alfonzoside, NY 03076-4076', 140.14, '89951-9995', '2024-10-31', 'Jackeline Heller', '2672066509281667', '11/25', '566', NULL, NULL, 'Thriller'),
(351, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 1, 96.83, 'miguel60@gmail.com', '5138 Runolfsdottir Freeway Apt. 439\nSouth Modesta, MO 69455', 96.83, '85518', '2016-05-04', 'Aileen Rippin', '4556129111261969', '04/25', '216', NULL, NULL, 'Romance'),
(352, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 5, 83.71, 'keegan39@hotmail.com', '38309 Cullen Avenue Suite 126\nSouth Alfordfurt, MA 54591-9165', 418.55, '12863-0232', '2014-10-10', 'Amaya Heidenreich', '4916612417736235', '11/27', '772', NULL, NULL, 'Romance'),
(353, 'The Bronx', 'To Kill a Mockingbird', 'Harper Lee', 9, 92.36, 'elittel@reinger.info', '790 Stoltenberg Cape Apt. 176\nEast Connie, OH 88780-0425', 831.24, '58496-4713', '2021-08-26', 'Elyse Halvorson', '2720022080466773', '01/26', '478', NULL, NULL, 'Fiction'),
(354, 'The Bronx', 'Becoming', 'Michelle Obama', 6, 21.11, 'jaren.veum@gmail.com', '568 Carter Club\nLangbury, TN 36313', 126.66, '99743-9279', '2022-11-17', 'Kade Ernser', '6011231326587933', '04/25', '854', NULL, NULL, 'Memoir'),
(355, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 6, 73.90, 'groberts@keeling.info', '3421 Earl Rapid\nNorth Denashire, NM 00462', 443.40, '83913-2642', '2011-10-12', 'Miss Assunta Hoppe', '4532061190821331', '08/25', '804', NULL, NULL, 'Non-fiction'),
(356, 'The Bronx', 'The Catcher in the Rye', 'J.D. Salinger', 7, 65.43, 'joaquin68@yahoo.com', '9774 Miller Causeway\nLake Hailieton, MI 76784', 458.01, '26160', '2012-02-17', 'Lorine Ortiz', '341370711500764', '04/25', '521', NULL, NULL, 'Fiction'),
(357, 'The Bronx', 'The Hobbit', 'J.R.R. Tolkien', 8, 53.71, 'rodriguez.milford@shanahan.com', '15233 Melba Village\nSipesstad, NM 52360-5440', 429.68, '41108', '2015-08-12', 'Tatum Herzog', '2720921678797657', '06/27', '408', NULL, NULL, 'Fantasy'),
(358, 'The Bronx', 'The Hobbit', 'J.R.R. Tolkien', 4, 89.48, 'betsy.streich@okon.com', '7666 Padberg Flat Apt. 045\nLake Werner, GA 04293', 357.92, '59098', '2020-04-19', 'Miss Carolyn Runolfsson', '5120430273148588', '01/26', '711', NULL, NULL, 'Fantasy'),
(359, 'The Bronx', '1984', 'George Orwell', 6, 26.80, 'breanna.gulgowski@leffler.com', '761 Eula Rapids Suite 126\nNew Brennonfort, WA 15787', 160.80, '02074-7349', '2020-04-20', 'Jedediah Crooks IV', '5525811793182796', '12/25', '580', NULL, NULL, 'Dystopian'),
(360, 'The Bronx', '1984', 'George Orwell', 4, 90.05, 'dmonahan@hansen.info', '2369 Roma Plaza\nLennieville, NJ 22715', 360.20, '17156-9899', '2013-06-19', 'Vivienne Wintheiser', '5170890535492257', '09/27', '466', NULL, NULL, 'Dystopian'),
(361, 'The Bronx', 'The Book Thief', 'Markus Zusak', 7, 57.70, 'konopelski.bud@kozey.com', '620 Larkin Trafficway\nColtonbury, IN 79076-0178', 403.90, '66635', '2012-09-02', 'Ms. Amira Heidenreich V', '2589058486653598', '11/25', '314', NULL, NULL, 'Historical Fiction'),
(362, 'The Bronx', 'Moby-Dick', 'Herman Melville', 6, 61.39, 'lnitzsche@hotmail.com', '370 Alec Fall Suite 559\nNew Brandonburgh, CT 14168-9415', 368.34, '47086', '2011-07-20', 'Lloyd Bashirian', '6011010692909826', '09/25', '985', NULL, NULL, 'Adventure'),
(363, 'The Bronx', 'Becoming', 'Michelle Obama', 6, 22.05, 'geoffrey03@hotmail.com', '2658 Walton Spring Apt. 776\nJerrodside, MT 51069', 132.30, '91623', '2017-12-30', 'Mr. Buford Price', '2542887648110782', '11/24', '530', NULL, NULL, 'Memoir'),
(364, 'The Bronx', 'The Hobbit', 'J.R.R. Tolkien', 1, 98.74, 'runolfsson.treva@hickle.com', '9993 Abernathy Expressway\nSouth Skylarport, AZ 05479', 98.74, '62383-4446', '2021-03-10', 'Dr. Bernardo Botsford V', '4916684731167074', '10/26', '784', NULL, NULL, 'Fantasy'),
(365, 'The Bronx', 'Moby-Dick', 'Herman Melville', 9, 63.49, 'ewindler@ziemann.org', '63966 Liliane Inlet\nNew Laverna, LA 38403-0026', 571.41, '63383', '2020-04-19', 'Dr. Ray Hane III', '4556856728548277', '06/26', '351', NULL, NULL, 'Adventure'),
(366, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 6, 53.85, 'rickie52@kemmer.com', '75574 Cora Radial\nNorth Maureentown, IN 20272-8376', 323.10, '76931-3818', '2011-04-18', 'Letitia Herzog', '4556567098691', '01/26', '542', NULL, NULL, 'Non-fiction'),
(367, 'The Bronx', 'The Hunger Games', 'Suzanne Collins', 9, 60.62, 'flatley.sven@lynch.com', '41216 Bode Hills Apt. 421\nNew Brooklynfurt, MT 64031', 545.58, '14974', '2014-08-28', 'Prof. Spencer Sawayn III', '4916254503835', '08/25', '733', NULL, NULL, 'Dystopian'),
(368, 'The Bronx', 'The Book Thief', 'Markus Zusak', 3, 92.33, 'chaz49@stokes.net', '654 Aliyah Squares Suite 281\nDietrichport, NJ 70052-3843', 276.99, '91161-6301', '2012-12-22', 'Prof. Icie McGlynn', '4024007120211221', '09/26', '518', NULL, NULL, 'Historical Fiction'),
(369, 'The Bronx', 'The Da Vinci Code', 'Dan Brown', 3, 85.72, 'bebert@gmail.com', '1448 Jenifer Shoal Apt. 186\nPort Martyton, LA 84322-6198', 257.16, '68951-2000', '2017-08-26', 'Mrs. Calista McLaughlin DVM', '3589339087008673', '06/27', '431', NULL, NULL, 'Thriller'),
(370, 'The Bronx', 'Becoming', 'Michelle Obama', 7, 39.28, 'gblick@yahoo.com', '622 Thiel Common Suite 327\nReidtown, IL 49621-6949', 274.96, '45691', '2019-03-19', 'Mrs. Hermina Prosacco', '4929051083002066', '10/26', '741', NULL, NULL, 'Memoir'),
(371, 'The Bronx', '1984', 'George Orwell', 7, 37.19, 'gertrude.mohr@gmail.com', '894 Bethany Prairie Suite 037\nLittletown, NE 11941', 260.33, '11818-3935', '2024-04-08', 'Bethany Upton IV', '5575370331406125', '01/25', '123', NULL, NULL, 'Dystopian'),
(372, 'The Bronx', 'The Fault in Our Stars', 'John Green', 7, 89.35, 'connelly.alexzander@gmail.com', '89353 Tremblay Underpass\nMarjorytown, OH 60216', 625.45, '94615', '2019-06-29', 'Maureen Anderson', '5554732197925008', '11/26', '607', NULL, NULL, 'Romance'),
(373, 'The Bronx', 'The Alchemist', 'Paulo Coelho', 8, 77.17, 'qschuppe@rutherford.com', '585 Predovic Club Suite 591\nNorth Violettehaven, CT 11744', 617.36, '40980-8296', '2019-12-09', 'Roy Lowe Jr.', '2442712261356986', '08/25', '424', NULL, NULL, 'Adventure'),
(374, 'The Bronx', 'The Book Thief', 'Markus Zusak', 2, 72.41, 'maxwell.raynor@gmail.com', '993 Elmira View Suite 173\nPort Sylvester, VT 31891', 144.82, '06979-7559', '2020-11-23', 'Alejandra Rau', '5351600811276097', '09/27', '448', NULL, NULL, 'Historical Fiction'),
(375, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 6, 56.30, 'leannon.willard@mayer.com', '2568 Kameron Tunnel Suite 699\nReingerborough, NV 52755', 337.80, '21008-1238', '2018-07-21', 'Ms. Reba Farrell', '378204795130428', '12/24', '217', NULL, NULL, 'Non-fiction'),
(376, 'The Bronx', 'The Hobbit', 'J.R.R. Tolkien', 10, 93.96, 'whartmann@kunde.com', '55861 Demetris Crescent\nSouth Hortenseport, OH 62122', 939.60, '56905-2281', '2019-08-27', 'Mandy Deckow', '6011326181030050', '03/26', '248', NULL, NULL, 'Fantasy'),
(377, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 4, 93.83, 'wisoky.catharine@green.org', '28626 Granville Alley Apt. 727\nMohrfurt, VA 91042', 375.32, '52642', '2020-02-19', 'Prof. Jamar Kautzer', '6011571072643376', '11/26', '384', NULL, NULL, 'Non-fiction'),
(378, 'The Bronx', 'Becoming', 'Michelle Obama', 2, 99.39, 'noconner@hotmail.com', '1546 Declan Stream Apt. 711\nAnnabelleview, NY 69041', 198.78, '66647', '2016-03-29', 'Wilhelm Buckridge DDS', '5389757086340044', '09/26', '573', NULL, NULL, 'Memoir'),
(379, 'The Bronx', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 2, 95.26, 'kulas.candelario@gmail.com', '470 Price Glens Suite 990\nNew Ivah, AL 79311', 190.52, '30811-3249', '2019-02-06', 'Branson Leannon', '2598495173211679', '10/26', '263', NULL, NULL, 'Fantasy'),
(380, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 10, 31.12, 'dschroeder@tillman.com', '366 Kautzer Stravenue\nNorth Nathanael, LA 85467-6949', 311.20, '95305-5612', '2014-07-20', 'Viva Kautzer', '2523671479504096', '07/25', '804', NULL, NULL, 'Non-fiction'),
(381, 'The Bronx', 'Moby-Dick', 'Herman Melville', 10, 62.12, 'mauricio.frami@gmail.com', '6938 Hillard Drives\nRandallborough, MD 68280-4979', 621.20, '61671', '2020-07-13', 'Laurel Monahan PhD', '5590508084158267', '10/26', '793', NULL, NULL, 'Adventure'),
(382, 'The Bronx', 'Moby-Dick', 'Herman Melville', 6, 69.20, 'madilyn65@lubowitz.com', '32973 Feeney Brook\nBoyerbury, WV 44551-7204', 415.20, '03788-1082', '2024-10-25', 'Mrs. Hailie Zemlak IV', '4556323267671', '06/27', '333', NULL, NULL, 'Adventure'),
(383, 'The Bronx', 'Becoming', 'Michelle Obama', 5, 95.05, 'tkunde@gmail.com', '78592 Bethany Flat\nVivianneville, RI 27544', 475.25, '64759-0874', '2015-01-15', 'Tamara Breitenberg', '5520364509784732', '03/27', '761', NULL, NULL, 'Memoir'),
(384, 'The Bronx', '1984', 'George Orwell', 1, 87.92, 'camron38@kreiger.com', '68746 Labadie Shores\nIrwinport, RI 85019-7656', 87.92, '06965', '2017-07-13', 'Torrance Lemke PhD', '2452243831724245', '04/27', '467', NULL, NULL, 'Dystopian'),
(385, 'The Bronx', 'The Hobbit', 'J.R.R. Tolkien', 9, 27.16, 'rubye.kassulke@gutkowski.org', '65130 Alexandre Ranch Suite 168\nPouroschester, MA 42428-1909', 244.44, '11464-9903', '2012-02-14', 'Miss Jeanette Barrows', '5412503241074644', '05/27', '399', NULL, NULL, 'Fantasy');
INSERT INTO `sales` (`id`, `store`, `title`, `author`, `quantity`, `price`, `email`, `address`, `totalPrice`, `zip`, `date`, `name`, `card_num`, `expiration`, `cvv`, `created_at`, `updated_at`, `genre`) VALUES
(386, 'The Bronx', 'To Kill a Mockingbird', 'Harper Lee', 9, 37.19, 'schmidt.lisandro@gmail.com', '23673 Erdman Ford Suite 561\nZiemannburgh, OR 01275', 334.71, '63702-2103', '2024-03-24', 'Keyon Carter', '5397720654279903', '12/26', '357', NULL, NULL, 'Fiction'),
(387, 'The Bronx', 'To Kill a Mockingbird', 'Harper Lee', 4, 33.83, 'elsa.koepp@stiedemann.net', '87957 Stokes Crescent\nSouth Trycia, LA 18021-4268', 135.32, '63963', '2013-09-14', 'Troy Tillman', '4532163653607486', '02/25', '467', NULL, NULL, 'Fiction'),
(388, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 4, 43.49, 'goldner.lisette@dooley.com', '78975 Stephon Island\nEast Dameon, PA 03104', 173.96, '71467-7703', '2021-05-06', 'Dr. Derick Kemmer', '2221341515339601', '07/26', '666', NULL, NULL, 'Non-fiction'),
(389, 'The Bronx', 'Becoming', 'Michelle Obama', 1, 47.08, 'roberts.jeffery@morar.com', '50522 Hamill Corners Suite 133\nPort Merritt, DE 40263', 47.08, '19218-9078', '2021-09-16', 'Lewis Bahringer II', '4716399080260576', '12/25', '593', NULL, NULL, 'Memoir'),
(390, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, 22.23, 'nschmidt@gmail.com', '96402 Noel Canyon\nEast Toreyview, DC 99872-2847', 111.15, '14982-1556', '2016-04-05', 'Stephanie Wilderman', '4916957862682917', '04/27', '285', NULL, NULL, 'Fiction'),
(391, 'The Bronx', 'The Fault in Our Stars', 'John Green', 4, 97.02, 'jthompson@yahoo.com', '816 Jammie Mission\nNew Walkerton, NM 41960-5951', 388.08, '29802', '2023-04-10', 'Prof. Eugenia Adams Jr.', '4562743931141441', '10/25', '272', NULL, NULL, 'Romance'),
(392, 'The Bronx', 'To Kill a Mockingbird', 'Harper Lee', 2, 86.43, 'hpowlowski@koch.info', '8894 Emma Brook Suite 778\nLake Austenbury, DC 75339-5113', 172.86, '75287', '2022-07-08', 'Teagan Lehner', '6011599867169174', '01/25', '265', NULL, NULL, 'Fiction'),
(393, 'The Bronx', 'The Fault in Our Stars', 'John Green', 2, 55.23, 'nbarrows@gmail.com', '19679 Jasmin Mills Apt. 030\nDorcashaven, CT 03326', 110.46, '44893', '2024-03-23', 'Meaghan Jones Jr.', '2352449870187167', '05/25', '602', NULL, NULL, 'Romance'),
(394, 'The Bronx', 'Moby-Dick', 'Herman Melville', 8, 97.04, 'delphine.rau@padberg.net', '33202 Roob Dam\nLake Adamburgh, DC 55612', 776.32, '12303', '2017-09-29', 'Prof. Xzavier Schuppe DVM', '5336635457804083', '12/25', '617', NULL, NULL, 'Adventure'),
(395, 'The Bronx', 'Moby-Dick', 'Herman Melville', 3, 37.99, 'ryan.antonina@gmail.com', '822 Larson Skyway Suite 416\nEast Yasmeen, AL 00061-1489', 113.97, '92085-9746', '2021-02-12', 'Eli Mills', '4539147288902951', '02/26', '442', NULL, NULL, 'Adventure'),
(396, 'The Bronx', 'Becoming', 'Michelle Obama', 3, 40.80, 'martine.koepp@yahoo.com', '1059 Rhianna Throughway Apt. 465\nBorerburgh, NY 74505-2380', 122.40, '31518-1868', '2019-12-13', 'Dr. Andy Hartmann', '4916137712729750', '01/26', '994', NULL, NULL, 'Memoir'),
(397, 'The Bronx', 'The Da Vinci Code', 'Dan Brown', 8, 41.06, 'joan25@abshire.org', '26264 Stanton Ranch Suite 604\nWest Kira, SC 08631-7682', 328.48, '15625', '2017-02-11', 'Zoie Kunze', '4532072661021947', '10/27', '806', NULL, NULL, 'Thriller'),
(398, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 1, 33.99, 'ewillms@keeling.com', '842 Ernser Isle Suite 906\nNew Pedroton, AZ 14298-6253', 33.99, '75053', '2020-02-24', 'Madge Feest', '2568933743170682', '02/27', '562', NULL, NULL, 'Non-fiction'),
(399, 'The Bronx', 'The Book Thief', 'Markus Zusak', 9, 80.01, 'rhianna.miller@medhurst.com', '775 Wiza Forges Apt. 935\nLake Kristian, CO 38190-9827', 720.09, '02007', '2021-11-02', 'Keenan Cassin I', '2611867314968073', '05/26', '382', NULL, NULL, 'Historical Fiction'),
(400, 'The Bronx', 'The Hunger Games', 'Suzanne Collins', 1, 71.40, 'jbreitenberg@yahoo.com', '7917 Edwina Court Suite 315\nPort Yoshikochester, IA 02326', 71.40, '78661', '2018-02-04', 'Dr. Darby Block DVM', '4024007120180863', '11/26', '826', NULL, NULL, 'Dystopian'),
(401, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 7, 59.60, 'rippin.pattie@yahoo.com', '811 Wiegand Burgs\nTinahaven, ID 66515', 417.20, '36979-8920', '2012-12-17', 'Dortha Rohan', '5520317216351419', '06/27', '241', NULL, NULL, 'Non-fiction'),
(402, 'The Bronx', 'Becoming', 'Michelle Obama', 10, 85.57, 'sohara@deckow.com', '50315 Karelle Loaf Suite 004\nHomenickhaven, ND 34105-9224', 855.70, '03636', '2016-04-20', 'Prof. Crystel Leuschke', '4716368817109158', '12/24', '198', NULL, NULL, 'Memoir'),
(403, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 2, 46.76, 'drunolfsson@hudson.net', '38088 Howell Village Apt. 124\nEast Randaltown, HI 27734', 93.52, '72329', '2013-02-18', 'Dr. Marcelino Koss', '4021790270936811', '07/27', '602', NULL, NULL, 'Romance'),
(404, 'The Bronx', 'The Fault in Our Stars', 'John Green', 4, 92.48, 'fermin89@larson.com', '320 Carmen Land Suite 170\nLake Oliverton, WA 82548', 369.92, '28863', '2017-03-20', 'Mrs. Jennie Miller', '2557734858572883', '01/27', '420', NULL, NULL, 'Romance'),
(405, 'The Bronx', 'Becoming', 'Michelle Obama', 5, 92.11, 'ali14@gmail.com', '190 Ernser Ports\nHaleyville, LA 24887-6238', 460.55, '70249-7735', '2019-08-15', 'Josiane Littel', '4539153353332645', '10/25', '865', NULL, NULL, 'Memoir'),
(406, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 8, 28.82, 'landen30@gmail.com', '86289 Pierre Key\nMurphyborough, MT 57021-4872', 230.56, '18443-2964', '2017-04-15', 'Franz Witting III', '2669636075247675', '12/25', '904', NULL, NULL, 'Romance'),
(407, 'The Bronx', 'The Catcher in the Rye', 'J.D. Salinger', 3, 34.71, 'hobart71@johns.com', '77400 Rohan Heights Apt. 260\nNew Ameliaport, DE 13657-6219', 104.13, '68425-6647', '2022-06-15', 'Hazle Ryan', '6011524912957852', '10/27', '830', NULL, NULL, 'Fiction'),
(408, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 10, 37.35, 'allison.stamm@yahoo.com', '7708 Turcotte Wells\nKiarrafort, WV 00425', 373.50, '45914', '2022-05-01', 'Roberta Prohaska', '2392522664357279', '05/26', '190', NULL, NULL, 'Fiction'),
(409, 'The Bronx', 'The Book Thief', 'Markus Zusak', 1, 46.49, 'prosacco.taylor@hoppe.biz', '757 Hand Lights\nWest Jermain, TX 97169', 46.49, '98576-2617', '2019-02-04', 'Ofelia Ferry DDS', '4024007130323529', '07/25', '936', NULL, NULL, 'Historical Fiction'),
(410, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 9, 25.22, 'rswift@greenholt.org', '853 Dave Hollow Apt. 101\nKuhicburgh, NM 21688', 226.98, '30461', '2019-06-01', 'Kaia Shields', '4929444919928', '05/27', '351', NULL, NULL, 'Fiction'),
(411, 'The Bronx', 'The Hunger Games', 'Suzanne Collins', 7, 29.71, 'caden81@haag.com', '9795 Stokes Trail\nNorth Assuntaland, MI 48954-0825', 207.97, '43888', '2016-08-12', 'Alisa Rolfson', '4532605130770527', '12/25', '498', NULL, NULL, 'Dystopian'),
(412, 'The Bronx', 'The Da Vinci Code', 'Dan Brown', 7, 39.69, 'xbuckridge@yahoo.com', '9903 Cremin Causeway Apt. 817\nPriceport, VT 99589', 277.83, '17924-3812', '2024-07-18', 'Alejandrin Carroll', '4539142935766503', '10/26', '324', NULL, NULL, 'Thriller'),
(413, 'The Bronx', 'Moby-Dick', 'Herman Melville', 1, 89.80, 'larry.kemmer@hotmail.com', '909 Malvina Rest Apt. 534\nLolabury, NV 24547', 89.80, '98920-4940', '2020-03-13', 'Buster Fadel', '4716800637680067', '06/25', '123', NULL, NULL, 'Adventure'),
(414, 'The Bronx', 'To Kill a Mockingbird', 'Harper Lee', 5, 80.68, 'rhiannon09@mann.com', '666 Simone Club\nPort Larue, TX 86848', 403.40, '64722-2671', '2013-05-09', 'Joyce Lind IV', '4916784210297044', '02/26', '781', NULL, NULL, 'Fiction'),
(415, 'The Bronx', 'Moby-Dick', 'Herman Melville', 7, 88.59, 'aolson@little.com', '66426 Cyrus Falls Suite 638\nAvismouth, UT 89793-0401', 620.13, '14875-3464', '2020-07-03', 'Gabriella Bernier', '2221775488490521', '06/25', '241', NULL, NULL, 'Adventure'),
(416, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 9, 28.33, 'jjaskolski@hotmail.com', '220 Macejkovic Hill\nEast Jacky, DC 65306-1364', 254.97, '97896', '2020-04-12', 'Dr. Rafael White', '2720239769056101', '01/26', '424', NULL, NULL, 'Fiction'),
(417, 'The Bronx', 'The Da Vinci Code', 'Dan Brown', 6, 44.01, 'ernest.cartwright@gmail.com', '8372 Lowe Dam\nRoryborough, NE 80008-7353', 264.06, '85465', '2013-07-16', 'Prof. Chris Mante PhD', '3589619106358062', '10/27', '891', NULL, NULL, 'Thriller'),
(418, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 10, 83.44, 'wisozk.robb@gmail.com', '4785 Ondricka Street\nNew Hildegard, KY 18090-9581', 834.40, '05457-0947', '2018-06-11', 'Donato Lynch', '4556727441513239', '06/26', '331', NULL, NULL, 'Romance'),
(419, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 7, 38.34, 'sschulist@kilback.info', '81919 Eldon Place\nHayeschester, NJ 61779-9065', 268.38, '60053-9025', '2010-12-04', 'Tad Hamill', '5535627543186558', '03/25', '306', NULL, NULL, 'Romance'),
(420, 'The Bronx', 'The Alchemist', 'Paulo Coelho', 7, 20.94, 'hills.rudy@bogan.com', '44549 Gussie Ramp Apt. 714\nNorth Maximeland, ME 73399-2704', 146.58, '90359-5352', '2021-10-16', 'Garry Prohaska', '4716216014289549', '02/25', '248', NULL, NULL, 'Adventure'),
(421, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 3, 73.62, 'king.brendan@kris.biz', '5881 Chloe River Apt. 794\nLeabury, MA 16050-6328', 220.86, '40419-2006', '2014-04-24', 'Mrs. Vivianne Watsica PhD', '5185407253671203', '10/25', '207', NULL, NULL, 'Non-fiction'),
(422, 'The Bronx', 'The Da Vinci Code', 'Dan Brown', 3, 21.39, 'jarvis.zulauf@gmail.com', '319 Kathlyn Mountains Suite 748\nEast Leila, TN 12336', 64.17, '77717', '2018-11-08', 'Angelina Beier', '2221423445571402', '10/26', '478', NULL, NULL, 'Thriller'),
(423, 'The Bronx', 'The Hunger Games', 'Suzanne Collins', 5, 24.20, 'shields.brent@gmail.com', '8065 Kohler Lakes\nNorth Jaclyn, TN 78837-4331', 121.00, '42185', '2020-02-27', 'Dr. Consuelo Barton II', '4539591702391095', '08/25', '510', NULL, NULL, 'Dystopian'),
(424, 'The Bronx', 'The Alchemist', 'Paulo Coelho', 9, 37.95, 'hills.kiera@gmail.com', '8158 Emmet Shore Apt. 796\nPort Salmaville, MS 19058-5461', 341.55, '72795-7132', '2016-11-04', 'Erika Heaney', '5426409092613163', '08/27', '263', NULL, NULL, 'Adventure'),
(425, 'The Bronx', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1, 32.38, 'madeline42@mraz.com', '69365 Stephany Views Apt. 094\nSouth Isai, OK 57502', 32.38, '90714', '2016-03-09', 'Scot Ebert', '3528614999460475', '10/26', '615', NULL, NULL, 'Fantasy'),
(426, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 9, 24.20, 'zcorwin@runte.com', '7531 Sanford Points\nNorth Brittanyville, OK 89575-7065', 217.80, '33431-7980', '2018-01-08', 'Cassandre Dicki', '2375724039130065', '01/27', '549', NULL, NULL, 'Fiction'),
(427, 'The Bronx', 'The Fault in Our Stars', 'John Green', 8, 65.86, 'yjohnston@leuschke.com', '88998 Layla Lights Suite 224\nAlexandreamouth, IA 70537', 526.88, '27003-3336', '2014-03-25', 'Ms. Dora Moen', '5217695902134654', '02/26', '806', NULL, NULL, 'Romance'),
(428, 'The Bronx', 'The Hunger Games', 'Suzanne Collins', 10, 39.88, 'michele.lesch@hotmail.com', '507 Hamill Valleys Suite 150\nLake Julie, TX 45825', 398.80, '50805-2166', '2019-10-07', 'Ms. Loyce Tromp', '5375669171596594', '05/27', '984', NULL, NULL, 'Dystopian'),
(429, 'The Bronx', 'Becoming', 'Michelle Obama', 9, 15.12, 'fabshire@hotmail.com', '19643 Watsica Spur\nReneetown, KS 22026', 136.08, '50505-7416', '2023-11-27', 'Myah O\'Keefe', '5272217545952780', '05/25', '468', NULL, NULL, 'Memoir'),
(430, 'The Bronx', 'The Hunger Games', 'Suzanne Collins', 7, 92.63, 'bernice.gleason@yahoo.com', '52757 Hayes Island Apt. 893\nNorth Jordanton, TX 65986-2788', 648.41, '92099', '2021-11-05', 'Audreanne Hintz DVM', '5325256239900769', '01/27', '599', NULL, NULL, 'Dystopian'),
(431, 'The Bronx', 'The Book Thief', 'Markus Zusak', 9, 56.94, 'watsica.cornelius@hotmail.com', '2270 Dietrich Bypass\nLockmanchester, DE 54772', 512.46, '80811-5994', '2020-03-17', 'Alexander Jakubowski', '4024007172667', '06/27', '406', NULL, NULL, 'Historical Fiction'),
(432, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 8, 30.65, 'pmurphy@upton.com', '128 Doyle Field Suite 858\nPortertown, WV 50714-9571', 245.20, '29257-8142', '2013-04-17', 'Elian Auer', '2221120362636016', '03/25', '439', NULL, NULL, 'Fiction'),
(433, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 4, 80.82, 'arnaldo.kovacek@gmail.com', '702 Konopelski Ridge Apt. 897\nWest Jeffview, HI 40604', 323.28, '50075-0757', '2024-02-12', 'Dr. Keshaun Ritchie', '4716500900169', '01/26', '889', NULL, NULL, 'Fiction'),
(434, 'The Bronx', 'The Alchemist', 'Paulo Coelho', 10, 92.27, 'hermiston.jadon@shanahan.biz', '486 Schuster Valleys\nEast Kadenbury, CT 41881', 922.70, '26580-6711', '2012-01-10', 'Zena Gutmann IV', '4532419721467', '11/27', '489', NULL, NULL, 'Adventure'),
(435, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 7, 17.10, 'judy.rogahn@yahoo.com', '430 Lysanne Field\nSouth Jackie, SC 71616-8677', 119.70, '52698', '2015-10-24', 'Prof. Beau Morar', '4024007129271994', '01/27', '561', NULL, NULL, 'Romance'),
(436, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 1, 62.08, 'roberta.larson@hotmail.com', '355 Hermiston Route Apt. 360\nSouth Santinoville, MI 37785-5238', 62.08, '28860', '2021-02-17', 'Gust Ankunding Sr.', '347906544920226', '06/26', '127', NULL, NULL, 'Fiction'),
(437, 'The Bronx', 'Becoming', 'Michelle Obama', 1, 10.29, 'zwindler@gmail.com', '460 Stracke Burgs Apt. 413\nMacejkovicshire, OR 08412-2033', 10.29, '06305', '2012-04-13', 'Prof. Carlie Cartwright', '6011104885921738', '12/26', '191', NULL, NULL, 'Memoir'),
(438, 'The Bronx', 'Becoming', 'Michelle Obama', 3, 59.89, 'sglover@hotmail.com', '9426 Conn Cliffs\nLake Graham, IN 65971', 179.67, '34647', '2018-02-04', 'Dr. Delores Osinski IV', '4485498765736261', '06/25', '836', NULL, NULL, 'Memoir'),
(439, 'The Bronx', 'The Da Vinci Code', 'Dan Brown', 2, 65.75, 'pearline15@wyman.com', '32136 Russell Ville\nPort Brooklynview, CA 83071', 131.50, '84366-1826', '2018-02-23', 'Boris Gulgowski', '343009100115887', '02/25', '907', NULL, NULL, 'Thriller'),
(440, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 1, 56.16, 'vnikolaus@fadel.com', '5338 Providenci Mountain\nWest Keaton, TN 91237-4360', 56.16, '25310', '2018-04-01', 'Brisa Nienow', '4485088654438', '05/25', '428', NULL, NULL, 'Romance'),
(441, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 1, 92.69, 'kemmer.federico@hotmail.com', '869 Ebony Well\nNew Ettie, NV 18301', 92.69, '07013-5325', '2010-11-29', 'Shanny Corkery', '4929479638989', '06/26', '380', NULL, NULL, 'Fiction'),
(442, 'The Bronx', 'The Da Vinci Code', 'Dan Brown', 9, 70.82, 'elian.skiles@hotmail.com', '797 Wolf Track Apt. 076\nPort Hailieland, WA 11542-5188', 637.38, '59354-2177', '2014-01-07', 'Hal Rohan', '3528218536732931', '10/26', '506', NULL, NULL, 'Thriller'),
(443, 'The Bronx', 'To Kill a Mockingbird', 'Harper Lee', 7, 24.77, 'katarina.homenick@gmail.com', '9852 Raina Stravenue Apt. 149\nWarrenview, LA 36739-8563', 173.39, '04040-9251', '2012-07-26', 'Dr. Maxime Schuppe DVM', '5193220021684170', '11/26', '278', NULL, NULL, 'Fiction'),
(444, 'The Bronx', 'Pride and Prejudice', 'Jane Austen', 6, 49.22, 'bailey.marta@dach.com', '7798 Wanda Underpass\nStiedemannbury, WY 49585', 295.32, '15359', '2016-01-27', 'Ahmad Rau DVM', '4335932172626', '06/27', '250', NULL, NULL, 'Romance'),
(445, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 2, 19.48, 'wallace76@bartell.com', '673 Brown Estate\nLake Kobymouth, NH 83080', 38.96, '83651-5047', '2019-06-21', 'Wilfred Quigley', '348585455682022', '04/27', '462', NULL, NULL, 'Non-fiction'),
(446, 'The Bronx', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 2, 25.41, 'joshua.dubuque@gmail.com', '8887 Upton Fields\nEast Wilsonside, SC 39305-3255', 50.82, '66684', '2012-11-14', 'Westley Strosin', '4024007130665', '10/27', '631', NULL, NULL, 'Non-fiction'),
(447, 'The Bronx', 'The Great Gatsby', 'F. Scott Fitzgerald', 9, 49.45, 'thea59@green.com', '169 Dariana Mission Suite 227\nNorth Titusfurt, HI 11386-5549', 445.05, '31315', '2014-12-22', 'Jennyfer Smith', '5312127073405097', '01/27', '857', NULL, NULL, 'Fiction'),
(448, 'The Bronx', 'The Fault in Our Stars', 'John Green', 3, 39.09, 'judson99@gmail.com', '959 Osinski Harbor Apt. 786\nPort Nicholaus, AK 24964', 117.27, '36311', '2019-07-05', 'Allan Kuphal', '4024007146810', '07/27', '743', NULL, NULL, 'Romance'),
(449, 'The Bronx', 'The Fault in Our Stars', 'John Green', 9, 80.32, 'qwuckert@gmail.com', '9500 Theodora Stream Suite 496\nWiegandmouth, ND 69450', 722.88, '12651-0285', '2015-08-13', 'Alfonso Connelly', '5398794763220727', '02/25', '337', NULL, NULL, 'Romance'),
(450, 'The Bronx', 'The Catcher in the Rye', 'J.D. Salinger', 5, 38.54, 'alexandrea.johnson@hotmail.com', '1745 Boyd Alley Suite 432\nWest Westley, TN 26715', 192.70, '02399-4838', '2018-10-19', 'Therese McGlynn', '4799743552408454', '01/26', '559', NULL, NULL, 'Fiction'),
(451, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 7, 26.28, 'stoltenberg.baron@streich.com', '34689 Abshire Common\nSengerport, ID 26435-8383', 183.96, '37890', '2014-10-11', 'Mitchell Stracke', '3528854378930355', '05/26', '924', NULL, NULL, 'Adventure'),
(452, 'Manhattan', 'The Fault in Our Stars', 'John Green', 7, 20.14, 'jayce.welch@yahoo.com', '216 Dasia Shoal\nKuhnborough, PA 46689', 140.98, '38722', '2012-07-01', 'Kristopher Mohr', '4539105588152024', '04/27', '203', NULL, NULL, 'Romance'),
(453, 'Manhattan', 'The Hobbit', 'J.R.R. Tolkien', 1, 77.37, 'larkin.riley@hotmail.com', '1428 Jakubowski Forges\nEast Eric, ME 00948', 77.37, '95588', '2022-07-23', 'Janet Homenick', '5218114776810125', '03/27', '345', NULL, NULL, 'Fantasy'),
(454, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 1, 47.55, 'lmann@gmail.com', '538 Kamille Road\nEmilieport, IA 51139-8725', 47.55, '16013', '2023-01-10', 'Cecelia Ward', '6011488054363255', '08/27', '984', NULL, NULL, 'Thriller'),
(455, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 10, 19.86, 'astracke@mertz.net', '503 Violet Flat Suite 911\nWest Luciano, MO 62756', 198.60, '24723', '2013-12-29', 'Demarcus Borer', '4916466874562984', '03/25', '323', NULL, NULL, 'Romance'),
(456, 'Manhattan', '1984', 'George Orwell', 2, 68.68, 'nitzsche.jarod@corkery.com', '1191 Kris Dale Apt. 714\nSouth Donnieton, NH 32709-6326', 137.36, '42629-2255', '2015-06-15', 'Eunice Halvorson Sr.', '4539438618631273', '11/26', '567', NULL, NULL, 'Dystopian'),
(457, 'Manhattan', 'Becoming', 'Michelle Obama', 5, 99.51, 'durgan.norval@hotmail.com', '2486 Emmerich Forges\nRandymouth, IN 31919-4705', 497.55, '08181-9869', '2021-03-28', 'Sarah Erdman', '2619557742549759', '08/25', '710', NULL, NULL, 'Memoir'),
(458, 'Manhattan', 'The Fault in Our Stars', 'John Green', 9, 27.05, 'bgorczany@gmail.com', '190 Brown Vista Apt. 488\nMedhurststad, VA 61178-5958', 243.45, '57058', '2021-06-02', 'Lelah Brown', '5551852453669695', '01/26', '620', NULL, NULL, 'Romance'),
(459, 'Manhattan', 'The Book Thief', 'Markus Zusak', 2, 98.34, 'kozey.lavonne@beer.info', '325 Koelpin Gardens Apt. 877\nWest Obie, AR 85404-0508', 196.68, '37173-1237', '2016-03-12', 'Miss Vernie Will', '2463313726056529', '09/27', '352', NULL, NULL, 'Historical Fiction'),
(460, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 1, 49.85, 'jordy.sipes@yahoo.com', '230 Jast Road\nLudiestad, MT 49717', 49.85, '91637', '2020-04-15', 'Miss Cynthia Beahan DDS', '2687062746933445', '07/27', '765', NULL, NULL, 'Romance'),
(461, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 7, 17.49, 'blaze23@monahan.com', '7785 Lexie Cape Apt. 683\nPort Favian, OR 49890-4130', 122.43, '74779-1587', '2023-12-16', 'Hulda Homenick', '5210988230222946', '12/26', '328', NULL, NULL, 'Fantasy'),
(462, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 8, 22.50, 'rebecca.dare@wyman.org', '1035 Frank Causeway\nUptonport, KS 76681', 180.00, '98511-4982', '2014-08-29', 'Nels Russel DVM', '347279841689724', '07/25', '571', NULL, NULL, 'Dystopian'),
(463, 'Manhattan', 'Moby-Dick', 'Herman Melville', 5, 59.17, 'remard@kertzmann.com', '725 Ludie Underpass\nPort Delaney, DC 64480-5494', 295.85, '44549-1323', '2021-05-10', 'Lesly Witting Sr.', '4024007107190109', '07/26', '724', NULL, NULL, 'Adventure'),
(464, 'Manhattan', 'Becoming', 'Michelle Obama', 8, 63.86, 'pshields@yahoo.com', '436 Brown Orchard\nPort Destineyland, MD 34951', 510.88, '82572', '2021-03-12', 'Ada Casper', '5480272949727799', '02/27', '843', NULL, NULL, 'Memoir'),
(465, 'Manhattan', 'The Book Thief', 'Markus Zusak', 1, 31.46, 'fernando.mcglynn@hotmail.com', '8924 Morissette Port Apt. 512\nIsadoreville, SD 15633', 31.46, '13878-4161', '2015-05-05', 'Melvina Grant', '2518256364221019', '09/27', '971', NULL, NULL, 'Historical Fiction'),
(466, 'Manhattan', 'The Catcher in the Rye', 'J.D. Salinger', 6, 75.50, 'ofriesen@hotmail.com', '986 Kuvalis Radial Apt. 378\nSamirland, TN 25747', 453.00, '24690-5580', '2015-08-16', 'Ursula Gorczany', '4979710733292489', '05/25', '351', NULL, NULL, 'Fiction'),
(467, 'Manhattan', 'The Book Thief', 'Markus Zusak', 4, 75.08, 'konopelski.sister@hotmail.com', '100 Welch Harbor Apt. 499\nWest Grover, NV 18672-4992', 300.32, '76088', '2014-03-11', 'Jensen Gerhold PhD', '2313783696080737', '01/25', '350', NULL, NULL, 'Historical Fiction'),
(468, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 5, 23.76, 'marley.block@hotmail.com', '16626 Weissnat Valleys Suite 677\nLake Myrtlemouth, TX 36189-9769', 118.80, '52347', '2015-03-08', 'Miss Shanie Christiansen V', '345992118411729', '10/27', '821', NULL, NULL, 'Adventure'),
(469, 'Manhattan', 'The Fault in Our Stars', 'John Green', 3, 13.92, 'lacy.schoen@yahoo.com', '1645 Jacobs Forest Apt. 577\nWest Luna, AR 97161', 41.76, '17070-5828', '2020-02-16', 'Dr. Mike Cummings', '5204163855051941', '01/27', '927', NULL, NULL, 'Romance'),
(470, 'Manhattan', 'Becoming', 'Michelle Obama', 10, 34.73, 'jewel.adams@ryan.biz', '9274 Sanford Parkways\nNolanstad, NV 41344', 347.30, '97071', '2015-02-16', 'Aliza Weissnat', '5386058087877453', '07/25', '108', NULL, NULL, 'Memoir'),
(471, 'Manhattan', 'The Great Gatsby', 'F. Scott Fitzgerald', 9, 43.69, 'jaycee.rippin@hotmail.com', '7471 Kreiger Grove Apt. 272\nLake Melyssa, NJ 96492-0738', 393.21, '73844', '2022-03-29', 'Demario Shanahan', '5541006754557322', '02/25', '615', NULL, NULL, 'Fiction'),
(472, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 7, 54.91, 'rudy26@lemke.com', '20915 Damion Shoal Suite 195\nWalkerfort, CO 32382', 384.37, '27257', '2024-04-05', 'Prof. Annamae Thiel', '5481956240059428', '04/25', '216', NULL, NULL, 'Dystopian'),
(473, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 9, 27.44, 'gregg.wolff@hotmail.com', '48457 Kreiger Hollow\nSouth Sierra, FL 63585-5908', 246.96, '53694', '2012-03-24', 'Samantha Steuber', '5584128413530728', '08/25', '904', NULL, NULL, 'Adventure'),
(474, 'Manhattan', 'The Hobbit', 'J.R.R. Tolkien', 2, 34.65, 'tromp.dianna@yahoo.com', '90302 O\'Reilly Club\nNew Alexie, OH 96394-6597', 69.30, '91491', '2021-09-20', 'Prof. Cassandra Sawayn IV', '4485185218761802', '12/26', '835', NULL, NULL, 'Fantasy'),
(475, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 10, 44.27, 'sbechtelar@ratke.com', '529 Labadie Hills Apt. 906\nParkermouth, NV 98969-4996', 442.70, '26085', '2022-03-13', 'Kristin Anderson', '4197067501533305', '06/26', '215', NULL, NULL, 'Non-fiction'),
(476, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 9, 12.46, 'roma.abshire@gmail.com', '68967 Howe Corners\nStehrville, WI 20765', 112.14, '78851-1673', '2016-11-02', 'Tamia Towne', '2599577759976145', '08/27', '539', NULL, NULL, 'Dystopian'),
(477, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 7, 93.30, 'prosacco.layla@borer.info', '1772 Deon Place Apt. 487\nPort Vicenta, ME 46434-7952', 653.10, '52856-5204', '2023-09-23', 'Abraham Hoppe', '4485315591356678', '05/27', '646', NULL, NULL, 'Thriller'),
(478, 'Manhattan', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, 59.65, 'hintz.elda@hotmail.com', '542 Pfeffer Hills\nFelicityborough, HI 37411', 298.25, '43252-9988', '2023-04-17', 'Prof. Brooks Weber V', '2659968347130054', '10/27', '431', NULL, NULL, 'Fiction'),
(479, 'Manhattan', 'The Fault in Our Stars', 'John Green', 10, 66.74, 'gfay@jacobi.net', '8771 Malika Plains\nEast Braden, FL 91293-2067', 667.40, '88169', '2022-06-23', 'Ed Flatley', '4929847411845088', '07/27', '560', NULL, NULL, 'Romance'),
(480, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 2, 64.23, 'patricia94@hartmann.com', '19355 Brent Turnpike\nWilburnport, OR 97550-3751', 128.46, '79395', '2022-10-02', 'Miss Meghan Kirlin Jr.', '4539090262953386', '08/26', '571', NULL, NULL, 'Thriller'),
(481, 'Manhattan', '1984', 'George Orwell', 10, 23.93, 'ronny.reilly@ryan.net', '181 Grimes Flat Apt. 673\nPort Wyattland, NJ 28931', 239.30, '33634', '2018-04-07', 'Wilmer Goldner', '4764825870535', '08/27', '341', NULL, NULL, 'Dystopian'),
(482, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 9, 88.93, 'billie01@morissette.com', '800 Helen Pass Suite 417\nWest Cecil, MN 64532', 800.37, '34338-4218', '2013-04-13', 'Prof. Winifred Wisoky', '2563843317369856', '02/25', '938', NULL, NULL, 'Romance'),
(483, 'Manhattan', 'The Fault in Our Stars', 'John Green', 1, 46.58, 'ulubowitz@gmail.com', '7920 Mckenna Motorway Suite 553\nElenorahaven, UT 03680-0004', 46.58, '48527-3891', '2012-09-09', 'Mr. Marcellus Baumbach DDS', '5195948407266687', '12/26', '285', NULL, NULL, 'Romance'),
(484, 'Manhattan', '1984', 'George Orwell', 6, 44.48, 'cgreenfelder@steuber.com', '8151 Agustina Garden\nFarrellland, RI 27985', 266.88, '56597', '2020-10-16', 'Shea Stokes V', '3528042746207041', '09/25', '390', NULL, NULL, 'Dystopian'),
(485, 'Manhattan', 'The Fault in Our Stars', 'John Green', 1, 51.01, 'peter83@leffler.com', '620 Gislason Ports\nAudramouth, CO 07273-0098', 51.01, '29152', '2017-05-29', 'Mr. Monte Konopelski DVM', '4716954338802940', '07/26', '295', NULL, NULL, 'Romance'),
(486, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 1, 40.55, 'gladyce65@buckridge.biz', '315 Ondricka Burg\nPort Danial, NH 66459-5969', 40.55, '86152-3007', '2019-01-26', 'Elza Stoltenberg', '4716661236437', '07/26', '564', NULL, NULL, 'Dystopian'),
(487, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 6, 46.22, 'crohan@yahoo.com', '69160 Baylee River\nSouth Jeremieshire, WV 69144-5198', 277.32, '71725-1775', '2023-02-03', 'Ronny Bartell', '2720641189665876', '09/25', '533', NULL, NULL, 'Romance'),
(488, 'Manhattan', 'The Great Gatsby', 'F. Scott Fitzgerald', 9, 38.60, 'dax17@cole.com', '128 Eino Stream\nDestanymouth, ND 95822', 347.40, '31581', '2016-04-08', 'Ada Howe MD', '2428780143294863', '02/27', '192', NULL, NULL, 'Fiction'),
(489, 'Manhattan', 'The Great Gatsby', 'F. Scott Fitzgerald', 8, 31.03, 'xjerde@hotmail.com', '68186 Aurelia Valleys Apt. 443\nPort Ethelchester, IL 76635', 248.24, '49952', '2023-07-08', 'Abner Leuschke DVM', '6011641840018274', '05/26', '801', NULL, NULL, 'Fiction'),
(490, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 2, 89.36, 'charlie.tremblay@metz.org', '5308 Josiah Inlet\nJohnstonfurt, CO 31337', 178.72, '16169', '2012-05-08', 'Dr. Dell Halvorson', '4716302898334088', '01/25', '920', NULL, NULL, 'Adventure'),
(491, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 3, 67.10, 'gdooley@gmail.com', '914 Moshe View\nNew Annamae, IN 38784', 201.30, '24192-6139', '2013-03-20', 'Christina Sauer', '4485612360565152', '01/27', '645', NULL, NULL, 'Fiction'),
(492, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 3, 50.76, 'rebecca.wisoky@franecki.net', '26971 Kayley Plains\nHickleberg, NC 38907', 152.28, '03041', '2017-08-19', 'Ryleigh Watsica', '4916728598424167', '03/25', '801', NULL, NULL, 'Fantasy'),
(493, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 1, 20.59, 'wnader@gmail.com', '12868 Moen Key\nEast Beau, GA 19487', 20.59, '16103', '2014-09-18', 'Kay Willms IV', '2509010638253022', '12/25', '973', NULL, NULL, 'Romance'),
(494, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 10, 62.51, 'rutherford.gabriella@yahoo.com', '94502 Luettgen Flat Apt. 261\nLake Zoramouth, IA 68448', 625.10, '98139-2238', '2024-05-10', 'Sienna Rutherford', '2671600557722775', '11/25', '360', NULL, NULL, 'Non-fiction'),
(495, 'Manhattan', 'The Catcher in the Rye', 'J.D. Salinger', 10, 54.20, 'wjast@kuphal.com', '6941 Emmerich Shore\nWest Dudleystad, HI 49370', 542.00, '71180', '2013-02-11', 'Mr. Melvina King III', '5404166409487428', '09/26', '282', NULL, NULL, 'Fiction'),
(496, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 7, 22.34, 'maxine.oconner@rice.com', '411 Kamille Creek\nWest Greg, LA 24256', 156.38, '75779', '2016-09-07', 'Vesta O\'Keefe V', '378342713361699', '05/25', '431', NULL, NULL, 'Dystopian'),
(497, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 3, 78.62, 'dolson@prohaska.com', '6037 Izaiah Wall\nSouth Irma, MN 66498', 235.86, '19222', '2024-05-14', 'Erik Larson', '3528526187449021', '01/25', '103', NULL, NULL, 'Fiction'),
(498, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 9, 99.61, 'kquigley@baumbach.com', '43109 Toy Stravenue\nJastside, HI 88301', 896.49, '79374', '2012-08-20', 'Delilah Thiel', '4916668021072110', '08/27', '527', NULL, NULL, 'Fantasy'),
(499, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 4, 62.00, 'jhirthe@smitham.info', '445 Hyatt Row\nRoseshire, NV 62261-6278', 248.00, '01999', '2024-01-27', 'Prudence Olson', '377371298623810', '06/27', '550', NULL, NULL, 'Fantasy'),
(500, 'Manhattan', 'Moby-Dick', 'Herman Melville', 2, 89.40, 'romaine.hand@yahoo.com', '3940 Towne Run Suite 627\nEast Cathrine, WI 68406', 178.80, '98804-5252', '2011-02-07', 'Sheila Littel', '4716476023384851', '04/25', '377', NULL, NULL, 'Adventure'),
(501, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 1, 52.12, 'jfranecki@yahoo.com', '3564 Lind Gardens Apt. 494\nNorth Dannyville, DE 68522', 52.12, '45171', '2011-07-14', 'Kane Emmerich', '4716878205795', '12/26', '864', NULL, NULL, 'Fiction'),
(502, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 3, 75.50, 'christa.romaguera@hartmann.org', '63366 Earnestine Throughway Suite 053\nSouth Tyreek, DE 62085-7520', 226.50, '10657', '2024-09-08', 'Lizeth Lind', '2221065036892794', '06/26', '710', NULL, NULL, 'Fiction'),
(503, 'Manhattan', 'The Great Gatsby', 'F. Scott Fitzgerald', 6, 82.92, 'bernita11@abernathy.com', '22011 Tremblay Shoals Suite 357\nAustenmouth, MS 57982', 497.52, '37988', '2020-07-08', 'Casper Ritchie', '6011920641869675', '11/27', '384', NULL, NULL, 'Fiction'),
(504, 'Manhattan', 'The Book Thief', 'Markus Zusak', 2, 32.36, 'wyman.mohammad@feil.net', '442 Annabell Gardens Apt. 573\nNorth Stella, NE 13594', 64.72, '66722-8789', '2015-04-20', 'Katlyn Boyle', '4929979902239644', '05/27', '560', NULL, NULL, 'Historical Fiction'),
(505, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 7, 70.14, 'odamore@koss.biz', '804 Stokes Valley Suite 753\nLake Kieraland, ND 96014-0556', 490.98, '89219', '2022-08-24', 'Dr. Lamont Effertz', '2416945079164901', '04/25', '569', NULL, NULL, 'Fantasy'),
(506, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 1, 70.64, 'geoffrey.pacocha@schoen.com', '13117 Anika Crossroad\nPort Anastasia, KY 24941', 70.64, '47487-6916', '2021-07-01', 'Gwendolyn Mayert', '2657088538080513', '05/25', '417', NULL, NULL, 'Dystopian'),
(507, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 10, 40.48, 'wjohns@kuhn.com', '34602 Linnie Valley Apt. 973\nPort Marieview, MO 98007-1084', 404.80, '52817', '2023-07-13', 'Amy Nolan', '4024007192228', '03/27', '186', NULL, NULL, 'Fantasy'),
(508, 'Manhattan', 'The Fault in Our Stars', 'John Green', 3, 27.15, 'utillman@gmail.com', '738 Salvador Lock Apt. 511\nAngelineton, ME 11863-7113', 81.45, '41760', '2020-01-07', 'Bella Kuhn', '2720467521884235', '09/27', '935', NULL, NULL, 'Romance'),
(509, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 9, 41.20, 'qgraham@gaylord.com', '70674 Pagac Mountain\nLake Justen, ME 12402', 370.80, '42262', '2021-06-11', 'Travon Howe', '3528038217865226', '05/27', '450', NULL, NULL, 'Fiction'),
(510, 'Manhattan', 'The Book Thief', 'Markus Zusak', 4, 39.51, 'schmeler.vena@yahoo.com', '63166 Durward Ford Suite 877\nEast Billyborough, VA 23351', 158.04, '52724', '2016-02-12', 'Ms. Corene Witting', '6011005614802000', '07/25', '129', NULL, NULL, 'Historical Fiction'),
(511, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 9, 50.54, 'jaunita82@hotmail.com', '432 Schuyler Inlet\nEbertfort, CA 71021', 454.86, '59445', '2016-05-11', 'Mervin Hansen', '5598412595696422', '03/27', '695', NULL, NULL, 'Thriller'),
(512, 'Manhattan', 'The Book Thief', 'Markus Zusak', 1, 97.98, 'casper.kamren@towne.com', '546 Sofia Rest\nEast Isabelletown, WA 18019-7628', 97.98, '55174-6997', '2018-08-04', 'Miss Anjali Zemlak PhD', '375557541653271', '08/26', '163', NULL, NULL, 'Historical Fiction'),
(513, 'Manhattan', '1984', 'George Orwell', 9, 41.28, 'dlarson@hotmail.com', '583 Bailey Plains\nRunolfssonville, WA 61461', 371.52, '96613', '2020-11-06', 'Karli Dibbert', '4716138175564918', '08/25', '327', NULL, NULL, 'Dystopian'),
(514, 'Manhattan', 'The Fault in Our Stars', 'John Green', 2, 97.57, 'burley28@hotmail.com', '29323 Rossie Islands Suite 119\nLake Lina, DC 23206', 195.14, '43458', '2022-09-17', 'Cristopher Mante I', '4024007183789253', '07/26', '198', NULL, NULL, 'Romance'),
(515, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 10, 86.84, 'mdietrich@yahoo.com', '92570 Rosario Valley Apt. 900\nSouth Victoriaton, TX 29113-1886', 868.40, '15043', '2015-06-21', 'Hellen Harvey', '6011897677848478', '01/26', '477', NULL, NULL, 'Dystopian'),
(516, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 1, 40.13, 'kole26@walsh.org', '3645 Susan Crossroad Suite 862\nNorth Fay, KY 63869-0943', 40.13, '28237', '2016-07-31', 'Prof. Bartholome Barton', '5546059299710182', '09/25', '521', NULL, NULL, 'Adventure'),
(517, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 10, 96.13, 'qschuppe@hotmail.com', '64538 Olaf Cape Suite 225\nNew Garfieldmouth, IN 56999', 961.30, '33034', '2020-09-20', 'Dr. Samir Zieme', '2720660897604886', '03/25', '891', NULL, NULL, 'Fiction'),
(518, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 8, 73.17, 'jeffery.wisoky@rice.com', '262 Werner Alley\nNew Adrain, MT 25694-9530', 585.36, '99373-1332', '2015-09-06', 'Prof. Erica Bauch V', '5435303004521854', '04/25', '440', NULL, NULL, 'Romance'),
(519, 'Manhattan', 'Becoming', 'Michelle Obama', 4, 96.85, 'crooks.berneice@rempel.net', '598 Elizabeth Court Apt. 583\nEmmetmouth, MO 16786-4318', 387.40, '59702-2713', '2024-03-10', 'Marta Gulgowski', '6011601737622109', '09/25', '250', NULL, NULL, 'Memoir'),
(520, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 4, 23.27, 'uhills@mohr.info', '39466 Berge Pike Apt. 475\nMattieland, SD 72787-7932', 93.08, '79851', '2023-05-29', 'Keaton Will', '5523305049937550', '06/25', '694', NULL, NULL, 'Non-fiction'),
(521, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 3, 58.86, 'saige42@gmail.com', '18404 Wisozk Drive\nSouth Lela, WV 54643-8371', 176.58, '03814', '2020-06-14', 'Darrick Pollich', '379119599515708', '03/25', '206', NULL, NULL, 'Dystopian'),
(522, 'Manhattan', 'The Fault in Our Stars', 'John Green', 9, 27.32, 'maida.quigley@lowe.biz', '573 Aliyah Port Suite 569\nNorth Kodyport, NY 56599-8711', 245.88, '08048-6973', '2016-05-22', 'Araceli Waelchi', '4556587435048', '01/26', '807', NULL, NULL, 'Romance'),
(523, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 4, 51.58, 'unique.sawayn@hotmail.com', '94655 Ellsworth Summit\nSouth Lilian, ID 52634-0604', 206.32, '43650-8004', '2014-06-19', 'Mr. Enrique Larson', '4716279287973512', '01/26', '606', NULL, NULL, 'Thriller'),
(524, 'Manhattan', 'Moby-Dick', 'Herman Melville', 8, 55.04, 'maverick.cruickshank@will.com', '483 Chaim Park Suite 659\nSouth Bailee, SC 59441', 440.32, '17660-1399', '2013-11-15', 'Dr. Mercedes Abshire Jr.', '4916750000961826', '05/26', '820', NULL, NULL, 'Adventure'),
(525, 'Manhattan', 'The Catcher in the Rye', 'J.D. Salinger', 1, 96.50, 'amorar@gmail.com', '975 Kilback Mall Apt. 258\nFaustomouth, CO 63702-7179', 96.50, '57001-6739', '2018-09-05', 'Maude Johns', '4539335901873366', '03/25', '455', NULL, NULL, 'Fiction'),
(526, 'Manhattan', 'Moby-Dick', 'Herman Melville', 9, 37.55, 'reuben.carter@bogisich.com', '27844 Trenton Turnpike\nEast Norbertotown, MI 99992', 337.95, '33691-8649', '2024-03-24', 'Ms. Renee Turner MD', '4532389990167', '07/25', '610', NULL, NULL, 'Adventure'),
(527, 'Manhattan', 'Moby-Dick', 'Herman Melville', 7, 32.95, 'toni.nicolas@schaefer.com', '64176 Lockman Prairie\nWest Karellemouth, TX 80549', 230.65, '01472', '2015-09-17', 'Verlie Schimmel', '5437527803756869', '06/27', '633', NULL, NULL, 'Adventure'),
(528, 'Manhattan', 'Moby-Dick', 'Herman Melville', 9, 58.39, 'kraig.larson@ritchie.biz', '31747 Howell Manors Suite 878\nDouglaschester, MI 75528-0698', 525.51, '67608-8653', '2021-11-26', 'Jeremy Von', '6011776039424162', '12/26', '866', NULL, NULL, 'Adventure'),
(529, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 8, 88.28, 'cmills@rice.com', '92578 Eleanore Mountain Apt. 216\nLanemouth, CO 70291', 706.24, '21361-5855', '2014-04-20', 'Kelton Schneider', '4167294416479871', '01/27', '187', NULL, NULL, 'Adventure'),
(530, 'Manhattan', 'Moby-Dick', 'Herman Melville', 5, 74.22, 'kjohns@yahoo.com', '454 Marques Knoll Suite 959\nAngelineshire, DE 13619-8313', 371.10, '86230-4453', '2018-02-10', 'Dr. Jayson Nitzsche', '2453465975879654', '11/26', '132', NULL, NULL, 'Adventure'),
(531, 'Manhattan', 'The Catcher in the Rye', 'J.D. Salinger', 1, 54.07, 'rosalia72@rutherford.com', '502 Metz Square Suite 956\nLake Briastad, NY 07686', 54.07, '82084', '2013-10-28', 'Prof. Charlotte Welch', '2387880716202118', '06/25', '744', NULL, NULL, 'Fiction'),
(532, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 6, 85.43, 'vgibson@gmail.com', '1431 Mireille Extension\nEast Marvinshire, MD 88539', 512.58, '07299-1958', '2017-10-02', 'Devonte Leuschke I', '4916035284925766', '03/27', '421', NULL, NULL, 'Fiction'),
(533, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 4, 79.01, 'christophe41@yahoo.com', '2030 Magnus Mountains Suite 974\nEast Tito, ID 82175', 316.04, '33028', '2017-06-03', 'Alec Johns', '4485011233235', '01/26', '891', NULL, NULL, 'Dystopian'),
(534, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 3, 80.90, 'miller.samson@walker.net', '413 Orn Harbor\nGerholdmouth, NM 78725-1011', 242.70, '14496-2386', '2021-07-27', 'Henderson Yundt', '4024007197942666', '05/27', '443', NULL, NULL, 'Non-fiction'),
(535, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 6, 93.61, 'alexys.west@osinski.com', '995 Feest Drive\nLake Willie, KY 23949-7603', 561.66, '44778-0352', '2016-09-23', 'Fermin Weissnat', '4556154601493', '02/27', '175', NULL, NULL, 'Dystopian'),
(536, 'Manhattan', 'The Hobbit', 'J.R.R. Tolkien', 6, 10.62, 'ellis38@gmail.com', '9113 Darrin Rue Apt. 786\nWest Shaina, IA 07480', 63.72, '36681-8676', '2021-11-13', 'Ms. Janice Wintheiser', '2221192848688499', '11/26', '312', NULL, NULL, 'Fantasy'),
(537, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 7, 22.00, 'ryann06@flatley.com', '3980 Elvis Fort\nSouth Orieview, NY 14642', 154.00, '92418', '2010-12-02', 'Nella Kilback', '2689730417139785', '06/25', '526', NULL, NULL, 'Fiction'),
(538, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 7, 78.12, 'eleonore.harvey@hotmail.com', '9120 Pollich Fields Suite 447\nHerminatown, OH 93201-7941', 546.84, '09864-3425', '2019-05-29', 'Aglae Monahan', '4716179943319581', '10/26', '134', NULL, NULL, 'Adventure'),
(539, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 7, 22.21, 'xgrady@yahoo.com', '3017 Jade Rue Apt. 972\nWest Jaquelin, ID 29078-7874', 155.47, '48790-2781', '2021-06-19', 'Alize Kozey', '379027178664047', '07/26', '253', NULL, NULL, 'Thriller'),
(540, 'Manhattan', 'The Fault in Our Stars', 'John Green', 5, 83.75, 'ghessel@hotmail.com', '99234 Borer Valley\nDachstad, HI 42813', 418.75, '42106-6614', '2017-01-28', 'Kristian Goyette', '4556259754502', '04/26', '485', NULL, NULL, 'Romance'),
(541, 'Manhattan', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 31.90, 'qdicki@yahoo.com', '7500 Rutherford Ranch Suite 224\nStrosinberg, OH 27751-2245', 223.30, '16729-6159', '2016-12-11', 'Brenna Leffler', '2358406098567020', '06/27', '295', NULL, NULL, 'Fiction'),
(542, 'Manhattan', '1984', 'George Orwell', 8, 85.47, 'fwalker@hotmail.com', '1956 Schmitt Well Apt. 099\nNew Elyseton, PA 02155', 683.76, '42825', '2024-07-28', 'Miss Maymie Bruen', '3589528093848201', '08/26', '177', NULL, NULL, 'Dystopian'),
(543, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 10, 13.62, 'smitham.anika@hotmail.com', '58608 Bednar Falls Apt. 208\nNorth Camron, SD 91796', 136.20, '68856', '2017-06-09', 'Dr. Rhett Erdman', '4929015342534300', '06/27', '963', NULL, NULL, 'Romance'),
(544, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 5, 32.37, 'bennett.simonis@gmail.com', '5883 Heber Corners\nGrahamstad, WA 46786-4777', 161.85, '19992-2942', '2023-04-27', 'Melvin Stiedemann DVM', '2333263373071073', '10/26', '301', NULL, NULL, 'Adventure'),
(545, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 4, 94.34, 'rchamplin@yahoo.com', '79460 Simonis Via\nKailynburgh, ID 60569-1917', 377.36, '66149', '2024-09-02', 'Miss Cathryn Schaefer Jr.', '4485838600046386', '04/26', '614', NULL, NULL, 'Non-fiction'),
(546, 'Manhattan', '1984', 'George Orwell', 7, 32.95, 'kenneth10@gmail.com', '629 Milan Mill\nMylenemouth, DC 27406', 230.65, '99770', '2016-03-08', 'Sherwood Huels I', '5311802083247900', '05/25', '938', NULL, NULL, 'Dystopian'),
(547, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 2, 59.62, 'zdaugherty@mclaughlin.com', '23991 Hansen Camp Suite 868\nConsidineside, AR 52995-5406', 119.24, '09798', '2024-06-15', 'Mrs. Harmony McKenzie', '6011282212483661', '05/26', '892', NULL, NULL, 'Non-fiction'),
(548, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 7, 57.45, 'chasity.beatty@sporer.com', '331 Alek Islands Apt. 326\nPowlowskiborough, NM 17827', 402.15, '12667-6455', '2015-03-06', 'Bella Jacobs I', '2534174506555626', '03/26', '669', NULL, NULL, 'Non-fiction'),
(549, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 2, 76.86, 'fannie.kemmer@yahoo.com', '64345 Kshlerin Shores Suite 387\nPort Juwanshire, ID 14862-5120', 153.72, '03593', '2020-11-29', 'Aliyah Feest', '4716622875557884', '02/27', '130', NULL, NULL, 'Adventure'),
(550, 'Manhattan', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 73.98, 'tomas.rosenbaum@denesik.com', '40902 Juwan Shore\nNorth Idatown, ME 35318', 517.86, '31267', '2024-02-07', 'Sierra Lindgren', '6011720194747082', '09/27', '100', NULL, NULL, 'Fiction'),
(551, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 9, 21.66, 'alexzander71@yahoo.com', '829 Sandrine Track\nFaheybury, MD 80070', 194.94, '85895', '2021-06-05', 'Abner Price', '4539575582368240', '09/26', '311', NULL, NULL, 'Thriller'),
(552, 'Manhattan', 'Moby-Dick', 'Herman Melville', 1, 76.65, 'tanya18@bartoletti.com', '967 Mayer Rest Suite 691\nClementinaville, MI 75026-7540', 76.65, '14506-2617', '2014-01-06', 'Prof. Iliana Rempel', '4539448291764002', '12/25', '546', NULL, NULL, 'Adventure'),
(553, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 5, 72.54, 'sauer.mariano@gmail.com', '68547 Gregoria Plain\nDickiside, IN 41348', 362.70, '13673-0825', '2012-01-11', 'Bobbie Stanton V', '4916887646305438', '06/27', '699', NULL, NULL, 'Thriller'),
(554, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 7, 43.34, 'clara.klocko@gmail.com', '8255 Gusikowski Isle\nAlexannefort, AK 79655', 303.38, '89235-1879', '2018-05-09', 'Ms. Carley Spinka Jr.', '2340272494064827', '06/25', '874', NULL, NULL, 'Non-fiction'),
(555, 'Manhattan', 'The Hobbit', 'J.R.R. Tolkien', 2, 20.23, 'ratke.carlotta@gmail.com', '5447 Smitham Mountain\nSouth Calebfurt, CT 23708-3786', 40.46, '56554-2297', '2023-04-01', 'Kathryne Batz', '2546249538190356', '03/26', '612', NULL, NULL, 'Fantasy'),
(556, 'Manhattan', 'The Catcher in the Rye', 'J.D. Salinger', 6, 34.93, 'sauer.kayley@robel.biz', '603 Camden Mountains\nNew Patsy, MO 95221-5501', 209.58, '82031-6315', '2016-05-28', 'Ms. Elenor Padberg', '2720736029864521', '03/27', '331', NULL, NULL, 'Fiction'),
(557, 'Manhattan', 'The Book Thief', 'Markus Zusak', 8, 94.39, 'asha69@hotmail.com', '7228 Farrell Port Suite 577\nNorth Oranmouth, DC 79564', 755.12, '12506', '2011-05-08', 'Westley Welch', '2475554886519071', '10/26', '422', NULL, NULL, 'Historical Fiction'),
(558, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 7, 13.51, 'elarkin@goyette.net', '7533 Evangeline Mount Suite 838\nReginaldside, ME 96176-6371', 94.57, '75429', '2014-02-14', 'Jaylon Wiegand', '370764823574010', '05/27', '904', NULL, NULL, 'Adventure'),
(559, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 6, 24.07, 'izabella68@gmail.com', '298 Germaine Turnpike Suite 926\nLake Kierabury, MS 13782-0413', 144.42, '12076', '2024-06-24', 'Lily Berge', '4292108026476', '07/25', '348', NULL, NULL, 'Fantasy'),
(560, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 5, 81.35, 'uabshire@yahoo.com', '7986 Hirthe Burg Suite 768\nCasperfurt, AK 17592-5200', 406.75, '68558', '2021-05-08', 'Mrs. Guadalupe Hyatt Jr.', '3589520428085633', '11/27', '673', NULL, NULL, 'Romance'),
(561, 'Manhattan', 'The Fault in Our Stars', 'John Green', 8, 22.26, 'deven.lynch@hotmail.com', '54832 Adonis Coves\nFeestville, AR 71171', 178.08, '65602', '2022-03-29', 'Miss Velma DuBuque Sr.', '2720618592954691', '03/25', '536', NULL, NULL, 'Romance'),
(562, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 10, 21.27, 'blick.corbin@hotmail.com', '3883 Von Garden Suite 704\nFeeneyport, SC 89910', 212.70, '54661', '2011-08-01', 'Dr. Cruz Collier', '5353678397579165', '10/25', '783', NULL, NULL, 'Thriller'),
(563, 'Manhattan', 'The Fault in Our Stars', 'John Green', 5, 17.88, 'frieda28@corwin.net', '836 Lew Burg Suite 294\nAlethaborough, RI 34956', 89.40, '40514-8848', '2014-03-11', 'Martina Cartwright', '5340839846157369', '12/24', '808', NULL, NULL, 'Romance'),
(564, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 6, 75.06, 'schoen.karina@littel.org', '185 Kyle Rapid\nLake Era, OK 80183', 450.36, '75940', '2011-09-10', 'Declan Wehner PhD', '2221496648016599', '06/26', '245', NULL, NULL, 'Non-fiction'),
(565, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 8, 51.97, 'gibson.kendrick@gmail.com', '436 Ferry Place Apt. 252\nFloridafurt, SD 63075-8055', 415.76, '58270', '2019-09-14', 'Kiara Grimes PhD', '5463454124056498', '07/26', '503', NULL, NULL, 'Thriller'),
(566, 'Manhattan', 'The Hobbit', 'J.R.R. Tolkien', 2, 45.62, 'dooley.gail@yahoo.com', '24989 Hettinger Hills Suite 075\nEast Bradyton, MS 53326-3014', 91.24, '26167', '2012-11-19', 'Sadye Doyle Jr.', '4916849938077281', '12/26', '836', NULL, NULL, 'Fantasy'),
(567, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 7, 28.36, 'bettye37@gmail.com', '76305 Rolfson Ridge\nMosciskifurt, RI 27868', 198.52, '11665-7362', '2011-12-25', 'Dr. Jermain Zemlak', '4916475098758443', '12/26', '437', NULL, NULL, 'Romance'),
(568, 'Manhattan', 'The Book Thief', 'Markus Zusak', 9, 63.93, 'udaniel@mccullough.org', '14058 Sidney Crest\nManntown, GA 78897', 575.37, '63090-0719', '2023-09-14', 'Carolina Runte PhD', '3528093757392784', '11/27', '889', NULL, NULL, 'Historical Fiction'),
(569, 'Manhattan', 'The Hobbit', 'J.R.R. Tolkien', 6, 82.43, 'uokeefe@gmail.com', '741 Hessel Port\nEast Elta, VT 59684-3980', 494.58, '18293-5683', '2016-10-21', 'Favian Kertzmann DDS', '5267509456899589', '03/26', '754', NULL, NULL, 'Fantasy'),
(570, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 9, 58.30, 'jacobi.garnet@jacobson.com', '74784 Beahan Plain\nEast Adellton, VA 27135', 524.70, '04689', '2014-02-17', 'Meaghan Price I', '6011591876206030', '10/25', '870', NULL, NULL, 'Fiction'),
(571, 'Manhattan', 'The Book Thief', 'Markus Zusak', 3, 45.93, 'zblick@hotmail.com', '426 Newell Orchard Apt. 349\nNorth Celinetown, OK 32854', 137.79, '26374-5550', '2019-08-17', 'Zoey Schumm', '4844336237658257', '05/27', '335', NULL, NULL, 'Historical Fiction'),
(572, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 7, 46.17, 'vgoyette@yahoo.com', '45782 Orn Overpass Apt. 218\nEast Amaristad, AR 16615', 323.19, '01895-9563', '2017-12-03', 'Quinn Toy DDS', '4539095216292302', '08/26', '336', NULL, NULL, 'Dystopian'),
(573, 'Manhattan', 'The Great Gatsby', 'F. Scott Fitzgerald', 8, 22.76, 'taya59@hotmail.com', '3695 Batz Circles\nEnostown, WV 25698', 182.08, '77849', '2024-06-29', 'Russell Schmitt', '5107080003561639', '03/27', '106', NULL, NULL, 'Fiction'),
(574, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 5, 86.64, 'carol.spinka@schaefer.com', '766 Bailey Flats\nKingmouth, TX 84463-0954', 433.20, '55512-8111', '2023-08-30', 'Cristian Bauch DVM', '4485410811341186', '02/27', '872', NULL, NULL, 'Romance'),
(575, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 4, 28.86, 'bernadine56@gmail.com', '511 Sebastian Prairie\nRaumouth, NM 94626-6992', 115.44, '35444', '2011-10-02', 'Dayna Robel', '2345410028180504', '09/26', '781', NULL, NULL, 'Fantasy'),
(576, 'Manhattan', 'The Hobbit', 'J.R.R. Tolkien', 8, 70.19, 'jacobs.andy@gmail.com', '3233 Polly Unions\nTreutelburgh, NC 86935', 561.52, '92870', '2024-01-21', 'Alda Konopelski', '4556695621516605', '05/25', '774', NULL, NULL, 'Fantasy'),
(577, 'Manhattan', 'The Book Thief', 'Markus Zusak', 2, 13.37, 'ostokes@mann.net', '6566 Hermiston Road\nLake Beulahtown, WI 37442-8299', 26.74, '37352', '2018-10-06', 'Jeff Lakin', '4716660095719', '10/27', '144', NULL, NULL, 'Historical Fiction');
INSERT INTO `sales` (`id`, `store`, `title`, `author`, `quantity`, `price`, `email`, `address`, `totalPrice`, `zip`, `date`, `name`, `card_num`, `expiration`, `cvv`, `created_at`, `updated_at`, `genre`) VALUES
(578, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 3, 89.54, 'nikolaus.caden@rice.com', '7694 Keeling Fords Suite 174\nGislasonport, MD 43403', 268.62, '38656-7220', '2011-10-02', 'Della Denesik', '4916509724463786', '05/26', '655', NULL, NULL, 'Romance'),
(579, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 1, 27.31, 'hans.carroll@borer.com', '93492 Bauch Causeway Suite 721\nEmeliatown, RI 44477-8078', 27.31, '62508', '2021-11-09', 'Hunter Bailey', '4485548723542', '11/26', '927', NULL, NULL, 'Thriller'),
(580, 'Manhattan', 'The Great Gatsby', 'F. Scott Fitzgerald', 4, 23.23, 'kenny80@conn.com', '979 Liliana Valley\nBergstromfurt, WA 85266', 92.92, '43310', '2016-10-29', 'Mikel Daniel', '5500400207728268', '02/26', '191', NULL, NULL, 'Fiction'),
(581, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 1, 60.38, 'shanahan.alisa@hotmail.com', '67967 Nella Point\nKaileymouth, KS 85088-2242', 60.38, '99056-3719', '2019-11-14', 'Claudine Bartoletti', '3589276590832118', '01/27', '574', NULL, NULL, 'Dystopian'),
(582, 'Manhattan', 'Becoming', 'Michelle Obama', 2, 73.87, 'laisha.kuhlman@kiehn.com', '41481 Ardith Summit\nVadabury, NH 59694', 147.74, '00723-9619', '2022-02-23', 'Gage Leffler DDS', '2720265164216222', '11/25', '837', NULL, NULL, 'Memoir'),
(583, 'Manhattan', 'Becoming', 'Michelle Obama', 5, 84.49, 'xrosenbaum@lebsack.com', '97905 Ally Coves Suite 902\nOwenfurt, DC 70124', 422.45, '18712-8678', '2011-02-12', 'Miss Asa Schuppe IV', '2301308746365948', '04/27', '386', NULL, NULL, 'Memoir'),
(584, 'Manhattan', 'The Hobbit', 'J.R.R. Tolkien', 3, 26.88, 'wfunk@hotmail.com', '46323 Laurine Forge\nEast Jett, MT 17642', 80.64, '26552-7063', '2010-12-16', 'Angela Lakin', '5320232250956969', '08/25', '678', NULL, NULL, 'Fantasy'),
(585, 'Manhattan', 'The Hunger Games', 'Suzanne Collins', 4, 81.91, 'bailey.breana@cummings.com', '80717 Ava Mission\nWildermanfort, NV 90312-8058', 327.64, '59226-9754', '2019-11-01', 'Cathy Beahan', '5584300474852719', '08/27', '340', NULL, NULL, 'Dystopian'),
(586, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 1, 70.03, 'maverick.lockman@yahoo.com', '58453 Murazik Expressway Apt. 387\nNew Clifford, WA 19710-8842', 70.03, '03634', '2024-05-11', 'Tressa Reilly', '5148610356222412', '11/27', '305', NULL, NULL, 'Fiction'),
(587, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 2, 93.60, 'champlin.dusty@kshlerin.com', '4664 Okuneva Road\nMurphyfort, TN 66338-7263', 187.20, '30889-6918', '2011-08-21', 'Arturo Jaskolski', '379967140715437', '01/26', '153', NULL, NULL, 'Fantasy'),
(588, 'Manhattan', 'The Catcher in the Rye', 'J.D. Salinger', 2, 57.53, 'morissette.fredy@hotmail.com', '5482 Bashirian Mountains Apt. 320\nDoyleland, WI 42782', 115.06, '40172-1368', '2020-08-12', 'Hosea Leannon', '4539185731325826', '04/27', '932', NULL, NULL, 'Fiction'),
(589, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 1, 37.16, 'xwilderman@mraz.com', '4692 Emily Stravenue Apt. 931\nWest Jordane, OH 54436', 37.16, '42860', '2023-11-30', 'Wilhelmine Hill', '4716753446348162', '04/27', '882', NULL, NULL, 'Thriller'),
(590, 'Manhattan', 'The Catcher in the Rye', 'J.D. Salinger', 3, 71.65, 'langosh.mckenzie@zieme.com', '83036 Octavia Parkways\nLaurettahaven, NH 55939', 214.95, '59870-5459', '2014-10-16', 'Art Kreiger', '2695485836384817', '05/25', '178', NULL, NULL, 'Fiction'),
(591, 'Manhattan', '1984', 'George Orwell', 8, 38.52, 'smitham.faustino@hotmail.com', '87506 Dickens Cliff Apt. 940\nCheyennechester, MO 40241-6053', 308.16, '15002', '2015-12-12', 'Ransom Ward', '6011810211988858', '08/27', '386', NULL, NULL, 'Dystopian'),
(592, 'Manhattan', 'To Kill a Mockingbird', 'Harper Lee', 1, 51.56, 'shields.jade@barrows.biz', '62689 Goyette Falls Apt. 677\nEast Gunnar, NY 21889-4818', 51.56, '49286', '2014-05-24', 'Minnie Littel', '4716163566425198', '06/27', '451', NULL, NULL, 'Fiction'),
(593, 'Manhattan', 'The Alchemist', 'Paulo Coelho', 8, 49.82, 'cathrine69@gmail.com', '3367 Lueilwitz Estates\nKossbury, MS 03553-3294', 398.56, '52955', '2020-01-25', 'Mrs. Laurie Lehner', '3589338714529598', '05/26', '624', NULL, NULL, 'Adventure'),
(594, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 8, 88.24, 'raven04@hotmail.com', '5536 Stiedemann Mount Suite 658\nHayesstad, AZ 28620-4549', 705.92, '91690-0141', '2020-08-10', 'Miss Lily Haag', '2440963261354263', '09/25', '768', NULL, NULL, 'Non-fiction'),
(595, 'Manhattan', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 4, 67.73, 'helmer40@rolfson.info', '32656 Gaylord View Suite 381\nSouth Jermain, UT 49404', 270.92, '34872', '2019-11-04', 'Lisette Cormier', '6011980007041129', '02/26', '255', NULL, NULL, 'Non-fiction'),
(596, 'Manhattan', 'The Da Vinci Code', 'Dan Brown', 10, 56.05, 'bpaucek@robel.info', '8974 O\'Connell Knolls Suite 875\nEast Burniceside, MN 56389-8850', 560.50, '16732-5611', '2018-07-17', 'Viola Raynor', '2720597654917301', '05/25', '759', NULL, NULL, 'Thriller'),
(597, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1, 21.31, 'marielle.beer@hotmail.com', '27973 Lafayette Spurs\nShanahanchester, CA 04938', 21.31, '76053', '2015-06-19', 'Garry Simonis', '4846084724590116', '08/27', '540', NULL, NULL, 'Fantasy'),
(598, 'Manhattan', 'The Great Gatsby', 'F. Scott Fitzgerald', 10, 80.87, 'larson.gwen@stracke.com', '1178 Harmony Shoals\nNorvalbury, WV 37914', 808.70, '91809', '2015-02-04', 'Lulu Kiehn V', '5186782533048698', '12/24', '395', NULL, NULL, 'Fiction'),
(599, 'Manhattan', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 4, 75.45, 'glenna.harris@hotmail.com', '69053 Halvorson Manors\nWest Josefa, CO 72292', 301.80, '69674', '2021-12-16', 'Dr. Alize Bernier', '4985454515122752', '08/27', '954', NULL, NULL, 'Fantasy'),
(600, 'Manhattan', 'Pride and Prejudice', 'Jane Austen', 9, 65.47, 'stehr.lincoln@hotmail.com', '707 Schuster Ville Suite 377\nAryannaland, WY 66548', 589.23, '79546', '2014-04-09', 'Asa Towne', '4916879219398270', '03/27', '451', NULL, NULL, 'Romance'),
(601, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 6, 90.92, 'earlene99@yahoo.com', '81932 Boyer Mission Suite 644\nErickchester, AZ 17077', 545.52, '56793-3687', '2022-04-04', 'Crystal Johnson MD', '4532893913363096', '09/26', '433', NULL, NULL, 'Dystopian'),
(602, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 3, 73.42, 'koss.flo@volkman.com', '59957 O\'Keefe Place Suite 777\nBennettside, NM 80246', 220.26, '38893', '2017-08-12', 'Ms. Laila McKenzie DDS', '4532343706258798', '01/26', '862', NULL, NULL, 'Fiction'),
(603, 'Staten Island', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 10, 61.19, 'jason99@bednar.com', '96739 Gusikowski Roads Suite 119\nPort Axelton, NH 19753-7438', 611.90, '45758-3938', '2016-03-02', 'Kaci Feest', '4916422368302023', '03/26', '254', NULL, NULL, 'Fantasy'),
(604, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 6, 92.30, 'noemy59@brakus.com', '69068 Ruecker Courts Suite 482\nAniyahstad, MT 17880-8719', 553.80, '28021', '2024-03-25', 'Isadore Quigley', '4929142804941342', '11/25', '526', NULL, NULL, 'Fantasy'),
(605, 'Staten Island', 'Becoming', 'Michelle Obama', 4, 70.88, 'janice32@gmail.com', '937 Senger Roads Apt. 935\nNew Paul, AR 83735-5534', 283.52, '97470-4706', '2021-11-01', 'Prof. Theresia Larkin', '2221884723871212', '02/27', '770', NULL, NULL, 'Memoir'),
(606, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 10, 91.40, 'heaney.monica@gmail.com', '135 Little Mission Suite 939\nCharlottehaven, KY 85511', 914.00, '94220-1989', '2016-06-21', 'Rafael Greenholt II', '4539379950837567', '05/27', '166', NULL, NULL, 'Adventure'),
(607, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 5, 42.78, 'greenfelder.aylin@hegmann.org', '42352 Cara Route Suite 850\nSchillerbury, OR 90488-7961', 213.90, '03859', '2023-03-17', 'Angie Bosco', '4024007167154', '01/26', '949', NULL, NULL, 'Fantasy'),
(608, 'Staten Island', 'The Fault in Our Stars', 'John Green', 6, 74.97, 'tess.hirthe@yahoo.com', '7135 Okuneva Locks\nNorth Marcelberg, WV 22505-3011', 449.82, '46075-3609', '2013-12-15', 'Dr. Alena Friesen', '6011649811706223', '06/26', '218', NULL, NULL, 'Romance'),
(609, 'Staten Island', 'The Book Thief', 'Markus Zusak', 2, 51.60, 'corwin.adelbert@gmail.com', '32288 Thompson Center\nSouth Verla, KY 15583', 103.20, '87358-8527', '2024-10-21', 'Nona Stanton', '340669337228580', '05/25', '471', NULL, NULL, 'Historical Fiction'),
(610, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 6, 42.03, 'isabella.bradtke@hotmail.com', '7276 Bogan Street\nIsmaelmouth, SC 58091', 252.18, '71042', '2014-11-27', 'Heather Tremblay', '4024007107521725', '05/26', '372', NULL, NULL, 'Fantasy'),
(611, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 10, 61.75, 'mtillman@hotmail.com', '76918 Ubaldo Trafficway\nDaronstad, IL 47176-2383', 617.50, '29123', '2016-02-16', 'Dr. Maybelle Little MD', '4716279017278935', '01/26', '952', NULL, NULL, 'Adventure'),
(612, 'Staten Island', 'The Fault in Our Stars', 'John Green', 10, 48.45, 'ashton40@gmail.com', '64125 Anderson Expressway\nAracelishire, VT 39495-6364', 484.50, '98908-0820', '2024-11-07', 'Mr. Tony Stokes I', '342842703657934', '01/25', '732', NULL, NULL, 'Romance'),
(613, 'Staten Island', 'The Catcher in the Rye', 'J.D. Salinger', 2, 68.24, 'upton.caleigh@gleichner.net', '485 McClure Viaduct\nWest Gladyston, IA 38654-6623', 136.48, '38656', '2020-03-24', 'Ms. Jaunita Waters', '2221614463110038', '02/27', '140', NULL, NULL, 'Fiction'),
(614, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 65.64, 'fbalistreri@daugherty.com', '74616 Berneice Lake\nMillsstad, OH 01173', 459.48, '14521-1870', '2024-06-24', 'Dr. Wilson Gerhold III', '2437372497501934', '05/27', '476', NULL, NULL, 'Fiction'),
(615, 'Staten Island', 'The Catcher in the Rye', 'J.D. Salinger', 7, 89.76, 'satterfield.muhammad@collier.com', '559 Lazaro Port\nPort Malcolm, RI 87646', 628.32, '96976', '2015-04-04', 'Albina Gaylord V', '4556355520407816', '01/25', '216', NULL, NULL, 'Fiction'),
(616, 'Staten Island', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 5, 12.87, 'manley.gibson@erdman.com', '269 Marlee Route Apt. 569\nEast Stanleyland, CT 23119', 64.35, '53452', '2017-05-08', 'Jace Haag', '5240030872862699', '04/25', '571', NULL, NULL, 'Fantasy'),
(617, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 8, 67.17, 'sadye28@gmail.com', '9434 Viola Shores Apt. 507\nAstridstad, IA 86113-4428', 537.36, '34700-7744', '2017-08-13', 'Cleo Corwin', '4119989321710', '10/26', '324', NULL, NULL, 'Romance'),
(618, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 3, 13.25, 'drath@yahoo.com', '672 Jeffry Valleys Suite 270\nWest Ashleigh, OH 81376-5171', 39.75, '67053', '2019-04-25', 'Dr. Jayson Towne', '5174804034648521', '09/27', '707', NULL, NULL, 'Adventure'),
(619, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 5, 51.84, 'langosh.clementina@kris.info', '319 Fay Pass\nLake Darrell, DC 23701', 259.20, '74134', '2021-09-18', 'Raymundo Bradtke', '3589157949632609', '09/25', '524', NULL, NULL, 'Dystopian'),
(620, 'Staten Island', 'Moby-Dick', 'Herman Melville', 3, 44.06, 'kaelyn.green@larson.com', '3505 Bailey Ramp Suite 573\nEast Mervinview, KY 60843-9411', 132.18, '18899-7993', '2015-01-11', 'Haskell Ryan', '370733015755778', '10/26', '688', NULL, NULL, 'Adventure'),
(621, 'Staten Island', '1984', 'George Orwell', 9, 95.64, 'raymundo.koss@olson.net', '7315 Quigley Loaf\nFurmanland, LA 11921', 860.76, '32843-5939', '2019-10-27', 'Ariane Botsford', '2378297702239007', '05/27', '759', NULL, NULL, 'Dystopian'),
(622, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 10, 63.32, 'tlehner@gmail.com', '840 Bauch Union Apt. 263\nPort Drake, HI 76792', 633.20, '44269', '2019-04-05', 'Dr. Deion Kovacek PhD', '4716283519442', '11/25', '342', NULL, NULL, 'Fiction'),
(623, 'Staten Island', 'Becoming', 'Michelle Obama', 10, 81.77, 'kkertzmann@kuvalis.net', '7357 Kulas Circle\nPort Matilde, ME 53860', 817.70, '73182', '2018-10-23', 'Ursula Sipes', '4963374427818', '01/27', '246', NULL, NULL, 'Memoir'),
(624, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 7, 64.38, 'danielle53@yahoo.com', '6854 Tremayne Hill\nGrahamport, ND 71103-9185', 450.66, '62188', '2016-02-06', 'Rory Hahn', '4716640136800281', '01/26', '599', NULL, NULL, 'Romance'),
(625, 'Staten Island', 'Moby-Dick', 'Herman Melville', 3, 47.80, 'jerde.edd@yahoo.com', '72810 Hanna Burg\nMertzburgh, AR 41393', 143.40, '85155', '2012-01-14', 'Layne Hermann', '2720045738695519', '08/25', '348', NULL, NULL, 'Adventure'),
(626, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 5, 54.95, 'rath.terry@hotmail.com', '4567 Jackie Valleys\nNew Lamontside, FL 55805-8552', 274.75, '40541', '2023-05-20', 'Wendy Lockman', '2573327629785056', '02/26', '112', NULL, NULL, 'Romance'),
(627, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 1, 76.66, 'cartwright.bonnie@hotmail.com', '7271 Stella Stravenue\nAngelastad, AR 17665', 76.66, '80840-8469', '2011-12-03', 'Mr. Joan Gerhold III', '5526278028654917', '10/27', '333', NULL, NULL, 'Adventure'),
(628, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 3, 49.75, 'rudolph.green@yahoo.com', '9342 Willms Court Suite 591\nNew Kadinmouth, NV 75155', 149.25, '92056', '2021-07-27', 'Dagmar Crist', '5255141565826487', '09/26', '188', NULL, NULL, 'Fantasy'),
(629, 'Staten Island', 'The Da Vinci Code', 'Dan Brown', 1, 19.65, 'gerardo.raynor@skiles.org', '28173 Florencio Ports\nEast Adrain, MT 65871-6556', 19.65, '39343', '2017-08-12', 'Janelle Abbott', '4024007102334', '02/27', '583', NULL, NULL, 'Thriller'),
(630, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 8, 79.84, 'uhessel@aufderhar.net', '801 Garett Lakes Suite 022\nRomagueraview, CA 88661-6256', 638.72, '43307', '2020-12-11', 'Elroy Keeling', '6011514189936564', '12/24', '494', NULL, NULL, 'Romance'),
(631, 'Staten Island', 'Moby-Dick', 'Herman Melville', 10, 69.44, 'douglas.wyatt@hotmail.com', '76193 Macejkovic Drive Apt. 330\nNew Oswaldotown, KY 11490-4233', 694.40, '00735', '2011-09-11', 'Tyra Bogan V', '340595982470302', '12/24', '244', NULL, NULL, 'Adventure'),
(632, 'Staten Island', 'Moby-Dick', 'Herman Melville', 7, 88.48, 'otto.jacobs@hagenes.com', '3926 Phoebe Estates\nLourdesmouth, RI 36500-1257', 619.36, '93657-5576', '2021-06-12', 'Dr. Leanne Ernser IV', '4532152796214722', '02/26', '537', NULL, NULL, 'Adventure'),
(633, 'Staten Island', 'Moby-Dick', 'Herman Melville', 4, 33.10, 'lavada85@gmail.com', '68656 Delmer Harbor\nGutkowskiville, TX 08258-0854', 132.40, '29376', '2017-08-29', 'Tiara Bins', '4539934378391686', '06/26', '299', NULL, NULL, 'Adventure'),
(634, 'Staten Island', 'The Fault in Our Stars', 'John Green', 7, 28.89, 'magnolia39@hirthe.biz', '8447 Reuben Haven\nNew Norberto, TX 24888-0451', 202.23, '21600', '2024-06-29', 'Loren Witting', '4929886662723586', '11/27', '456', NULL, NULL, 'Romance'),
(635, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 2, 96.86, 'cassie.mills@schinner.info', '65593 Keagan Forge\nNew Sophiestad, MI 74731', 193.72, '30071-3345', '2016-05-23', 'Prof. Bertha Jacobs V', '3589662010829612', '03/26', '796', NULL, NULL, 'Romance'),
(636, 'Staten Island', 'The Fault in Our Stars', 'John Green', 5, 28.99, 'leffler.kody@yahoo.com', '999 Marlen Junctions Suite 032\nNorth Lincoln, NE 96718-5584', 144.95, '19898-2648', '2011-11-06', 'Mr. Devyn Veum IV', '5486863469834512', '11/27', '158', NULL, NULL, 'Romance'),
(637, 'Staten Island', 'Becoming', 'Michelle Obama', 4, 93.80, 'kpurdy@gerhold.com', '9728 Beatty Islands\nSchinnerview, AZ 31766', 375.20, '05320-0132', '2012-05-30', 'Dr. Burley Moore DDS', '6011383819339932', '10/27', '884', NULL, NULL, 'Memoir'),
(638, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 1, 53.63, 'beatty.ila@gmail.com', '873 Nathen Ranch Apt. 606\nEast Daisy, MT 10097-9831', 53.63, '93160', '2011-10-03', 'Dustin Pfeffer', '5281039360729187', '04/25', '844', NULL, NULL, 'Fiction'),
(639, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 8, 81.70, 'rollin18@wiza.info', '24269 Pink Harbors Apt. 026\nNew Herminio, MO 51395-7114', 653.60, '73185', '2022-01-06', 'Dr. Trent Jast Jr.', '4532536094470855', '09/26', '927', NULL, NULL, 'Fantasy'),
(640, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 6, 95.57, 'vida.carter@cormier.biz', '126 Margot Curve\nBerniertown, OH 25487', 573.42, '52444-1354', '2019-01-31', 'Dexter Halvorson', '2221148435981002', '10/27', '290', NULL, NULL, 'Adventure'),
(641, 'Staten Island', 'The Da Vinci Code', 'Dan Brown', 8, 18.02, 'preston.harber@sawayn.info', '965 Flatley Vista\nEast Hadleytown, TX 01869', 144.16, '98148-0509', '2021-08-19', 'Mr. Kenneth Quigley', '2367075015268506', '02/25', '941', NULL, NULL, 'Thriller'),
(642, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 1, 99.02, 'kcollins@gmail.com', '61633 Marquardt Stream Suite 518\nReillyland, MD 48462-7781', 99.02, '48656-9199', '2018-11-21', 'Miss Norma Ferry', '2720899202246591', '10/26', '928', NULL, NULL, 'Fantasy'),
(643, 'Staten Island', 'Becoming', 'Michelle Obama', 10, 31.18, 'ssteuber@hotmail.com', '37712 Mattie View Apt. 447\nCatherinetown, WI 11549', 311.80, '39951-5202', '2020-07-06', 'Millie Bashirian', '5263955118409610', '07/27', '130', NULL, NULL, 'Memoir'),
(644, 'Staten Island', 'The Catcher in the Rye', 'J.D. Salinger', 1, 81.98, 'burnice42@hotmail.com', '381 Libby Mews Apt. 748\nKhalidmouth, OR 14012-6286', 81.98, '66840-5390', '2015-05-19', 'Anjali Kunde', '6011954393132586', '11/27', '506', NULL, NULL, 'Fiction'),
(645, 'Staten Island', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1, 89.16, 'pete34@langworth.com', '51157 Wiley Row\nPort Josianne, AR 84412', 89.16, '30527', '2011-03-05', 'Miss Reina Lubowitz', '4567732213006971', '02/25', '273', NULL, NULL, 'Fantasy'),
(646, 'Staten Island', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 8, 79.88, 'wade30@yahoo.com', '47174 Nader Square Apt. 737\nNorth Rodolfoside, IN 66252', 639.04, '18918', '2015-06-03', 'Dr. Landen Bechtelar I', '6011277629752203', '03/27', '797', NULL, NULL, 'Fantasy'),
(647, 'Staten Island', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 2, 41.27, 'aric.moore@yahoo.com', '5864 Kenny Gardens Apt. 963\nMisaelton, NV 74190-8305', 82.54, '10369', '2023-10-26', 'Margarete Little', '5517656744315569', '01/27', '798', NULL, NULL, 'Non-fiction'),
(648, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 9, 25.30, 'lucile08@tremblay.com', '953 Labadie Prairie\nKeeblertown, AZ 14972', 227.70, '78135', '2013-06-30', 'Judy Skiles', '5597476247288624', '02/25', '691', NULL, NULL, 'Fantasy'),
(649, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 1, 87.62, 'rozella48@gmail.com', '13447 Melissa Canyon\nLake Lornaton, SC 58630', 87.62, '51256-0065', '2024-01-08', 'Mr. Jedidiah Schulist', '4716560903066934', '07/27', '397', NULL, NULL, 'Fantasy'),
(650, 'Staten Island', 'Becoming', 'Michelle Obama', 9, 10.73, 'mathias.ritchie@yahoo.com', '815 Bahringer Crest\nDantemouth, MT 25377-0287', 96.57, '49463', '2011-11-29', 'Seth Willms', '5460099893270912', '12/26', '333', NULL, NULL, 'Memoir'),
(651, 'Staten Island', 'The Fault in Our Stars', 'John Green', 2, 42.75, 'gpfannerstill@mayer.com', '476 Dante River\nHintzhaven, NC 88283-6157', 85.50, '55246', '2011-12-24', 'Stephanie Dickens', '2529234219284893', '10/26', '896', NULL, NULL, 'Romance'),
(652, 'Staten Island', 'The Da Vinci Code', 'Dan Brown', 3, 69.81, 'schuster.korbin@ledner.org', '300 Tremblay Ways Apt. 597\nPort Opalfort, AR 83990-4034', 209.43, '64170', '2024-07-27', 'Myrtle Huels', '4539965633184698', '09/27', '302', NULL, NULL, 'Thriller'),
(653, 'Staten Island', 'To Kill a Mockingbird', 'Harper Lee', 3, 91.64, 'ptorp@abbott.net', '5934 Leonardo Spur Apt. 263\nWest Lela, SD 90214', 274.92, '03720', '2020-01-10', 'Kameron Olson', '4916626816194242', '11/27', '920', NULL, NULL, 'Fiction'),
(654, 'Staten Island', 'The Da Vinci Code', 'Dan Brown', 10, 89.44, 'eda.funk@fisher.com', '12306 Leannon Neck\nJenashire, NJ 71473-4726', 894.40, '30548-3391', '2022-11-30', 'Ms. Angie Abbott Jr.', '4485467430075496', '06/27', '690', NULL, NULL, 'Thriller'),
(655, 'Staten Island', 'The Book Thief', 'Markus Zusak', 7, 41.33, 'moises06@hotmail.com', '43031 Ankunding Track\nSouth Allenetown, VT 79229', 289.31, '39360', '2018-03-09', 'Edwin Moen', '4024007108531111', '03/27', '953', NULL, NULL, 'Historical Fiction'),
(656, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 7, 27.95, 'qhagenes@hotmail.com', '1305 Sawayn Island\nSouth Vitoton, SD 48921', 195.65, '24014-2436', '2014-10-01', 'Breana Hudson', '4532317041765931', '08/25', '498', NULL, NULL, 'Fantasy'),
(657, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 8, 11.44, 'hamill.payton@quigley.net', '969 Hickle Fort Apt. 223\nRossville, AZ 85335', 91.52, '11937', '2013-08-08', 'Mr. Rey Zemlak', '4556037461800759', '05/26', '824', NULL, NULL, 'Dystopian'),
(658, 'Staten Island', 'The Catcher in the Rye', 'J.D. Salinger', 10, 44.46, 'wava77@hotmail.com', '5512 Esperanza Meadows\nNew Julianachester, IL 49581-5128', 444.60, '26907', '2012-11-24', 'Katelynn Reinger', '2221964161360728', '04/27', '320', NULL, NULL, 'Fiction'),
(659, 'Staten Island', '1984', 'George Orwell', 3, 65.87, 'vkris@kuvalis.com', '20994 Vandervort Rest\nEffertzhaven, SC 31129', 197.61, '19931-1604', '2018-09-09', 'Tanner Swaniawski MD', '5364425688365533', '11/26', '347', NULL, NULL, 'Dystopian'),
(660, 'Staten Island', '1984', 'George Orwell', 8, 27.13, 'brakus.maria@hotmail.com', '49615 Retta Glens\nNew Terrell, VA 24775-8171', 217.04, '52983', '2019-08-01', 'Ms. Bella Von', '4539392310095925', '11/26', '816', NULL, NULL, 'Dystopian'),
(661, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 5, 56.40, 'ucrona@kunze.com', '355 Florencio Roads\nPort Vincenzastad, LA 30467', 282.00, '81833-1964', '2024-05-09', 'Cassidy Kerluke', '4916560153911', '12/25', '531', NULL, NULL, 'Romance'),
(662, 'Staten Island', 'The Fault in Our Stars', 'John Green', 9, 71.60, 'darion.altenwerth@beahan.org', '8965 Andreane Hill Apt. 278\nNorth Rigoberto, GA 26289-3282', 644.40, '46192-6289', '2021-03-07', 'Reggie Feest', '4523421173743830', '09/27', '868', NULL, NULL, 'Romance'),
(663, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 9, 69.69, 'kautzer.fay@yahoo.com', '609 Mertz Center Apt. 888\nBergstromborough, PA 77699-2471', 627.21, '92981-3374', '2010-12-21', 'Ed Lemke', '3528196670031999', '06/27', '492', NULL, NULL, 'Dystopian'),
(664, 'Staten Island', 'Moby-Dick', 'Herman Melville', 9, 64.16, 'hane.adrain@johnston.com', '586 Lebsack Springs Apt. 395\nBeverlychester, AL 73715', 577.44, '42263', '2013-06-07', 'Jett Williamson MD', '4929674888080431', '06/26', '152', NULL, NULL, 'Adventure'),
(665, 'Staten Island', 'The Da Vinci Code', 'Dan Brown', 1, 72.38, 'irath@yahoo.com', '715 Ramiro Walks\nSouth Maida, NY 81787-5586', 72.38, '99461-2571', '2024-03-21', 'Prof. Gladys Nolan', '4556555356341', '07/27', '297', NULL, NULL, 'Thriller'),
(666, 'Staten Island', 'The Book Thief', 'Markus Zusak', 7, 73.24, 'tflatley@krajcik.com', '7570 Adaline Plains\nRogersborough, NV 30755-8188', 512.68, '78258-2590', '2019-08-18', 'Sydni Lockman', '4532714065310802', '05/26', '634', NULL, NULL, 'Historical Fiction'),
(667, 'Staten Island', '1984', 'George Orwell', 2, 22.66, 'qtillman@hilpert.biz', '79419 Schumm Mission\nElenoraview, NJ 09501', 45.32, '84637', '2020-07-04', 'Ms. Jaclyn Dicki Jr.', '4916026852585272', '10/25', '119', NULL, NULL, 'Dystopian'),
(668, 'Staten Island', 'The Catcher in the Rye', 'J.D. Salinger', 4, 63.62, 'koreilly@gmail.com', '22974 Afton Locks Apt. 583\nSouth Sylvan, CO 92247', 254.48, '01747-1485', '2011-08-01', 'Carmelo Ward', '4197905948141713', '07/27', '779', NULL, NULL, 'Fiction'),
(669, 'Staten Island', 'Becoming', 'Michelle Obama', 10, 88.99, 'dandre96@gmail.com', '95988 Jacynthe View\nFranciscoberg, NE 75472-4254', 889.90, '07244', '2021-02-11', 'Ms. Betty Hahn', '4716462035829463', '11/27', '923', NULL, NULL, 'Memoir'),
(670, 'Staten Island', 'The Fault in Our Stars', 'John Green', 4, 10.77, 'xlowe@marvin.com', '352 Nyah Landing Apt. 975\nNew Willow, TX 03992-2282', 43.08, '86202', '2021-07-19', 'Madilyn Berge', '346687706616247', '08/26', '694', NULL, NULL, 'Romance'),
(671, 'Staten Island', 'The Fault in Our Stars', 'John Green', 5, 96.52, 'odie.shanahan@yahoo.com', '576 Breitenberg Drives\nNew Kaylin, ID 75207-6916', 482.60, '13465', '2017-12-03', 'Isabel Boehm III', '348626479780879', '07/26', '850', NULL, NULL, 'Romance'),
(672, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 10, 78.18, 'shanna.boehm@gmail.com', '72017 Imani Drive\nFeestfurt, GA 49957-2233', 781.80, '64039-6765', '2018-10-01', 'Eli Abbott', '378148325933241', '05/25', '775', NULL, NULL, 'Adventure'),
(673, 'Staten Island', '1984', 'George Orwell', 8, 43.27, 'brandi.upton@cartwright.net', '972 Ward Locks\nNew Jerrod, NH 21997', 346.16, '16576', '2012-05-16', 'Prof. Esteban Witting', '4929767296597432', '01/26', '622', NULL, NULL, 'Dystopian'),
(674, 'Staten Island', '1984', 'George Orwell', 3, 73.32, 'wcremin@runte.info', '65009 Wellington Mount\nRivermouth, AK 59237', 219.96, '36400-2295', '2016-11-29', 'Ms. Violette Harris IV', '4916680721343238', '10/26', '724', NULL, NULL, 'Dystopian'),
(675, 'Staten Island', 'The Fault in Our Stars', 'John Green', 2, 52.43, 'ltowne@hotmail.com', '42661 Vita Trafficway Apt. 045\nWest Jamaalshire, NM 42273-5654', 104.86, '07257-6935', '2014-11-03', 'Ms. Lora Lueilwitz', '2221290540022262', '03/27', '593', NULL, NULL, 'Romance'),
(676, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 2, 37.61, 'lnikolaus@hotmail.com', '69204 Fredrick Ports Suite 350\nCalebhaven, MD 99239-9375', 75.22, '13625', '2012-01-01', 'Kaleb Kuhic', '4929148909368158', '06/25', '206', NULL, NULL, 'Dystopian'),
(677, 'Staten Island', 'To Kill a Mockingbird', 'Harper Lee', 4, 14.68, 'zlittel@gmail.com', '305 Titus Parks Suite 951\nPort Marie, FL 90342', 58.72, '29821-2435', '2013-03-22', 'Estevan Rolfson', '6011439904511627', '01/25', '833', NULL, NULL, 'Fiction'),
(678, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 12.99, 'gkuhlman@yahoo.com', '81855 Unique Field\nLake Eldridgeborough, CO 11766', 90.93, '58839-2280', '2014-02-22', 'Myrna McCullough', '5113924723257642', '02/25', '905', NULL, NULL, 'Fiction'),
(679, 'Staten Island', 'To Kill a Mockingbird', 'Harper Lee', 2, 60.95, 'reilly.dawn@jerde.org', '26739 Hammes Greens\nAlvahview, DE 64249-9376', 121.90, '54762', '2019-04-04', 'Marvin Feil', '3528710544871883', '05/26', '319', NULL, NULL, 'Fiction'),
(680, 'Staten Island', '1984', 'George Orwell', 7, 71.51, 'ibednar@glover.info', '79593 Fred Keys\nRogahnburgh, GA 52377-9404', 500.57, '26206-9205', '2022-07-27', 'Billy Oberbrunner', '4916618903768103', '01/26', '605', NULL, NULL, 'Dystopian'),
(681, 'Staten Island', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 6, 26.42, 'okey.batz@shields.org', '9826 Renner Shore\nLake Noemifurt, LA 32372', 158.52, '50277', '2023-07-23', 'Haskell Parisian', '2221040116295457', '09/27', '200', NULL, NULL, 'Non-fiction'),
(682, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 3, 82.47, 'upton.kylie@hotmail.com', '5920 Dannie Estate Apt. 637\nUllrichtown, WV 34699', 247.41, '12706', '2018-05-01', 'Miss Lysanne Boehm', '4556997527862525', '06/26', '441', NULL, NULL, 'Dystopian'),
(683, 'Staten Island', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 8, 49.54, 'watsica.meagan@gutkowski.biz', '48762 Johnston Parkway\nLake Ellsworth, WI 70204', 396.32, '02397-2122', '2020-10-29', 'Mr. Jasmin O\'Reilly PhD', '6011920403253621', '04/25', '505', NULL, NULL, 'Non-fiction'),
(684, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 8, 68.45, 'amiya.bode@lowe.com', '89313 Darian Bypass\nGusikowskiville, WV 26551-5527', 547.60, '28424-7947', '2021-05-14', 'Dr. Elroy Terry III', '5513233295286997', '08/27', '631', NULL, NULL, 'Fiction'),
(685, 'Staten Island', '1984', 'George Orwell', 6, 83.37, 'kling.nels@gmail.com', '90467 Crooks Meadows\nLake Toneymouth, RI 46590', 500.22, '99294-3914', '2020-05-19', 'Graham Kiehn', '4539493352036940', '11/27', '563', NULL, NULL, 'Dystopian'),
(686, 'Staten Island', '1984', 'George Orwell', 6, 45.96, 'bdenesik@yahoo.com', '41623 Aliyah Circles\nNorth Arielburgh, SD 11846-8564', 275.76, '92812', '2016-07-20', 'Vincent Botsford', '4539466675482892', '11/26', '642', NULL, NULL, 'Dystopian'),
(687, 'Staten Island', 'The Fault in Our Stars', 'John Green', 6, 53.74, 'jessyca.gulgowski@yahoo.com', '53236 Lemke Passage Apt. 519\nO\'Konmouth, KY 62697-8061', 322.44, '86278-3840', '2017-11-14', 'Willard Torphy V', '373595360912933', '07/25', '519', NULL, NULL, 'Romance'),
(688, 'Staten Island', 'The Book Thief', 'Markus Zusak', 8, 80.84, 'geraldine68@wisozk.biz', '272 Suzanne Roads Suite 954\nNorth Cordell, MN 14768', 646.72, '52869', '2014-04-14', 'Julie Farrell', '341022018039760', '09/27', '878', NULL, NULL, 'Historical Fiction'),
(689, 'Staten Island', 'The Catcher in the Rye', 'J.D. Salinger', 1, 21.79, 'fbaumbach@yahoo.com', '69995 Hand Crest\nLake Edaberg, TN 73744', 21.79, '58319', '2018-02-17', 'Yasmine Smith DVM', '5546449627224651', '02/25', '536', NULL, NULL, 'Fiction'),
(690, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 9, 50.75, 'jessica14@schneider.info', '8110 Nola Trail\nLittleville, NE 05336-3780', 456.75, '17382', '2016-11-05', 'Adeline Fritsch', '4716707910567855', '07/25', '627', NULL, NULL, 'Adventure'),
(691, 'Staten Island', '1984', 'George Orwell', 8, 53.96, 'vhilpert@cronin.com', '2045 Mraz Track\nStrackemouth, OR 51364', 431.68, '78535', '2013-03-03', 'Mr. Monserrate Franecki', '2607118771217133', '06/26', '592', NULL, NULL, 'Dystopian'),
(692, 'Staten Island', 'To Kill a Mockingbird', 'Harper Lee', 3, 69.20, 'kelsi.beier@hotmail.com', '58382 Gayle Plains\nLake Karelleton, KY 12543-6876', 207.60, '08009', '2016-10-19', 'Cordia Hagenes', '5325658546532666', '01/25', '419', NULL, NULL, 'Fiction'),
(693, 'Staten Island', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 10, 34.08, 'letitia43@hotmail.com', '4327 Herta Rest Suite 432\nRodfurt, CO 03649', 340.80, '16532-3162', '2014-12-20', 'Lillie Nikolaus', '5370804577468339', '08/27', '496', NULL, NULL, 'Non-fiction'),
(694, 'Staten Island', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 7, 14.91, 'rosalia.goyette@gmail.com', '43786 Considine Parks\nNorth Marietta, WA 81867-6510', 104.37, '13406-4296', '2024-02-24', 'Otilia Fritsch', '4887674354573760', '05/27', '685', NULL, NULL, 'Non-fiction'),
(695, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 1, 23.00, 'ettie.mosciski@yahoo.com', '53990 Morar Courts Suite 183\nLake Veronica, CT 35574', 23.00, '45979', '2024-01-03', 'Jackie Von', '2500145821660150', '11/27', '362', NULL, NULL, 'Romance'),
(696, 'Staten Island', 'Becoming', 'Michelle Obama', 1, 13.26, 'treutel.khalid@yahoo.com', '7013 Dane Branch\nSouth Juniorville, IL 03793-2226', 13.26, '94142', '2020-05-22', 'Colton Gleichner II', '6011693026272670', '03/25', '527', NULL, NULL, 'Memoir'),
(697, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 9, 11.00, 'rahsaan.paucek@hotmail.com', '1934 Wehner Heights Apt. 361\nLake Aletha, KY 60620', 99.00, '07765', '2013-12-07', 'Bettye Reilly', '2610738143477795', '12/26', '370', NULL, NULL, 'Adventure'),
(698, 'Staten Island', 'The Da Vinci Code', 'Dan Brown', 10, 33.45, 'shaniya.brown@yahoo.com', '17098 Treutel Valley\nMadelynton, UT 68831', 334.50, '39040-1107', '2016-07-21', 'Chester Emmerich', '4716649414728304', '04/27', '645', NULL, NULL, 'Thriller'),
(699, 'Staten Island', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1, 62.00, 'aditya81@hotmail.com', '10553 Hahn Island Apt. 503\nJaskolskiborough, WV 64806', 62.00, '34721-7814', '2011-03-17', 'Julianne Wilderman', '343367791776338', '06/25', '540', NULL, NULL, 'Fantasy'),
(700, 'Staten Island', 'The Da Vinci Code', 'Dan Brown', 1, 57.12, 'egleichner@hayes.biz', '6640 Easter Square\nEast Delores, DC 99478', 57.12, '17504-5057', '2017-06-23', 'Daryl Herzog', '4716771348325286', '12/26', '220', NULL, NULL, 'Thriller'),
(701, 'Staten Island', 'To Kill a Mockingbird', 'Harper Lee', 10, 37.52, 'kuhlman.eleonore@breitenberg.com', '91093 Bartoletti Harbor\nEast Luis, NE 15948', 375.20, '29366', '2021-10-25', 'Mr. Anastacio Labadie Sr.', '2367285897239133', '08/25', '959', NULL, NULL, 'Fiction'),
(702, 'Staten Island', 'The Fault in Our Stars', 'John Green', 6, 78.86, 'connelly.vivienne@hotmail.com', '6161 Mathew Crossing\nEast Orvalfort, IA 41418', 473.16, '82468', '2012-08-19', 'Astrid Parker', '4716023347302', '12/25', '330', NULL, NULL, 'Romance'),
(703, 'Staten Island', '1984', 'George Orwell', 5, 96.81, 'dietrich.terrance@yahoo.com', '49181 Dickens Cove\nHuelburgh, DC 13274', 484.05, '33487', '2020-02-20', 'Jody Roberts', '4539450442647797', '03/26', '571', NULL, NULL, 'Dystopian'),
(704, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 10, 36.41, 'nsmith@yahoo.com', '10968 April Mission\nWest Brooktown, NM 21532-6336', 364.10, '28692', '2013-09-09', 'Jayce Wehner', '5364590882783490', '05/25', '548', NULL, NULL, 'Dystopian'),
(705, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, 52.74, 'coleman89@gmail.com', '9910 Jameson Radial\nNew Virginie, IA 73994', 263.70, '03645', '2021-12-15', 'Ernestina Bradtke', '5128633411075199', '07/27', '365', NULL, NULL, 'Fiction'),
(706, 'Staten Island', 'The Catcher in the Rye', 'J.D. Salinger', 6, 77.07, 'cronin.cade@stamm.com', '874 Hauck Landing Suite 713\nKautzerport, NC 29744', 462.42, '54112-3467', '2018-04-17', 'Dr. Jackie Leffler I', '4485655925828664', '03/25', '258', NULL, NULL, 'Fiction'),
(707, 'Staten Island', 'Moby-Dick', 'Herman Melville', 3, 57.07, 'vtreutel@medhurst.com', '55360 Chelsie Rue Apt. 810\nPort Evansport, KY 48127-6238', 171.21, '77254', '2017-01-18', 'Carmelo Dibbert', '5346393110556959', '12/25', '339', NULL, NULL, 'Adventure'),
(708, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 9, 89.68, 'hhammes@yahoo.com', '9919 Jett Skyway\nWest Annieborough, LA 70358-5016', 807.12, '12307', '2012-01-28', 'Mr. Dion Paucek', '3589410804769242', '03/27', '544', NULL, NULL, 'Dystopian'),
(709, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 4, 30.93, 'dariana.murray@wuckert.net', '44595 Kertzmann Prairie Suite 820\nElberttown, GA 52080', 123.72, '57682', '2011-04-19', 'Yvonne Connelly', '5588235314857336', '11/27', '303', NULL, NULL, 'Romance'),
(710, 'Staten Island', 'Becoming', 'Michelle Obama', 3, 86.65, 'ellen84@yahoo.com', '71774 Libby Meadow Suite 441\nAbbottville, MI 86205-1004', 259.95, '97152-4935', '2024-04-17', 'Maymie Reichel', '4485502155457162', '01/27', '676', NULL, NULL, 'Memoir'),
(711, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 2, 97.05, 'tkiehn@yahoo.com', '397 Heidenreich Land Suite 202\nSouth Katrinamouth, NV 37885', 194.10, '89028', '2011-07-15', 'Sylvia Leffler', '4929498145956468', '03/26', '189', NULL, NULL, 'Dystopian'),
(712, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 6, 16.68, 'fidel.vonrueden@yahoo.com', '6480 Jenifer Gateway\nWest Justyn, WI 42453', 100.08, '54330-4495', '2021-06-08', 'Randi Emmerich DVM', '2531590880143833', '08/25', '258', NULL, NULL, 'Romance'),
(713, 'Staten Island', '1984', 'George Orwell', 8, 96.28, 'curt.wintheiser@dooley.info', '7872 Rempel Mountains Apt. 247\nLake Xaviertown, RI 34809', 770.24, '81580', '2014-10-01', 'Ona Koepp', '4556591636782755', '03/27', '908', NULL, NULL, 'Dystopian'),
(714, 'Staten Island', 'The Fault in Our Stars', 'John Green', 7, 60.65, 'marquardt.maybelle@lowe.com', '9031 Stracke Pine\nMcCluremouth, OH 35067-3673', 424.55, '39157-1783', '2013-12-15', 'Dr. Sonya Shanahan I', '4485454656006405', '04/27', '927', NULL, NULL, 'Romance'),
(715, 'Staten Island', 'The Fault in Our Stars', 'John Green', 5, 63.95, 'rlockman@yahoo.com', '829 Walter Row\nEast Audra, HI 69616', 319.75, '76671-6513', '2015-06-02', 'Prof. Isom Carroll II', '4601219041622', '01/27', '213', NULL, NULL, 'Romance'),
(716, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 6, 17.80, 'bria.sanford@ohara.com', '4598 Turner Centers Suite 054\nHaleyburgh, PA 73754-0207', 106.80, '24270-8655', '2016-12-20', 'Lavina Lynch', '2460541232399560', '05/25', '575', NULL, NULL, 'Fiction'),
(717, 'Staten Island', 'The Da Vinci Code', 'Dan Brown', 6, 64.61, 'marisol.gerhold@steuber.biz', '71249 Dickens Junction\nWest Lindsayfurt, DC 15609', 387.66, '82965-8239', '2021-04-19', 'Joey Wolff', '4716412377378843', '10/27', '474', NULL, NULL, 'Thriller'),
(718, 'Staten Island', 'The Catcher in the Rye', 'J.D. Salinger', 8, 49.63, 'hohara@grimes.com', '4387 Kariane Mountains\nRippinberg, MA 00637', 397.04, '91999-3587', '2016-04-19', 'Prof. Jaron Trantow', '4485897307937388', '01/27', '987', NULL, NULL, 'Fiction'),
(719, 'Staten Island', 'The Fault in Our Stars', 'John Green', 4, 45.24, 'jbins@baumbach.biz', '57079 Upton Court Suite 236\nPort Rosieburgh, NC 27165-0161', 180.96, '10215', '2017-05-26', 'Rollin Friesen', '2461250023801557', '08/26', '456', NULL, NULL, 'Romance'),
(720, 'Staten Island', 'The Fault in Our Stars', 'John Green', 3, 49.95, 'nelda77@casper.com', '5793 Marks Bridge\nMiguelmouth, NE 67009', 149.85, '75006', '2014-06-02', 'Rodolfo Kuhic', '340894293337007', '11/27', '770', NULL, NULL, 'Romance'),
(721, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 10, 72.78, 'lkilback@zboncak.com', '214 Swift Port\nPort Corbin, AK 45888-0060', 727.80, '97711-4795', '2014-02-18', 'Elian Jerde', '4898316573867', '08/26', '769', NULL, NULL, 'Romance'),
(722, 'Staten Island', 'Becoming', 'Michelle Obama', 7, 40.01, 'gwaelchi@crist.com', '63670 Mante Springs\nLake Gennaro, NY 75700-1023', 280.07, '27132-7128', '2021-04-23', 'Deon Mohr', '6011791182273605', '04/27', '720', NULL, NULL, 'Memoir'),
(723, 'Staten Island', '1984', 'George Orwell', 6, 83.14, 'dyost@hotmail.com', '46996 Shane Ways\nOrabury, MI 01414-3942', 498.84, '57968', '2020-06-21', 'Anahi Grady', '4556272773492280', '12/26', '254', NULL, NULL, 'Dystopian'),
(724, 'Staten Island', 'Becoming', 'Michelle Obama', 10, 62.67, 'caleb90@corwin.com', '647 Conroy Centers Suite 369\nEast Watsonhaven, WA 66704-3604', 626.70, '17972-8105', '2014-07-08', 'Aileen Maggio', '4521870623635', '04/26', '529', NULL, NULL, 'Memoir'),
(725, 'Staten Island', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 9, 55.32, 'ova19@hotmail.com', '95614 Murl Wall\nMarquardtchester, AK 35380', 497.88, '76265-8862', '2018-09-05', 'Anastasia Kshlerin', '4532629959702668', '10/27', '675', NULL, NULL, 'Fantasy'),
(726, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 6, 15.02, 'wbaumbach@hirthe.net', '1021 Jovan Rest Suite 917\nSouth Edwinland, MN 82773', 90.12, '51907', '2014-06-03', 'Roel Nitzsche Sr.', '5100627403722505', '08/26', '189', NULL, NULL, 'Fiction'),
(727, 'Staten Island', '1984', 'George Orwell', 1, 32.83, 'bins.amber@yahoo.com', '7529 Dawn Locks Apt. 184\nFerryborough, CO 33592', 32.83, '83036-0008', '2023-07-06', 'Pearl Hegmann', '2390174638435781', '05/27', '706', NULL, NULL, 'Dystopian'),
(728, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 2, 51.68, 'tblick@carroll.biz', '4683 Johns Village Suite 691\nTheoshire, SD 12670-6508', 103.36, '85000', '2017-09-10', 'Ruthie Schmeler', '2720603004535676', '08/27', '289', NULL, NULL, 'Adventure'),
(729, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 4, 44.54, 'breana63@rice.com', '538 Connelly Islands\nEast Sibylview, ND 16481-7907', 178.16, '30334', '2015-09-19', 'Mr. Waino Mitchell', '4929178343014', '05/25', '659', NULL, NULL, 'Romance'),
(730, 'Staten Island', 'Becoming', 'Michelle Obama', 8, 39.88, 'srunte@hotmail.com', '650 Zella Oval Suite 043\nColtenfurt, AK 07401', 319.04, '17344', '2023-03-02', 'Cordie Franecki', '3589490445068725', '01/27', '912', NULL, NULL, 'Memoir'),
(731, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 6, 67.05, 'bergstrom.shannon@trantow.com', '757 Onie Mountain\nNew Vernie, VA 58534', 402.30, '21719-7357', '2020-09-05', 'Daphney Kris', '4916988550023551', '08/26', '849', NULL, NULL, 'Adventure'),
(732, 'Staten Island', 'Pride and Prejudice', 'Jane Austen', 9, 37.99, 'nathen.stroman@luettgen.com', '472 Berge Route Suite 142\nWelchburgh, WV 66555-9364', 341.91, '15625-8809', '2016-11-29', 'Waldo Spencer', '4532516562432298', '04/27', '488', NULL, NULL, 'Romance'),
(733, 'Staten Island', 'The Book Thief', 'Markus Zusak', 9, 78.34, 'delia03@ruecker.com', '386 Derrick Drive Suite 533\nThielberg, IA 52433-7053', 705.06, '50045', '2011-01-09', 'Miss Esmeralda Jacobson', '4532639753258', '05/25', '241', NULL, NULL, 'Historical Fiction'),
(734, 'Staten Island', 'The Alchemist', 'Paulo Coelho', 1, 79.10, 'daisy.grant@bosco.com', '56046 Nannie Fork Apt. 310\nNew Lavonne, RI 92265', 79.10, '62236', '2018-03-13', 'Lula Stracke', '6011553450905148', '03/27', '850', NULL, NULL, 'Adventure'),
(735, 'Staten Island', 'To Kill a Mockingbird', 'Harper Lee', 8, 71.34, 'jones.kendall@hotmail.com', '839 Renner Rue\nBartonview, NV 56397', 570.72, '92943', '2016-01-24', 'Johnnie Leannon', '2221725368491438', '11/26', '637', NULL, NULL, 'Fiction'),
(736, 'Staten Island', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 9, 54.11, 'rahsaan87@rempel.com', '726 Runolfsdottir Flats Apt. 775\nHettingermouth, TX 36023', 486.99, '27457-4873', '2024-06-26', 'Joey Nienow', '6011282114305418', '06/26', '361', NULL, NULL, 'Fantasy'),
(737, 'Staten Island', 'The Fault in Our Stars', 'John Green', 10, 61.00, 'rosinski@stracke.com', '98820 Nikolaus Track Apt. 223\nJulianneport, HI 38026-0456', 610.00, '10520', '2016-06-27', 'Juston Bernhard', '5148305789319543', '04/26', '603', NULL, NULL, 'Romance'),
(738, 'Staten Island', 'Becoming', 'Michelle Obama', 5, 98.88, 'malinda.kirlin@gmail.com', '804 Birdie Cliffs Suite 154\nSouth Sharonshire, ND 14640-9455', 494.40, '86347', '2024-06-01', 'Duane Marquardt', '5301925783098224', '08/25', '865', NULL, NULL, 'Memoir'),
(739, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 5, 90.44, 'estiedemann@hotmail.com', '68173 Keith Summit\nLourdeschester, PA 15758', 452.20, '00345', '2015-04-14', 'Mireille Predovic V', '349682477584358', '06/27', '998', NULL, NULL, 'Dystopian'),
(740, 'Staten Island', 'The Hunger Games', 'Suzanne Collins', 5, 38.43, 'gutmann.pinkie@buckridge.net', '363 Kozey Forge\nNew Marshallview, DC 56292-3824', 192.15, '50411', '2024-04-01', 'Jevon Cronin DDS', '4485336342022187', '07/26', '596', NULL, NULL, 'Dystopian'),
(741, 'Staten Island', 'The Fault in Our Stars', 'John Green', 9, 98.21, 'conn.leslie@gmail.com', '720 Concepcion Junction Suite 459\nNew Waino, DC 30340-8229', 883.89, '95018-3740', '2011-02-15', 'Isabel Effertz', '4532998098309119', '04/27', '211', NULL, NULL, 'Romance'),
(742, 'Staten Island', 'The Da Vinci Code', 'Dan Brown', 3, 40.79, 'jhermiston@stiedemann.org', '2914 Schultz Squares\nJacobiberg, RI 56924', 122.37, '17033', '2022-06-09', 'Dino Bruen', '5359261358248106', '06/27', '468', NULL, NULL, 'Thriller'),
(743, 'Staten Island', 'The Book Thief', 'Markus Zusak', 8, 61.55, 'lemke.francisca@gmail.com', '38555 Bartoletti Locks Suite 652\nFriedrichton, PA 16179', 492.40, '60991', '2015-10-08', 'Woodrow Crooks', '4024007183424141', '02/25', '204', NULL, NULL, 'Historical Fiction'),
(744, 'Staten Island', 'The Book Thief', 'Markus Zusak', 8, 31.49, 'senger.gwendolyn@gmail.com', '316 Kenyatta Fall Suite 283\nSwaniawskiburgh, FL 36416', 251.92, '34680', '2011-02-20', 'Prof. Aurelio Walker II', '5591918566282676', '12/24', '670', NULL, NULL, 'Historical Fiction'),
(745, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 8, 84.95, 'ocollier@yahoo.com', '1333 Ned Ranch\nPort Abrahammouth, AZ 53437-6140', 679.60, '13763', '2011-04-29', 'Kenyatta Quitzon', '5453210470337649', '07/25', '853', NULL, NULL, 'Fiction'),
(746, 'Staten Island', '1984', 'George Orwell', 8, 25.23, 'gunner.hegmann@walker.com', '63554 Herminia Mills\nRaynorshire, LA 92314', 201.84, '90410', '2021-11-14', 'Lawson Abbott', '4539493260049', '05/26', '957', NULL, NULL, 'Dystopian'),
(747, 'Staten Island', 'The Great Gatsby', 'F. Scott Fitzgerald', 10, 27.47, 'idella.bahringer@gmail.com', '9170 Tara Crescent Suite 761\nEffertzbury, MO 02626', 274.70, '80747-6104', '2013-07-06', 'Rafael Halvorson Jr.', '5253508375259962', '03/27', '660', NULL, NULL, 'Fiction'),
(748, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 3, 23.97, 'dandre67@yahoo.com', '421 Kozey Trafficway\nNew Minachester, RI 48341', 71.91, '52714-1083', '2012-06-05', 'Prof. Zelma Roob', '5187066563331870', '12/26', '739', NULL, NULL, 'Fantasy'),
(749, 'Staten Island', 'The Da Vinci Code', 'Dan Brown', 1, 44.18, 'deontae.lemke@hotmail.com', '6555 Lind Cove Apt. 605\nHilpertmouth, IL 54684', 44.18, '24771', '2018-04-25', 'Halie Runolfsdottir', '5267257823996270', '02/25', '851', NULL, NULL, 'Thriller'),
(750, 'Staten Island', 'The Hobbit', 'J.R.R. Tolkien', 9, 75.59, 'tprohaska@eichmann.net', '15153 Lorenz Orchard Apt. 898\nNew Amandabury, TN 42812-7886', 680.31, '77994-9707', '2011-04-15', 'Prof. Finn Balistreri', '4716086607669997', '02/26', '534', NULL, NULL, 'Fantasy'),
(751, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1, 12.60, 'wilma.west@yahoo.com', '562 Cordia Lakes Apt. 933\nWest Kevon, SC 24640', 12.60, '44720-3143', '2016-02-12', 'Miss Karlee Lind V', '3589138078866887', '02/25', '233', NULL, NULL, 'Fantasy'),
(752, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 9, 77.36, 'kerluke.sim@langosh.com', '3240 Danny Bypass Suite 835\nArchibaldmouth, MI 15517-1142', 696.24, '98771', '2014-03-11', 'Alexandro Lueilwitz', '2720991161852418', '04/25', '245', NULL, NULL, 'Dystopian'),
(753, 'Rochester', 'Becoming', 'Michelle Obama', 5, 98.39, 'alockman@yahoo.com', '771 Kolby Shores Suite 386\nO\'Connertown, VT 99366', 491.95, '25285', '2013-04-13', 'Margie Kertzmann', '4916106583423', '09/25', '565', NULL, NULL, 'Memoir'),
(754, 'Rochester', 'The Catcher in the Rye', 'J.D. Salinger', 10, 35.75, 'prosacco.adrien@yahoo.com', '915 Madalyn Locks\nShieldsstad, AL 17722', 357.50, '80334', '2019-05-28', 'Marisol Gleichner', '5285082027807380', '02/25', '447', NULL, NULL, 'Fiction'),
(755, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 1, 40.22, 'kautzer.llewellyn@yahoo.com', '9258 Crist Plains\nEast Maiabury, NH 06136-3935', 40.22, '17700-5672', '2018-05-03', 'Vivianne White MD', '2696809287379589', '10/25', '781', NULL, NULL, 'Romance'),
(756, 'Rochester', 'Becoming', 'Michelle Obama', 6, 88.27, 'cruickshank.zoey@hotmail.com', '7098 Stanton Rapid Apt. 750\nLockmanberg, CA 43184', 529.62, '15678', '2024-01-13', 'Raina Little', '4024007156079138', '09/25', '746', NULL, NULL, 'Memoir'),
(757, 'Rochester', 'Becoming', 'Michelle Obama', 2, 51.26, 'frami.zane@gmail.com', '92046 Lehner Lock\nWest Twilahaven, NJ 20572', 102.52, '47285', '2017-10-19', 'Jackie Hermann', '2531956477239328', '06/27', '549', NULL, NULL, 'Memoir'),
(758, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 6, 52.04, 'mrogahn@lehner.com', '871 Laura Ports Suite 974\nPort Jerryberg, MO 97039-4275', 312.24, '17417', '2011-10-26', 'Prof. Mckenna Feest II', '2680629147366701', '06/27', '837', NULL, NULL, 'Fiction'),
(759, 'Rochester', 'The Fault in Our Stars', 'John Green', 10, 68.57, 'fsteuber@gmail.com', '2918 Tierra Hollow Suite 936\nBorerstad, WY 21669', 685.70, '40176-4747', '2015-01-18', 'Ilene Stanton', '4485558019110785', '06/27', '259', NULL, NULL, 'Romance'),
(760, 'Rochester', 'The Book Thief', 'Markus Zusak', 10, 99.11, 'denesik.bianka@yahoo.com', '39918 Xzavier Burgs\nYundtfort, NM 58497', 991.10, '27653', '2023-04-19', 'Mr. Justyn Reinger IV', '5375437140793183', '01/27', '880', NULL, NULL, 'Historical Fiction'),
(761, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 2, 98.03, 'kessler.casimir@gmail.com', '708 Kip Land Apt. 123\nEast Arnold, AZ 45105-8186', 196.06, '87533-0986', '2013-03-09', 'Pascale Oberbrunner', '6011315009364502', '05/27', '255', NULL, NULL, 'Romance'),
(762, 'Rochester', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 3, 68.12, 'lowe.greyson@koelpin.com', '428 Muller Mills\nNorth Rodrick, IA 83249', 204.36, '14271-4696', '2023-12-16', 'Logan Hettinger IV', '4556691743007987', '12/26', '100', NULL, NULL, 'Non-fiction'),
(763, 'Rochester', 'The Alchemist', 'Paulo Coelho', 6, 65.33, 'elda.koss@bashirian.com', '68368 Veum Brook\nMajortown, FL 13591', 391.98, '69455', '2016-07-10', 'Margarita Cremin I', '4532571146933', '03/25', '733', NULL, NULL, 'Adventure'),
(764, 'Rochester', 'The Da Vinci Code', 'Dan Brown', 2, 21.20, 'pascale.wisozk@gmail.com', '205 Brain Fall Apt. 720\nEast Jacquelyn, NJ 90631-3102', 42.40, '63685-5458', '2012-07-10', 'Spencer Renner', '4539397843105034', '11/25', '718', NULL, NULL, 'Thriller'),
(765, 'Rochester', 'The Book Thief', 'Markus Zusak', 4, 66.83, 'martina.cartwright@blanda.com', '6928 Rubye Cliff Apt. 908\nTrantowfurt, DC 96734', 267.32, '65654', '2020-02-03', 'Mr. Blair Marquardt I', '4556525938103948', '10/27', '347', NULL, NULL, 'Historical Fiction'),
(766, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 10, 28.67, 'lizeth36@hotmail.com', '63778 O\'Hara Extensions\nSouth Cydney, ID 47190', 286.70, '34791-0927', '2021-10-02', 'Mrs. Nya Powlowski', '340996229745763', '08/27', '657', NULL, NULL, 'Dystopian'),
(767, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 9, 48.23, 'hauck.prudence@runolfsson.net', '199 Libby Summit\nHarveyfurt, NH 97046-5279', 434.07, '02343', '2022-11-24', 'Mrs. Celia Altenwerth V', '4929088830254632', '07/26', '743', NULL, NULL, 'Dystopian'),
(768, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 8, 89.92, 'valentina94@becker.com', '23074 Margaretta Way Suite 259\nLake Gracestad, KY 61104', 719.36, '01809', '2021-01-15', 'Shannon Collins', '4532142267297645', '05/26', '261', NULL, NULL, 'Fantasy');
INSERT INTO `sales` (`id`, `store`, `title`, `author`, `quantity`, `price`, `email`, `address`, `totalPrice`, `zip`, `date`, `name`, `card_num`, `expiration`, `cvv`, `created_at`, `updated_at`, `genre`) VALUES
(769, 'Rochester', 'Moby-Dick', 'Herman Melville', 7, 54.12, 'dlind@collins.com', '9359 Jacobi Fall Suite 242\nEast Lorna, MD 30918-9807', 378.84, '78834', '2019-02-01', 'Antonina Flatley', '4716730194534', '11/25', '150', NULL, NULL, 'Adventure'),
(770, 'Rochester', 'The Fault in Our Stars', 'John Green', 8, 45.66, 'sipes.andreane@hotmail.com', '942 Mosciski Meadow\nMooreview, CT 23128-1630', 365.28, '88885', '2018-04-01', 'Marcia Wilkinson', '4024007172001330', '06/27', '380', NULL, NULL, 'Romance'),
(771, 'Rochester', 'The Da Vinci Code', 'Dan Brown', 4, 85.42, 'gvolkman@gmail.com', '6271 Green Parkway\nJerdeport, NY 34129', 341.68, '34366-7344', '2011-05-08', 'Dr. Desiree Goodwin DDS', '346828595660660', '10/27', '333', NULL, NULL, 'Thriller'),
(772, 'Rochester', 'Moby-Dick', 'Herman Melville', 4, 68.75, 'arch.keebler@gmail.com', '2195 Elenor Garden\nMedafort, UT 67778', 275.00, '04378', '2024-06-09', 'Bettye Hilpert', '3528777712428168', '02/27', '770', NULL, NULL, 'Adventure'),
(773, 'Rochester', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 2, 57.78, 'iarmstrong@dach.com', '287 Stark Squares Apt. 035\nPort Joana, NJ 38273-5237', 115.56, '04468-3132', '2018-12-18', 'Katrina Wyman PhD', '348484248264738', '07/26', '992', NULL, NULL, 'Non-fiction'),
(774, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 7, 82.91, 'raynor.casandra@hotmail.com', '287 Demarco Pines\nMcGlynnstad, NE 44701-0059', 580.37, '38010', '2013-10-10', 'Leonardo Gerhold', '5282782096606919', '09/26', '513', NULL, NULL, 'Fiction'),
(775, 'Rochester', 'Becoming', 'Michelle Obama', 3, 26.54, 'giovanny03@yahoo.com', '28585 Lera Neck Suite 901\nDoyleshire, NY 91768', 79.62, '18548', '2024-04-14', 'Kathryn Blanda', '5533730741156852', '03/25', '134', NULL, NULL, 'Memoir'),
(776, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 2, 47.20, 'dina67@gmail.com', '11674 Lexus Light Suite 069\nCarrollborough, MO 16789-1946', 94.40, '85362-5703', '2012-11-05', 'Margarett Stehr', '4438146759951473', '02/26', '550', NULL, NULL, 'Fantasy'),
(777, 'Rochester', '1984', 'George Orwell', 7, 95.22, 'rau.verdie@yahoo.com', '9348 Emory Extensions\nKleinbury, MN 63025', 666.54, '25884-7852', '2018-03-08', 'Jeramy Gerlach', '5152370447982341', '08/25', '478', NULL, NULL, 'Dystopian'),
(778, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1, 56.56, 'nina00@yahoo.com', '740 Kutch Lights Suite 499\nWhiteport, SC 74605-8801', 56.56, '23567-3153', '2013-11-16', 'Adolphus Lockman', '376346178461474', '09/25', '769', NULL, NULL, 'Fantasy'),
(779, 'Rochester', 'The Alchemist', 'Paulo Coelho', 6, 16.43, 'xwill@yahoo.com', '55953 Lucious Canyon Suite 366\nNorth Darien, SD 13390-7933', 98.58, '97532-4332', '2012-06-28', 'Louie Flatley', '5266309821065532', '02/25', '757', NULL, NULL, 'Adventure'),
(780, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 6, 87.21, 'kelsie.boyer@hotmail.com', '86490 Camylle Dale\nNorth Bricechester, GA 74932-5077', 523.26, '21026-3038', '2024-04-10', 'Mr. Keith O\'Kon II', '4485950845824566', '10/25', '660', NULL, NULL, 'Fiction'),
(781, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 30.29, 'dbauch@schaden.com', '229 Vinnie Freeway\nEthylview, CT 93513-4939', 212.03, '51256', '2021-05-04', 'Mr. Baron Reichel Sr.', '2641646278948642', '12/25', '901', NULL, NULL, 'Fiction'),
(782, 'Rochester', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 9, 81.43, 'king.katelyn@hotmail.com', '77288 Dickens Cliff Suite 524\nArelyborough, UT 07407', 732.87, '97003-6593', '2022-10-22', 'Dr. Nia Mertz', '4485852037996394', '02/25', '839', NULL, NULL, 'Non-fiction'),
(783, 'Rochester', 'Moby-Dick', 'Herman Melville', 10, 91.86, 'brooke.hills@rippin.biz', '476 Feeney Coves\nNew Elian, TX 73774-3247', 918.60, '57735-6626', '2022-03-10', 'Eloise Bednar', '5533251232043517', '07/27', '317', NULL, NULL, 'Adventure'),
(784, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 5, 56.28, 'sidney.sanford@yahoo.com', '2551 Harris Stream Apt. 630\nLake Skye, KS 80102-0526', 281.40, '29897', '2015-03-09', 'Prof. Cesar Kerluke PhD', '3528878405226842', '01/25', '714', NULL, NULL, 'Dystopian'),
(785, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 2, 43.99, 'emmerich.vernie@gmail.com', '2294 Schamberger Glens Apt. 863\nMooreborough, WY 00575-7072', 87.98, '34761-5511', '2024-08-15', 'Dr. Shawn Herman', '341916416710668', '03/26', '345', NULL, NULL, 'Fantasy'),
(786, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 1, 12.06, 'ena06@casper.com', '3655 Jacklyn Center Suite 168\nRunolfsdottirland, DC 63135', 12.06, '08593-8732', '2018-02-26', 'Nelda Upton', '343483095494906', '10/26', '281', NULL, NULL, 'Fiction'),
(787, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 4, 26.04, 'bpagac@hotmail.com', '852 Naomi Inlet\nPort Jasper, ME 86186', 104.16, '41814', '2021-06-19', 'Adrien Reichel', '4716325444794380', '05/27', '706', NULL, NULL, 'Fantasy'),
(788, 'Rochester', 'The Da Vinci Code', 'Dan Brown', 5, 39.21, 'madelynn03@stehr.biz', '5038 Wiley Cliff Suite 749\nAddisonfurt, AR 89559', 196.05, '21673-5170', '2021-03-28', 'Juston Crist', '3589885265811510', '08/26', '773', NULL, NULL, 'Thriller'),
(789, 'Rochester', 'The Da Vinci Code', 'Dan Brown', 4, 47.63, 'egreen@durgan.org', '41355 Marcus Knolls\nWest Hilmaland, LA 19144-0383', 190.52, '45216-0801', '2020-09-24', 'Amparo Rohan', '4485938485555202', '07/25', '365', NULL, NULL, 'Thriller'),
(790, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 5, 33.50, 'vemmerich@yahoo.com', '53963 Cara Lake Suite 105\nGreysonton, SD 75304', 167.50, '63423-4739', '2022-03-17', 'Annabelle Jacobs', '4929462183198367', '01/27', '864', NULL, NULL, 'Fiction'),
(791, 'Rochester', 'The Book Thief', 'Markus Zusak', 6, 68.65, 'xcummings@collier.com', '9707 Enola Pass\nGraysonland, TN 54411', 411.90, '79109', '2018-08-18', 'Roman Beier', '2664251876550080', '05/26', '813', NULL, NULL, 'Historical Fiction'),
(792, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 1, 25.98, 'camden.schaden@hegmann.com', '3291 Farrell Ford\nPort Claudine, OR 05423', 25.98, '00790', '2010-12-29', 'Frida Jast', '4532991949250913', '09/25', '821', NULL, NULL, 'Fiction'),
(793, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 2, 85.25, 'geovanny.johnston@yahoo.com', '93450 Noemie Stream Apt. 890\nEnosland, MA 77193', 170.50, '16496', '2014-09-14', 'Dr. Moriah Borer Jr.', '2720803872635448', '01/25', '521', NULL, NULL, 'Fantasy'),
(794, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 6, 15.97, 'lweissnat@pagac.net', '21669 Orland Well Apt. 499\nMurphyborough, MS 72647-0920', 95.82, '50001', '2022-09-11', 'Zachery Price', '5293545768131749', '05/25', '261', NULL, NULL, 'Romance'),
(795, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 10, 34.66, 'marks.cayla@oconnell.com', '238 Jerod Street Suite 521\nClaudburgh, UT 23543', 346.60, '04992', '2022-05-07', 'Wilma Greenholt', '4485780201030643', '11/25', '938', NULL, NULL, 'Fantasy'),
(796, 'Rochester', 'The Da Vinci Code', 'Dan Brown', 9, 78.66, 'mhintz@yahoo.com', '5834 Carter Point Apt. 553\nSouth Violet, LA 70163', 707.94, '09596-7789', '2023-03-28', 'Kelvin Franecki', '4532431648648984', '05/25', '316', NULL, NULL, 'Thriller'),
(797, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 10, 28.05, 'miller.bernie@hotmail.com', '2542 Stamm Stravenue Suite 685\nEast Ezekielland, DE 31864', 280.50, '34201-8755', '2020-01-14', 'Mrs. Lelia Brown I', '4485661297619467', '12/24', '200', NULL, NULL, 'Fiction'),
(798, 'Rochester', 'The Catcher in the Rye', 'J.D. Salinger', 8, 22.09, 'hoeger.robin@gmail.com', '101 Hartmann Spur Apt. 876\nNew Jovani, TN 99121-5355', 176.72, '85448-1178', '2023-02-15', 'Bryana Labadie', '4024007154345606', '07/25', '102', NULL, NULL, 'Fiction'),
(799, 'Rochester', 'The Da Vinci Code', 'Dan Brown', 5, 81.76, 'koby62@gmail.com', '72080 Narciso Union\nKirlinfurt, TX 55532-8569', 408.80, '56530-3552', '2020-04-04', 'Trudie Feil', '5523527283538881', '01/26', '940', NULL, NULL, 'Thriller'),
(800, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 7, 50.35, 'ullrich.kaitlin@hotmail.com', '8083 Tavares Mountain\nDanielton, VA 62707', 352.45, '23352', '2013-08-19', 'Jared Brown V', '4485363491748248', '06/27', '916', NULL, NULL, 'Romance'),
(801, 'Rochester', 'Moby-Dick', 'Herman Melville', 6, 88.24, 'rhett.kassulke@yahoo.com', '48272 Aaliyah Highway Apt. 248\nEast Taliaberg, ME 60324-9342', 529.44, '38613-8734', '2013-11-22', 'Rebekah Altenwerth', '5244807368099688', '08/26', '145', NULL, NULL, 'Adventure'),
(802, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 10, 44.21, 'bins.carson@bogisich.info', '4705 Tillman Passage Suite 506\nHanemouth, UT 43167', 442.10, '88921-2925', '2014-11-01', 'Augusta Lynch DVM', '6011903936472454', '09/27', '963', NULL, NULL, 'Romance'),
(803, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 6, 33.98, 'gerson75@littel.biz', '77850 Lowe Harbor\nEast Claudiatown, OK 01251-1190', 203.88, '27431', '2011-01-13', 'Waylon Pfannerstill', '6011117663743421', '03/25', '418', NULL, NULL, 'Fantasy'),
(804, 'Rochester', 'The Book Thief', 'Markus Zusak', 2, 18.45, 'sven28@reynolds.com', '197 Werner Mountain Apt. 959\nWest Agustinaville, SC 15040', 36.90, '11414-3433', '2011-10-22', 'Prof. Jermey Swaniawski', '6011309776913476', '07/27', '855', NULL, NULL, 'Historical Fiction'),
(805, 'Rochester', 'The Catcher in the Rye', 'J.D. Salinger', 4, 83.41, 'devan21@gmail.com', '464 Rashad Land\nWest Serenatown, OK 38809-9355', 333.64, '50618-9494', '2022-06-04', 'Michaela Tromp', '6011391590752389', '10/27', '452', NULL, NULL, 'Fiction'),
(806, 'Rochester', 'The Catcher in the Rye', 'J.D. Salinger', 9, 70.50, 'eulalia.carroll@gmail.com', '56433 Reichert Underpass Suite 461\nNorth Faustofort, DE 63807', 634.50, '07326-9402', '2010-11-29', 'Santino Wyman', '2614091925348636', '05/25', '206', NULL, NULL, 'Fiction'),
(807, 'Rochester', 'The Book Thief', 'Markus Zusak', 9, 78.28, 'bashirian.ignacio@bauch.com', '36610 Kemmer Forks Suite 489\nMorarchester, MO 28390-8022', 704.52, '64187-9043', '2013-01-08', 'Mr. Jalon Beahan Jr.', '4716218863648205', '01/25', '682', NULL, NULL, 'Historical Fiction'),
(808, 'Rochester', 'The Da Vinci Code', 'Dan Brown', 4, 66.05, 'pbalistreri@yahoo.com', '947 Gilbert Spur\nJoaquinfort, SC 52548', 264.20, '03654-8307', '2011-01-06', 'Mrs. Ettie Weissnat', '5425547992190187', '03/25', '718', NULL, NULL, 'Thriller'),
(809, 'Rochester', '1984', 'George Orwell', 1, 72.89, 'ledner.audrey@yahoo.com', '428 Kris Heights\nSchummside, FL 70201-4439', 72.89, '47114', '2018-01-14', 'Mr. Gerson Huels', '4205634414113853', '04/27', '932', NULL, NULL, 'Dystopian'),
(810, 'Rochester', '1984', 'George Orwell', 5, 17.90, 'amuller@hotmail.com', '443 Walker Walks Suite 070\nEast Rebeccabury, FL 45631-4289', 89.50, '66410-2445', '2017-11-13', 'Eda Bartell', '4024007124756130', '04/25', '103', NULL, NULL, 'Dystopian'),
(811, 'Rochester', 'The Book Thief', 'Markus Zusak', 2, 43.14, 'esperanza.glover@hotmail.com', '3494 Kihn Trail Suite 881\nNew Raleighland, WI 10610', 86.28, '44226', '2017-12-11', 'Prof. Kellie Bartoletti II', '4929964212511635', '04/25', '627', NULL, NULL, 'Historical Fiction'),
(812, 'Rochester', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 1, 88.69, 'shields.abbie@gmail.com', '1609 Priscilla Bridge Apt. 761\nPort Nakiamouth, WI 23053-2392', 88.69, '50775', '2023-09-11', 'Margot Heller', '4539336902496413', '06/27', '720', NULL, NULL, 'Non-fiction'),
(813, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 8, 46.81, 'alexandra.rolfson@damore.biz', '43641 Johnpaul Extensions Apt. 920\nBernierhaven, CA 56073', 374.48, '97450-4842', '2014-05-04', 'Dr. Dorcas Murazik', '4556083442054108', '06/25', '921', NULL, NULL, 'Fiction'),
(814, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 2, 56.08, 'dwuckert@gmail.com', '56521 Tyra Manors\nPort Muhammadchester, LA 54809-7647', 112.16, '52598', '2015-02-12', 'Durward Dicki', '2221157546691566', '02/27', '138', NULL, NULL, 'Romance'),
(815, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 8, 32.08, 'ferry.griffin@schmeler.biz', '970 Johnson Cliffs Apt. 923\nZoratown, HI 20149-3467', 256.64, '96340', '2013-09-21', 'Caterina Feeney', '4929501306024446', '05/27', '113', NULL, NULL, 'Fiction'),
(816, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 8, 53.35, 'rhiannon15@morar.org', '506 Nikolaus Row Apt. 379\nSydneyborough, SD 09895', 426.80, '48860', '2011-08-22', 'Prudence Ankunding', '5264259330815277', '12/26', '904', NULL, NULL, 'Fiction'),
(817, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 3, 92.71, 'carrie48@yahoo.com', '71367 Kreiger Landing Apt. 960\nMcKenziebury, MO 64037', 278.13, '67313-8507', '2024-06-05', 'Marcel Schmidt', '379808216805076', '04/25', '643', NULL, NULL, 'Fantasy'),
(818, 'Rochester', 'The Book Thief', 'Markus Zusak', 7, 50.85, 'clemmie55@gmail.com', '521 Streich Knolls Apt. 330\nMakennaland, MN 40411-5400', 355.95, '55358', '2018-02-28', 'Mr. Horacio Hoppe', '4024007170862766', '12/24', '260', NULL, NULL, 'Historical Fiction'),
(819, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 2, 34.07, 'bwolf@yahoo.com', '9264 Willie Way Apt. 996\nWest Bernice, WV 08679', 68.14, '77464', '2017-07-17', 'Mr. Ethan Harvey Jr.', '4716568040955463', '08/27', '505', NULL, NULL, 'Fantasy'),
(820, 'Rochester', 'The Fault in Our Stars', 'John Green', 4, 98.54, 'kleannon@beer.com', '635 Buckridge Bridge\nPort Kamryn, CA 85828', 394.16, '89869-4292', '2013-01-17', 'Hyman King', '6011059103731410', '11/26', '305', NULL, NULL, 'Romance'),
(821, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 3, 55.90, 'randy15@johns.biz', '6100 Bailey Green\nWest Trent, DC 33025-3784', 167.70, '90255-8519', '2011-02-24', 'Olen Gerhold', '4929577571891107', '04/27', '761', NULL, NULL, 'Fiction'),
(822, 'Rochester', 'The Book Thief', 'Markus Zusak', 2, 10.00, 'howell.leonora@quitzon.com', '49349 Rhiannon Ridge Apt. 434\nSouth Sigurdburgh, TX 68438-3514', 20.00, '00719', '2018-07-06', 'Mireya Carroll', '6011911472055112', '10/27', '883', NULL, NULL, 'Historical Fiction'),
(823, 'Rochester', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 7, 79.15, 'sreinger@yahoo.com', '2642 Olson Place\nWest Bethanystad, MS 53912-2524', 554.05, '75759', '2024-05-16', 'Georgiana Gerlach', '4535779295066430', '11/26', '571', NULL, NULL, 'Non-fiction'),
(824, 'Rochester', 'The Fault in Our Stars', 'John Green', 8, 30.03, 'epagac@hotmail.com', '57662 Lila Shore\nLake Jayceefort, OK 68780-0093', 240.24, '33754-4630', '2018-04-28', 'Beryl Bernier', '4911029507481397', '06/25', '440', NULL, NULL, 'Romance'),
(825, 'Rochester', 'The Book Thief', 'Markus Zusak', 3, 77.32, 'litzy58@hammes.com', '87383 Broderick Heights\nTracyborough, AR 06998', 231.96, '76179', '2018-12-18', 'Miss Melyssa Smith', '5518267595832683', '09/26', '899', NULL, NULL, 'Historical Fiction'),
(826, 'Rochester', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 2, 58.53, 'tania.beer@hotmail.com', '8490 Schuppe Ports\nSanfordville, AR 26231-0760', 117.06, '01297-9000', '2017-04-26', 'Dr. Harvey Schumm', '2357858067872297', '01/25', '658', NULL, NULL, 'Non-fiction'),
(827, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 2, 24.41, 'hauck.ezequiel@hamill.com', '47244 Claud Manors\nSouth Sylvanport, PA 86368-8824', 48.82, '11661-6826', '2014-06-07', 'Ms. Blanche Schiller III', '5347334225842024', '04/27', '813', NULL, NULL, 'Dystopian'),
(828, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 2, 90.14, 'dorothy.swaniawski@yahoo.com', '90062 Walsh Curve Apt. 522\nMargieview, TX 13426', 180.28, '60754', '2017-07-01', 'Dr. Nat Franecki', '5365194682450829', '12/26', '369', NULL, NULL, 'Fantasy'),
(829, 'Rochester', 'Becoming', 'Michelle Obama', 8, 77.75, 'angela80@yahoo.com', '795 Jaqueline Stravenue Suite 323\nEsmeraldashire, VT 72792', 622.00, '39687', '2019-07-17', 'Roselyn Parisian', '4227182241983423', '03/27', '536', NULL, NULL, 'Memoir'),
(830, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 5, 49.78, 'dock10@hotmail.com', '972 Rowena Island Suite 420\nNorth Griffinfurt, OK 36372-5906', 248.90, '33405-5965', '2021-02-11', 'Oma Shields', '4916362675509', '12/24', '776', NULL, NULL, 'Romance'),
(831, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 5, 86.20, 'eduardo21@yahoo.com', '400 Trudie Drives Apt. 285\nSandraview, PA 77608', 431.00, '49827-1784', '2024-05-24', 'Prof. Anabel Spencer Sr.', '5510350215535999', '03/27', '158', NULL, NULL, 'Fantasy'),
(832, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 10, 35.97, 'nbalistreri@hotmail.com', '42021 Mariam Knolls\nBernhardland, IN 64750', 359.70, '85379-2766', '2015-06-07', 'Dr. Kaleigh Gerhold', '5143324993331371', '04/26', '722', NULL, NULL, 'Dystopian'),
(833, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 2, 83.82, 'felicity12@gmail.com', '34451 Stevie Landing\nNew Coltonview, TX 92630', 167.64, '95186-0929', '2020-07-27', 'Giuseppe Will', '2549297761958921', '02/26', '848', NULL, NULL, 'Fantasy'),
(834, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 6, 28.13, 'oscar04@yahoo.com', '8134 Laron Grove Apt. 667\nAntwonfort, PA 63928-5274', 168.78, '65886-8159', '2024-10-31', 'Bruce McGlynn Sr.', '4532991507359', '07/27', '694', NULL, NULL, 'Dystopian'),
(835, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 8, 74.89, 'lesch.jackie@yahoo.com', '43674 Mellie Mount Suite 718\nGibsonbury, OH 46011-6937', 599.12, '02937-2619', '2015-04-07', 'Hertha Gleason', '2221265657712061', '04/26', '436', NULL, NULL, 'Dystopian'),
(836, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 3, 22.06, 'hadley64@gmail.com', '776 Jedidiah Road\nWardfurt, VT 51777-7530', 66.18, '08727', '2015-05-17', 'Daphne Carter MD', '4556734936154255', '04/27', '450', NULL, NULL, 'Dystopian'),
(837, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 8, 85.42, 'owen30@wunsch.biz', '7677 Gutmann Rest\nRandallside, WV 65209-3696', 683.36, '29890', '2015-07-12', 'Alize Lubowitz', '6011531924200833', '07/27', '258', NULL, NULL, 'Romance'),
(838, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 4, 20.40, 'clifton64@hotmail.com', '149 Goyette Cove\nSouth Bennettfurt, ME 57426-5911', 81.60, '60980', '2012-04-23', 'Bertram Graham', '4539575197739850', '05/25', '396', NULL, NULL, 'Fiction'),
(839, 'Rochester', '1984', 'George Orwell', 9, 10.16, 'anastasia.armstrong@hotmail.com', '618 Hyatt Field\nSantinafurt, WA 89169-7070', 91.44, '29246-5549', '2018-08-27', 'Wilbert Steuber', '2361525756741786', '02/25', '834', NULL, NULL, 'Dystopian'),
(840, 'Rochester', 'The Catcher in the Rye', 'J.D. Salinger', 9, 91.91, 'mschulist@hills.com', '626 Deckow Hills\nLake Lonny, TN 84682-3010', 827.19, '07875-4165', '2020-03-27', 'Jimmie Veum DDS', '6011626677120806', '01/25', '566', NULL, NULL, 'Fiction'),
(841, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 2, 15.79, 'maynard78@gmail.com', '700 Ernser Walks Apt. 360\nNorth Nedrashire, ME 72222-3280', 31.58, '95568-9389', '2011-03-31', 'Mrs. Marcelle Ward II', '4556324100869217', '02/27', '727', NULL, NULL, 'Romance'),
(842, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 5, 61.86, 'felicita.emmerich@oconnell.org', '328 Kemmer Rest Apt. 597\nAlannahaven, MO 45937', 309.30, '41043', '2021-06-19', 'Korey Casper', '6011549482761632', '06/26', '556', NULL, NULL, 'Fantasy'),
(843, 'Rochester', '1984', 'George Orwell', 1, 21.44, 'nettie17@osinski.org', '770 Hettinger Motorway\nLake Lyla, PA 59329', 21.44, '40854', '2023-08-18', 'Winston Prosacco', '4556908567483593', '06/25', '618', NULL, NULL, 'Dystopian'),
(844, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 3, 54.31, 'kendrick38@cormier.com', '20055 Bartell Spur Apt. 569\nNorth Llewellynport, GA 89206-9249', 162.93, '66619-5314', '2011-10-25', 'Cristobal Raynor', '345902489525940', '01/27', '666', NULL, NULL, 'Fiction'),
(845, 'Rochester', 'The Catcher in the Rye', 'J.D. Salinger', 2, 75.79, 'margarita.abshire@mclaughlin.biz', '3428 Kessler Fields Suite 832\nSouth Imeldaborough, KS 85627-8013', 151.58, '80722-1949', '2019-08-19', 'Daniella Boyer', '4916438277702', '11/25', '526', NULL, NULL, 'Fiction'),
(846, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 2, 12.69, 'ynitzsche@beier.org', '2633 Mylene Trail Apt. 072\nSouth Dulce, VT 50275-5718', 25.38, '22954', '2013-10-17', 'Arno Treutel', '4539567031508054', '12/24', '233', NULL, NULL, 'Dystopian'),
(847, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 6, 21.35, 'klebsack@yahoo.com', '77329 Marcelo Plains\nSouth Dayna, MO 26941', 128.10, '91554', '2022-12-20', 'Kariane Torp', '5472405145337613', '02/26', '130', NULL, NULL, 'Fantasy'),
(848, 'Rochester', 'The Catcher in the Rye', 'J.D. Salinger', 1, 88.95, 'hlarson@schinner.com', '2703 Hansen Village Suite 048\nEmmafurt, PA 85494', 88.95, '91141', '2018-01-04', 'Elvera Altenwerth I', '4539543438913023', '04/26', '114', NULL, NULL, 'Fiction'),
(849, 'Rochester', 'The Book Thief', 'Markus Zusak', 2, 48.69, 'dveum@gulgowski.com', '12545 Ziemann Path Suite 829\nMantetown, WY 65773', 97.38, '98075-7819', '2014-08-14', 'Prof. Josue Kiehn', '5478198724521749', '02/26', '517', NULL, NULL, 'Historical Fiction'),
(850, 'Rochester', 'The Alchemist', 'Paulo Coelho', 8, 36.71, 'luigi.farrell@gmail.com', '85294 Beer Run Suite 311\nKayleighview, SD 41109', 293.68, '85725', '2019-07-21', 'Pamela Rosenbaum', '4532533736502922', '01/25', '542', NULL, NULL, 'Adventure'),
(851, 'Rochester', 'Becoming', 'Michelle Obama', 5, 70.37, 'lauriane07@yahoo.com', '511 Craig Tunnel Suite 978\nKelsieshire, CT 42518-8925', 351.85, '87119-5769', '2020-11-24', 'Edgar Mueller', '2720539647637398', '10/27', '859', NULL, NULL, 'Memoir'),
(852, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 10, 80.97, 'gerson.prohaska@hotmail.com', '71074 Roberts Villages\nSouth Velva, TX 83832-7159', 809.70, '44265-2782', '2018-06-04', 'Jerald Wisoky', '4539126588238', '08/26', '518', NULL, NULL, 'Romance'),
(853, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 7, 28.18, 'jillian23@hotmail.com', '496 Simonis Extension Apt. 099\nWest Odashire, OK 08077', 197.26, '59447-5015', '2011-05-03', 'Ian Parisian II', '3589873304413134', '10/27', '597', NULL, NULL, 'Fiction'),
(854, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, 17.83, 'michaela08@gmail.com', '662 Gusikowski Viaduct\nHeaneyfurt, IA 94996-7599', 89.15, '76239', '2024-03-02', 'Lyla Rippin', '373040698397192', '01/26', '578', NULL, NULL, 'Fiction'),
(855, 'Rochester', 'Becoming', 'Michelle Obama', 10, 36.87, 'telly26@tremblay.biz', '138 Heller Gateway Apt. 856\nAngelicamouth, IA 11068-1198', 368.70, '29342', '2020-11-02', 'Ms. Tomasa Welch III', '4556552487915142', '02/25', '208', NULL, NULL, 'Memoir'),
(856, 'Rochester', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 3, 46.37, 'carroll13@gmail.com', '724 Bayer Point\nNew Furmanfort, WV 41223', 139.11, '19880', '2024-10-22', 'Asa Armstrong', '4485971150786349', '04/25', '586', NULL, NULL, 'Non-fiction'),
(857, 'Rochester', 'Becoming', 'Michelle Obama', 9, 78.26, 'triston.spencer@hotmail.com', '91511 Hoppe Crest\nFionamouth, VA 18994', 704.34, '93622', '2019-08-05', 'Brycen Halvorson', '4532675783900036', '08/25', '387', NULL, NULL, 'Memoir'),
(858, 'Rochester', 'The Fault in Our Stars', 'John Green', 5, 37.06, 'qcarter@yahoo.com', '935 Mante Extension Suite 285\nCandelariofort, MO 96941-4519', 185.30, '58939', '2022-06-25', 'Mrs. Marjolaine Mitchell III', '2221761449898044', '12/26', '691', NULL, NULL, 'Romance'),
(859, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 8, 86.49, 'summer18@thiel.com', '223 Emma Ports Apt. 950\nWest Leonelside, MA 54523-6626', 691.92, '17663', '2018-09-02', 'Wallace Brown', '4716251844508297', '06/26', '843', NULL, NULL, 'Fiction'),
(860, 'Rochester', 'The Alchemist', 'Paulo Coelho', 9, 76.11, 'ruth.emard@medhurst.com', '40998 Leffler Lodge Apt. 023\nPort Fionamouth, MN 51234-9524', 684.99, '93535', '2019-09-27', 'Darrick Mante Jr.', '4024007119661956', '12/25', '670', NULL, NULL, 'Adventure'),
(861, 'Rochester', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 7, 34.85, 'dawn.mccullough@wiegand.net', '974 Stroman Ville\nWest Calihaven, WA 69341', 243.95, '99365-5467', '2020-08-21', 'Jodie Swaniawski DVM', '4916689938820', '01/25', '895', NULL, NULL, 'Non-fiction'),
(862, 'Rochester', '1984', 'George Orwell', 10, 31.30, 'doyle.lou@gmail.com', '66238 Medhurst Via\nJuliohaven, NE 26887-0314', 313.00, '01990', '2013-09-21', 'Prof. Hazle Mitchell II', '3528780060207580', '11/26', '551', NULL, NULL, 'Dystopian'),
(863, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 7, 99.68, 'vboyer@gmail.com', '285 Hodkiewicz Valley\nWest Zaria, WY 96681-3212', 697.76, '88366', '2012-11-14', 'Neal Wehner', '4532410938056900', '10/26', '576', NULL, NULL, 'Fantasy'),
(864, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 9, 11.73, 'lpredovic@yahoo.com', '99496 Kuphal Drive\nLake Winfield, GA 34395-2930', 105.57, '65273-1144', '2024-05-14', 'Gertrude Smith', '2641188396229027', '07/26', '802', NULL, NULL, 'Fantasy'),
(865, 'Rochester', 'The Fault in Our Stars', 'John Green', 4, 86.16, 'dolores.flatley@hyatt.biz', '584 Rempel Ferry Apt. 560\nPort Sabinaton, WV 10922-2407', 344.64, '86986', '2023-07-28', 'Dallas Gleichner', '4929210082408738', '04/27', '122', NULL, NULL, 'Romance'),
(866, 'Rochester', 'The Book Thief', 'Markus Zusak', 10, 62.93, 'rodrigo.klein@hotmail.com', '4124 Daugherty Tunnel Suite 499\nMaggiefort, NY 90427-7493', 629.30, '14636', '2019-05-31', 'Mr. Esteban Hettinger Jr.', '4539284811893785', '04/27', '668', NULL, NULL, 'Historical Fiction'),
(867, 'Rochester', 'The Da Vinci Code', 'Dan Brown', 9, 51.47, 'kuhic.alphonso@stehr.com', '410 Bryce Brook Apt. 092\nLake Anastasiastad, LA 43699', 463.23, '04900-7811', '2023-03-12', 'Prof. Marcellus Bode', '2347961304916555', '07/27', '327', NULL, NULL, 'Thriller'),
(868, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 9, 45.92, 'cormier.liliana@yahoo.com', '36092 Art Springs Apt. 992\nPort Garett, SC 71845', 413.28, '99518-9594', '2012-06-26', 'Prof. Magnus Smith II', '4532850017979847', '01/26', '334', NULL, NULL, 'Fantasy'),
(869, 'Rochester', 'The Book Thief', 'Markus Zusak', 4, 77.59, 'lmcclure@wisozk.com', '57247 Kaleigh Coves Suite 159\nPort Marlenland, CO 89061', 310.36, '38183-2340', '2016-08-01', 'Miss Viviane Toy', '5540058788869448', '02/25', '133', NULL, NULL, 'Historical Fiction'),
(870, 'Rochester', 'Becoming', 'Michelle Obama', 9, 99.43, 'eweissnat@wiza.com', '81884 Marina Turnpike\nSouth Yessenia, AL 98863-8757', 894.87, '36075', '2017-12-17', 'Aliza Corwin', '2671523350869546', '03/26', '810', NULL, NULL, 'Memoir'),
(871, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 3, 68.69, 'noelia22@fisher.com', '112 Taylor Rue Apt. 725\nSouth Rafaelaton, OK 68602', 206.07, '29390-4717', '2021-01-03', 'Dr. Oran Nitzsche', '4556508638324709', '11/25', '832', NULL, NULL, 'Fiction'),
(872, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 2, 56.92, 'ariel.murray@hotmail.com', '2314 Fritsch Parkway\nLake Rosemarie, MO 02789-3166', 113.84, '98125-6998', '2022-12-24', 'Gunner Emard', '4024007136949855', '08/26', '816', NULL, NULL, 'Fiction'),
(873, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 9, 40.19, 'ebert.maribel@yahoo.com', '870 Lucio Ports Apt. 609\nJerdechester, WY 83838-3634', 361.71, '06746', '2011-12-28', 'Prof. Quentin Hill', '4539531444421958', '07/26', '192', NULL, NULL, 'Fiction'),
(874, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 5, 56.16, 'mozell21@littel.info', '95699 Merritt Inlet Apt. 657\nZemlakburgh, CT 74781-7863', 280.80, '32373-1471', '2010-12-25', 'Cali Kris', '5403606488947504', '06/25', '870', NULL, NULL, 'Fantasy'),
(875, 'Rochester', 'Moby-Dick', 'Herman Melville', 6, 39.60, 'hfadel@swaniawski.org', '799 Jovanny Walks Apt. 795\nWest Jovany, NE 23882', 237.60, '89905-5375', '2011-05-24', 'Coby West', '5426249229833304', '05/25', '955', NULL, NULL, 'Adventure'),
(876, 'Rochester', 'The Da Vinci Code', 'Dan Brown', 1, 43.76, 'dare.brenden@gmail.com', '8127 Stroman Flat Suite 919\nSouth Ryley, SD 72305-6483', 43.76, '78306', '2017-05-07', 'Rosamond Schumm', '4539863379319489', '08/26', '463', NULL, NULL, 'Thriller'),
(877, 'Rochester', 'Becoming', 'Michelle Obama', 2, 23.08, 'mattie26@yahoo.com', '258 McClure Summit\nPort Israelchester, NM 45507', 46.16, '02606-7114', '2019-04-30', 'Hiram Kiehn', '4485167505585938', '04/25', '682', NULL, NULL, 'Memoir'),
(878, 'Rochester', 'To Kill a Mockingbird', 'Harper Lee', 5, 77.29, 'yhahn@ernser.com', '638 Talon Turnpike\nAlexandermouth, OR 61108-5593', 386.45, '09891', '2015-11-26', 'Kayla Hermann', '5188416834191000', '10/26', '995', NULL, NULL, 'Fiction'),
(879, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 2, 83.12, 'zankunding@veum.com', '5736 Hahn Way Apt. 157\nSengerstad, UT 99284-9176', 166.24, '12929', '2023-06-26', 'Carolyne Kuhlman', '4556289432822', '11/25', '790', NULL, NULL, 'Dystopian'),
(880, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 4, 29.21, 'sanford.metz@nader.info', '292 Hand Prairie\nEast Kaylieport, IN 63351-6113', 116.84, '98881', '2018-03-19', 'Gia Reynolds', '2720000517717737', '08/27', '785', NULL, NULL, 'Fantasy'),
(881, 'Rochester', 'Pride and Prejudice', 'Jane Austen', 7, 20.73, 'meaghan.hills@hotmail.com', '198 Gerhold Walk Apt. 218\nDanielview, VA 82424', 145.11, '82159', '2021-02-20', 'Zander Buckridge', '4916157909281290', '05/27', '442', NULL, NULL, 'Romance'),
(882, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 9, 18.45, 'adams.alan@gmail.com', '403 Pattie Orchard\nSouth Shaneport, PA 27655', 166.05, '83453', '2023-06-13', 'Lonny Braun', '5117544424693964', '03/26', '235', NULL, NULL, 'Fantasy'),
(883, 'Rochester', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 7, 86.65, 'pascale85@hotmail.com', '2028 Lindgren Viaduct Apt. 290\nRobbmouth, FL 32264-4434', 606.55, '19360', '2024-06-03', 'Prof. Charlie Veum', '4556062544582315', '10/26', '674', NULL, NULL, 'Non-fiction'),
(884, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 4, 20.26, 'tcarroll@collins.biz', '607 Cecelia Shoals Apt. 041\nPort Marietta, NY 05233-1434', 81.04, '70703-7742', '2014-09-14', 'Prof. Mitchel Yost II', '376372845717650', '05/25', '922', NULL, NULL, 'Fiction'),
(885, 'Rochester', 'Becoming', 'Michelle Obama', 7, 30.99, 'rath.casper@hotmail.com', '242 Grant Plains\nNorth Magali, AK 31283-7210', 216.93, '25589-8410', '2010-12-11', 'Alden Waters', '6011888991664212', '08/25', '636', NULL, NULL, 'Memoir'),
(886, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 5, 57.56, 'johnson.zelma@vonrueden.com', '69636 Dietrich Ranch\nMelisahaven, RI 00569', 287.80, '63370', '2016-08-30', 'Lambert Erdman', '4929996575718530', '06/25', '593', NULL, NULL, 'Fantasy'),
(887, 'Rochester', 'The Fault in Our Stars', 'John Green', 6, 39.47, 'antonette83@gmail.com', '86139 Hilpert Neck Suite 224\nMalvinaberg, MD 52318', 236.82, '50214-7538', '2014-03-02', 'Tyshawn Reichert', '3528200276808030', '11/26', '775', NULL, NULL, 'Romance'),
(888, 'Rochester', 'The Hunger Games', 'Suzanne Collins', 6, 49.49, 'uboyer@yahoo.com', '172 Rice Islands Suite 018\nDennismouth, AR 88874-3573', 296.94, '31491', '2013-04-01', 'Imani Herman', '2666044192733011', '01/26', '114', NULL, NULL, 'Dystopian'),
(889, 'Rochester', 'The Fault in Our Stars', 'John Green', 2, 30.01, 'kristian.cummerata@pfannerstill.com', '71902 O\'Kon Groves Apt. 644\nLailaburgh, LA 89711-2935', 60.02, '11446-7517', '2017-02-11', 'Ms. Eda Schmitt III', '2633648698356224', '12/26', '681', NULL, NULL, 'Romance'),
(890, 'Rochester', 'The Great Gatsby', 'F. Scott Fitzgerald', 7, 28.41, 'maryam.rohan@kling.com', '9914 Amiya Rapids\nWest Avis, ID 45058', 198.87, '75559', '2015-03-09', 'Luciano Bednar', '6011664452569616', '01/26', '785', NULL, NULL, 'Fiction'),
(891, 'Rochester', 'The Da Vinci Code', 'Dan Brown', 1, 85.81, 'waelchi.kale@hegmann.com', '989 Sydnie Avenue Suite 050\nLake Elishafort, KS 54496', 85.81, '58000', '2013-07-14', 'Angeline Dach', '4556280893881290', '12/24', '292', NULL, NULL, 'Thriller'),
(892, 'Rochester', 'The Book Thief', 'Markus Zusak', 6, 91.97, 'vkeeling@gmail.com', '425 Sammie Spring\nSouth Edd, VT 16211-9387', 551.82, '89927-1249', '2024-03-16', 'Zackery Beatty IV', '5264315914302650', '11/26', '612', NULL, NULL, 'Historical Fiction'),
(893, 'Rochester', 'The Alchemist', 'Paulo Coelho', 5, 27.68, 'vjohnson@yahoo.com', '674 Bahringer Ranch\nSouth Jamirside, DE 51031', 138.40, '08067', '2013-04-27', 'Mazie Franecki', '6011013205055004', '02/26', '922', NULL, NULL, 'Adventure'),
(894, 'Rochester', 'The Alchemist', 'Paulo Coelho', 7, 55.95, 'njakubowski@gmail.com', '803 Ilene Manor\nAaliyahmouth, GA 14101', 391.65, '41652-6381', '2016-07-10', 'Mr. Jaleel Casper I', '6011535351690325', '07/27', '827', NULL, NULL, 'Adventure'),
(895, 'Rochester', 'The Catcher in the Rye', 'J.D. Salinger', 10, 33.58, 'amelie.schultz@marvin.com', '9990 Torp Plains Apt. 842\nEast Elvie, MD 23428-0820', 335.80, '54302-9464', '2014-09-07', 'Kiana Bailey', '4916049019006', '03/27', '635', NULL, NULL, 'Fiction'),
(896, 'Rochester', 'The Book Thief', 'Markus Zusak', 7, 16.09, 'jarod.spencer@yahoo.com', '3115 Blaise Via\nLake Eileenton, IN 89776-2806', 112.63, '82123-9801', '2013-05-26', 'Will Dietrich MD', '3528064627867065', '01/27', '290', NULL, NULL, 'Historical Fiction'),
(897, 'Rochester', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 6, 13.97, 'ukassulke@kutch.net', '26062 Niko Dam Apt. 969\nNew Uniquechester, SC 66754-8732', 83.82, '02587-8179', '2023-11-18', 'Edmond Schaden', '4916065033159748', '11/24', '612', NULL, NULL, 'Fantasy'),
(898, 'Rochester', 'The Hobbit', 'J.R.R. Tolkien', 10, 67.04, 'keon.schumm@hotmail.com', '8420 Huel Forest Suite 723\nLake Keonside, MT 89701-1748', 670.40, '68846-7818', '2020-12-14', 'Casper Hammes', '3528229563550963', '05/26', '763', NULL, NULL, 'Fantasy'),
(899, 'Rochester', 'Becoming', 'Michelle Obama', 4, 75.44, 'flangosh@yahoo.com', '48849 Berniece Street Apt. 189\nWest Maye, NY 62783-2414', 301.76, '93783-7006', '2011-09-07', 'Stanford Hauck', '4929403740478447', '08/26', '171', NULL, NULL, 'Memoir'),
(900, 'Rochester', '1984', 'George Orwell', 4, 81.81, 'mackenzie50@gaylord.com', '90901 Hill Mount Apt. 895\nLake Chaya, GA 13619-8097', 327.24, '42019-1918', '2013-07-20', 'Jamel Schneider', '5569837677391960', '10/25', '272', NULL, NULL, 'Dystopian'),
(901, 'Rochester', 'Sister Witches Of Raven Falls Cozy Mystery Series, Books 1-3', 'Nix Haliwell', 15, 480.99, 'ernesto6@gmail.com', 'Maryland', 7214.85, '325', '2018-12-04', 'Ben Stux', '3435345432534543', '345', '253', '2024-11-26 16:54:42', '2024-11-26 16:54:42', NULL),
(902, 'Queens', 'Married In Name Only', 'Paisely Morgan', 1, 500.00, 'bryan.anaafi@acity.edu.gh', 'Adjei Kojo Santor Rd', 500.00, '00233', '2003-03-14', 'Bryan Anaafi', '4305450031904296', '05/2025', '590', '2024-11-26 17:28:56', '2024-11-26 17:28:56', NULL),
(903, 'Manhattan', 'The Lord of the Rings', 'J. R. R. Tolkien', 1, 900.00, 'bkwofie926@gmail.com', '4th Ridge', 900.00, '2343', '2015-12-01', 'Ben Stux', '122457545', '5', '45', '2024-11-27 00:14:36', '2024-11-27 00:14:36', NULL);

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
('8mVP7hfYiXXzha9Bbe5ntezbs0KGIFXdhsYPHbIM', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNUhYaFdORmNsUHY5V2hpZ3JlY0NzaGlhRlFWWXNXVzFOZ0Y4VHBSSCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjg4OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcGVyZm9ybWFuY2U/YW5hbHlzaXNfdHlwZT1iZXN0X3NlbGxpbmdfYm9va3Mmc3RvcmU9U3RhdGVuJTIwSXNsYW5kIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1732667413);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `store`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Brooklyn', 'NY', NULL, NULL),
(2, 'Queens', 'NY', NULL, NULL),
(3, 'The Bronx', 'NY', NULL, NULL),
(4, 'Manhattan', 'NY', NULL, NULL),
(5, 'Staten Island', 'NY', NULL, NULL),
(6, 'Rochester', 'NY', NULL, NULL);

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
(1, 'Admin', 'admin@example.com', '2024-11-26 16:27:34', '$2y$12$6AwbnznUgVnaDgbB/351S.P6l7pDKWtszWYNRufyWz2qgizS8Ep0e', '5o5Hh1FwLh', '2024-11-26 16:27:35', '2024-11-26 16:27:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
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
-- Indexes for table `stores`
--
ALTER TABLE `stores`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=904;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
