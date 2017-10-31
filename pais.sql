-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-09-2017 a las 22:23:26
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pais`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capital`
--

CREATE TABLE `capital` (
  `id` int(10) NOT NULL,
  `fkPais` int(10) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `capital`
--

INSERT INTO `capital` (`id`, `fkPais`, `nombre`) VALUES
(1, 1, 'Canberra'),
(2, 2, 'Palikir'),
(3, 3, 'Suva'),
(4, 4, 'Majuro'),
(5, 5, 'Honiara'),
(6, 6, 'Bairiki'),
(7, 7, 'Yaren'),
(8, 8, 'Wellington'),
(9, 9, 'Koror'),
(10, 10, 'Port Moresby'),
(11, 11, 'Apia'),
(12, 12, 'Nukualofa'),
(13, 13, 'Fongafale'),
(14, 14, 'Port Vila');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `continente`
--

CREATE TABLE `continente` (
  `id` int(10) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `continente`
--

INSERT INTO `continente` (`id`, `nombre`) VALUES
(1, 'Oceanía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(10) NOT NULL,
  `fkContinente` int(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `fkContinente`, `nombre`) VALUES
(1, 1, 'Australia'),
(2, 1, 'Estados Federados de Micronesia'),
(3, 1, 'Fiji'),
(4, 1, 'Islas Marshall'),
(5, 1, 'Islas Salomón'),
(6, 1, 'Kiribati'),
(7, 1, 'Nauru'),
(8, 1, 'Nueva Zelanda'),
(9, 1, 'Palau'),
(10, 1, 'Papúa Nueva Guinea'),
(11, 1, 'Samoa'),
(12, 1, 'Tonga'),
(13, 1, ' Tuvalu'),
(14, 1, ' Vanuatu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `capital`
--
ALTER TABLE `capital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkPais` (`fkPais`);

--
-- Indices de la tabla `continente`
--
ALTER TABLE `continente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkContinente` (`fkContinente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `capital`
--
ALTER TABLE `capital`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `continente`
--
ALTER TABLE `continente`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `capital`
--
ALTER TABLE `capital`
  ADD CONSTRAINT `capital_ibfk_1` FOREIGN KEY (`fkPais`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `pais`
--
ALTER TABLE `pais`
  ADD CONSTRAINT `pais_ibfk_1` FOREIGN KEY (`fkContinente`) REFERENCES `continente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
