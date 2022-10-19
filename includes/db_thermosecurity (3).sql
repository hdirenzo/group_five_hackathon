-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 19, 2022 at 10:59 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thermosecurity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_materials`
--

CREATE TABLE `tbl_materials` (
  `material_id` int(10) UNSIGNED NOT NULL,
  `material_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_materials`
--

INSERT INTO `tbl_materials` (`material_id`, `material_name`) VALUES
(1, 'Bi-metal Coil'),
(2, 'Metal Strip'),
(3, 'Copper');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pricing`
--

CREATE TABLE `tbl_pricing` (
  `price_id` int(10) UNSIGNED NOT NULL,
  `price_type` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pricing`
--

INSERT INTO `tbl_pricing` (`price_id`, `price_type`) VALUES
(1, 'Single Plan'),
(2, 'Bundle Plan'),
(3, 'Monthly Plan'),
(4, 'Annual Plan ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_brand` varchar(250) NOT NULL,
  `product_desc` text NOT NULL,
  `product_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_brand`, `product_desc`, `product_date`) VALUES
(1, 'Tempest', 'ThermoSecurity ', 'The Tempest by ThermoSecurity is the first of it\'s kind. It has sleek and compact design. It allows for an optimum home environment by ensuring home security and comfort. ', '2014'),
(2, 'Sphere', 'ThermoSecurity ', 'The Sphere by ThermoSecurity is your go to thermostat and security system. The innovative interface allows for ease in securing your home. ', '2015'),
(3, 'Harvest', 'ThermoSecurity ', 'The Harvest by ThermoSecurity is HomeComs newest edition to its ThermoSecuirty line. It proceeds its successors by having a compatible application that you can use anywhere, anytime. ', '2018'),
(4, 'Aura', 'ThermoSecurity ', 'The Aura by ThermoSecurity is an excellent home environmental system due to it\'s automatic cooling and heating function, that helps to save energy. ', '2019'),
(5, 'Comfort', 'ThermoSecurity ', 'The Comfort by ThermoSecurity gives comfort and has a newly improved temperature sensor. The new interface allows ease of use with the new sleek design. ', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_pricing`
--

CREATE TABLE `tbl_product_pricing` (
  `id` int(10) UNSIGNED NOT NULL,
  `price_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product_pricing`
--

INSERT INTO `tbl_product_pricing` (`id`, `price_id`, `product_id`) VALUES
(1, 3, 2),
(2, 1, 1),
(3, 2, 2),
(4, 4, 3),
(5, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_shipment`
--

CREATE TABLE `tbl_product_shipment` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `shipment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product_shipment`
--

INSERT INTO `tbl_product_shipment` (`id`, `product_id`, `shipment_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setup`
--

CREATE TABLE `tbl_setup` (
  `setup_id` int(10) UNSIGNED NOT NULL,
  `setup_install` varchar(350) NOT NULL,
  `setup_heating` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setup`
--

INSERT INTO `tbl_setup` (`setup_id`, `setup_install`, `setup_heating`) VALUES
(1, 'Do It Yourself ', 'Radiant Heating'),
(2, 'Professional Installation', 'Baseboard Heating ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipment`
--

CREATE TABLE `tbl_shipment` (
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `shipment_type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_shipment`
--

INSERT INTO `tbl_shipment` (`shipment_id`, `shipment_type`) VALUES
(1, 'Delivery'),
(2, 'Express Delivery'),
(3, 'Free Shipping '),
(4, 'Pickup');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specs`
--

CREATE TABLE `tbl_specs` (
  `specs_id` int(10) UNSIGNED NOT NULL,
  `specs_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_specs`
--

INSERT INTO `tbl_specs` (`specs_id`, `specs_name`) VALUES
(1, 'First Generation '),
(2, 'Second Generation'),
(3, 'Third Generation'),
(4, 'Fourth Generation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_style`
--

CREATE TABLE `tbl_style` (
  `style_id` int(10) UNSIGNED NOT NULL,
  `style_colour` varchar(200) NOT NULL,
  `style_accessories` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_style`
--

INSERT INTO `tbl_style` (`style_id`, `style_colour`, `style_accessories`) VALUES
(1, 'Avalanche White', 'Cover'),
(2, 'Eclipse Black', 'Wall Plates');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_types`
--

CREATE TABLE `tbl_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_types`
--

INSERT INTO `tbl_types` (`type_id`, `type_name`) VALUES
(1, 'Non-Programmable'),
(2, 'Programmable'),
(3, 'Touchschreen'),
(4, 'Wireless'),
(5, 'Communicating');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_materials`
--
ALTER TABLE `tbl_materials`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `tbl_pricing`
--
ALTER TABLE `tbl_pricing`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_product_pricing`
--
ALTER TABLE `tbl_product_pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_id` (`price_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tbl_product_shipment`
--
ALTER TABLE `tbl_product_shipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `shipment_id` (`shipment_id`);

--
-- Indexes for table `tbl_setup`
--
ALTER TABLE `tbl_setup`
  ADD PRIMARY KEY (`setup_id`);

--
-- Indexes for table `tbl_shipment`
--
ALTER TABLE `tbl_shipment`
  ADD PRIMARY KEY (`shipment_id`);

--
-- Indexes for table `tbl_specs`
--
ALTER TABLE `tbl_specs`
  ADD PRIMARY KEY (`specs_id`);

--
-- Indexes for table `tbl_style`
--
ALTER TABLE `tbl_style`
  ADD PRIMARY KEY (`style_id`);

--
-- Indexes for table `tbl_types`
--
ALTER TABLE `tbl_types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_materials`
--
ALTER TABLE `tbl_materials`
  MODIFY `material_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pricing`
--
ALTER TABLE `tbl_pricing`
  MODIFY `price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_product_pricing`
--
ALTER TABLE `tbl_product_pricing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_product_shipment`
--
ALTER TABLE `tbl_product_shipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_setup`
--
ALTER TABLE `tbl_setup`
  MODIFY `setup_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_shipment`
--
ALTER TABLE `tbl_shipment`
  MODIFY `shipment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_specs`
--
ALTER TABLE `tbl_specs`
  MODIFY `specs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_style`
--
ALTER TABLE `tbl_style`
  MODIFY `style_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_types`
--
ALTER TABLE `tbl_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
