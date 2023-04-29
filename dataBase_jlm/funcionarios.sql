-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2023 at 05:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jlm`
--

-- --------------------------------------------------------

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `Cedula` int(15) DEFAULT NULL,
  `Nombres` varchar(200) DEFAULT NULL,
  `Apellidos` varchar(200) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `Correo` varchar(200) DEFAULT NULL,
  `Cargo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `Cedula`, `Nombres`, `Apellidos`, `Telefono`, `Direccion`, `Correo`, `Cargo`) VALUES
(1, 1013626161, 'jhonny steven', 'lucas mendieta', '3214605952', 'cll 32 # 56-89', 'jhonny@.com', 'programador'),
(2, 1012365896, 'maria camila', 'salazar sanchez', '3335815', 'carera 24 # 89-56', 'maria@.com', 'planeacion'),
(3, 1020236352, 'astrid andrea', 'espinoza mora', '3202365985', 'cll 56 # 78-52', 'astrid@.com', 'nomina'),
(4, 1023652585, 'carlos mario', 'guzman guzman', '3232365236', 'cll 20 # 23-56', 'guzman@.com', 'recursos humanos'),
(5, 1010102365, 'dayana camila', 'montes escobar', '3202365985', 'cll 33 #33-96', 'dayana@.com', 'recursos humanos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
