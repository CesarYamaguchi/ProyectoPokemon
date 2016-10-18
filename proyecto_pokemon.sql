-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2016 a las 21:33:25
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto_pokemon`
--
CREATE DATABASE IF NOT EXISTS `proyecto_pokemon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proyecto_pokemon`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poderes`
--

DROP TABLE IF EXISTS `poderes`;
CREATE TABLE IF NOT EXISTS `poderes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons`
--

DROP TABLE IF EXISTS `pokemons`;
CREATE TABLE IF NOT EXISTS `pokemons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `peso` decimal(17,2) NOT NULL,
  `altura` decimal(17,2) NOT NULL,
  `caramelos` int(11) NOT NULL,
  `puntos_combate` int(11) NOT NULL,
  `vida` int(11) NOT NULL,
  `defensa` int(11) NOT NULL,
  `velocidad` int(11) NOT NULL,
  `imagen` varchar(500) NOT NULL,
  `cantidad_caramelos` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `pokemons`
--

INSERT INTO `pokemons` (`id`, `nombre`, `descripcion`, `peso`, `altura`, `caramelos`, `puntos_combate`, `vida`, `defensa`, `velocidad`, `imagen`, `cantidad_caramelos`, `created_at`, `updated_at`) VALUES
(1, 'Pikachu', 'Es de tipo electrico', '5.90', '0.41', 15, 500, 200, 200, 500, 'Pikachu.png', 0, '2016-10-11 05:52:07', '2016-10-11 11:52:07'),
(2, 'Bulbasaur', '', '6.89', '0.71', 15, 400, 200, 200, 300, 'Bulbasaur.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(3, 'Charmander', 'La flama que arde en la punta de su cola es un indicador de sus emociones. La flama ondea cuando Charmander se esta divirtiendo, si el pokemon se enoja la flama arde ferozmente.', '18.70', '2.00', 25, 300, 200, 200, 400, 'Charmander.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(4, 'Moltres', 'Moltres es un ave pokemon legendaria que tiene la habilidad de controlar el fuego. Si este pokemon se lastima, se dice, que hunde su cuerpo en el magma de un volcan para quemarse y curarse a si mismo.', '132.30', '6.07', 100, 2400, 400, 400, 500, 'Moltres.png', 0, '2016-10-12 15:17:39', '2016-10-12 21:17:39'),
(5, 'Combusken', 'Combusken fortalecio sus piernas y muslos corriendo a traves de campos y montañas. La piernas de este pokemon poseen tanto fuerza como velocidad, permitiendole lanzar alrededor de 10 patadas en un segundo.', '43.00', '2.11', 50, 850, 300, 300, 300, 'Combusken.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(6, 'Litwick', 'Mientras hace brillar su luz pretendiendo ser un guia, roba la fuerza vital de aquellos que lo siguen.', '6.80', '1.00', 25, 300, 200, 300, 100, 'Litwick.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(7, 'Volcarona', 'Un mar de fuego engulle los alrededores de sus batallas, cada vez que este usa sus 6 alas para atacar a su rival.', '101.40', '5.03', 100, 1300, 300, 300, 500, 'Volcarona.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(8, 'Victini', 'Este pokemon genera victorias. Se dice que los entrenadores con un Victini siempre ganan, sin importar el tipo de encuentro.', '8.80', '1.04', 100, 2250, 400, 400, 500, 'Victini.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(9, 'Squirtle', 'El caparazon de Squirtle no es usado unicamente para proteccion. La forma redondeada del caparazon y las ondas en su superficie ayudan a minimizar la resistencia en el agua, permitiendo a este pokemon nadar a altas velocidades.', '19.80', '1.08', 25, 325, 150, 400, 210, 'Squirtle.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(10, 'Tentacool', 'El cuerpo de Tentacool esta mayormente compuesto de agua. Si este es sacado del mar comenzara a secarse de forma drastica. Si este pokemon se deshidrata, ponlo de vuelta en el oceano.', '100.30', '2.11', 25, 250, 200, 200, 400, 'Tentacool.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(11, 'Starmie', 'La secion central de Starmie, -el nucleo-, brilla intensamente en siete colores. Debido a su luminosa naturaleza, este pokemon a recibido el apodo de -gema del oceano-.', '176.40', '3.07', 50, 1700, 300, 400, 600, 'Starmie.png', 0, '2016-10-13 16:00:03', '2016-10-13 22:00:03'),
(12, 'Gyarados', 'Cuando Magikarp evouciona en Gyarados, sus celulas cerebrales llevan a cabo una transformacion estructural. Se dice que dicha transformacion es para resaltar la naturaleza violenta y salvaje de este pokemon.', '518.10', '21.04', 100, 2000, 400, 300, 400, 'Gyarados.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(13, 'Marill', 'La cola llena de aceite de Marill actua como un preservador de vida. Si tu miras solo su cola flotando en el agua, es seguro que este pokemon se encuentra buceando para alimentarse de plantas acuaticas.', '18.70', '1.04', 25, 300, 300, 200, 200, 'Marill.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(14, 'Ludicolo', 'Ludicolo comienza a bailar tan pronto como escucha animos y musica festiva. Se dice que este pokemon aparece cuando escucha el canto de los niños en zonas de exploracion.', '121.30', '4.11', 50, 1750, 300, 300, 400, 'Ludicolo.png', 0, '2016-10-11 02:20:05', '2016-10-11 02:20:05'),
(16, 'Parasect', 'Parasect se sabe que infestan árboles de gran tamaño en masa y de drenaje de nutrientes de la parte inferior del tronco y las raíces. Cuando un árbol infestado muere, se mueven a otro árbol de todos a la vez.', '3.00', '3.00', 25, 300, 300, 400, 200, '047.png', 0, '2016-10-11 02:24:23', '2016-10-11 02:24:23'),
(17, 'Parasect2', 'prueba', '1.00', '2.00', 2, 2, 10, 5, 100, '047.png', 0, '2016-10-13 21:58:00', '2016-10-13 21:58:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons_poderes`
--

