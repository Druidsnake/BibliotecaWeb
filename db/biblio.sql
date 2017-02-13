-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-02-2017 a las 03:19:59
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `isbn` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `editorial` varchar(50) NOT NULL,
  `sinopsis` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`isbn`, `titulo`, `autor`, `genero`, `editorial`, `sinopsis`) VALUES
(1651512, 'Divina Comedia', 'Dante Alighieri', 'no se', 'tampoco', 'aggggggg tmr pe'),
(18151521, 'Warcraft Cronicas', 'Blizzard', 'Generox', 'Panini', 'World of Warcraft configura un universo que ha crecido a lo largo de los últimos veinte años. Lo que empezó como un juego relativamente sencillo se ha convertido en un mundo vibrante y perdurable de pleno derecho. Un mundo que recibe las visitas diarias de millones de jugadores del mundo entero.'),
(41984151, 'Poema de Gilgamesh', 'Anónimo', 'Epico', 'Ninguno', 'La historia de gilgamesh'),
(116516165, 'wachiturro una historia de cono', 'Anonimo', 'Agg', 'dsdasdasdasd', 'adasdasdasdasdasdasdasdasdasdasdasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `idreserva` int(10) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `isbn` int(10) NOT NULL,
  `fecha_desde` date NOT NULL,
  `fecha_hasta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`idreserva`, `usuario`, `isbn`, `fecha_desde`, `fecha_hasta`) VALUES
(4986, 'mailer', 165121, '2017-02-12', '2017-02-27'),
(4987, 'aaa@mail.com', 116516165, '2017-02-12', '2017-02-27'),
(4988, 'aaa@mail.com', 116516165, '2017-02-12', '2017-02-27'),
(4989, 'aaa@mail.com', 41984151, '2017-02-12', '2017-02-27'),
(4990, 'aaa@mail.com', 18151521, '2017-02-12', '2017-02-27'),
(4991, 'aaa@mail.com', 1651512, '2017-02-12', '2017-02-27'),
(4992, 'mail@mail.com', 116516165, '2017-02-12', '2017-02-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(10) NOT NULL,
  `nom1` varchar(20) DEFAULT NULL,
  `nom2` varchar(20) DEFAULT NULL,
  `ape_pa` varchar(20) DEFAULT NULL,
  `ape_ma` varchar(20) DEFAULT NULL,
  `mail` varchar(20) NOT NULL,
  `telefono` int(10) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `nivel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nom1`, `nom2`, `ape_pa`, `ape_ma`, `mail`, `telefono`, `password`, `nivel`) VALUES
(1, 'Ricardo', NULL, 'Aguinaga', 'Nuñez', 'mail@mail.com', 2932186, '123', 2),
(2, 'gdfgdfg', NULL, 'dfgdfgd', 'gdfgd', 'aaa@mail.com', 444444, '123', NULL),
(3, NULL, NULL, NULL, NULL, 'b@mail.com', NULL, '123', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`isbn`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idreserva`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idreserva` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4993;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
