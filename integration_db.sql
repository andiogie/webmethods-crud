-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2025 at 07:53 PM
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
-- Database: `integration_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_customer`
--

CREATE TABLE `mst_customer` (
  `customer_id` bigint(20) NOT NULL,
  `customer_code` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `customer_type` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_customer`
--

INSERT INTO `mst_customer` (`customer_id`, `customer_code`, `full_name`, `email`, `phone_number`, `address`, `city`, `postal_code`, `customer_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CUST001', 'Andi Wijaya', 'andi@gmail.com', '081234567890', 'Jl. Merdeka No.1', 'Jakarta', '10110', 'retail', 'Active', '2025-05-14 08:43:52', '2025-05-14 08:43:52'),
(2, 'CUST002', 'Budi Santoso', 'budi.s@gmail.com', '081223344556', 'Jl. Sudirman No.5', 'Bandung', '40123', 'corporate', 'Active', '2025-05-14 08:43:52', '2025-05-14 08:43:52'),
(3, 'CUST003', 'Citra Lestari', 'citra.l@gmail.com', '081298765432', 'Jl. Diponegoro No.12', 'Surabaya', '60234', 'retail', 'Inactive', '2025-05-14 08:43:52', '2025-05-14 08:43:52'),
(4, 'CUST004', 'Dewi Anggraini', 'dewi.a@gmail.com', '081345678901', 'Jl. Ahmad Yani No.10', 'Medan', '20112', 'retail', 'Active', '2025-05-14 08:43:52', '2025-05-14 08:43:52'),
(5, 'CUST005', 'Eka Prasetyo', 'eka.p@gmail.com', '081212345678', 'Jl. Imam Bonjol No.2', 'Semarang', '50245', 'corporate', 'Active', '2025-05-14 08:43:52', '2025-05-14 08:43:52'),
(6, 'CUST006', 'Fajar Nugroho', 'fajar.n@gmail.com', '081334455667', 'Jl. Pemuda No.3', 'Yogyakarta', '55281', 'retail', 'Active', '2025-05-14 08:43:52', '2025-05-14 08:43:52'),
(7, 'CUST007', 'Gita Putri', 'gita.p@gmail.com', '081298712345', 'Jl. Asia Afrika No.7', 'Bandung', '40111', 'corporate', 'Inactive', '2025-05-14 08:43:52', '2025-05-14 08:43:52'),
(8, 'CUST008', 'Hadi Supriyadi', 'hadi.s@gmail.com', '081345612345', 'Jl. Gatot Subroto No.4', 'Denpasar', '80234', 'retail', 'Active', '2025-05-14 08:43:52', '2025-05-14 08:43:52'),
(9, 'CUST009', 'Indah Ramadhani', 'indah.r@gmail.com', '081223398877', 'Jl. Teuku Umar No.8', 'Makassar', '90123', 'corporate', 'Active', '2025-05-14 08:43:52', '2025-05-14 08:43:52'),
(10, 'CUST010', 'Joko Susanto', 'joko.s@gmail.com', '081334498877', 'Jl. Cipto Mangunkusumo No.9', 'Malang', '65123', 'retail', 'Active', '2025-05-14 08:43:52', '2025-05-14 08:43:52'),
(11, 'CUST011', 'Karina Atmajaya', 'karina.atm@gmail.com', '081122334455', 'Jl. Mahoni No.25', 'DKI Jakarta', '14220', 'corporate', 'Active', '2025-06-15 17:09:31', '2025-06-15 17:09:31'),
(12, 'CUST012', 'Lala Atmajaa', 'lala@gmail.com', '081122335544', 'Jl. Langsat No.5', 'DKI Jakarta', '14550', 'corporate', 'Active', '2025-06-15 17:13:39', '2025-06-15 17:13:39'),
(13, 'CUST013', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-17 05:52:10', '2025-06-17 05:52:10'),
(14, 'CUST014', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-17 05:54:22', '2025-06-17 05:54:22'),
(15, 'CUST015', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-17 05:56:57', '2025-06-17 05:56:57'),
(16, 'CUST016', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-17 05:57:09', '2025-06-17 05:57:09'),
(17, 'CUST017', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-17 05:57:28', '2025-06-17 05:57:28'),
(18, 'CUST018', 'Muhammad Habibi 2', 'muhammad@gmail.com', '081122334455', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Inactive', '2025-06-17 05:58:15', '2025-06-28 17:14:26'),
(19, 'CUST019', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-22 08:54:24', '2025-06-22 08:54:24'),
(20, 'CUST020', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-22 17:24:14', '2025-06-22 17:24:14'),
(21, 'CUST021', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-22 17:25:28', '2025-06-22 17:25:28'),
(22, 'CUST022', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-22 17:26:10', '2025-06-22 17:26:10'),
(23, 'CUST023', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-22 17:27:19', '2025-06-22 17:27:19'),
(24, 'CUST024', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-22 17:28:18', '2025-06-22 17:28:18'),
(25, 'CUST025', 'Muhammad', 'muhammad@gmail.com', '0852123456789', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-24 11:00:23', '2025-06-24 11:00:23'),
(26, 'CUST026', 'Muhammad Habibi 3', 'muhammad@gmail.com', '081122334455', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-28 17:07:41', '2025-06-28 18:18:07'),
(27, 'CUST027', 'Muhammad Update', 'muhammad@gmail.com', '081122334455', 'Jl. Cemara', 'Bandung', '52110', 'retail', 'Active', '2025-06-30 17:51:11', '2025-06-30 17:51:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_customer`
--
ALTER TABLE `mst_customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_code` (`customer_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_customer`
--
ALTER TABLE `mst_customer`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
