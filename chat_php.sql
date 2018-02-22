-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2018 a las 17:09:13
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chat_php`
--
CREATE DATABASE IF NOT EXISTS `chat_php` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chat_php`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logusuarios`
--

CREATE TABLE `logusuarios` (
  `usuario` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logusuarios`
--

INSERT INTO `logusuarios` (`usuario`, `fecha`, `ip`) VALUES
('manu', '2018-02-22 16:04:07', '192.168.0.17'),
('manu', '2018-02-22 16:07:16', '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `cod` int(11) NOT NULL,
  `emisor` varchar(100) NOT NULL,
  `receptor` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `visto` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`cod`, `emisor`, `receptor`, `mensaje`, `visto`) VALUES
(1, 'prueba1', 'manu', 'ddsadadadasd dasdadasdsad dasdasdasdsadasd dasdsaasddsad', 1),
(2, 'prueba1', 'manu', 'fesfseerg 54y54 y45y45y 4y45y 4y 45y 4    4y4y4y45y4yy54y4', 1),
(3, 'manu', 'prueba1', 'dsadsad 3qd 32d323d3  3d3 d', 1),
(4, 'prueba1', 'manu', 'fefsefesfesfe se ef ef ', 1),
(5, 'manu', 'prueba1', 'ddsadadadasd sdasdadqd121dqwd q', 1),
(6, 'manu', 'prueba1', 'xsxcw ssderrgreg rtgr ttg', 1),
(7, 'John', 'Doe', 'john@example.com', 1),
(8, 'manu', 'prueba1', 'jwqjdjqwjjweqjdewf', 1),
(9, 'prueba1', 'manu', 'cdcscdscs sc sdc s sdcsd ', 1),
(10, 'manu', 'prueba1', 'wefdewfwefwe', 1),
(11, 'prueba1', 'manu', 'fewfewfwefewfwe', 1),
(12, 'prueba1', 'manu', 'wefewfewfew', 1),
(13, 'prueba1', 'manu', 'wfewfewfwefew', 1),
(14, 'manu', 'prueba1', '', 1),
(15, 'manu', 'prueba1', 'ewdwdwedewdwe we dewd ewd w', 1),
(16, 'manu', 'prueba1', 'f4ff43f3f34f34 f43 f4 34f 43 ', 1),
(17, 'manu', 'prueba1', 'f43f34f34f 34f 3f3 3f f43 f', 1),
(18, 'manu', 'prueba1', 'edwdew fewf ew fwef wefw fwef w', 1),
(19, 'manu', 'prueba1', 'defwew fwefwe ff fwef', 1),
(20, 'manu', 'prueba1', 'f wef ewf fwfwef fwfw fe', 1),
(21, 'manu', 'prueba1', ' wfwfwe few wef wf wef w', 1),
(22, 'manu', 'prueba1', 'we ffwefw efw fwe wef', 1),
(23, 'manu', 'prueba1', 'fw fwef wefwf wef', 1),
(24, 'manu', 'prueba1', 'fwwefwef wfwef', 1),
(25, 'manu', 'prueba1', 'fwefwefewf', 1),
(26, 'manu', 'prueba1', 'fw fwe f', 1),
(27, 'manu', 'prueba1', 'w fwe ', 1),
(28, 'manu', 'prueba1', 'w ffew', 1),
(29, 'manu', 'prueba1', 'w few ', 1),
(30, 'manu', 'prueba1', 'fw efwfwefewef fw', 1),
(31, 'manu', 'prueba1', 'f we ', 1),
(32, 'manu', 'prueba1', 'wef', 1),
(33, 'manu', 'prueba1', 'f wf', 1),
(34, 'manu', 'prueba1', 'fw wef wef ewff efwfw f wf ', 1),
(35, 'manu', 'prueba1', 'w wef', 1),
(36, 'manu', 'prueba1', 'wfe', 1),
(37, 'manu', 'prueba1', 'f', 1),
(38, 'manu', 'prueba1', ' fw', 1),
(39, 'manu', 'prueba1', 'e w ww eff', 1),
(40, 'manu', 'prueba1', 'fefweewe www w f wfwe e wfew ', 1),
(41, 'manu', 'prueba1', ' w w wef few w w fwe ', 1),
(42, 'manu', 'prueba1', ' wfewf wew we ggwwgefweffe ', 1),
(43, 'manu', 'prueba1', 'hhdhedd d jd jjd djcj jwej  jj fjfewjfjweiojfo iwejf iojwefoi jfiowjfio jw iejf ijfoiwj eiofjiwejfoi fjewj iewjf ifj oi fwjiofjoeiwjf iowjefiofje iofj iofjewiofjiwfejoifjweifjioewjiofj oiwej oiej wio jefio ', 1),
(44, 'manu', 'prueba1', '', 1),
(45, 'manu', 'prueba1', 'csacascascaa c as sc  casc ', 1),
(46, 'manu', 'prueba1', 'vsvsdvs sd sdvsd dv', 1),
(47, 'manu', 'prueba1', 'cseecwecwec', 1),
(48, 'prueba1', 'manu', 'dewqwq ddd 3d 1d 1d 1', 1),
(49, 'prueba1', 'manu', 'e21e12e 21e2 1e12 e21', 1),
(50, 'prueba1', 'manu', 'dwdwqd qwd wqd qwd qd ', 1),
(51, 'prueba1', 'manu', 'dqw wqd qw dqw', 1),
(52, 'prueba1', 'manu', 'dqwaqw  q q  d dq dwq w dwqdw ', 1),
(53, 'prueba1', 'manu', 'dqwqw d q', 1),
(54, 'manu', 'prueba1', 'dqw dwq qwd qw qwdq ', 1),
(55, 'prueba1', 'manu', 'ex12e v 1e 12ee21 e12 ', 1),
(56, 'manu', 'prueba1', '12e12e12e 12e12 ', 1),
(57, 'manu', 'prueba1', 'fwe ewf wef wefw fwe fw ef wwe ew fwef w', 1),
(58, 'prueba1', 'manu', 'f f 3f32f2323f2f23f 2', 1),
(59, 'Manu', 'prueba1', 'Jjsjsjsjsjs', 1),
(60, 'manu', 'prueba1', 'rwerwrewrewre', 1),
(61, 'prueba1', 'manu', 'hola cacho porcoo', 1),
(62, 'prueba1', 'manu', 'eres un cocho', 1),
(63, 'prueba1', 'manu', 'ddddddd', 1),
(64, 'prueba1', 'manu', 'porcaaaaaa', 1),
(65, 'prueba1', 'manu', 'manuuu', 1),
(66, 'manu', 'prueba1', 'ffefefefefefe', 1),
(67, 'manu', 'prueba1', 'ggggggg', 1),
(68, 'manu', 'prueba1', 'bbbbbbbbbbbbbb', 1),
(69, 'prueba1', 'manu', 'hello', 1),
(70, 'prueba1', 'manu', 'jejejjejejjejeje', 1),
(71, 'prueba1', 'manu', 'ldldldlldld', 1),
(72, 'prueba1', 'manu', 'fefefefefesfsef', 1),
(73, 'manu', 'prueba1', 'vbfdbfdbdfbdfbd', 1),
(74, 'prueba1', 'manu', 'fsfafsazfwafafasfas', 1),
(75, 'prueba1', 'manu', 'hiolaaaa', 1),
(76, 'prueba1', 'manu', 'dwdqwdwadwadwa', 1),
(77, 'prueba1', 'manu', 'ewewewqeqe', 1),
(78, 'prueba1', 'manu', 'eeeeee', 1),
(79, 'prueba1', 'manu', '', 1),
(80, 'prueba1', 'manu', 'helloo', 1),
(81, 'manu', 'prueba1', 'ddddddddddd', 1),
(82, 'manu', 'prueba1', '', 1),
(83, 'manu', 'prueba1', 'cccccccccc', 1),
(84, 'manu', 'prueba1', 'holaaaaaa', 1),
(85, 'manu', 'prueba1', 'manu', 1),
(86, 'manu', 'prueba1', 'porca', 1),
(87, 'manu', 'prueba1', 'xsxsxsxsxsxsx', 1),
(88, 'manu', 'prueba1', ' ', 1),
(89, 'manu', 'prueba1', ' ', 1),
(90, 'manu', 'prueba1', 'hfhdhdhhdhdfh', 1),
(91, 'manu', 'prueba1', 'hhhhhhhhhhhh', 1),
(92, 'manu', 'prueba1', 'hola pidola', 1),
(93, 'manu', 'prueba1', 'hthththththÃ§', 1),
(94, 'manu', 'prueba1', 'ola pidola', 1),
(95, 'manu', 'prueba1', 'vfvfvfvfvfv', 1),
(96, 'manu', 'prueba1', 'btbtbtbtbtb', 1),
(97, 'manu', 'prueba1', 'ols dodfddddd', 1),
(98, 'manu', 'prueba1', 'fedcecwecewcf', 1),
(99, 'manu', 'prueba1', 'btrbrtbrtbtr', 1),
(100, 'manu', 'prueba1', 'btbtrbtrb', 1),
(101, 'manu', 'prueba1', 'vfvfdvfdvdfvdfvfd', 1),
(102, 'manu', 'prueba1', 'hola caracola', 1),
(103, 'manu', 'prueba1', ' ', 1),
(104, 'manu', 'prueba1', 'kukukukukuk', 1),
(105, 'manu', 'prueba1', 'loololili', 1),
(106, 'manu', 'prueba1', 'hthtrhtrhrth', 1),
(107, 'manu', 'prueba1', 'fgbfbfgbfgbgf', 1),
(108, 'manu', 'prueba1', 'gtgrgtrgrgtrg', 1),
(109, 'manu', 'prueba1', 'hola cara de chco', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(100) NOT NULL,
  `contrasena` varchar(128) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fotoPerfil` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contrasena`, `nombre`, `apellidos`, `email`, `fotoPerfil`) VALUES
('manu', 'e8dc8ccd5e5f9e3a54f07350ce8a2d3d', 'Manuel', 'Reyes Iglesias', 'manu.couso97@gmail.com', NULL),
('prueba1', 'e8dc8ccd5e5f9e3a54f07350ce8a2d3d', 'Prueba', 'Prueba', 'prueba@prueba.es', NULL),
('prueba2', 'e8dc8ccd5e5f9e3a54f07350ce8a2d3d', 'Prueba', 'Prueba', 'prueba@prueba.es', NULL),
('Prueba3', 'e8dc8ccd5e5f9e3a54f07350ce8a2d3d', 'Prueba', 'Pruena', 'prueba@prueba.es', NULL),
('Yeah', '9271d6eecedd55fcfa6143a33029d496', 'Santi', 'Yeah nigga', 'dink04@hotmail.es', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `logusuarios`
--
ALTER TABLE `logusuarios`
  ADD PRIMARY KEY (`usuario`,`fecha`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`cod`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `logusuarios`
--
ALTER TABLE `logusuarios`
  ADD CONSTRAINT `logusuarios_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
