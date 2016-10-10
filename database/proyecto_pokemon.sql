-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2016 a las 19:59:26
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_pokemon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poderes`
--

CREATE TABLE `poderes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons`
--

CREATE TABLE `pokemons` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `peso` decimal(17,2) NOT NULL,
  `altura` decimal(17,2) NOT NULL,
  `caramelos` int(11) NOT NULL,
  `puntos_combate` int(11) NOT NULL,
  `vida` int(11) NOT NULL,
  `defensa` int(11) NOT NULL,
  `velocidad` int(11) NOT NULL,
  `imagen` varchar(500) NOT NULL DEFAULT '',
  `cantidad_caramelos` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemons`
--

INSERT INTO `pokemons` (`id`, `nombre`, `descripcion`, `peso`, `altura`, `caramelos`, `puntos_combate`, `vida`, `defensa`, `velocidad`, `imagen`, `cantidad_caramelos`, `created_at`, `updated_at`) VALUES
(1, 'Pikachu', 'Es de tipo electrico', '5.90', '0.41', 15, 600, 200, 200, 500, '', 85, '2016-10-10 17:56:29', '2016-10-10 22:56:29'),
(2, 'Bulbasaur', 'Es de tipo hierva y veneno.', '6.89', '0.71', 15, 400, 200, 200, 300, '', 0, '2016-09-28 01:42:04', '2016-09-28 07:42:04'),
(3, 'Charmander', 'La flama que arde en la punta de su cola es un indicador de sus emociones. La flama ondea cuando Charmander se esta divirtiendo, si el pokemon se enoja la flama arde ferozmente.', '18.70', '2.00', 25, 300, 200, 200, 400, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(4, 'Moltres', 'Moltres es un ave pokemon legendaria que tiene la habilidad de controlar el fuego. Si este pokemon se lastima, se dice, que hunde su cuerpo en el magma de un volcan para quemarse y curarse a si mismo.', '132.30', '6.07', 100, 2200, 400, 400, 500, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(5, 'Combusken', 'Combusken fortalecio sus piernas y muslos corriendo a traves de campos y montañas. La piernas de este pokemon poseen tanto fuerza como velocidad, permitiendole lanzar alrededor de 10 patadas en un segundo.', '43.00', '2.11', 50, 850, 300, 300, 300, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(6, 'Litwick', 'Mientras hace brillar su luz pretendiendo ser un guia, roba la fuerza vital de aquellos que lo siguen.', '6.80', '1.00', 25, 300, 200, 300, 100, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(7, 'Volcarona', 'Un mar de fuego engulle los alrededores de sus batallas, cada vez que este usa sus 6 alas para atacar a su rival.', '101.40', '5.03', 100, 1300, 300, 300, 500, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(8, 'Victini', 'Este pokemon genera victorias. Se dice que los entrenadores con un Victini siempre ganan, sin importar el tipo de encuentro.', '8.80', '1.04', 100, 2250, 400, 400, 500, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(9, 'Squirtle', 'El caparazon de Squirtle no es usado unicamente para proteccion. La forma redondeada del caparazon y las ondas en su superficie ayudan a minimizar la resistencia en el agua, permitiendo a este pokemon nadar a altas velocidades.', '19.80', '1.08', 25, 325, 150, 400, 210, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(10, 'Tentacool', 'El cuerpo de Tentacool esta mayormente compuesto de agua. Si este es sacado del mar comenzara a secarse de forma drastica. Si este pokemon se deshidrata, ponlo de vuelta en el oceano.', '100.30', '2.11', 25, 250, 200, 200, 400, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(11, 'Starmie', 'La secion central de Starmie, -el nucleo-, brilla intensamente en siete colores. Debido a su luminosa naturaleza, este pokemon a recibido el apodo de -gema del oceano-.', '176.40', '3.07', 50, 1500, 300, 400, 600, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(12, 'Gyarados', 'Cuando Magikarp evouciona en Gyarados, sus celulas cerebrales llevan a cabo una transformacion estructural. Se dice que dicha transformacion es para resaltar la naturaleza violenta y salvaje de este pokemon.', '518.10', '21.04', 100, 2000, 400, 300, 400, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(13, 'Marill', 'La cola llena de aceite de Marill actua como un preservador de vida. Si tu miras solo su cola flotando en el agua, es seguro que este pokemon se encuentra buceando para alimentarse de plantas acuaticas.', '18.70', '1.04', 25, 300, 300, 200, 200, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(14, 'Ludicolo', 'Ludicolo comienza a bailar tan pronto como escucha animos y musica festiva. Se dice que este pokemon aparece cuando escucha el canto de los niños en zonas de exploracion.', '121.30', '4.11', 50, 1750, 300, 300, 400, '', 0, '2016-09-23 00:01:41', '0000-00-00 00:00:00'),
(15, 'Abra', 'Detecta la presencia de sus enemigos, incluso cuando esta durmiendo. En una situación tal, se teletransporta inmediatamente a un lugar seguro.', '19.50', '0.89', 35, 600, 100, 100, 500, '', 0, '2016-09-27 23:18:36', '0000-00-00 00:00:00'),
(16, 'Drowzee', 'Come los sueños a través de las fosas nasales de sus enemigos.', '32.38', '0.92', 47, 350, 300, 200, 200, '', 0, '2016-09-27 23:18:49', '0000-00-00 00:00:00'),
(17, 'Mew', 'Es una composición genética de todos los Pokémon y puede hacerse invisible a voluntad.', '3.99', '0.41', 38, 480, 400, 400, 500, '', 0, '2016-09-27 23:19:01', '0000-00-00 00:00:00'),
(18, 'Mewtwo', 'Fué creado por la manipulación genética y no le dotaron un corazón compasivo.', '122.02', '1.85', 150, 980, 400, 600, 700, '', 0, '2016-09-27 23:19:09', '0000-00-00 00:00:00'),
(19, 'Mr. Mime', 'Convence a sus observadores mediante gestos y movientos de que lo invisible existe como si fuera real.', '54.47', '1.26', 32, 390, 200, 300, 500, '', 0, '2016-09-27 23:19:16', '0000-00-00 00:00:00'),
(20, 'Jynx', 'Seduce a la gente mediante sus movimientos de cadera.', '40.59', '1.24', 75, 680, 300, 200, 500, '', 0, '2016-09-27 23:19:21', '0000-00-00 00:00:00'),
(21, 'Bellsprout', 'Tiene una excelente flexibilidad con la que esquiva cualquier ataque y por su boca tira un líquido que derrite hasta el hierro.', '3.99', '0.62', 364, 690, 200, 200, 200, '', 0, '2016-09-27 23:19:29', '0000-00-00 00:00:00'),
(22, 'Chikorita', 'Produce ondas con su hoja que mantienen al enemigo en batalla a un margen.', '6.39', '0.68', 125, 210, 200, 300, 300, '', 0, '2016-09-27 23:19:46', '0000-00-00 00:00:00'),
(23, 'Exeggcute', 'Se compone de seis huevos que forman un grupo muy unido.', '2.49', '0.34', 355, 100, 300, 400, 200, '', 0, '2016-09-27 23:19:53', '0000-00-00 00:00:00'),
(24, 'Oddish', 'Se entierra en el suelo para absorber los nutrientes de la tierra utilizando todo su cuerpo.', '5.39', '0.32', 224, 329, 200, 300, 200, '', 0, '2016-09-27 23:19:59', '0000-00-00 00:00:00'),
(25, 'Tangela', 'Si te toca te encaja los vines con facilidad y los repone cultivandolos nuevamente si se pierde alguno.', '35.01', '0.93', 555, 247, 300, 500, 300, '', 0, '2016-09-27 23:20:04', '0000-00-00 00:00:00'),
(26, 'Paras', 'Tiene setas parásitas que crecen en su parte posterior llamada tochukaso y sirven como medicina para prolongar la vida.', '5.39', '0.31', 666, 555, 200, 300, 200, '', 0, '2016-09-27 23:20:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons_poderes`
--

CREATE TABLE `pokemons_poderes` (
  `id_pokemon` int(11) NOT NULL,
  `id_poder` int(11) NOT NULL,
  `nivel_ataque` int(11) NOT NULL,
  `defensa` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons_tipos`
--

CREATE TABLE `pokemons_tipos` (
  `id_pokemon` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `debilidad` bit(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemons_tipos`
--

INSERT INTO `pokemons_tipos` (`id_pokemon`, `id_tipo`, `debilidad`, `created_at`, `updated_at`) VALUES
(1, 1, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(2, 3, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(2, 6, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(2, 7, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(2, 9, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(2, 10, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(3, 2, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(3, 4, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(3, 5, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(3, 8, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(4, 1, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(4, 2, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(4, 4, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(4, 5, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(4, 6, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(5, 2, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(5, 4, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(5, 6, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(5, 8, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(5, 10, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(5, 11, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(6, 2, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(6, 4, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(6, 5, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(6, 8, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(6, 12, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(6, 13, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(7, 2, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(7, 4, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(7, 5, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(7, 6, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(7, 14, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(8, 2, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(8, 4, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(8, 5, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(8, 8, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(8, 10, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(8, 12, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(8, 13, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(9, 1, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(9, 3, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(9, 4, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(10, 1, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(10, 4, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(10, 7, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(10, 8, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(10, 10, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(11, 1, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(11, 3, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(11, 4, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(11, 10, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(11, 12, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(11, 13, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(11, 14, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(12, 1, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(12, 4, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(12, 5, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(12, 6, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(13, 1, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(13, 3, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(13, 4, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(13, 7, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(13, 15, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(14, 3, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(14, 4, b'0', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(14, 6, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(14, 7, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(14, 14, b'1', '2016-09-28 02:36:46', '0000-00-00 00:00:00'),
(15, 10, b'0', '2016-09-28 08:36:55', '2016-09-28 08:36:55'),
(16, 10, b'0', '2016-09-28 08:43:36', '2016-09-28 08:43:36'),
(17, 10, b'0', '2016-09-28 08:56:53', '2016-09-28 08:56:53'),
(19, 10, b'0', '2016-09-28 19:59:21', '2016-09-28 19:59:21'),
(21, 3, b'0', '2016-09-29 21:59:37', '2016-09-29 21:59:37'),
(21, 8, b'0', '2016-09-29 22:00:03', '2016-09-29 22:00:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Electrico', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(2, 'Fuego', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(3, 'Hierba', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(4, 'Agua', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(5, 'Roca', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(6, 'Volador', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(7, 'Veneno', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(8, 'Tierra', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(9, 'Hielo', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(10, 'Psiquico', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(11, 'Lucha', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(12, 'Fantasma', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(13, 'Siniestro', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(14, 'Bicho', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(15, 'Hada', '2016-09-23 00:02:18', '0000-00-00 00:00:00'),
(17, 'Ejemplo', '2016-09-28 16:56:38', '2016-09-28 21:56:38');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `poderes`
--
ALTER TABLE `poderes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pokemons_poderes`
--
ALTER TABLE `pokemons_poderes`
  ADD PRIMARY KEY (`id_pokemon`,`id_poder`),
  ADD KEY `id_poder` (`id_poder`);

--
-- Indices de la tabla `pokemons_tipos`
--
ALTER TABLE `pokemons_tipos`
  ADD PRIMARY KEY (`id_pokemon`,`id_tipo`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `poderes`
--
ALTER TABLE `poderes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pokemons`
--
ALTER TABLE `pokemons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
