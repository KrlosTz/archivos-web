-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-07-2023 a las 16:56:28
-- Versión del servidor: 10.5.20-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id21041441_ferreteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`) VALUES
(1, 'Martillo', 10.99),
(2, 'Destornillador', 5.99),
(3, 'Sierra', 19.99),
(4, 'Taladro', 39.99),
(5, 'Estaño', 4.99),
(6, 'Espatula', 2.99),
(7, 'Codo', 0.99),
(8, 'Y', 0.99),
(9, 'varillas de hierro', 10.99),
(10, 'Bailejo', 4.99),
(11, 'Motosierra', 74.99),
(12, 'Rotomartillo', 90.99),
(13, 'Alicate', 3.99),
(14, 'Pulidora', 29.99),
(15, 'Cortadora de ceramica', 19.99),
(16, 'Cautin', 4.99),
(17, 'Termocontraible', 2.99),
(18, 'Soplete', 19.99),
(19, 'Varilla de poliamida', 19.99),
(20, 'Pala', 14.99),
(21, 'Alimentador de alambre', 124.99),
(22, 'bondex', 5.99),
(23, 'Resina', 9.99),
(24, 'Pegatanque', 7.99),
(25, 'Termofill', 3.99),
(26, 'Llave inglesa', 5.99),
(27, 'Tornillos', 0.99),
(28, 'Tuercas', 0.99),
(29, 'Clavos', 1.99),
(30, 'Metro', 4.99),
(31, 'Nivel', 4.99),
(32, 'Lapiz de carpintero', 0.99),
(33, 'Cincel', 4.99),
(34, 'Brocha', 2.99),
(35, 'Cinta de papel', 0.99),
(36, 'cinta aislante', 0.99),
(37, 'Cinta americana', 0.99),
(38, 'Lijadora', 5.99),
(39, 'Rastrillo', 9.99),
(40, 'Lijadora', 9.99),
(41, 'Escaleras', 24.99),
(42, 'Guantes de trabajo', 5.99),
(43, 'Casco de seguridad', 19.99),
(44, 'Mascara de proteccion', 9.99),
(45, 'Candado', 10.99),
(46, 'Bisagras', 2.99),
(47, 'Cerraduras', 4.99),
(48, 'Llave de paso', 1.99),
(49, 'Tuberia de cobre', 2.99),
(50, 'Conector electrico', 3.99),
(51, 'Bombilla', 1.99),
(52, 'Enchufe', 1.99),
(53, 'Cables electricos', 2.99),
(54, 'Destornillador', 2.99),
(55, 'Pintura', 6.99),
(56, 'Rodillos', 4.99),
(57, 'Lima', 2.99),
(58, 'Grapas', 0.99),
(59, 'Pistola de clavos', 34.99),
(60, 'Taladro percutor', 59.99),
(61, 'Brocas', 0.99),
(62, 'Hoja de sierra', 4.99),
(63, 'Abrazadera', 0.99),
(64, 'Linterna', 4.99),
(65, 'Cuerdas', 0.99),
(66, 'Tijeras', 5.99),
(67, 'Desatascador de tuberias', 19.99),
(68, 'Nitrato de plata', 39.99),
(69, 'Sellador', 7.99),
(70, 'Barniz', 5.99),
(71, 'Martillo de goma', 15.99),
(72, 'Cemento', 1.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
