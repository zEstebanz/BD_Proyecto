-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2022 a las 04:28:22
-- Versión del servidor: 8.0.29
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto01_mvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--
-- Creación: 30-09-2022 a las 20:48:15
--

CREATE TABLE `categoria` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Creación: 16-09-2022 a las 03:46:53
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `confirmado` tinyint(1) NOT NULL,
  `token` varchar(60) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `password`, `telefono`, `admin`, `confirmado`, `token`) VALUES
(1, ' Esteban', 'Admin', 'admin@admin.com', '$2y$10$Vjk5dgPg9uDHOP3GLr/8XuTYtnovOspErpH/7NcBLElJA4jkdIAQC', '123456789', 1, 1, ''),
(2, ' Esteban', 'Usuario', 'usuario@usuario.com', '$2y$10$sN.YJjTXyumlhVs25aPuYOfTzBKRk7lFrizTC2UYu6u2Way8e4eWq', '123456789', 0, 1, ''),
(4, ' Damian', 'Maure', 'damianwow77@gmail.com', '$2y$10$MhSM9FXb2zZ6Mmu/v3N3KuWzESo4KA9xFKndgH/NkSd34cX0NhkIC', '2616775561', 0, 1, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
