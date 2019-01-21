-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-01-2019 a las 10:15:17
-- Versión del servidor: 5.7.15-log
-- Versión de PHP: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agendanextu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `idEvento` int(4) NOT NULL,
  `emailUsuario` varchar(50) NOT NULL,
  `titEvento` varchar(50) NOT NULL,
  `finiEvento` date NOT NULL,
  `hiniEvento` time NOT NULL,
  `ffinEvento` date NOT NULL,
  `hfinEvento` time NOT NULL,
  `fullEvento` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`idEvento`, `emailUsuario`, `titEvento`, `finiEvento`, `hiniEvento`, `ffinEvento`, `hfinEvento`, `fullEvento`) VALUES
(14, 'wjpereda@hotmail.com', 'Entrega de Trabajo', '2019-01-23', '00:00:00', '0000-00-00', '00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `emailUsuario` varchar(50) NOT NULL,
  `nomUsuario` varchar(50) NOT NULL,
  `pswUsuario` varchar(42) NOT NULL,
  `fnacUsuario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`emailUsuario`, `nomUsuario`, `pswUsuario`, `fnacUsuario`) VALUES
('pquispe@hotmail.com', 'Paola Quispe Bolivar', 'e10adc3949ba59abbe56e057f20f883e', '1973-09-26'),
('rvalencia@hotmail.com', 'Richard Valencia Rojas', 'e10adc3949ba59abbe56e057f20f883e', '1974-03-15'),
('wjpereda@hotmail.com', 'William Pereda Pinazo', 'e10adc3949ba59abbe56e057f20f883e', '1972-12-20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`idEvento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`emailUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `idEvento` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
