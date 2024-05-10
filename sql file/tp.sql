-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 03:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `payment_data`
--

CREATE TABLE `payment_data` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `card_name` varchar(100) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `exp_month` varchar(20) NOT NULL,
  `exp_year` varchar(20) NOT NULL,
  `cvv` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment_data`
--

INSERT INTO `payment_data` (`id`, `name`, `email`, `address`, `city`, `state`, `zip`, `card_name`, `card_number`, `exp_month`, `exp_year`, `cvv`, `created_at`) VALUES
(9, 'Ahmed Zaki', 'aa@gmail.com', '789 Maple Lane', 'Springville', 'New York', '3232', 'Ahmed Zaki', '3313 3333 2567 9876', 'October', '2025', '323', '2024-05-02 21:27:27'),
(25, 'leen', 'leen@gmail.com', '123 Main Street, Apartment 4B', 'Dammam', 'Riyadh', '12354', 'leen ', '1234 8765 5432 4567', 'October', '2025', '123', '2024-05-03 20:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(12, 1, 'aa@gmail.com', '2024-04-03', '2024-04-10', 'I am excited to travel', '2024-04-25 15:50:19', 2, 'a', '2024-05-03 20:32:37'),
(13, 7, 'Nora@gmail.com', '2024-04-04', '2024-04-08', 'This travel planner website made booking my trip a breeze! Everything from choosing my flights to selecting accommodations was so easy and hassle-free.', '2024-04-25 16:36:23', 2, 'a', '2024-05-03 20:23:40'),
(14, 8, 'alice@gmail.com', '2024-04-16', '2024-04-17', 'Love how this travel planner website offers personalized recommendations based on my preferences. It really helped me tailor my trip to exactly what I wanted.', '2024-04-25 16:39:55', 2, 'u', '2024-05-03 20:24:21'),
(15, 8, 'john@gmail.com', '2024-04-04', '2024-04-16', 'The user interface of this travel planner website is so intuitive and user-friendly. It made the booking process enjoyable and stress-free.', '2024-04-26 11:38:12', 2, 'u', '2024-05-03 20:24:49'),
(16, 8, 'noor@gmail.com', '2024-04-04', '2024-04-16', 'Appreciate the detailed information provided on this travel planner website about each destination. It helped me make informed decisions and plan the perfect itinerary for my trip.', '2024-04-26 11:41:53', 2, 'a', '2024-05-03 20:25:17'),
(17, 11, 'leen@gmail.com', '2024-05-03', '2024-05-14', 'i am excited to travel ', '2024-05-03 20:37:02', 1, NULL, '2024-05-03 20:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`


INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`) VALUES
(0 ,'leen@gmail.com', 'Booking Issues', 'bad website', '2024-05-03 23:37:02'),
(0,'leen@gmail.com', 'Other', 'customer service needs improvement.', '2024-05-03 23:38:11'),
(0,'Nora@Gmail.Com', 'Other', 'very bad website', '2024-05-03 23:43:16'),
(0,'jo@gmail.com', 'Booking Issues', 'the website is lagging', '2024-05-05 15:10:09'),
(0,'Nora@Gmail.Com', 'Booking Issues', 'the website is lagging', '2024-05-08 13:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																						<h6><span style=\"font-size: small;\">Welcome to Travel Planner. By accessing our website and utilizing our services, you agree to comply with the following terms and conditions:</span></h6><p align=\"justify\"></p><ul><li><span style=\"font-size: small;\"><span style=\"font-weight: bold;\">Acceptance of Terms:</span> By accessing or using our website, you agree to these Terms of Use. If you disagree with any part of these terms, you may not access the site or use our services.</span></li><li><span style=\"font-size: small;\"><span style=\"font-weight: bold;\">Use of Services:</span> Our website provides information about travel destinations and packages. You may use this information to plan and book travel arrangements through our platform.</span></li><li><span style=\"font-size: small;\"><span style=\"font-weight: bold;\">Booking and Payments:</span> When booking travel arrangements through our website, you agree to provide accurate and complete information. Payment for services must be arranged according to the terms specified at booking.</span></li><li><span style=\"font-size: small;\"><span style=\"font-weight: bold;\">Cancellation and Refunds:</span> Cancellation policies vary depending on the specific travel arrangements booked. Please refer to the terms and conditions provided at the time of booking for information about cancellations and refunds.</span></li><li><span style=\"font-size: small;\"><span style=\"font-weight: bold;\">Intellectual Property:</span> All content on our website, including text, images, and logos, is Travel Planner\'s property and is protected by copyright laws. You may not use, reproduce, or distribute content from our website without our prior written consent.</span></li></ul><p></p>\r\n<p align=\"justify\"><br></p>\r\n											\r\n											'),
(2, 'privacy', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Keeping your personal information secure is one of our top priorities at Travel Planner. Our Privacy Policy explains what type of information we collect when you use our services. Also included is a description of how your information is used by us, and how we guard it. For the purpose of processing your travel arrangements, we need your name, contact information, and travel preferences.</span></div>'),
(3, 'aboutus', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Welcome to Travel Planner, your gateway to unforgettable travel experiences! Founded with a passion for exploration and a commitment to exceptional service, we specialize in crafting bespoke travel packages tailored to your unique preferences.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">At&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Travel Planner</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">, we understand that travel is more than just visiting new destinations; it\'s about creating memories that last a lifetime. Whether you\'re seeking adventure in the great outdoors, cultural immersion in bustling cities, or relaxation on serene beaches, we have the expertise to curate the perfect itinerary for you.</span><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Our team of experienced travel experts are dedicated to providing personalized attention every step of the way. From the moment you contact us to the conclusion of your journey, we strive to exceed your expectations and ensure a seamless and enriching travel experience.</span><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">With a focus on sustainability and responsible tourism practices, we are committed to preserving the natural beauty and cultural heritage of the destinations we visit. Through partnerships with local communities and eco-friendly initiatives, we aim to leave a positive impact wherever we go.</span><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Whether you\'re embarking on a solo adventure, planning a romantic getaway, or organizing a group excursion, let&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Travel Planner</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">&nbsp;be your trusted companion on your journey of discovery. Join us and let the world be your playground.</span><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Discover the world with&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Travel Planner</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">&nbsp;- where every journey is an adventure!</span><br></div>'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(7, 'European Adventure Tour', 'family package', 'Paris', 1500, 'Free pickup-drop facility, Luxury accommodation, Guided tours.', 'tinerary: Outline the day-by-day activities and attractions included in the package.\r\nAccommodation: 5-star hotel.\r\nTransportation: private car.\r\nMeals: breakfast, lunch, dinner.', 'R.jpeg', '2024-04-25 16:09:58', '2024-05-03 20:04:16'),
(8, 'Al Ula Desert Retreat', 'Solo Traveler', 'Al Ula, Saudi Arabia', 2500, 'Accommodation in a local guesthouse or traditional tent, Visit to Elephant Rock and Al Ula Old Town, Sunset camel ride in the desert.', 'Accommodation: Local guesthouse or traditional tent accommodation with basic facilities.\r\nTransportation: Transportation provided for guided tours and activities.\r\nMeals: Daily breakfast included. Traditional Arabian dinner included on one evening.\r\nActivities: Guided tours of historic sites, camel ride, and cultural experiences.', 'u.jpeg', '2024-04-25 16:39:11', '2024-05-03 20:06:36'),
(9, 'Tropical Paradise Getaway', 'Couple Package', 'Maldives', 5000, 'Beachfront villa accommodation, Complimentary breakfast, Sunset cruise Snorkeling excursion.', 'Accommodation: Stay in a luxurious beachfront villa with stunning ocean views.\r\nTransportation: Airport transfers included.\r\nMeals: Daily breakfast included, private dinner on one evening.\r\nActivities: Sunset cruise, snorkeling excursion.', 'B.jpeg', '2024-05-01 16:02:09', '2024-05-03 20:08:19'),
(10, 'City Explorer Weekend', 'Solo Traveler', 'Istanbul, Turkey', 1200, 'Shared hostel accommodation, Walking tour of historic sites, Visit to Grand Bazaar, Ferry ride on the Bosphorus.', 'Accommodation: Shared hostel dormitory with basic facilities.\r\nTransportation: Not included. Public transportation or walking will be used for tours and activities.\r\nMeals: Daily breakfast included. Traditional Turkish dinner included on one evening.\r\nActivities: Walking tour of historic sites, visit to Grand Bazaar, ferry ride on the Bosphorus.', 'T.jpeg', '2024-05-02 19:39:04', '2024-05-03 20:10:03'),
(11, 'Tokyo Discovery Tour', 'Group Package', 'Tokyo, Japan', 3000, 'Shared hostel accommodation in central Tokyo, Tokyo Metro pass for convenient transportation, Traditional sushi-making experience.', 'Accommodation: Shared hostel dormitory with basic facilities in central Tokyo.\r\nTransportation: Tokyo Metro pass included for unlimited rides on the subway system.\r\nMeals: Daily breakfast included. Sushi-making experience includes lunch.\r\nActivities: Guided tours, cultural experiences, and free time for exploration.', 'J.jpeg', '2024-05-03 20:11:44', NULL);

-- --------------------------------------------------------

--


--

--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_data`
--
ALTER TABLE `payment_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_data`
--
ALTER TABLE `payment_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblusers`
--



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