DROP TABLE IF EXISTS `pokemons_poderes`;
CREATE TABLE IF NOT EXISTS `pokemons_poderes` (
  `id_pokemon` int(11) NOT NULL,
  `id_poder` int(11) NOT NULL,
  `nivel_ataque` int(11) NOT NULL,
  `defensa` bit(1) NOT NULL,
  PRIMARY KEY (`id_pokemon`,`id_poder`),
  KEY `id_poder` (`id_poder`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons_tipos`
--

DROP TABLE IF EXISTS `pokemons_tipos`;
CREATE TABLE IF NOT EXISTS `pokemons_tipos` (
  `id_pokemon` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `debilidad` bit(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_pokemon`,`id_tipo`),
  KEY `id_tipo` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemons_tipos`
--

INSERT INTO `pokemons_tipos` (`id_pokemon`, `id_tipo`, `debilidad`, `created_at`, `updated_at`) VALUES
(1, 1, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(1, 8, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(2, 2, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(2, 3, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(2, 6, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(2, 7, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(2, 9, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(2, 10, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(3, 2, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(3, 4, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(3, 5, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(3, 8, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(4, 1, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(4, 2, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(4, 4, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(4, 5, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(4, 6, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(5, 2, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(5, 4, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(5, 6, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(5, 8, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(5, 10, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(5, 11, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(6, 2, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(6, 4, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(6, 5, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(6, 8, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(6, 12, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(6, 13, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(7, 2, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(7, 4, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(7, 5, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(7, 6, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(7, 14, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(8, 2, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(8, 4, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(8, 5, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(8, 8, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(8, 10, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(8, 12, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(8, 13, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(9, 1, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(9, 3, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(9, 4, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(10, 1, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(10, 4, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(10, 8, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(10, 10, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(11, 1, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(11, 3, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(11, 4, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(11, 10, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(11, 12, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(11, 13, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(11, 14, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(12, 1, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(12, 4, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(12, 5, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(12, 6, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(13, 1, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(13, 3, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(13, 4, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(13, 7, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(13, 15, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(14, 3, b'0', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(14, 6, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(14, 7, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(14, 14, b'1', '2016-10-11 01:02:32', '0000-00-00 00:00:00'),
(16, 2, b'1', '2016-10-11 07:04:18', '2016-10-11 07:04:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

DROP TABLE IF EXISTS `tipos`;
CREATE TABLE IF NOT EXISTS `tipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre`) VALUES
(1, 'Electrico'),
(2, 'Fuego'),
(3, 'Hierba'),
(4, 'Agua'),
(5, 'Roca'),
(6, 'Volador'),
(7, 'Veneno'),
(8, 'Tierra'),
(9, 'Hielo'),
(10, 'Psiquico'),
(11, 'Lucha'),
(12, 'Fantasma'),
(13, 'Siniestro'),
(14, 'Bicho'),
(15, 'Hada');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pokemons_poderes`
--
ALTER TABLE `pokemons_poderes`
  ADD CONSTRAINT `pokemons_poderes_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemons` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pokemons_poderes_ibfk_2` FOREIGN KEY (`id_poder`) REFERENCES `poderes` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pokemons_tipos`
--
ALTER TABLE `pokemons_tipos`
  ADD CONSTRAINT `pokemons_tipos_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemons` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pokemons_tipos_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tipos` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
