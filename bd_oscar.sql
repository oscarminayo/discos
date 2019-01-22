-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-01-2019 a las 12:36:26
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_oscar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discos`
--

DROP TABLE IF EXISTS `discos`;
CREATE TABLE IF NOT EXISTS `discos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `banda` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `caratula` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `discos`
--

INSERT INTO `discos` (`id`, `titulo`, `banda`, `genero`, `caratula`) VALUES
(1, 'Painkiller', 'Judas Priest', 'Heavy Metal', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/16/Judaspainkiller.JPG/220px-Judaspainkiller.JPG'),
(2, 'La leyenda de la Mancha', 'Mago de Oz', 'Folk Metal', 'https://vanitediscordde.files.wordpress.com/2009/04/mago-de-oz_la-leyenda-de-la-mancha1.jpg'),
(3, 'Agotaras', 'Saratoga', 'Heavy Metal', 'http://images.coveralia.com/audio/s/Saratoga-Agotaras-Frontal.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `contraseña`) VALUES
(1, 'oscar', 'oscar'),
(2, 'rodrigo', 'rodrigo'),
(3, 'cristian', 'cristian');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
