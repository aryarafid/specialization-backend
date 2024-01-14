-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 08:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `contactLastName` varchar(50) NOT NULL,
  `contactFirstName` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addressLine1` varchar(100) DEFAULT NULL,
  `addressLine2` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `salesRepEmployeeNumber` int(11) DEFAULT NULL,
  `creditLimit` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerNumber`, `customerName`, `contactLastName`, `contactFirstName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `country`, `salesRepEmployeeNumber`, `creditLimit`) VALUES
(101, 'ABC Corp', 'Smith', 'John', '123-456-7890', '456 Main St', 'Suite 301', 'New York', 'NY', '10001', 'USA', 1001, 50000.00),
(102, 'XYZ Ltd', 'Johnson', 'Alice', '44-20-1234-5678', '789 Park Ln', 'Floor 2', 'London', NULL, 'SW1A 1AA', 'UK', 1002, 75000.00),
(103, '123 Industries', 'Williams', 'Robert', '81-3-9876-5432', '987 Street Ave', NULL, 'Tokyo', NULL, '100-0001', 'Japan', 1003, 100000.00),
(104, 'Global Goods', 'Jones', 'Emily', '1-416-555-1234', '555 Bay St', 'Suite 100', 'Toronto', 'ON', 'M4Y 1Z2', 'Canada', 1004, 60000.00),
(105, 'Best Buys', 'Davis', 'Michael', '61-2-3456-7890', '321 Yonge St', 'Level 3', 'Sydney', 'NS', '2000', 'Australia', 1005, 80000.00);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES
(1001, 'Smith', 'John', 'x123', 'john.smith@example.com', '001', NULL, 'Manager'),
(1002, 'Johnson', 'Alice', 'x234', 'alice.johnson@example.com', '002', 1001, 'Assistant Manager'),
(1003, 'Williams', 'Robert', 'x345', 'robert.williams@example.com', '003', 1001, 'Financial Analyst'),
(1004, 'Jones', 'Emily', 'x456', 'emily.jones@example.com', '004', 1002, 'Customer Service Representative'),
(1005, 'Davis', 'Michael', 'x567', 'michael.davis@example.com', '005', 1002, 'Loan Officer');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addressLine1` varchar(100) DEFAULT NULL,
  `addressLine2` varchar(100) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `territory` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`officeCode`, `city`, `phone`, `addressLine1`, `addressLine2`, `state`, `country`, `postalCode`, `territory`) VALUES
('001', 'New York', '123-456-7890', '123 Main St', 'Suite 101', 'NY', 'USA', '10001', 'North East'),
('002', 'London', '44-20-1234-5678', '456 Park Ln', 'Floor 5', 'Lo', 'UK', 'SW1A 1AA', 'Europe'),
('003', 'Tokyo', '81-3-9876-5432', '789 Street Ave', 'Building 3', 'To', 'Japan', '100-0001', 'Asia'),
('004', 'Sydney', '61-2-3456-7890', '321 Bay St', 'Level 2', 'NS', 'Australia', '2000', 'Oceania'),
('005', 'Toronto', '1-416-555-1234', '555 Yonge St', 'Suite 200', 'ON', 'Canada', 'M4Y 1Z2', 'North Amer');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderLineNumber` int(11) NOT NULL,
  `orderNumber` int(11) NOT NULL,
  `productCode` varchar(50) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `priceEach` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderLineNumber`, `orderNumber`, `productCode`, `quantityOrdered`, `priceEach`) VALUES
(1, 101, 'BANK001', 10, 50.00),
(2, 102, 'BANK002', 8, 75.50),
(3, 103, 'BANK003', 15, 30.25),
(4, 104, 'BANK004', 12, 45.75),
(5, 105, 'BANK005', 20, 60.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `requiredDate` date DEFAULT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `comments` text DEFAULT NULL,
  `customerNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderNumber`, `orderDate`, `requiredDate`, `shippedDate`, `status`, `comments`, `customerNumber`) VALUES
