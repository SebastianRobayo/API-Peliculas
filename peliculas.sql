-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-11-2022 a las 18:33:14
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

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
  `id` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha_estreno` date DEFAULT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `descripcion`, `fecha_estreno`, `categoria`) VALUES
(1, 'El conjuro', 'Pelicula de una muñeca asesina', '2010-10-31', 'Terror'),
(2, 'IT', 'Pelicula de un payaso asesino', '2016-05-12', 'Terror'),
(4, 'No respires', 'Pelicula de una persona invidente que pertenecio al ejercito', '2017-06-24', 'Suspenso'),
(5, 'Titanic', 'Pelicula de un romance imposible', '2022-11-01', 'Drama'),
(6, 'Titanic', 'Pelicula de un romance imposible', '2022-11-10', 'Drama'),
(7, 'Titanic', 'Pelicula de un romance imposible', '2022-10-31', 'Drama'),
(8, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(9, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(10, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(11, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(12, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(13, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(14, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(15, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(16, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(17, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(18, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(19, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(20, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(21, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(22, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(23, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(24, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(25, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(26, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(27, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(28, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(29, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(30, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(31, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(32, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(33, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(34, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(35, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(36, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(37, 'Titanic', 'Pelicula de un romance imposible', '1997-12-17', 'Drama'),
(38, 'Titanic', 'Pelicula de un romance imposible', '2021-12-17', 'Drama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_usuario`
--

CREATE TABLE `peliculas_usuario` (
  `id` int(11) NOT NULL,
  `usuarios` varchar(255) NOT NULL,
  `peliculas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas_usuario`
--

INSERT INTO `peliculas_usuario` (`id`, `usuarios`, `peliculas`) VALUES
(1, 'juan.arias', 'IT'),
(2, 'juan.arias', 'No respires'),
(3, 'sebasRobayo', 'No respires'),
(4, 'alerobles', 'No respires'),
(5, 'ferRodri', 'No respires'),
(6, 'ferRodri', 'El conjuro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `username`, `correo_electronico`, `contrasena`) VALUES
(1, 'Juan Sebastian', 'Arias Robayo', 'juan.arias', 'sebastianrobayog@gmail.com', '123456'),
(2, 'Juan Sebastian', 'Arias Robayo', 'sebasRobayo', 'sebastianrobayog@gmail.com', '123456'),
(3, 'Alejandra', 'Robles', 'alerobles', 'alerobles@gmail.com', '123456'),
(4, 'Fernado', 'Rodriguez', 'ferRodri', 'ferRodri@gmail.com', '123456'),
(5, 'Marcela', 'Dominguez', 'marcela.domi', 'marcela.domi@gmail.com', '123456');

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
-- Indices de la tabla `peliculas_usuario`
--
ALTER TABLE `peliculas_usuario`
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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `peliculas_usuario`
--
ALTER TABLE `peliculas_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
