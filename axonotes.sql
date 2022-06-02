-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2022 a las 04:24:26
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `axonotes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_notedetail`
--

CREATE TABLE `ar_notedetail` (
  `PKNoteDetail` int(11) NOT NULL,
  `FKNote` int(11) NOT NULL,
  `FKType` int(11) NOT NULL,
  `Texto` text NOT NULL,
  `FKStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_notes`
--

CREATE TABLE `ar_notes` (
  `PKNote` int(11) NOT NULL,
  `FKUser` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sc_user`
--

CREATE TABLE `sc_user` (
  `PKUser` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(150) NOT NULL,
  `Available` bit(1) NOT NULL DEFAULT b'0',
  `Birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ar_notedetail`
--
ALTER TABLE `ar_notedetail`
  ADD PRIMARY KEY (`PKNoteDetail`);

--
-- Indices de la tabla `ar_notes`
--
ALTER TABLE `ar_notes`
  ADD PRIMARY KEY (`PKNote`);

--
-- Indices de la tabla `sc_user`
--
ALTER TABLE `sc_user`
  ADD PRIMARY KEY (`PKUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ar_notedetail`
--
ALTER TABLE `ar_notedetail`
  MODIFY `PKNoteDetail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ar_notes`
--
ALTER TABLE `ar_notes`
  MODIFY `PKNote` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sc_user`
--
ALTER TABLE `sc_user`
  MODIFY `PKUser` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