(101, '2024-01-14', '2024-01-20', '2024-01-18', 'Shipped', 'Order processed successfully', 101),
(102, '2024-01-15', '2024-01-22', '2024-01-20', 'In Progress', 'Awaiting shipment confirmation', 102),
(103, '2024-01-16', '2024-01-25', NULL, 'Pending', 'Waiting for item availability', 103),
(104, '2024-01-17', '2024-01-30', NULL, 'Processing', 'Order being prepared for shipment', 104),
(105, '2024-01-18', '2024-02-05', NULL, 'Pending', 'Customer requested special handling', 105);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentID` int(11) NOT NULL,
  `customerNumber` int(11) NOT NULL,
  `checkNumber` varchar(50) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `customerNumber`, `checkNumber`, `paymentDate`, `amount`) VALUES
(1, 101, 'CHK001', '2024-01-14', 100.00),
(2, 102, 'CHK002', '2024-01-15', 150.50),
(3, 103, 'CHK003', '2024-01-16', 200.75),
(4, 104, 'CHK004', '2024-01-17', 120.25),
(5, 105, 'CHK005', '2024-01-18', 180.00);

-- --------------------------------------------------------

--
-- Table structure for table `productlines`
--

CREATE TABLE `productlines` (
  `productLineID` int(11) NOT NULL,
  `productLine` varchar(50) NOT NULL,
  `textDescription` text DEFAULT NULL,
  `htmlDescription` text DEFAULT NULL,
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productlines`
--

INSERT INTO `productlines` (`productLineID`, `productLine`, `textDescription`, `htmlDescription`, `image`) VALUES
(1, 'Savings', 'Secure your future with our savings products.', '<p>Explore our savings products designed to help you secure your financial future.</p>', 0x736176696e67735f696d6167652e6a7067),
(2, 'Credit Cards', 'Unlock exclusive benefits with our credit cards.', '<p>Experience exclusive benefits and rewards with our range of credit cards.</p>', 0x63726564697463617264735f696d6167652e6a7067),
(3, 'Loans', 'Fulfill your dreams with our flexible loan options.', '<p>Turn your dreams into reality with our flexible and tailored loan options.</p>', 0x6c6f616e735f696d6167652e6a7067),
(4, 'Investments', 'Grow your wealth with our investment solutions.', '<p>Explore opportunities to grow your wealth with our diverse investment solutions.</p>', 0x696e766573746d656e74735f696d6167652e6a7067),
(5, 'Insurance', 'Protect what matters most with our insurance plans.', '<p>Safeguard your future with our comprehensive insurance plans.</p>', 0x696e737572616e63655f696d6167652e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `productCode` varchar(50) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productLine` varchar(50) NOT NULL,
  `productScale` varchar(20) DEFAULT NULL,
  `productVendor` varchar(50) DEFAULT NULL,
  `productDescription` text DEFAULT NULL,
  `quantityInStock` int(11) DEFAULT NULL,
  `buyPrice` decimal(10,2) DEFAULT NULL,
  `MSRP` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `MSRP`) VALUES
(1, 'BANK001', 'Basic Savings', 'Savings', 'Small', 'BankCo', 'A basic savings account for your financial needs.', 1000, 50.00, 75.00),
(2, 'BANK002', 'Premium Credit Card', 'Credit Cards', 'Medium', 'CardCorp', 'Unlock exclusive benefits with our premium credit card.', 500, 0.00, 25.00),
(3, 'BANK003', 'Flexible Personal Loan', 'Loans', 'Medium', 'LoanHub', 'Tailored personal loan options for your needs.', 300, 500.00, 700.00),
(4, 'BANK004', 'Diversified Investment Fund', 'Investments', 'Large', 'WealthMgmt', 'Grow your wealth with our diversified investment fund.', 150, 200.00, 250.00),
(5, 'BANK005', 'Comprehensive Insurance Plan', 'Insurance', 'Large', 'InsureCo', 'Protect what matters most with our comprehensive insurance plan.', 200, 100.00, 150.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerNumber`),
  ADD KEY `fk_salesRep` (`salesRepEmployeeNumber`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeNumber`),
  ADD KEY `fk_office` (`officeCode`),
  ADD KEY `fk_reportsTo` (`reportsTo`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`officeCode`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderLineNumber`),
  ADD KEY `fk_order` (`orderNumber`),
  ADD KEY `fk_product` (`productCode`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNumber`),
  ADD KEY `fk_customer_order` (`customerNumber`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `customerNumber` (`customerNumber`,`checkNumber`);

--
-- Indexes for table `productlines`
--
ALTER TABLE `productlines`
  ADD PRIMARY KEY (`productLineID`),
  ADD UNIQUE KEY `productLine` (`productLine`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD UNIQUE KEY `productCode` (`productCode`),
  ADD KEY `fk_productLine` (`productLine`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderLineNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productlines`
--
ALTER TABLE `productlines`
  MODIFY `productLineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk_salesRep` FOREIGN KEY (`salesRepEmployeeNumber`) REFERENCES `employees` (`employeeNumber`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_office` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reportsTo` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `fk_order` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_customer_order` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_productLine` FOREIGN KEY (`productLine`) REFERENCES `productlines` (`productLine`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
