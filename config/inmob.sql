-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2020 a las 11:25:14
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmob`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesores_registrados`
--

CREATE TABLE `asesores_registrados` (
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asesores_registrados`
--

INSERT INTO `asesores_registrados` (`dni`, `nombre`, `apellidos`, `direccion`, `telefono`) VALUES
('31317300V', 'ANTONIO', 'ARANA BEUZON', 'CALLE ESMERALDA BLOQUE 2 PISO 5 D', 654705847),
('77812236Q', 'ELLIOT', 'ARANA ACAL', 'BARRIADA LA PALMILLA BLOQUE 9 PISO 4, 3', 640664487),
('Y6824745S', 'GABRIEL', 'RESENDE CHAVEZ', 'BARRIADA LA PALMILLA BLOQUE 9 PISO 4, 3', 637681028);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_contacto`
--

CREATE TABLE `formulario_contacto` (
  `id_contacto` int(5) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `telefono` int(10) NOT NULL,
  `mensaje` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formulario_contacto`
--

INSERT INTO `formulario_contacto` (`id_contacto`, `nombre`, `apellidos`, `telefono`, `mensaje`) VALUES
(1, 'DAVID ', 'NUÑEZ CARMONA', 617952277, 'BUENOS DIAS TENGO INTERES EN VENDER MI CASA CON USTEDES, POR FAVOR LLAMADME. GRACIAS.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_trabajo`
--

CREATE TABLE `formulario_trabajo` (
  `id_trabajo` int(5) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `telefono` int(10) NOT NULL,
  `curriculum` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formulario_trabajo`
--

INSERT INTO `formulario_trabajo` (`id_trabajo`, `nombre`, `apellidos`, `telefono`, `curriculum`) VALUES
(1, 'PAQUI', 'PARRILLA FERRE', 639038881, 'SOY ASESORA INMOBILIARIA Y TAMBIEN COMUNITY MANAGER EXPERTA EN REDES SOCIALES, ESTARIA ENCANTADA DE FORMAR PARTE DE VUESTRO EQUIPO. GRACIAS.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `id_inmueble` int(5) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `m2` int(4) NOT NULL,
  `cuartos` int(2) NOT NULL,
  `baños` int(2) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `precio` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id_inmueble`, `tipo`, `m2`, `cuartos`, `baños`, `direccion`, `precio`) VALUES
(1, 'APARTAMENTO', 100, 3, 2, 'CALLE HABANA CASA 121', 250000),
(2, 'CASA', 250, 4, 2, 'AVENUE PONCE OF LEON', 425000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asesores_registrados`
--
ALTER TABLE `asesores_registrados`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `formulario_contacto`
--
ALTER TABLE `formulario_contacto`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `formulario_trabajo`
--
ALTER TABLE `formulario_trabajo`
  ADD PRIMARY KEY (`id_trabajo`);

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`id_inmueble`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulario_contacto`
--
ALTER TABLE `formulario_contacto`
  MODIFY `id_contacto` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `formulario_trabajo`
--
ALTER TABLE `formulario_trabajo`
  MODIFY `id_trabajo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `id_inmueble` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
