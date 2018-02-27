-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2018 a las 11:21:53
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.1.14

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
('manu', '2018-02-22 16:07:16', '127.0.0.1'),
('manu', '2018-02-23 08:14:51', '127.0.0.1'),
('prueba1', '2018-02-23 09:05:52', '127.0.0.1'),
('manu', '2018-02-23 09:18:40', '127.0.0.1'),
('manu', '2018-02-23 10:02:52', '127.0.0.1'),
('prueba1', '2018-02-23 10:03:59', '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `cod` int(11) NOT NULL,
  `emisor` varchar(100) NOT NULL,
  `receptor` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `visto` tinyint(4) NOT NULL DEFAULT '0',
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`cod`, `emisor`, `receptor`, `mensaje`, `visto`, `hora`) VALUES
(1, 'prueba1', 'manu', 'ddsadadadasd dasdadasdsad dasdasdasdsadasd dasdsaasddsad', 1, '0000-00-00 00:00:00'),
(2, 'prueba1', 'manu', 'fesfseerg 54y54 y45y45y 4y45y 4y 45y 4    4y4y4y45y4yy54y4', 1, '0000-00-00 00:00:00'),
(3, 'manu', 'prueba1', 'dsadsad 3qd 32d323d3  3d3 d', 1, '0000-00-00 00:00:00'),
(4, 'prueba1', 'manu', 'fefsefesfesfe se ef ef ', 1, '0000-00-00 00:00:00'),
(5, 'manu', 'prueba1', 'ddsadadadasd sdasdadqd121dqwd q', 1, '0000-00-00 00:00:00'),
(6, 'manu', 'prueba1', 'xsxcw ssderrgreg rtgr ttg', 1, '0000-00-00 00:00:00'),
(7, 'John', 'Doe', 'john@example.com', 1, '0000-00-00 00:00:00'),
(8, 'manu', 'prueba1', 'jwqjdjqwjjweqjdewf', 1, '0000-00-00 00:00:00'),
(9, 'prueba1', 'manu', 'cdcscdscs sc sdc s sdcsd ', 1, '0000-00-00 00:00:00'),
(10, 'manu', 'prueba1', 'wefdewfwefwe', 1, '0000-00-00 00:00:00'),
(11, 'prueba1', 'manu', 'fewfewfwefewfwe', 1, '0000-00-00 00:00:00'),
(12, 'prueba1', 'manu', 'wefewfewfew', 1, '0000-00-00 00:00:00'),
(13, 'prueba1', 'manu', 'wfewfewfwefew', 1, '0000-00-00 00:00:00'),
(14, 'manu', 'prueba1', '', 1, '0000-00-00 00:00:00'),
(15, 'manu', 'prueba1', 'ewdwdwedewdwe we dewd ewd w', 1, '0000-00-00 00:00:00'),
(16, 'manu', 'prueba1', 'f4ff43f3f34f34 f43 f4 34f 43 ', 1, '0000-00-00 00:00:00'),
(17, 'manu', 'prueba1', 'f43f34f34f 34f 3f3 3f f43 f', 1, '0000-00-00 00:00:00'),
(18, 'manu', 'prueba1', 'edwdew fewf ew fwef wefw fwef w', 1, '0000-00-00 00:00:00'),
(19, 'manu', 'prueba1', 'defwew fwefwe ff fwef', 1, '0000-00-00 00:00:00'),
(20, 'manu', 'prueba1', 'f wef ewf fwfwef fwfw fe', 1, '0000-00-00 00:00:00'),
(21, 'manu', 'prueba1', ' wfwfwe few wef wf wef w', 1, '0000-00-00 00:00:00'),
(22, 'manu', 'prueba1', 'we ffwefw efw fwe wef', 1, '0000-00-00 00:00:00'),
(23, 'manu', 'prueba1', 'fw fwef wefwf wef', 1, '0000-00-00 00:00:00'),
(24, 'manu', 'prueba1', 'fwwefwef wfwef', 1, '0000-00-00 00:00:00'),
(25, 'manu', 'prueba1', 'fwefwefewf', 1, '0000-00-00 00:00:00'),
(26, 'manu', 'prueba1', 'fw fwe f', 1, '0000-00-00 00:00:00'),
(27, 'manu', 'prueba1', 'w fwe ', 1, '0000-00-00 00:00:00'),
(28, 'manu', 'prueba1', 'w ffew', 1, '0000-00-00 00:00:00'),
(29, 'manu', 'prueba1', 'w few ', 1, '0000-00-00 00:00:00'),
(30, 'manu', 'prueba1', 'fw efwfwefewef fw', 1, '0000-00-00 00:00:00'),
(31, 'manu', 'prueba1', 'f we ', 1, '0000-00-00 00:00:00'),
(32, 'manu', 'prueba1', 'wef', 1, '0000-00-00 00:00:00'),
(33, 'manu', 'prueba1', 'f wf', 1, '0000-00-00 00:00:00'),
(34, 'manu', 'prueba1', 'fw wef wef ewff efwfw f wf ', 1, '0000-00-00 00:00:00'),
(35, 'manu', 'prueba1', 'w wef', 1, '0000-00-00 00:00:00'),
(36, 'manu', 'prueba1', 'wfe', 1, '0000-00-00 00:00:00'),
(37, 'manu', 'prueba1', 'f', 1, '0000-00-00 00:00:00'),
(38, 'manu', 'prueba1', ' fw', 1, '0000-00-00 00:00:00'),
(39, 'manu', 'prueba1', 'e w ww eff', 1, '0000-00-00 00:00:00'),
(40, 'manu', 'prueba1', 'fefweewe www w f wfwe e wfew ', 1, '0000-00-00 00:00:00'),
(41, 'manu', 'prueba1', ' w w wef few w w fwe ', 1, '0000-00-00 00:00:00'),
(42, 'manu', 'prueba1', ' wfewf wew we ggwwgefweffe ', 1, '0000-00-00 00:00:00'),
(43, 'manu', 'prueba1', 'hhdhedd d jd jjd djcj jwej  jj fjfewjfjweiojfo iwejf iojwefoi jfiowjfio jw iejf ijfoiwj eiofjiwejfoi fjewj iewjf ifj oi fwjiofjoeiwjf iowjefiofje iofj iofjewiofjiwfejoifjweifjioewjiofj oiwej oiej wio jefio ', 1, '0000-00-00 00:00:00'),
(44, 'manu', 'prueba1', '', 1, '0000-00-00 00:00:00'),
(45, 'manu', 'prueba1', 'csacascascaa c as sc  casc ', 1, '0000-00-00 00:00:00'),
(46, 'manu', 'prueba1', 'vsvsdvs sd sdvsd dv', 1, '0000-00-00 00:00:00'),
(47, 'manu', 'prueba1', 'cseecwecwec', 1, '0000-00-00 00:00:00'),
(48, 'prueba1', 'manu', 'dewqwq ddd 3d 1d 1d 1', 1, '0000-00-00 00:00:00'),
(49, 'prueba1', 'manu', 'e21e12e 21e2 1e12 e21', 1, '0000-00-00 00:00:00'),
(50, 'prueba1', 'manu', 'dwdwqd qwd wqd qwd qd ', 1, '0000-00-00 00:00:00'),
(51, 'prueba1', 'manu', 'dqw wqd qw dqw', 1, '0000-00-00 00:00:00'),
(52, 'prueba1', 'manu', 'dqwaqw  q q  d dq dwq w dwqdw ', 1, '0000-00-00 00:00:00'),
(53, 'prueba1', 'manu', 'dqwqw d q', 1, '0000-00-00 00:00:00'),
(54, 'manu', 'prueba1', 'dqw dwq qwd qw qwdq ', 1, '0000-00-00 00:00:00'),
(55, 'prueba1', 'manu', 'ex12e v 1e 12ee21 e12 ', 1, '0000-00-00 00:00:00'),
(56, 'manu', 'prueba1', '12e12e12e 12e12 ', 1, '0000-00-00 00:00:00'),
(57, 'manu', 'prueba1', 'fwe ewf wef wefw fwe fw ef wwe ew fwef w', 1, '0000-00-00 00:00:00'),
(58, 'prueba1', 'manu', 'f f 3f32f2323f2f23f 2', 1, '0000-00-00 00:00:00'),
(59, 'Manu', 'prueba1', 'Jjsjsjsjsjs', 1, '0000-00-00 00:00:00'),
(60, 'manu', 'prueba1', 'rwerwrewrewre', 1, '0000-00-00 00:00:00'),
(61, 'llaguito', 'manu', 'fyjftgyjgtyfj', 1, '0000-00-00 00:00:00'),
(62, 'manu', 'llaguito', 'hola', 1, '0000-00-00 00:00:00'),
(63, 'llaguito', 'manu', 'hola', 1, '0000-00-00 00:00:00'),
(64, 'llaguito', 'manu', 'hola', 1, '0000-00-00 00:00:00'),
(65, 'manu', 'llaguito', 'ffffffff', 1, '0000-00-00 00:00:00'),
(66, 'llaguito', 'manu', 'porco', 1, '0000-00-00 00:00:00'),
(67, 'manu', 'llaguito', 'bbgbgrbgfgnbf', 1, '0000-00-00 00:00:00'),
(68, 'manu', 'llaguito', 'kjih,ijk,ij', 1, '0000-00-00 00:00:00'),
(69, 'manu', 'llaguito', 'oiÃ±ioÃ±', 1, '0000-00-00 00:00:00'),
(70, 'manu', 'llaguito', 'oÃ±ioÃ±', 1, '0000-00-00 00:00:00'),
(71, 'manu', 'llaguito', 'oiÃ±ioÃ±', 1, '0000-00-00 00:00:00'),
(72, 'manu', 'llaguito', 'oÃ±ioÃ±', 1, '0000-00-00 00:00:00'),
(73, 'manu', 'llaguito', 'opÃ±o', 1, '0000-00-00 00:00:00'),
(74, 'manu', 'llaguito', 'oÃ±o', 1, '0000-00-00 00:00:00'),
(75, 'manu', 'llaguito', 'opÃ±o', 1, '0000-00-00 00:00:00'),
(76, 'manu', 'llaguito', 'oÃ±oÃ±', 1, '0000-00-00 00:00:00'),
(77, 'manu', 'llaguito', 'oÃ±oÃ±', 1, '0000-00-00 00:00:00'),
(78, 'manu', 'llaguito', 'oÃ±o', 1, '0000-00-00 00:00:00'),
(79, 'manu', 'llaguito', 'opÃ±o', 1, '0000-00-00 00:00:00'),
(80, 'manu', 'llaguito', 'oÃ±Ã§', 1, '0000-00-00 00:00:00'),
(81, 'manu', 'llaguito', '', 1, '0000-00-00 00:00:00'),
(82, 'llaguito', 'manu', 'erthnraqethbaedrthbrhqertherqth', 1, '0000-00-00 00:00:00'),
(83, 'llaguito', 'manu', 'heerth', 1, '0000-00-00 00:00:00'),
(84, 'llaguito', 'manu', 'thrth', 1, '0000-00-00 00:00:00'),
(85, 'llaguito', 'manu', 'th', 1, '0000-00-00 00:00:00'),
(86, 'llaguito', 'manu', 'eth', 1, '0000-00-00 00:00:00'),
(87, 'llaguito', 'manu', 'et', 1, '0000-00-00 00:00:00'),
(88, 'llaguito', 'manu', 'qaeth', 1, '0000-00-00 00:00:00'),
(89, 'llaguito', 'manu', 'qerthjwrtykjtuktswkuj', 1, '0000-00-00 00:00:00'),
(90, 'llaguito', 'manu', 'yuk', 1, '0000-00-00 00:00:00'),
(91, 'llaguito', 'manu', 'wtey', 1, '0000-00-00 00:00:00'),
(92, 'llaguito', 'manu', 'k', 1, '0000-00-00 00:00:00'),
(93, 'llaguito', 'manu', 'y', 1, '0000-00-00 00:00:00'),
(94, 'llaguito', 'manu', '', 1, '0000-00-00 00:00:00'),
(95, 'llaguito', 'manu', 'yj', 1, '0000-00-00 00:00:00'),
(96, 'llaguito', 'manu', 'lÃ±r57', 1, '0000-00-00 00:00:00'),
(97, 'llaguito', 'manu', 'stryjae', 1, '0000-00-00 00:00:00'),
(98, 'llaguito', 'manu', 'w5r', 1, '0000-00-00 00:00:00'),
(99, 'llaguito', 'manu', 't', 1, '0000-00-00 00:00:00'),
(100, 'llaguito', 'manu', '', 1, '0000-00-00 00:00:00'),
(101, 'llaguito', 'manu', '', 1, '0000-00-00 00:00:00'),
(102, 'manu', 'llaguito', ' b', 1, '0000-00-00 00:00:00'),
(103, 'llaguito', 'manu', '', 1, '0000-00-00 00:00:00'),
(104, 'Manu', 'llaguito', 'Hello', 1, '0000-00-00 00:00:00'),
(105, 'llaguito', 'manu', '', 1, '0000-00-00 00:00:00'),
(106, 'llaguito', 'manu', 'dfghbzfdg', 1, '0000-00-00 00:00:00'),
(107, 'manu', 'llaguito', 'hahahhahahahaha', 1, '0000-00-00 00:00:00'),
(108, 'manu', 'llaguito', 'hola', 1, '2018-02-22 13:04:49'),
(109, 'manu', 'llaguito', 'hola cacho porcoooo', 1, '2018-02-22 13:11:18'),
(110, 'llaguito', 'manu', 'hello', 1, '2018-02-22 13:14:53'),
(111, 'llaguito', 'manu', 'hello', 1, '2018-02-22 13:16:03'),
(112, 'llaguito', 'manu', 'heeeee', 1, '2018-02-22 13:17:04'),
(113, 'llaguito', 'manu', 'hellooooooooo', 1, '2018-02-22 13:18:27'),
(114, 'manu', 'llaguito', 'eres un porco', 1, '2018-02-22 13:18:33'),
(115, 'manu', 'llaguito', 'eres un cacho porcoooo', 1, '2018-02-22 13:18:43'),
(116, 'llaguito', 'manu', 'hellllooo', 1, '2018-02-22 13:20:14'),
(117, 'llaguito', 'manu', 'helllo', 1, '2018-02-22 13:20:25'),
(118, 'llaguito', 'manu', 'helllo', 1, '2018-02-22 13:23:53'),
(119, 'manu', 'llaguito', 'helloloo', 1, '2018-02-22 13:27:37'),
(120, 'manu', 'prueba1', 'helllloooo', 1, '2018-02-23 10:04:12'),
(121, 'prueba1', 'manu', 'hellllo', 1, '2018-02-23 10:04:18'),
(122, 'prueba1', 'manu', 'eres un cacho porcoo', 1, '2018-02-23 10:04:28'),
(123, 'prueba1', 'manu', 'eres un porco', 1, '2018-02-23 10:04:36'),
(124, 'manu', 'prueba1', 'eres un porcooo', 1, '2018-02-23 10:04:43'),
(125, 'manu', 'prueba1', 'eres unn cacho porcooo', 1, '2018-02-23 10:09:02'),
(126, 'prueba1', 'manu', 'eres un cacho porcooo', 1, '2018-02-23 10:09:13'),
(127, 'manu', 'prueba1', 'ddddd', 1, '2018-02-23 10:16:40'),
(128, 'prueba1', 'manu', 'ggggg', 1, '2018-02-23 10:16:43'),
(129, 'prueba1', 'manu', 'ggggggggggg', 1, '2018-02-23 10:16:53'),
(130, 'prueba1', 'manu', 'hhhhhhh', 1, '2018-02-23 10:16:59'),
(131, 'prueba1', 'manu', 'helllooooo', 1, '2018-02-23 10:17:04'),
(132, 'prueba1', 'manu', 'helloo', 1, '2018-02-23 10:17:09'),
(133, 'prueba1', 'manu', 'ddddd', 1, '2018-02-23 10:17:16'),
(134, 'manu', 'prueba1', 'cccccc', 1, '2018-02-23 10:17:20'),
(135, 'prueba1', 'manu', 'dddddddd', 1, '2018-02-23 10:17:23'),
(136, 'prueba1', 'manu', 'helllloooo', 1, '2018-02-23 10:18:07'),
(137, 'prueba1', 'manu', 'eres un porcoooo', 1, '2018-02-23 10:18:16'),
(138, 'manu', 'prueba1', 'porque?', 1, '2018-02-23 10:18:21'),
(139, 'manu', 'prueba1', 'eres un cacho porcooo', 1, '2018-02-23 10:18:32'),
(140, 'manu', 'prueba1', 'te gustan las pollitas', 1, '2018-02-23 10:20:02'),
(141, 'prueba1', 'manu', 'noooo???', 1, '2018-02-23 10:20:14');

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
('llaguito', 'ae4d074d62c9697720e8366b597e1c63', 'Santi', 'LOBO', 'dink04@hotmail.es', NULL),
('manu', 'e8dc8ccd5e5f9e3a54f07350ce8a2d3d', 'Manuel', 'Reyes Iglesias', 'manu.couso97@gmail.com', ''),
('prueba1', 'e8dc8ccd5e5f9e3a54f07350ce8a2d3d', 'Prueba', 'Prueba', 'prueba@prueba.es', ''),
('prueba2', 'e8dc8ccd5e5f9e3a54f07350ce8a2d3d', 'Prueba', 'Prueba', 'prueba@prueba.es', NULL),
('Prueba3', 'e8dc8ccd5e5f9e3a54f07350ce8a2d3d', 'Prueba', 'Pruena', 'prueba@prueba.es', NULL),
('Yeah', '9271d6eecedd55fcfa6143a33029d496', 'Santi', 'Yeah nigga', 'dink04@hotmail.es', NULL);

--
-- Índices para tablas volcadas
--

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
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
