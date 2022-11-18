-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-11-2022 a las 05:38:52
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(4, 'Comedia'),
(3, 'Drama'),
(2, 'Suspenso'),
(1, 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha_estreno` date DEFAULT NULL,
  `usuarios_vista` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `descripcion`, `fecha_estreno`, `usuarios_vista`, `categoria`) VALUES
(1, 'El conjuro', 'Pelicula de una muñeca asesina', '2010-10-31', '', 'Terror'),
(2, 'IT', 'Pelicula de un payaso asesino', '2016-05-12', '', 'Terror'),
(4, 'No respires', 'Pelicula de una persona invidente que pertenecio al ejercito', '2017-06-24', '', 'Suspenso'),
(5, 'Titanic', 'Pelicula de un romance imposible', '2022-11-01', '', 'Drama'),
(6, 'Titanic', 'Pelicula de un romance imposible', '2022-11-10', '', 'Drama'),
(7, 'Titanic', 'Pelicula de un romance imposible', '2022-10-28', '', 'Drama'),
(8, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(9, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(10, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(11, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(12, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(13, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(14, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(15, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(16, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(17, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(18, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(19, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(20, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(21, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(22, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(23, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(24, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(25, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(26, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(27, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(28, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(29, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(30, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(31, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(32, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(33, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(34, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(35, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(36, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(37, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', '', 'Drama'),
(38, 'Titanic', 'Pelicula de un romance imposible', '2021-12-17', '', 'Drama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `peliculas_vistas` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `username`, `correo_electronico`, `peliculas_vistas`, `contrasena`) VALUES
(1, 'Juan Sebastian', 'Arias Robayo', 'juan.arias', 'sebastianrobayog@gmail.com', '', '123456'),
(2, 'Juan Sebastian', 'Arias Robayo', 'sebasRobayo', 'sebastianrobayog@gmail.com', '', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoria` (`categoria`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
