-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2026 at 06:09 PM
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
-- Database: `gsms_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement_tbl`
--

CREATE TABLE `announcement_tbl` (
  `anc_id` int(11) NOT NULL,
  `made_by` int(11) DEFAULT NULL,
  `announce_type` enum('Update','Alert','General') DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement_tbl`
--

INSERT INTO `announcement_tbl` (`anc_id`, `made_by`, `announce_type`, `title`, `message`, `date_created`) VALUES
(1, 1, 'General', 'October operating hours', 'Please follow the posted station operating schedule.', '2026-10-02 16:00:00'),
(2, 1, 'Update', 'Inventory count reminder', 'Please verify shelf counts and report discrepancies to the manager.', '2026-10-04 16:00:00'),
(3, 1, 'Alert', 'Fuel delivery schedule', 'Check delivery quantities against the supplier invoice before acceptance.', '2026-10-06 16:00:00'),
(4, 1, 'General', 'Cash drawer reconciliation', 'Reconcile the cash drawer at the end of each shift.', '2026-10-08 16:00:00'),
(5, 3, 'Update', 'Safety inspection reminder', 'Keep emergency exits and safety equipment accessible.', '2026-10-10 16:00:00'),
(6, 2, 'Alert', 'New convenience items', 'New convenience-store items are available in the product catalog.', '2026-10-12 16:00:00'),
(7, 3, 'General', 'Shift handover checklist', 'Record outstanding tasks and hand over keys to the next assigned staff member.', '2026-10-14 16:00:00'),
(8, 2, 'Update', 'Equipment maintenance notice', 'Report unusual pump or equipment behavior to the supervisor immediately.', '2026-10-16 16:00:00'),
(9, 3, 'Alert', 'Customer service reminder', 'Assist customers courteously and provide accurate receipts.', '2026-10-18 16:00:00'),
(10, 2, 'General', 'Month-end stock review', 'Complete the stock review before closing the month.', '2026-10-20 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `audit_tbl`
--

CREATE TABLE `audit_tbl` (
  `audit_id` int(11) NOT NULL,
  `made_by` int(11) DEFAULT NULL,
  `action_type` varchar(50) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_tbl`
--

INSERT INTO `audit_tbl` (`audit_id`, `made_by`, `action_type`, `resource_type`, `date_created`) VALUES
(1, 4, 'LOGIN', 'shift_tbl', '2026-10-01 04:11:00'),
(2, 7, 'LOGOUT', 'fuel_tbl', '2026-10-01 09:22:00'),
(3, 10, 'CREATE', 'transaction_items', '2026-10-01 14:33:00'),
(4, 13, 'UPDATE', 'received_order', '2026-10-01 19:44:00'),
(5, 16, 'RECEIVE_STOCK', 'product_tbl', '2026-10-02 00:55:00'),
(6, 19, 'COMPLETE_SALE', 'announcement_tbl', '2026-10-02 05:06:00'),
(7, 2, 'VOID_SALE', 'transaction_tbl', '2026-10-02 10:17:00'),
(8, 5, 'APPROVE', 'user_tbl', '2026-10-02 15:28:00'),
(9, 8, 'LOGIN', 'shift_tbl', '2026-10-02 20:39:00'),
(10, 11, 'LOGOUT', 'fuel_tbl', '2026-10-03 01:50:00'),
(11, 14, 'CREATE', 'transaction_items', '2026-10-03 06:01:00'),
(12, 17, 'UPDATE', 'received_order', '2026-10-03 11:12:00'),
(13, 20, 'RECEIVE_STOCK', 'product_tbl', '2026-10-03 16:23:00'),
(14, 3, 'COMPLETE_SALE', 'announcement_tbl', '2026-10-03 21:34:00'),
(15, 6, 'VOID_SALE', 'transaction_tbl', '2026-10-04 02:45:00'),
(16, 9, 'APPROVE', 'user_tbl', '2026-10-04 07:56:00'),
(17, 12, 'LOGIN', 'shift_tbl', '2026-10-04 12:07:00'),
(18, 15, 'LOGOUT', 'fuel_tbl', '2026-10-04 17:18:00'),
(19, 18, 'CREATE', 'transaction_items', '2026-10-04 22:29:00'),
(20, 1, 'UPDATE', 'received_order', '2026-10-05 03:40:00'),
(21, 4, 'RECEIVE_STOCK', 'product_tbl', '2026-10-05 08:51:00'),
(22, 7, 'COMPLETE_SALE', 'announcement_tbl', '2026-10-05 13:02:00'),
(23, 10, 'VOID_SALE', 'transaction_tbl', '2026-10-05 18:13:00'),
(24, 13, 'APPROVE', 'user_tbl', '2026-10-05 23:24:00'),
(25, 16, 'LOGIN', 'shift_tbl', '2026-10-06 04:35:00'),
(26, 19, 'LOGOUT', 'fuel_tbl', '2026-10-06 09:46:00'),
(27, 2, 'CREATE', 'transaction_items', '2026-10-06 14:57:00'),
(28, 5, 'UPDATE', 'received_order', '2026-10-06 19:08:00'),
(29, 8, 'RECEIVE_STOCK', 'product_tbl', '2026-10-07 00:19:00'),
(30, 11, 'COMPLETE_SALE', 'announcement_tbl', '2026-10-07 05:30:00'),
(31, 14, 'VOID_SALE', 'transaction_tbl', '2026-10-07 10:41:00'),
(32, 17, 'APPROVE', 'user_tbl', '2026-10-07 15:52:00'),
(33, 20, 'LOGIN', 'shift_tbl', '2026-10-07 20:03:00'),
(34, 3, 'LOGOUT', 'fuel_tbl', '2026-10-08 01:14:00'),
(35, 6, 'CREATE', 'transaction_items', '2026-10-08 06:25:00'),
(36, 9, 'UPDATE', 'received_order', '2026-10-08 11:36:00'),
(37, 12, 'RECEIVE_STOCK', 'product_tbl', '2026-10-08 16:47:00'),
(38, 15, 'COMPLETE_SALE', 'announcement_tbl', '2026-10-08 21:58:00'),
(39, 18, 'VOID_SALE', 'transaction_tbl', '2026-10-09 02:09:00'),
(40, 1, 'APPROVE', 'user_tbl', '2026-10-09 07:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `discount_tbl`
--

CREATE TABLE `discount_tbl` (
  `discount_id` int(11) NOT NULL,
  `disc_type` varchar(255) DEFAULT NULL,
  `disc_amt` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `discount_tbl`
--

INSERT INTO `discount_tbl` (`discount_id`, `disc_type`, `disc_amt`, `description`) VALUES
(1, 'Senior Citizen', 20.00, 'Sample fixed discount amount in PHP'),
(2, 'PWD', 20.00, 'Sample fixed discount amount in PHP'),
(3, 'Loyalty Promo', 10.00, 'Sample fixed discount amount in PHP'),
(4, 'Fleet Customer', 50.00, 'Sample fixed discount amount in PHP'),
(5, 'Staff Purchase', 5.00, 'Sample fixed discount amount in PHP');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_tbl`
--

CREATE TABLE `fuel_tbl` (
  `fuel_id` int(11) NOT NULL,
  `fuel_type` enum('Unleaded','Diesel','Premium') DEFAULT NULL,
  `price_per_ltr` decimal(10,2) DEFAULT NULL,
  `stock_ltrs` decimal(10,2) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `fuel_tbl`
--

INSERT INTO `fuel_tbl` (`fuel_id`, `fuel_type`, `price_per_ltr`, `stock_ltrs`, `date_created`) VALUES
(1, 'Unleaded', 64.25, 5400.21, '2026-09-30 22:00:00'),
(2, 'Diesel', 61.80, 7654.91, '2026-09-30 22:00:00'),
(3, 'Premium', 68.50, 3773.48, '2026-09-30 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `method_tbl`
--

CREATE TABLE `method_tbl` (
  `method_id` int(11) NOT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `method_tbl`
--

INSERT INTO `method_tbl` (`method_id`, `method_name`, `is_active`) VALUES
(1, 'Cash', 1),
(2, 'GCash', 1),
(3, 'Debit/Credit Card', 1),
(4, 'Bank Transfer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE `product_tbl` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `restock_date` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `product_tbl`
--

INSERT INTO `product_tbl` (`product_id`, `product_name`, `price`, `stock`, `description`, `status`, `restock_date`, `image`, `date_created`) VALUES
(1, 'Bottled Water 500ml', 20.00, 131, 'Beverage item for station convenience store', 'Active', '2026-06-14 08:00:00', 'products/01.jpg', '2025-04-18 16:00:00'),
(2, 'Bottled Water 1L', 32.00, 129, 'Beverage item for station convenience store', 'Active', '2026-02-05 08:00:00', 'products/02.jpg', '2025-11-29 16:00:00'),
(3, 'Iced Tea 350ml', 35.00, 129, 'Beverage item for station convenience store', 'Active', '2026-02-15 08:00:00', 'products/03.jpg', '2025-03-16 16:00:00'),
(4, 'Cola 330ml', 30.00, 15, 'Beverage item for station convenience store', 'Active', '2026-06-19 08:00:00', 'products/04.jpg', '2025-09-17 16:00:00'),
(5, 'Energy Drink 250ml', 55.00, 61, 'Beverage item for station convenience store', 'Active', '2026-02-07 08:00:00', 'products/05.jpg', '2025-05-06 16:00:00'),
(6, 'Sports Drink 500ml', 48.00, 125, 'Beverage item for station convenience store', 'Active', '2026-02-20 08:00:00', 'products/06.jpg', '2025-10-11 16:00:00'),
(7, 'Potato Chips Small', 25.00, 69, 'Snack item for station convenience store', 'Active', '2026-10-02 08:00:00', 'products/07.jpg', '2025-04-19 16:00:00'),
(8, 'Crackers', 18.00, 52, 'Snack item for station convenience store', 'Active', '2026-01-30 08:00:00', 'products/08.jpg', '2025-01-19 16:00:00'),
(9, 'Chocolate Bar', 35.00, 61, 'Snack item for station convenience store', 'Active', '2026-03-04 08:00:00', 'products/09.jpg', '2025-05-17 16:00:00'),
(10, 'Cookies Pack', 28.00, 124, 'Snack item for station convenience store', 'Active', '2026-08-01 08:00:00', 'products/10.jpg', '2025-05-20 16:00:00'),
(11, 'Instant Noodles', 22.00, 60, 'Food item for station convenience store', 'Active', '2026-08-20 08:00:00', 'products/11.jpg', '2025-02-15 16:00:00'),
(12, 'Cup Noodles', 38.00, 85, 'Food item for station convenience store', 'Active', '2026-04-19 08:00:00', 'products/12.jpg', '2025-02-16 16:00:00'),
(13, 'Canned Sardines', 32.00, 190, 'Food item for station convenience store', 'Active', '2026-01-30 08:00:00', 'products/13.jpg', '2025-09-16 16:00:00'),
(14, 'Canned Tuna', 42.00, 56, 'Food item for station convenience store', 'Active', '2026-08-27 08:00:00', 'products/14.jpg', '2025-04-20 16:00:00'),
(15, 'Bread Roll', 15.00, 132, 'Food item for station convenience store', 'Active', '2026-06-18 08:00:00', 'products/15.jpg', '2025-03-28 16:00:00'),
(16, 'Motor Oil 1L', 320.00, 11, 'Automotive item for station convenience store', 'Active', '2026-03-16 08:00:00', 'products/16.jpg', '2025-02-16 16:00:00'),
(17, 'Motor Oil 4L', 1050.00, 0, 'Automotive item for station convenience store', 'Active', '2026-07-11 08:00:00', 'products/17.jpg', '2025-02-17 16:00:00'),
(18, 'Brake Fluid 250ml', 115.00, 9, 'Automotive item for station convenience store', 'Active', '2026-02-21 08:00:00', 'products/18.jpg', '2025-07-22 16:00:00'),
(19, 'Coolant 1L', 180.00, 44, 'Automotive item for station convenience store', 'Active', '2026-04-12 08:00:00', 'products/19.jpg', '2025-01-03 16:00:00'),
(20, 'Windshield Washer 1L', 95.00, 29, 'Automotive item for station convenience store', 'Active', '2026-07-29 08:00:00', 'products/20.jpg', '2025-10-03 16:00:00'),
(21, 'Tire Sealant', 210.00, 28, 'Automotive item for station convenience store', 'Active', '2026-09-20 08:00:00', 'products/21.jpg', '2025-07-24 16:00:00'),
(22, 'Microfiber Cloth', 75.00, 27, 'Automotive item for station convenience store', 'Active', '2026-03-12 08:00:00', 'products/22.jpg', '2025-12-10 16:00:00'),
(23, 'Phone Charging Cable', 160.00, 54, 'Accessories item for station convenience store', 'Active', '2026-07-28 08:00:00', 'products/23.jpg', '2025-07-20 16:00:00'),
(24, 'Tissue Pack', 25.00, 53, 'Convenience item for station convenience store', 'Active', '2026-04-07 08:00:00', 'products/24.jpg', '2025-05-24 16:00:00'),
(25, 'Reusable Shopping Bag', 20.00, 126, 'Convenience item for station convenience store', 'Active', '2026-07-06 08:00:00', 'products/25.jpg', '2025-08-20 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `received_order`
--

CREATE TABLE `received_order` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `fuel_id` int(11) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `units` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `date_ordered` datetime DEFAULT NULL,
  `date_received` datetime DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `received_order`
--

INSERT INTO `received_order` (`order_id`, `product_id`, `fuel_id`, `invoice_number`, `units`, `quantity`, `supplier_name`, `date_ordered`, `date_received`, `notes`) VALUES
(1, 8, NULL, 'SUP-2608-0001', NULL, 94, 'Prime Convenience Trading', '2026-08-01 09:00:00', '2026-08-04 09:00:00', 'Product delivery checked against invoice'),
(2, 15, NULL, 'SUP-2608-0002', NULL, 119, 'Northern Star Distributors', '2026-08-04 09:00:00', '2026-08-07 09:00:00', 'Product delivery checked against invoice'),
(3, 22, NULL, 'SUP-2608-0003', NULL, 117, 'Prime Convenience Trading', '2026-08-07 09:00:00', '2026-08-10 09:00:00', 'Product delivery checked against invoice'),
(4, NULL, 2, 'SUP-2608-0004', 1304.60, NULL, 'Island Energy Trading', '2026-08-11 09:00:00', '2026-08-13 09:00:00', 'Fuel delivery received and reconciled'),
(5, 11, NULL, 'SUP-2608-0005', NULL, 49, 'Northern Star Distributors', '2026-08-13 09:00:00', '2026-08-16 09:00:00', 'Product delivery checked against invoice'),
(6, 18, NULL, 'SUP-2608-0006', NULL, 112, 'Cagayan Retail Supply', '2026-08-16 09:00:00', '2026-08-19 09:00:00', 'Product delivery checked against invoice'),
(7, 25, NULL, 'SUP-2608-0007', NULL, 32, 'Metro Wholesale', '2026-08-19 09:00:00', '2026-08-22 09:00:00', 'Product delivery checked against invoice'),
(8, NULL, 3, 'SUP-2608-0008', 708.44, NULL, 'Island Energy Trading', '2026-08-23 09:00:00', '2026-08-25 09:00:00', 'Fuel delivery received and reconciled'),
(9, 14, NULL, 'SUP-2608-0009', NULL, 93, 'Metro Wholesale', '2026-08-25 09:00:00', '2026-08-28 09:00:00', 'Product delivery checked against invoice'),
(10, 21, NULL, 'SUP-2608-0010', NULL, 89, 'Cagayan Retail Supply', '2026-08-28 09:00:00', '2026-08-31 09:00:00', 'Product delivery checked against invoice'),
(11, 3, NULL, 'SUP-2609-0011', NULL, 83, 'Cagayan Retail Supply', '2026-08-31 09:00:00', '2026-09-03 09:00:00', 'Product delivery checked against invoice'),
(12, NULL, 1, 'SUP-2609-0012', 1153.92, NULL, 'Island Energy Trading', '2026-09-04 09:00:00', '2026-09-06 09:00:00', 'Fuel delivery received and reconciled'),
(13, 17, NULL, 'SUP-2609-0013', NULL, 110, 'Metro Wholesale', '2026-09-06 09:00:00', '2026-09-09 09:00:00', 'Product delivery checked against invoice'),
(14, 24, NULL, 'SUP-2609-0014', NULL, 30, 'Cagayan Retail Supply', '2026-09-09 09:00:00', '2026-09-12 09:00:00', 'Product delivery checked against invoice'),
(15, 6, NULL, 'SUP-2609-0015', NULL, 118, 'Metro Wholesale', '2026-09-12 09:00:00', '2026-09-15 09:00:00', 'Product delivery checked against invoice'),
(16, NULL, 2, 'SUP-2609-0016', 892.17, NULL, 'Island Energy Trading', '2026-09-16 09:00:00', '2026-09-18 09:00:00', 'Fuel delivery received and reconciled'),
(17, 20, NULL, 'SUP-2609-0017', NULL, 62, 'Metro Wholesale', '2026-09-18 09:00:00', '2026-09-21 09:00:00', 'Product delivery checked against invoice'),
(18, 2, NULL, 'SUP-2609-0018', NULL, 101, 'Cagayan Retail Supply', '2026-09-21 09:00:00', '2026-09-24 09:00:00', 'Product delivery checked against invoice'),
(19, 9, NULL, 'SUP-2609-0019', NULL, 25, 'Metro Wholesale', '2026-09-24 09:00:00', '2026-09-27 09:00:00', 'Product delivery checked against invoice'),
(20, NULL, 3, 'SUP-2609-0020', 702.77, NULL, 'Northstar Petroleum', '2026-09-28 09:00:00', '2026-09-30 09:00:00', 'Fuel delivery received and reconciled'),
(21, 23, NULL, 'SUP-2610-0021', NULL, 102, 'Metro Wholesale', '2026-09-30 09:00:00', '2026-10-03 09:00:00', 'Product delivery checked against invoice'),
(22, 5, NULL, 'SUP-2610-0022', NULL, 26, 'Cagayan Retail Supply', '2026-10-03 09:00:00', '2026-10-06 09:00:00', 'Product delivery checked against invoice'),
(23, 12, NULL, 'SUP-2610-0023', NULL, 84, 'Prime Convenience Trading', '2026-10-06 09:00:00', '2026-10-09 09:00:00', 'Product delivery checked against invoice'),
(24, NULL, 1, 'SUP-2610-0024', 1144.42, NULL, 'Northstar Petroleum', '2026-10-10 09:00:00', '2026-10-12 09:00:00', 'Fuel delivery received and reconciled'),
(25, 1, NULL, 'SUP-2610-0025', NULL, 68, 'Prime Convenience Trading', '2026-10-12 09:00:00', '2026-10-15 09:00:00', 'Product delivery checked against invoice');

--
-- Triggers `received_order`
--
DELIMITER $$
CREATE TRIGGER `bi_received_order_validate` BEFORE INSERT ON `received_order` FOR EACH ROW BEGIN
  IF (NEW.`product_id` IS NULL AND NEW.`fuel_id` IS NULL)
     OR (NEW.`product_id` IS NOT NULL AND NEW.`fuel_id` IS NOT NULL) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A received order must reference exactly one product or fuel';
  END IF;
  IF NEW.`product_id` IS NOT NULL AND (NEW.`quantity` IS NULL OR NEW.`quantity` <= 0) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Product received orders require a positive quantity';
  END IF;
  IF NEW.`fuel_id` IS NOT NULL AND (NEW.`units` IS NULL OR NEW.`units` <= 0) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fuel received orders require positive units';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bu_received_order_validate` BEFORE UPDATE ON `received_order` FOR EACH ROW BEGIN
  IF (NEW.`product_id` IS NULL AND NEW.`fuel_id` IS NULL)
     OR (NEW.`product_id` IS NOT NULL AND NEW.`fuel_id` IS NOT NULL) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A received order must reference exactly one product or fuel';
  END IF;
  IF NEW.`product_id` IS NOT NULL AND (NEW.`quantity` IS NULL OR NEW.`quantity` <= 0) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Product received orders require a positive quantity';
  END IF;
  IF NEW.`fuel_id` IS NOT NULL AND (NEW.`units` IS NULL OR NEW.`units` <= 0) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fuel received orders require positive units';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `report_tbl`
--

CREATE TABLE `report_tbl` (
  `report_id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_tbl`
--

INSERT INTO `report_tbl` (`report_id`, `transaction_id`, `status`, `date_created`) VALUES
(1, 9, 'Ready', '2026-10-06 16:00:00'),
(2, 18, 'Reviewed', '2026-10-08 16:00:00'),
(3, 27, 'Pending Review', '2026-10-10 16:00:00'),
(4, 36, 'Archived', '2026-10-12 16:00:00'),
(5, 45, 'Ready', '2026-10-14 16:00:00'),
(6, 54, 'Reviewed', '2026-10-16 16:00:00'),
(7, 63, 'Pending Review', '2026-10-18 16:00:00'),
(8, 72, 'Archived', '2026-10-20 16:00:00'),
(9, 81, 'Ready', '2026-10-22 16:00:00'),
(10, 90, 'Reviewed', '2026-10-24 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'Manager'),
(3, 'Cashier'),
(4, 'Inventory Staff');

-- --------------------------------------------------------

--
-- Table structure for table `shift_tbl`
--

CREATE TABLE `shift_tbl` (
  `shift_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shift_start` datetime DEFAULT NULL,
  `shift_end` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shift_tbl`
--

INSERT INTO `shift_tbl` (`shift_id`, `user_id`, `shift_start`, `shift_end`, `status`) VALUES
(1, 4, '2026-09-01 06:00:00', '2026-09-01 14:00:00', 'Completed'),
(2, 5, '2026-09-01 18:00:00', '2026-09-02 02:00:00', 'Completed'),
(3, 6, '2026-09-02 06:00:00', '2026-09-02 14:00:00', 'Completed'),
(4, 7, '2026-09-02 18:00:00', '2026-09-03 02:00:00', 'Completed'),
(5, 8, '2026-09-03 06:00:00', '2026-09-03 14:00:00', 'Completed'),
(6, 9, '2026-09-03 18:00:00', '2026-09-04 02:00:00', 'Completed'),
(7, 10, '2026-09-04 06:00:00', '2026-09-04 14:00:00', 'Completed'),
(8, 11, '2026-09-04 18:00:00', '2026-09-05 02:00:00', 'Completed'),
(9, 12, '2026-09-05 06:00:00', '2026-09-05 14:00:00', 'Completed'),
(10, 13, '2026-09-05 18:00:00', '2026-09-06 02:00:00', 'Completed'),
(11, 14, '2026-09-06 06:00:00', '2026-09-06 14:00:00', 'Completed'),
(12, 15, '2026-09-06 18:00:00', '2026-09-07 02:00:00', 'Completed'),
(13, 16, '2026-09-07 06:00:00', '2026-09-07 14:00:00', 'Completed'),
(14, 17, '2026-09-07 18:00:00', '2026-09-08 02:00:00', 'Completed'),
(15, 18, '2026-09-08 06:00:00', '2026-09-08 14:00:00', 'Completed'),
(16, 19, '2026-09-08 18:00:00', '2026-09-09 02:00:00', 'Completed'),
(17, 20, '2026-09-09 06:00:00', '2026-09-09 14:00:00', 'Completed'),
(18, 4, '2026-09-09 18:00:00', '2026-09-10 02:00:00', 'Completed'),
(19, 5, '2026-09-10 06:00:00', '2026-09-10 14:00:00', 'Completed'),
(20, 6, '2026-09-10 18:00:00', '2026-09-11 02:00:00', 'Completed'),
(21, 7, '2026-09-11 06:00:00', '2026-09-11 14:00:00', 'Completed'),
(22, 8, '2026-09-11 18:00:00', '2026-09-12 02:00:00', 'Completed'),
(23, 9, '2026-09-12 06:00:00', '2026-09-12 14:00:00', 'Completed'),
(24, 10, '2026-09-12 18:00:00', '2026-09-13 02:00:00', 'Completed'),
(25, 11, '2026-09-13 06:00:00', '2026-09-13 14:00:00', 'Completed'),
(26, 12, '2026-09-13 18:00:00', '2026-09-14 02:00:00', 'Completed'),
(27, 13, '2026-09-14 06:00:00', '2026-09-14 14:00:00', 'In Progress'),
(28, 14, '2026-09-14 18:00:00', '2026-09-15 02:00:00', 'In Progress'),
(29, 15, '2026-09-15 06:00:00', '2026-09-15 14:00:00', 'In Progress'),
(30, 16, '2026-09-15 18:00:00', '2026-09-16 02:00:00', 'Scheduled');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `fuel_id` int(11) DEFAULT NULL,
  `product_type` enum('Fuel','Product') DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL
) ;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `transaction_id`, `product_id`, `fuel_id`, `product_type`, `quantity`, `price`, `subtotal`) VALUES
(1, 1, 15, NULL, 'Product', 2.00, 15.00, 30.00),
(2, 1, NULL, 3, 'Fuel', 18.47, 68.50, 1265.19),
(3, 2, 2, NULL, 'Product', 2.00, 32.00, 64.00),
(4, 2, 16, NULL, 'Product', 4.00, 320.00, 1280.00),
(5, 2, 3, NULL, 'Product', 4.00, 35.00, 140.00),
(6, 3, 12, NULL, 'Product', 4.00, 38.00, 152.00),
(7, 3, NULL, 2, 'Fuel', 33.37, 61.80, 2062.27),
(8, 4, 14, NULL, 'Product', 4.00, 42.00, 168.00),
(9, 4, NULL, 1, 'Fuel', 5.94, 64.25, 381.65),
(10, 5, NULL, 1, 'Fuel', 28.59, 64.25, 1836.91),
(11, 5, NULL, 1, 'Fuel', 22.23, 64.25, 1428.28),
(12, 6, 25, NULL, 'Product', 1.00, 20.00, 20.00),
(13, 6, 22, NULL, 'Product', 3.00, 75.00, 225.00),
(14, 7, NULL, 1, 'Fuel', 9.40, 64.25, 603.95),
(15, 7, 2, NULL, 'Product', 3.00, 32.00, 96.00),
(16, 8, 17, NULL, 'Product', 1.00, 1050.00, 1050.00),
(17, 8, 8, NULL, 'Product', 2.00, 18.00, 36.00),
(18, 8, NULL, 2, 'Fuel', 11.99, 61.80, 740.98),
(19, 9, 24, NULL, 'Product', 4.00, 25.00, 100.00),
(20, 9, 25, NULL, 'Product', 4.00, 20.00, 80.00),
(21, 10, NULL, 1, 'Fuel', 15.44, 64.25, 992.02),
(22, 10, NULL, 1, 'Fuel', 15.55, 64.25, 999.09),
(23, 11, 10, NULL, 'Product', 4.00, 28.00, 112.00),
(24, 11, 8, NULL, 'Product', 1.00, 18.00, 18.00),
(25, 12, NULL, 3, 'Fuel', 27.24, 68.50, 1865.94),
(26, 12, NULL, 2, 'Fuel', 13.24, 61.80, 818.23),
(27, 13, NULL, 1, 'Fuel', 32.44, 64.25, 2084.27),
(28, 13, NULL, 3, 'Fuel', 16.35, 68.50, 1119.98),
(29, 14, NULL, 3, 'Fuel', 13.02, 68.50, 891.87),
(30, 14, NULL, 3, 'Fuel', 28.16, 68.50, 1928.96),
(31, 15, 15, NULL, 'Product', 2.00, 15.00, 30.00),
(32, 15, NULL, 1, 'Fuel', 19.64, 64.25, 1261.87),
(33, 15, NULL, 1, 'Fuel', 24.38, 64.25, 1566.41),
(34, 16, 24, NULL, 'Product', 4.00, 25.00, 100.00),
(35, 16, NULL, 3, 'Fuel', 14.88, 68.50, 1019.28),
(36, 16, 12, NULL, 'Product', 2.00, 38.00, 76.00),
(37, 17, NULL, 2, 'Fuel', 19.23, 61.80, 1188.41),
(38, 17, 4, NULL, 'Product', 3.00, 30.00, 90.00),
(39, 17, 20, NULL, 'Product', 3.00, 95.00, 285.00),
(40, 18, 6, NULL, 'Product', 4.00, 48.00, 192.00),
(41, 18, NULL, 1, 'Fuel', 29.56, 64.25, 1899.23),
(42, 19, 15, NULL, 'Product', 4.00, 15.00, 60.00),
(43, 19, 10, NULL, 'Product', 4.00, 28.00, 112.00),
(44, 20, 2, NULL, 'Product', 2.00, 32.00, 64.00),
(45, 20, NULL, 2, 'Fuel', 17.34, 61.80, 1071.61),
(46, 21, 17, NULL, 'Product', 1.00, 1050.00, 1050.00),
(47, 21, 5, NULL, 'Product', 1.00, 55.00, 55.00),
(48, 22, 12, NULL, 'Product', 1.00, 38.00, 38.00),
(49, 22, 11, NULL, 'Product', 4.00, 22.00, 88.00),
(50, 22, 15, NULL, 'Product', 3.00, 15.00, 45.00),
(51, 23, NULL, 1, 'Fuel', 22.88, 64.25, 1470.04),
(52, 23, NULL, 1, 'Fuel', 18.59, 64.25, 1194.41),
(53, 23, 25, NULL, 'Product', 4.00, 20.00, 80.00),
(54, 24, 24, NULL, 'Product', 1.00, 25.00, 25.00),
(55, 24, NULL, 1, 'Fuel', 12.49, 64.25, 802.48),
(56, 24, 21, NULL, 'Product', 2.00, 210.00, 420.00),
(57, 25, 15, NULL, 'Product', 1.00, 15.00, 15.00),
(58, 25, NULL, 3, 'Fuel', 11.22, 68.50, 768.57),
(59, 25, 11, NULL, 'Product', 2.00, 22.00, 44.00),
(60, 26, 24, NULL, 'Product', 3.00, 25.00, 75.00),
(61, 26, 12, NULL, 'Product', 1.00, 38.00, 38.00),
(62, 27, 19, NULL, 'Product', 3.00, 180.00, 540.00),
(63, 27, NULL, 3, 'Fuel', 8.19, 68.50, 561.01),
(64, 27, 8, NULL, 'Product', 3.00, 18.00, 54.00),
(65, 28, 23, NULL, 'Product', 3.00, 160.00, 480.00),
(66, 28, 24, NULL, 'Product', 2.00, 25.00, 50.00),
(67, 28, 4, NULL, 'Product', 3.00, 30.00, 90.00),
(68, 29, NULL, 2, 'Fuel', 4.58, 61.80, 283.04),
(69, 29, NULL, 3, 'Fuel', 23.16, 68.50, 1586.46),
(70, 29, NULL, 1, 'Fuel', 22.22, 64.25, 1427.63),
(71, 30, 3, NULL, 'Product', 3.00, 35.00, 105.00),
(72, 30, 23, NULL, 'Product', 1.00, 160.00, 160.00),
(73, 30, 17, NULL, 'Product', 1.00, 1050.00, 1050.00),
(74, 31, 2, NULL, 'Product', 2.00, 32.00, 64.00),
(75, 31, 1, NULL, 'Product', 2.00, 20.00, 40.00),
(76, 32, 14, NULL, 'Product', 1.00, 42.00, 42.00),
(77, 32, 5, NULL, 'Product', 1.00, 55.00, 55.00),
(78, 32, 24, NULL, 'Product', 1.00, 25.00, 25.00),
(79, 33, 2, NULL, 'Product', 3.00, 32.00, 96.00),
(80, 33, NULL, 1, 'Fuel', 10.91, 64.25, 700.97),
(81, 33, 2, NULL, 'Product', 2.00, 32.00, 64.00),
(82, 34, 1, NULL, 'Product', 2.00, 20.00, 40.00),
(83, 34, 1, NULL, 'Product', 3.00, 20.00, 60.00),
(84, 34, 13, NULL, 'Product', 4.00, 32.00, 128.00),
(85, 35, 10, NULL, 'Product', 4.00, 28.00, 112.00),
(86, 35, NULL, 3, 'Fuel', 17.01, 68.50, 1165.19),
(87, 36, NULL, 2, 'Fuel', 9.92, 61.80, 613.06),
(88, 36, NULL, 2, 'Fuel', 31.56, 61.80, 1950.41),
(89, 37, 25, NULL, 'Product', 2.00, 20.00, 40.00),
(90, 37, NULL, 3, 'Fuel', 12.83, 68.50, 878.86),
(91, 38, 8, NULL, 'Product', 1.00, 18.00, 18.00),
(92, 38, 20, NULL, 'Product', 4.00, 95.00, 380.00),
(93, 39, NULL, 1, 'Fuel', 34.57, 64.25, 2221.12),
(94, 39, NULL, 3, 'Fuel', 14.45, 68.50, 989.82),
(95, 39, 11, NULL, 'Product', 1.00, 22.00, 22.00),
(96, 40, NULL, 3, 'Fuel', 12.77, 68.50, 874.75),
(97, 40, NULL, 2, 'Fuel', 24.19, 61.80, 1494.94),
(98, 41, 4, NULL, 'Product', 2.00, 30.00, 60.00),
(99, 41, 2, NULL, 'Product', 1.00, 32.00, 32.00),
(100, 41, NULL, 3, 'Fuel', 18.24, 68.50, 1249.44),
(101, 42, NULL, 2, 'Fuel', 29.27, 61.80, 1808.89),
(102, 42, NULL, 3, 'Fuel', 24.14, 68.50, 1653.59),
(103, 42, NULL, 3, 'Fuel', 11.67, 68.50, 799.39),
(104, 43, NULL, 1, 'Fuel', 10.71, 64.25, 688.12),
(105, 43, 21, NULL, 'Product', 3.00, 210.00, 630.00),
(106, 44, NULL, 3, 'Fuel', 9.37, 68.50, 641.84),
(107, 44, 13, NULL, 'Product', 4.00, 32.00, 128.00),
(108, 45, 12, NULL, 'Product', 4.00, 38.00, 152.00),
(109, 45, NULL, 1, 'Fuel', 25.13, 64.25, 1614.60),
(110, 46, 21, NULL, 'Product', 3.00, 210.00, 630.00),
(111, 46, 7, NULL, 'Product', 3.00, 25.00, 75.00),
(112, 47, 7, NULL, 'Product', 1.00, 25.00, 25.00),
(113, 47, NULL, 1, 'Fuel', 28.66, 64.25, 1841.40),
(114, 48, 2, NULL, 'Product', 1.00, 32.00, 32.00),
(115, 48, 14, NULL, 'Product', 4.00, 42.00, 168.00),
(116, 48, NULL, 2, 'Fuel', 7.08, 61.80, 437.54),
(117, 49, NULL, 1, 'Fuel', 28.32, 64.25, 1819.56),
(118, 49, NULL, 3, 'Fuel', 15.84, 68.50, 1085.04),
(119, 50, 23, NULL, 'Product', 1.00, 160.00, 160.00),
(120, 50, 22, NULL, 'Product', 3.00, 75.00, 225.00),
(121, 51, 20, NULL, 'Product', 1.00, 95.00, 95.00),
(122, 51, 20, NULL, 'Product', 3.00, 95.00, 285.00),
(123, 52, 25, NULL, 'Product', 3.00, 20.00, 60.00),
(124, 52, 18, NULL, 'Product', 1.00, 115.00, 115.00),
(125, 52, NULL, 3, 'Fuel', 29.04, 68.50, 1989.24),
(126, 53, 3, NULL, 'Product', 4.00, 35.00, 140.00),
(127, 53, 1, NULL, 'Product', 2.00, 20.00, 40.00),
(128, 54, NULL, 1, 'Fuel', 27.98, 64.25, 1797.71),
(129, 54, 17, NULL, 'Product', 1.00, 1050.00, 1050.00),
(130, 55, NULL, 3, 'Fuel', 4.35, 68.50, 297.97),
(131, 55, 19, NULL, 'Product', 3.00, 180.00, 540.00),
(132, 55, NULL, 2, 'Fuel', 7.09, 61.80, 438.16),
(133, 56, 9, NULL, 'Product', 1.00, 35.00, 35.00),
(134, 56, NULL, 3, 'Fuel', 33.07, 68.50, 2265.30),
(135, 56, 13, NULL, 'Product', 4.00, 32.00, 128.00),
(136, 57, 24, NULL, 'Product', 4.00, 25.00, 100.00),
(137, 57, 22, NULL, 'Product', 2.00, 75.00, 150.00),
(138, 58, 5, NULL, 'Product', 4.00, 55.00, 220.00),
(139, 58, NULL, 1, 'Fuel', 8.94, 64.25, 574.39),
(140, 59, 6, NULL, 'Product', 2.00, 48.00, 96.00),
(141, 59, NULL, 1, 'Fuel', 15.43, 64.25, 991.38),
(142, 60, 21, NULL, 'Product', 3.00, 210.00, 630.00),
(143, 60, NULL, 2, 'Fuel', 9.93, 61.80, 613.67),
(144, 60, 13, NULL, 'Product', 2.00, 32.00, 64.00),
(145, 61, NULL, 1, 'Fuel', 32.49, 64.25, 2087.48),
(146, 61, 8, NULL, 'Product', 1.00, 18.00, 18.00),
(147, 61, 21, NULL, 'Product', 2.00, 210.00, 420.00),
(148, 62, NULL, 3, 'Fuel', 28.98, 68.50, 1985.13),
(149, 62, 25, NULL, 'Product', 4.00, 20.00, 80.00),
(150, 63, 6, NULL, 'Product', 2.00, 48.00, 96.00),
(151, 63, NULL, 2, 'Fuel', 11.66, 61.80, 720.59),
(152, 64, NULL, 1, 'Fuel', 10.35, 64.25, 664.99),
(153, 64, 24, NULL, 'Product', 4.00, 25.00, 100.00),
(154, 65, NULL, 2, 'Fuel', 9.80, 61.80, 605.64),
(155, 65, NULL, 3, 'Fuel', 31.88, 68.50, 2183.78),
(156, 66, 11, NULL, 'Product', 3.00, 22.00, 66.00),
(157, 66, 6, NULL, 'Product', 1.00, 48.00, 48.00),
(158, 67, NULL, 1, 'Fuel', 19.74, 64.25, 1268.29),
(159, 67, NULL, 3, 'Fuel', 24.37, 68.50, 1669.35),
(160, 68, NULL, 1, 'Fuel', 23.77, 64.25, 1527.22),
(161, 68, 16, NULL, 'Product', 4.00, 320.00, 1280.00),
(162, 68, NULL, 2, 'Fuel', 23.58, 61.80, 1457.24),
(163, 69, 20, NULL, 'Product', 2.00, 95.00, 190.00),
(164, 69, 5, NULL, 'Product', 4.00, 55.00, 220.00),
(165, 70, NULL, 2, 'Fuel', 22.76, 61.80, 1406.57),
(166, 70, 16, NULL, 'Product', 4.00, 320.00, 1280.00),
(167, 71, 8, NULL, 'Product', 4.00, 18.00, 72.00),
(168, 71, 22, NULL, 'Product', 1.00, 75.00, 75.00),
(169, 71, 11, NULL, 'Product', 3.00, 22.00, 66.00),
(170, 72, 11, NULL, 'Product', 1.00, 22.00, 22.00),
(171, 72, 17, NULL, 'Product', 1.00, 1050.00, 1050.00),
(172, 72, NULL, 1, 'Fuel', 11.39, 64.25, 731.81),
(173, 73, NULL, 1, 'Fuel', 24.26, 64.25, 1558.71),
(174, 73, 1, NULL, 'Product', 2.00, 20.00, 40.00),
(175, 74, NULL, 1, 'Fuel', 31.93, 64.25, 2051.50),
(176, 74, 12, NULL, 'Product', 4.00, 38.00, 152.00),
(177, 74, 5, NULL, 'Product', 4.00, 55.00, 220.00),
(178, 75, NULL, 1, 'Fuel', 30.89, 64.25, 1984.68),
(179, 75, 9, NULL, 'Product', 3.00, 35.00, 105.00),
(180, 75, 17, NULL, 'Product', 1.00, 1050.00, 1050.00),
(181, 76, NULL, 3, 'Fuel', 12.80, 68.50, 876.80),
(182, 76, NULL, 3, 'Fuel', 8.86, 68.50, 606.91),
(183, 76, 22, NULL, 'Product', 4.00, 75.00, 300.00),
(184, 77, NULL, 2, 'Fuel', 12.74, 61.80, 787.33),
(185, 77, 14, NULL, 'Product', 1.00, 42.00, 42.00),
(186, 78, 10, NULL, 'Product', 4.00, 28.00, 112.00),
(187, 78, 3, NULL, 'Product', 4.00, 35.00, 140.00),
(188, 79, 22, NULL, 'Product', 3.00, 75.00, 225.00),
(189, 79, 2, NULL, 'Product', 1.00, 32.00, 32.00),
(190, 80, 3, NULL, 'Product', 3.00, 35.00, 105.00),
(191, 80, 11, NULL, 'Product', 3.00, 22.00, 66.00),
(192, 81, 14, NULL, 'Product', 4.00, 42.00, 168.00),
(193, 81, 20, NULL, 'Product', 1.00, 95.00, 95.00),
(194, 82, NULL, 1, 'Fuel', 19.51, 64.25, 1253.52),
(195, 82, 3, NULL, 'Product', 4.00, 35.00, 140.00),
(196, 82, 16, NULL, 'Product', 4.00, 320.00, 1280.00),
(197, 83, 7, NULL, 'Product', 4.00, 25.00, 100.00),
(198, 83, 12, NULL, 'Product', 4.00, 38.00, 152.00),
(199, 83, 4, NULL, 'Product', 1.00, 30.00, 30.00),
(200, 84, NULL, 1, 'Fuel', 13.06, 64.25, 839.11),
(201, 84, 7, NULL, 'Product', 4.00, 25.00, 100.00),
(202, 84, 21, NULL, 'Product', 3.00, 210.00, 630.00),
(203, 85, NULL, 3, 'Fuel', 8.53, 68.50, 584.30),
(204, 85, NULL, 1, 'Fuel', 25.29, 64.25, 1624.88),
(205, 86, 18, NULL, 'Product', 4.00, 115.00, 460.00),
(206, 86, NULL, 3, 'Fuel', 12.50, 68.50, 856.25),
(207, 86, NULL, 1, 'Fuel', 21.22, 64.25, 1363.38),
(208, 87, 18, NULL, 'Product', 4.00, 115.00, 460.00),
(209, 87, 22, NULL, 'Product', 4.00, 75.00, 300.00),
(210, 88, 19, NULL, 'Product', 2.00, 180.00, 360.00),
(211, 88, 18, NULL, 'Product', 2.00, 115.00, 230.00),
(212, 89, NULL, 3, 'Fuel', 20.61, 68.50, 1411.78),
(213, 89, 25, NULL, 'Product', 3.00, 20.00, 60.00),
(214, 90, NULL, 2, 'Fuel', 26.87, 61.80, 1660.57),
(215, 90, NULL, 2, 'Fuel', 23.41, 61.80, 1446.74),
(216, 91, NULL, 1, 'Fuel', 16.88, 64.25, 1084.54),
(217, 91, 4, NULL, 'Product', 2.00, 30.00, 60.00),
(218, 91, 23, NULL, 'Product', 1.00, 160.00, 160.00),
(219, 92, 14, NULL, 'Product', 3.00, 42.00, 126.00),
(220, 92, 10, NULL, 'Product', 4.00, 28.00, 112.00),
(221, 92, NULL, 1, 'Fuel', 21.19, 64.25, 1361.46),
(222, 93, 23, NULL, 'Product', 2.00, 160.00, 320.00),
(223, 93, 12, NULL, 'Product', 1.00, 38.00, 38.00),
(224, 94, 2, NULL, 'Product', 2.00, 32.00, 64.00),
(225, 94, NULL, 2, 'Fuel', 26.93, 61.80, 1664.27),
(226, 95, NULL, 3, 'Fuel', 14.52, 68.50, 994.62),
(227, 95, 21, NULL, 'Product', 4.00, 210.00, 840.00),
(228, 95, NULL, 2, 'Fuel', 26.83, 61.80, 1658.09),
(229, 96, 5, NULL, 'Product', 2.00, 55.00, 110.00),
(230, 96, NULL, 2, 'Fuel', 11.02, 61.80, 681.04),
(231, 96, 24, NULL, 'Product', 2.00, 25.00, 50.00),
(232, 97, 13, NULL, 'Product', 3.00, 32.00, 96.00),
(233, 97, NULL, 2, 'Fuel', 16.87, 61.80, 1042.57),
(234, 97, 4, NULL, 'Product', 3.00, 30.00, 90.00),
(235, 98, 4, NULL, 'Product', 4.00, 30.00, 120.00),
(236, 98, 17, NULL, 'Product', 4.00, 1050.00, 4200.00),
(237, 99, 23, NULL, 'Product', 3.00, 160.00, 480.00),
(238, 99, NULL, 1, 'Fuel', 27.82, 64.25, 1787.43),
(239, 100, NULL, 2, 'Fuel', 13.83, 61.80, 854.69),
(240, 100, 14, NULL, 'Product', 4.00, 42.00, 168.00);

--
-- Triggers `transaction_items`
--
DELIMITER $$
CREATE TRIGGER `bi_transaction_items_validate` BEFORE INSERT ON `transaction_items` FOR EACH ROW BEGIN
  IF NEW.`product_type` IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'transaction_items.product_type is required';
  ELSEIF NEW.`product_type` = 'Fuel' AND (NEW.`fuel_id` IS NULL OR NEW.`product_id` IS NOT NULL) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fuel items must have fuel_id and must not have product_id';
  ELSEIF NEW.`product_type` = 'Product' AND (NEW.`product_id` IS NULL OR NEW.`fuel_id` IS NOT NULL) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Product items must have product_id and must not have fuel_id';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bu_transaction_items_validate` BEFORE UPDATE ON `transaction_items` FOR EACH ROW BEGIN
  IF NEW.`product_type` IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'transaction_items.product_type is required';
  ELSEIF NEW.`product_type` = 'Fuel' AND (NEW.`fuel_id` IS NULL OR NEW.`product_id` IS NOT NULL) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fuel items must have fuel_id and must not have product_id';
  ELSEIF NEW.`product_type` = 'Product' AND (NEW.`product_id` IS NULL OR NEW.`fuel_id` IS NOT NULL) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Product items must have product_id and must not have fuel_id';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_status`
--

CREATE TABLE `transaction_status` (
  `status_id` int(11) NOT NULL,
  `status_code` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_status`
--

INSERT INTO `transaction_status` (`status_id`, `status_code`, `is_active`) VALUES
(1, 'Completed', 1),
(2, 'Pending', 1),
(3, 'Voided', 1),
(4, 'Refunded', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_tbl`
--

CREATE TABLE `transaction_tbl` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `method_id` int(11) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `reference_num` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_amt` decimal(10,2) DEFAULT NULL,
  `amt_received` decimal(10,2) DEFAULT NULL
) ;

--
-- Dumping data for table `transaction_tbl`
--

INSERT INTO `transaction_tbl` (`transaction_id`, `user_id`, `method_id`, `discount_id`, `shift_id`, `status_id`, `approved_by`, `reference_num`, `date_created`, `total_amt`, `amt_received`) VALUES
(1, 4, 1, NULL, 1, 1, NULL, 'GS-261001-0001', '2026-09-30 22:17:00', 1295.19, 1315.19),
(2, 5, 2, NULL, 2, 1, NULL, 'GS-261001-0002', '2026-10-01 01:24:00', 1484.00, 1484.00),
(3, 6, 3, NULL, 3, 1, NULL, 'GS-261001-0003', '2026-10-01 04:31:00', 2214.27, 2224.27),
(4, 7, 4, NULL, 4, 1, NULL, 'GS-261001-0004', '2026-10-01 07:38:00', 549.65, 559.65),
(5, 8, 1, NULL, 5, 1, NULL, 'GS-261001-0005', '2026-10-01 10:45:00', 3265.19, 3265.19),
(6, 9, 2, NULL, 6, 1, NULL, 'GS-261001-0006', '2026-10-01 13:52:00', 245.00, 245.00),
(7, 10, 3, NULL, 7, 1, NULL, 'GS-261002-0007', '2026-10-01 16:59:00', 699.95, 719.95),
(8, 11, 4, NULL, 8, 1, NULL, 'GS-261002-0008', '2026-10-01 19:11:00', 1826.98, 1826.98),
(9, 12, 1, 4, 9, 1, NULL, 'GS-261002-0009', '2026-10-01 22:18:00', 130.00, 140.00),
(10, 13, 2, NULL, 10, 1, NULL, 'GS-261002-0010', '2026-10-02 01:25:00', 1991.11, 2001.11),
(11, 14, 3, NULL, 11, 1, NULL, 'GS-261002-0011', '2026-10-02 04:32:00', 130.00, 130.00),
(12, 15, 4, NULL, 12, 1, NULL, 'GS-261002-0012', '2026-10-02 07:39:00', 2684.17, 2684.17),
(13, 16, 1, NULL, 13, 1, 2, 'GS-261002-0013', '2026-10-02 10:46:00', 3204.25, 3214.25),
(14, 17, 2, NULL, 14, 1, NULL, 'GS-261002-0014', '2026-10-02 13:53:00', 2820.83, 2820.83),
(15, 18, 3, NULL, 15, 1, NULL, 'GS-261003-0015', '2026-10-02 17:00:00', 2858.28, 2858.28),
(16, 19, 4, NULL, 16, 1, NULL, 'GS-261003-0016', '2026-10-02 19:12:00', 1195.28, 1200.28),
(17, 20, 1, NULL, 17, 1, NULL, 'GS-261003-0017', '2026-10-02 22:19:00', 1563.41, 1563.41),
(18, 4, 2, 3, 18, 1, NULL, 'GS-261003-0018', '2026-10-03 01:26:00', 2081.23, 2091.23),
(19, 5, 3, NULL, 19, 1, NULL, 'GS-261003-0019', '2026-10-03 04:33:00', 172.00, 182.00),
(20, 6, 4, NULL, 20, 1, NULL, 'GS-261003-0020', '2026-10-03 07:40:00', 1135.61, 1140.61),
(21, 7, 1, NULL, 21, 1, NULL, 'GS-261003-0021', '2026-10-03 10:47:00', 1105.00, 1125.00),
(22, 8, 2, NULL, 22, 1, NULL, 'GS-261003-0022', '2026-10-03 13:54:00', 171.00, 176.00),
(23, 9, 3, NULL, 23, 1, NULL, 'GS-261004-0023', '2026-10-03 17:01:00', 2744.45, 2744.45),
(24, 10, 4, NULL, 24, 1, NULL, 'GS-261004-0024', '2026-10-03 19:13:00', 1247.48, 1252.48),
(25, 11, 1, NULL, 25, 1, NULL, 'GS-261004-0025', '2026-10-03 22:20:00', 827.57, 832.57),
(26, 12, 2, NULL, 26, 1, 2, 'GS-261004-0026', '2026-10-04 01:27:00', 113.00, 113.00),
(27, 13, 3, 2, 27, 1, NULL, 'GS-261004-0027', '2026-10-04 04:34:00', 1135.01, 1145.01),
(28, 14, 4, NULL, 28, 1, NULL, 'GS-261004-0028', '2026-10-04 07:41:00', 620.00, 620.00),
(29, 15, 1, NULL, 29, 1, NULL, 'GS-261004-0029', '2026-10-04 10:48:00', 3297.13, 3297.13),
(30, 16, 2, NULL, 30, 1, NULL, 'GS-261004-0030', '2026-10-04 13:55:00', 1315.00, 1320.00),
(31, 17, 3, NULL, 1, 1, NULL, 'GS-261005-0031', '2026-10-04 17:02:00', 104.00, 104.00),
(32, 18, 4, NULL, 2, 1, NULL, 'GS-261005-0032', '2026-10-04 19:14:00', 122.00, 122.00),
(33, 19, 1, NULL, 3, 1, NULL, 'GS-261005-0033', '2026-10-04 22:21:00', 860.97, 880.97),
(34, 20, 2, NULL, 4, 1, NULL, 'GS-261005-0034', '2026-10-05 01:28:00', 228.00, 228.00),
(35, 4, 3, NULL, 5, 1, NULL, 'GS-261005-0035', '2026-10-05 04:35:00', 1277.19, 1287.19),
(36, 5, 4, 1, 6, 1, NULL, 'GS-261005-0036', '2026-10-05 07:42:00', 2543.47, 2548.47),
(37, 6, 1, NULL, 7, 3, 1, 'GS-261005-0037', '2026-10-05 10:49:00', 918.86, 0.00),
(38, 7, 2, NULL, 8, 1, NULL, 'GS-261005-0038', '2026-10-05 13:56:00', 398.00, 403.00),
(39, 8, 3, NULL, 9, 1, 2, 'GS-261006-0039', '2026-10-05 17:03:00', 3232.94, 3232.94),
(40, 9, 4, NULL, 10, 1, NULL, 'GS-261006-0040', '2026-10-05 19:15:00', 2369.69, 2379.69),
(41, 10, 1, NULL, 11, 1, NULL, 'GS-261006-0041', '2026-10-05 22:22:00', 1341.44, 1351.44),
(42, 11, 2, NULL, 12, 1, NULL, 'GS-261006-0042', '2026-10-06 01:29:00', 4261.87, 4261.87),
(43, 12, 3, NULL, 13, 1, NULL, 'GS-261006-0043', '2026-10-06 04:36:00', 1318.12, 1338.12),
(44, 13, 4, NULL, 14, 1, NULL, 'GS-261006-0044', '2026-10-06 07:43:00', 769.84, 774.84),
(45, 14, 1, 5, 15, 1, NULL, 'GS-261006-0045', '2026-10-06 10:50:00', 1761.60, 1761.60),
(46, 15, 2, NULL, 16, 1, NULL, 'GS-261006-0046', '2026-10-06 13:57:00', 705.00, 715.00),
(47, 16, 3, NULL, 17, 1, NULL, 'GS-261007-0047', '2026-10-06 17:04:00', 1866.40, 1876.40),
(48, 17, 4, NULL, 18, 1, NULL, 'GS-261007-0048', '2026-10-06 19:16:00', 637.54, 637.54),
(49, 18, 1, NULL, 19, 1, NULL, 'GS-261007-0049', '2026-10-06 22:23:00', 2904.60, 2909.60),
(50, 19, 2, NULL, 20, 1, NULL, 'GS-261007-0050', '2026-10-07 01:30:00', 385.00, 390.00),
(51, 20, 3, NULL, 21, 1, NULL, 'GS-261007-0051', '2026-10-07 04:37:00', 380.00, 380.00),
(52, 4, 4, NULL, 22, 2, 2, 'GS-261007-0052', '2026-10-07 07:44:00', 2164.24, 0.00),
(53, 5, 1, NULL, 23, 1, NULL, 'GS-261007-0053', '2026-10-07 10:51:00', 180.00, 185.00),
(54, 6, 2, 4, 24, 1, NULL, 'GS-261007-0054', '2026-10-07 13:58:00', 2797.71, 2797.71),
(55, 7, 3, NULL, 25, 1, NULL, 'GS-261008-0055', '2026-10-07 16:10:00', 1276.13, 1296.13),
(56, 8, 4, NULL, 26, 1, NULL, 'GS-261008-0056', '2026-10-07 19:17:00', 2428.30, 2428.30),
(57, 9, 1, NULL, 27, 1, NULL, 'GS-261008-0057', '2026-10-07 22:24:00', 250.00, 250.00),
(58, 10, 2, NULL, 28, 1, NULL, 'GS-261008-0058', '2026-10-08 01:31:00', 794.39, 814.39),
(59, 11, 3, NULL, 29, 1, NULL, 'GS-261008-0059', '2026-10-08 04:38:00', 1087.38, 1087.38),
(60, 12, 4, NULL, 30, 1, NULL, 'GS-261008-0060', '2026-10-08 07:45:00', 1307.67, 1307.67),
(61, 13, 1, NULL, 1, 1, NULL, 'GS-261008-0061', '2026-10-08 10:52:00', 2525.48, 2525.48),
(62, 14, 2, NULL, 2, 1, NULL, 'GS-261008-0062', '2026-10-08 13:59:00', 2065.13, 2085.13),
(63, 15, 3, 3, 3, 1, NULL, 'GS-261009-0063', '2026-10-08 16:11:00', 806.59, 826.59),
(64, 16, 4, NULL, 4, 1, NULL, 'GS-261009-0064', '2026-10-08 19:18:00', 764.99, 774.99),
(65, 17, 1, NULL, 5, 1, 2, 'GS-261009-0065', '2026-10-08 22:25:00', 2789.42, 2809.42),
(66, 18, 2, NULL, 6, 1, NULL, 'GS-261009-0066', '2026-10-09 01:32:00', 114.00, 119.00),
(67, 19, 3, NULL, 7, 1, NULL, 'GS-261009-0067', '2026-10-09 04:39:00', 2937.64, 2957.64),
(68, 20, 4, NULL, 8, 1, NULL, 'GS-261009-0068', '2026-10-09 07:46:00', 4264.46, 4264.46),
(69, 4, 1, NULL, 9, 1, NULL, 'GS-261009-0069', '2026-10-09 10:53:00', 410.00, 410.00),
(70, 5, 2, NULL, 10, 1, NULL, 'GS-261009-0070', '2026-10-09 14:00:00', 2686.57, 2696.57),
(71, 6, 3, NULL, 11, 1, NULL, 'GS-261010-0071', '2026-10-09 16:12:00', 213.00, 213.00),
(72, 7, 4, 2, 12, 1, NULL, 'GS-261010-0072', '2026-10-09 19:19:00', 1783.81, 1783.81),
(73, 8, 1, NULL, 13, 4, 1, 'GS-261010-0073', '2026-10-09 22:26:00', 1598.71, 1598.71),
(74, 9, 2, NULL, 14, 1, NULL, 'GS-261010-0074', '2026-10-10 01:33:00', 2423.50, 2428.50),
(75, 10, 3, NULL, 15, 1, NULL, 'GS-261010-0075', '2026-10-10 04:40:00', 3139.68, 3144.68),
(76, 11, 4, NULL, 16, 1, NULL, 'GS-261010-0076', '2026-10-10 07:47:00', 1783.71, 1803.71),
(77, 12, 1, NULL, 17, 1, NULL, 'GS-261010-0077', '2026-10-10 10:54:00', 829.33, 849.33),
(78, 13, 2, NULL, 18, 1, 2, 'GS-261010-0078', '2026-10-10 14:01:00', 252.00, 272.00),
(79, 14, 3, NULL, 19, 1, NULL, 'GS-261011-0079', '2026-10-10 16:13:00', 257.00, 277.00),
(80, 15, 4, NULL, 20, 1, NULL, 'GS-261011-0080', '2026-10-10 19:20:00', 171.00, 171.00),
(81, 16, 1, 1, 21, 1, NULL, 'GS-261011-0081', '2026-10-10 22:27:00', 243.00, 248.00),
(82, 17, 2, NULL, 22, 1, NULL, 'GS-261011-0082', '2026-10-11 01:34:00', 2673.52, 2693.52),
(83, 18, 3, NULL, 23, 1, NULL, 'GS-261011-0083', '2026-10-11 04:41:00', 282.00, 282.00),
(84, 19, 4, NULL, 24, 1, NULL, 'GS-261011-0084', '2026-10-11 07:48:00', 1569.11, 1589.11),
(85, 20, 1, NULL, 25, 1, NULL, 'GS-261011-0085', '2026-10-11 10:55:00', 2209.18, 2229.18),
(86, 4, 2, NULL, 26, 1, NULL, 'GS-261011-0086', '2026-10-11 14:02:00', 2679.63, 2699.63),
(87, 5, 3, NULL, 27, 1, NULL, 'GS-261012-0087', '2026-10-11 16:14:00', 760.00, 765.00),
(88, 6, 4, NULL, 28, 3, 1, 'GS-261012-0088', '2026-10-11 19:21:00', 590.00, 0.00),
(89, 7, 1, NULL, 29, 1, NULL, 'GS-261012-0089', '2026-10-11 22:28:00', 1471.78, 1471.78),
(90, 8, 2, 5, 30, 1, NULL, 'GS-261012-0090', '2026-10-12 01:35:00', 3102.31, 3112.31),
(91, 9, 3, NULL, 1, 1, 2, 'GS-261012-0091', '2026-10-12 04:42:00', 1304.54, 1304.54),
(92, 10, 4, NULL, 2, 1, NULL, 'GS-261012-0092', '2026-10-12 07:49:00', 1599.46, 1619.46),
(93, 11, 1, NULL, 3, 1, NULL, 'GS-261012-0093', '2026-10-12 10:56:00', 358.00, 368.00),
(94, 12, 2, NULL, 4, 1, NULL, 'GS-261012-0094', '2026-10-12 14:03:00', 1728.27, 1738.27),
(95, 13, 3, NULL, 5, 1, NULL, 'GS-261013-0095', '2026-10-12 16:15:00', 3492.71, 3492.71),
(96, 14, 4, NULL, 6, 2, NULL, 'GS-261013-0096', '2026-10-12 19:22:00', 841.04, 0.00),
(97, 15, 1, NULL, 7, 1, NULL, 'GS-261013-0097', '2026-10-12 22:29:00', 1228.57, 1233.57),
(98, 16, 2, NULL, 8, 1, NULL, 'GS-261013-0098', '2026-10-13 01:36:00', 4320.00, 4320.00),
(99, 17, 3, 4, 9, 1, NULL, 'GS-261013-0099', '2026-10-13 04:43:00', 2217.43, 2227.43),
(100, 18, 4, NULL, 10, 1, NULL, 'GS-261013-0100', '2026-10-13 07:50:00', 1022.69, 1042.69);

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`user_id`, `role_id`, `first_name`, `last_name`, `email`, `gender`, `date_created`) VALUES
(1, 1, 'Alex', 'Santos', 'alex.santos1@example.com', 'Male', '2025-02-07 16:00:00'),
(2, 2, 'Jamie', 'Reyes', 'jamie.reyes2@example.com', 'Female', '2025-02-14 16:00:00'),
(3, 2, 'Taylor', 'Dela Cruz', 'taylor.delacruz3@example.com', 'Male', '2025-02-21 16:00:00'),
(4, 3, 'Morgan', 'Garcia', 'morgan.garcia4@example.com', 'Female', '2025-02-28 16:00:00'),
(5, 3, 'Jordan', 'Mendoza', 'jordan.mendoza5@example.com', 'Male', '2025-03-07 16:00:00'),
(6, 3, 'Casey', 'Ramos', 'casey.ramos6@example.com', 'Female', '2025-03-14 16:00:00'),
(7, 3, 'Riley', 'Flores', 'riley.flores7@example.com', 'Male', '2025-03-21 16:00:00'),
(8, 3, 'Sam', 'Aquino', 'sam.aquino8@example.com', 'Female', '2025-03-28 16:00:00'),
(9, 3, 'Avery', 'Castillo', 'avery.castillo9@example.com', 'Male', '2025-04-04 16:00:00'),
(10, 3, 'Cameron', 'Navarro', 'cameron.navarro10@example.com', 'Female', '2025-04-11 16:00:00'),
(11, 3, 'Drew', 'Villanueva', 'drew.villanueva11@example.com', 'Male', '2025-04-18 16:00:00'),
(12, 3, 'Robin', 'Torres', 'robin.torres12@example.com', 'Female', '2025-04-25 16:00:00'),
(13, 3, 'Kai', 'Bautista', 'kai.bautista13@example.com', 'Male', '2025-05-02 16:00:00'),
(14, 3, 'Mika', 'Fernandez', 'mika.fernandez14@example.com', 'Female', '2025-05-09 16:00:00'),
(15, 4, 'Noel', 'Gonzales', 'noel.gonzales15@example.com', 'Male', '2025-05-16 16:00:00'),
(16, 4, 'Pat', 'Diaz', 'pat.diaz16@example.com', 'Female', '2025-05-23 16:00:00'),
(17, 4, 'Angel', 'Perez', 'angel.perez17@example.com', 'Male', '2025-05-30 16:00:00'),
(18, 4, 'Chris', 'Lim', 'chris.lim18@example.com', 'Female', '2025-06-06 16:00:00'),
(19, 4, 'Lee', 'Rivera', 'lee.rivera19@example.com', 'Male', '2025-06-13 16:00:00'),
(20, 3, 'Dana', 'Cruz', 'dana.cruz20@example.com', 'Female', '2025-06-20 16:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement_tbl`
--
ALTER TABLE `announcement_tbl`
  ADD PRIMARY KEY (`anc_id`),
  ADD KEY `fk_announcement_user` (`made_by`);

--
-- Indexes for table `audit_tbl`
--
ALTER TABLE `audit_tbl`
  ADD PRIMARY KEY (`audit_id`),
  ADD KEY `fk_audit_user` (`made_by`);

--
-- Indexes for table `discount_tbl`
--
ALTER TABLE `discount_tbl`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `fuel_tbl`
--
ALTER TABLE `fuel_tbl`
  ADD PRIMARY KEY (`fuel_id`);

--
-- Indexes for table `method_tbl`
--
ALTER TABLE `method_tbl`
  ADD PRIMARY KEY (`method_id`);

--
-- Indexes for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `received_order`
--
ALTER TABLE `received_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_received_product` (`product_id`),
  ADD KEY `fk_received_fuel` (`fuel_id`);

--
-- Indexes for table `report_tbl`
--
ALTER TABLE `report_tbl`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `fk_report_transaction` (`transaction_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `shift_tbl`
--
ALTER TABLE `shift_tbl`
  ADD PRIMARY KEY (`shift_id`),
  ADD KEY `fk_shift_user` (`user_id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_item_transaction` (`transaction_id`),
  ADD KEY `fk_item_product` (`product_id`),
  ADD KEY `fk_item_fuel` (`fuel_id`);

--
-- Indexes for table `transaction_status`
--
ALTER TABLE `transaction_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `fk_transaction_user` (`user_id`),
  ADD KEY `fk_transaction_method` (`method_id`),
  ADD KEY `fk_transaction_discount` (`discount_id`),
  ADD KEY `fk_transaction_shift` (`shift_id`),
  ADD KEY `fk_transaction_status` (`status_id`),
  ADD KEY `fk_transaction_approver` (`approved_by`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_user_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement_tbl`
--
ALTER TABLE `announcement_tbl`
  MODIFY `anc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `audit_tbl`
--
ALTER TABLE `audit_tbl`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `discount_tbl`
--
ALTER TABLE `discount_tbl`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fuel_tbl`
--
ALTER TABLE `fuel_tbl`
  MODIFY `fuel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `method_tbl`
--
ALTER TABLE `method_tbl`
  MODIFY `method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `received_order`
--
ALTER TABLE `received_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_tbl`
--
ALTER TABLE `report_tbl`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shift_tbl`
--
ALTER TABLE `shift_tbl`
  MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_status`
--
ALTER TABLE `transaction_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcement_tbl`
--
ALTER TABLE `announcement_tbl`
  ADD CONSTRAINT `fk_announcement_user` FOREIGN KEY (`made_by`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `audit_tbl`
--
ALTER TABLE `audit_tbl`
  ADD CONSTRAINT `fk_audit_user` FOREIGN KEY (`made_by`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `received_order`
--
ALTER TABLE `received_order`
  ADD CONSTRAINT `fk_received_fuel` FOREIGN KEY (`fuel_id`) REFERENCES `fuel_tbl` (`fuel_id`),
  ADD CONSTRAINT `fk_received_product` FOREIGN KEY (`product_id`) REFERENCES `product_tbl` (`product_id`);

--
-- Constraints for table `report_tbl`
--
ALTER TABLE `report_tbl`
  ADD CONSTRAINT `fk_report_transaction` FOREIGN KEY (`transaction_id`) REFERENCES `transaction_tbl` (`transaction_id`);

--
-- Constraints for table `shift_tbl`
--
ALTER TABLE `shift_tbl`
  ADD CONSTRAINT `fk_shift_user` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD CONSTRAINT `fk_item_fuel` FOREIGN KEY (`fuel_id`) REFERENCES `fuel_tbl` (`fuel_id`),
  ADD CONSTRAINT `fk_item_product` FOREIGN KEY (`product_id`) REFERENCES `product_tbl` (`product_id`),
  ADD CONSTRAINT `fk_item_transaction` FOREIGN KEY (`transaction_id`) REFERENCES `transaction_tbl` (`transaction_id`);

--
-- Constraints for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  ADD CONSTRAINT `fk_transaction_approver` FOREIGN KEY (`approved_by`) REFERENCES `user_tbl` (`user_id`),
  ADD CONSTRAINT `fk_transaction_discount` FOREIGN KEY (`discount_id`) REFERENCES `discount_tbl` (`discount_id`),
  ADD CONSTRAINT `fk_transaction_method` FOREIGN KEY (`method_id`) REFERENCES `method_tbl` (`method_id`),
  ADD CONSTRAINT `fk_transaction_shift` FOREIGN KEY (`shift_id`) REFERENCES `shift_tbl` (`shift_id`),
  ADD CONSTRAINT `fk_transaction_status` FOREIGN KEY (`status_id`) REFERENCES `transaction_status` (`status_id`),
  ADD CONSTRAINT `fk_transaction_user` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
