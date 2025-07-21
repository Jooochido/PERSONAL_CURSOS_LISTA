-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2025 a las 21:27:28
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paginaweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_curso`
--

CREATE TABLE `tm_curso` (
  `cur_id` int(11) NOT NULL,
  `cur_titulo` varchar(150) NOT NULL,
  `cur_subtitulo` varchar(150) NOT NULL,
  `cur_img` varchar(50) NOT NULL,
  `cur_url` varchar(600) NOT NULL,
  `cur_desta` int(11) NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_curso`
--

INSERT INTO `tm_curso` (`cur_id`, `cur_titulo`, `cur_subtitulo`, `cur_img`, `cur_url`, `cur_desta`, `fech_crea`, `est`) VALUES
(1, 'Curso 1', 'Subtitulo', '1.jpg', '#', 1, '2025-07-01 13:10:24', 1),
(2, 'Curso 2', 'Subtitulo', '2.jpg', '#', 1, '2025-07-02 13:10:29', 1),
(3, 'Curso basico 1', 'Subtitulo', '1.jpg', '#', 0, '2025-07-03 13:10:37', 1),
(4, 'Curso basico 2', 'Subtitulo', '2.jpg', '#', 0, '2025-07-04 13:10:41', 1),
(5, 'Curso basico 3', 'Subtitulo', '1.jpg', '#', 0, '2025-07-05 13:10:45', 1),
(6, 'Curso basico 4', 'Subtitulo', '2.jpg', '#', 0, '2025-07-06 13:10:49', 1),
(7, 'Curso basico 5', 'Subtitulo', '1.jpg', '#', 0, '2025-07-06 13:10:49', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_curso_detalle`
--

CREATE TABLE `tm_curso_detalle` (
  `det_id` int(11) NOT NULL,
  `cur_id` int(11) NOT NULL,
  `det_nom` varchar(50) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_curso_detalle`
--

INSERT INTO `tm_curso_detalle` (`det_id`, `cur_id`, `det_nom`, `est`) VALUES
(1, 1, 'PHP', 1),
(2, 1, 'MySQL', 1),
(3, 2, 'MSSQL', 1),
(4, 3, 'Angular', 1),
(5, 4, 'Angular', 1),
(6, 4, 'React', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_lenguajes`
--

CREATE TABLE `tm_lenguajes` (
  `len_id` int(11) NOT NULL,
  `len_nom` varchar(50) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_lenguajes`
--

INSERT INTO `tm_lenguajes` (`len_id`, `len_nom`, `est`) VALUES
(1, 'NodeJS', 1),
(2, 'PHP', 1),
(3, 'Angular', 1),
(4, 'Laravel', 1),
(5, 'SQL Server', 1),
(6, 'MySQL', 1),
(7, 'React', 1),
(8, 'Ionic', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_socialmedia`
--

CREATE TABLE `tm_socialmedia` (
  `sm_id` int(11) NOT NULL,
  `sm_nom` varchar(150) NOT NULL,
  `sm_icon1` varchar(50) NOT NULL,
  `sm_icon2` varchar(50) NOT NULL,
  `sm_rutaweb` varchar(250) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_socialmedia`
--

INSERT INTO `tm_socialmedia` (`sm_id`, `sm_nom`, `sm_icon1`, `sm_icon2`, `sm_rutaweb`, `est`) VALUES
(1, 'Facebook', 'fb', 'social_facebook', 'https://www.facebook.com/', 1),
(2, 'Twitter', 'tw', 'social_twitter', 'https://x.com/', 1),
(3, 'Youtube', 'pt', 'social_youtube', 'https://www.youtube.com/', 1),
(4, 'Instagram', 'ig', 'social_instagram', 'https://www.instagram.com/', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indices de la tabla `tm_curso_detalle`
--
ALTER TABLE `tm_curso_detalle`
  ADD PRIMARY KEY (`det_id`);

--
-- Indices de la tabla `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  ADD PRIMARY KEY (`len_id`);

--
-- Indices de la tabla `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  ADD PRIMARY KEY (`sm_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  MODIFY `cur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tm_curso_detalle`
--
ALTER TABLE `tm_curso_detalle`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  MODIFY `len_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
