-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-04-2025 a las 02:54:19
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `infotienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
CREATE TABLE IF NOT EXISTS `fabricantes` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`codigo`, `nombre`, `direccion`) VALUES
(1, 'Samsung', 'Catamarca 123'),
(2, 'Logitech', 'Jujuy 987'),
(3, 'Sony', 'San Martin 1298');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  `fk_codigo` int NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_codigo` (`fk_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `precio`, `fk_codigo`) VALUES
(1, 'Mouse Gamer RGB', 2500, 2),
(2, 'Playstation', 289000, 3),
(3, 'S20 FE', 90000, 1),
(4, 'A03 Plus', 25000, 1),
(5, 'Teclado Oferta RGB', 8500, 2),
(6, 'Auriculares Bluethooh', 5000, 3),
(7, 'Cargadir Samsung Carga Rapida', 9999, 1),
(8, 'Notebook Vaio', 500000, 3),
(9, 'Auriculares Gamer RGB+', 23000, 2),
(10, 'Monitor 24\' XLASKDJ', 35000, 1),
(11, 'Webcam Clásica', 5600, 2);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_codigo` FOREIGN KEY (`fk_codigo`) REFERENCES `fabricantes` (`codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
