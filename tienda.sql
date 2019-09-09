-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 09-09-2019 a las 20:14:37
-- Versión del servidor: 5.7.25
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblDetalleVenta`
--

CREATE TABLE `tblDetalleVenta` (
  `ID` int(11) NOT NULL,
  `IDventa` int(11) NOT NULL,
  `IDproducto` int(11) NOT NULL,
  `precioUnitario` decimal(20,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descargado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblDetalleVenta`
--

INSERT INTO `tblDetalleVenta` (`ID`, `IDventa`, `IDproducto`, `precioUnitario`, `cantidad`, `descargado`) VALUES
(1, 9, 1, '300.00', 1, 0),
(2, 9, 2, '429.00', 1, 0),
(3, 9, 3, '1005.35', 1, 0),
(4, 10, 1, '300.00', 1, 0),
(5, 10, 2, '429.00', 1, 0),
(6, 10, 3, '1005.35', 1, 0),
(7, 11, 1, '300.00', 1, 0),
(8, 11, 2, '429.00', 1, 0),
(9, 11, 3, '1005.35', 1, 0),
(10, 12, 1, '300.00', 1, 0),
(11, 12, 2, '429.00', 1, 0),
(12, 12, 3, '1005.35', 1, 0),
(13, 13, 1, '300.00', 1, 0),
(14, 13, 2, '429.00', 1, 0),
(15, 13, 3, '1005.35', 1, 0),
(16, 14, 1, '300.00', 1, 0),
(17, 14, 2, '429.00', 1, 0),
(18, 14, 3, '1005.35', 1, 0),
(19, 15, 1, '300.00', 1, 0),
(20, 15, 2, '429.00', 1, 0),
(21, 15, 3, '1005.35', 1, 0),
(22, 16, 1, '300.00', 1, 0),
(23, 16, 2, '429.00', 1, 0),
(24, 16, 3, '1005.35', 1, 0),
(25, 17, 1, '300.00', 1, 0),
(26, 17, 2, '429.00', 1, 0),
(27, 17, 3, '1005.35', 1, 0),
(28, 18, 1, '300.00', 1, 0),
(29, 18, 2, '429.00', 1, 0),
(30, 18, 3, '1005.35', 1, 0),
(31, 19, 1, '300.00', 1, 0),
(32, 19, 2, '429.00', 1, 0),
(33, 19, 3, '1005.35', 1, 0),
(34, 20, 1, '300.00', 1, 0),
(35, 20, 2, '429.00', 1, 0),
(36, 20, 3, '1005.35', 1, 0),
(37, 21, 1, '300.00', 1, 0),
(38, 21, 2, '429.00', 1, 0),
(39, 21, 3, '1005.35', 1, 0),
(40, 22, 1, '300.00', 1, 0),
(41, 22, 2, '429.00', 1, 0),
(42, 22, 3, '1005.35', 1, 0),
(43, 23, 1, '300.00', 1, 0),
(44, 23, 2, '429.00', 1, 0),
(45, 23, 3, '1005.35', 1, 0),
(46, 24, 1, '300.00', 1, 0),
(47, 24, 2, '429.00', 1, 0),
(48, 24, 3, '1005.35', 1, 0),
(49, 25, 1, '300.00', 1, 0),
(50, 25, 2, '429.00', 1, 0),
(51, 25, 3, '1005.35', 1, 0),
(52, 26, 1, '300.00', 1, 0),
(53, 26, 2, '429.00', 1, 0),
(54, 26, 3, '1005.35', 1, 0),
(55, 27, 1, '300.00', 1, 0),
(56, 27, 2, '429.00', 1, 0),
(57, 27, 3, '1005.35', 1, 0),
(58, 28, 1, '300.00', 1, 0),
(59, 28, 2, '429.00', 1, 0),
(60, 28, 3, '1005.35', 1, 0),
(61, 29, 1, '300.00', 1, 0),
(62, 29, 2, '429.00', 1, 0),
(63, 29, 3, '1005.35', 1, 0),
(64, 30, 1, '300.00', 1, 0),
(65, 30, 2, '429.00', 1, 0),
(66, 30, 3, '1005.35', 1, 0),
(67, 31, 1, '300.00', 1, 0),
(68, 31, 2, '429.00', 1, 0),
(69, 31, 3, '1005.35', 1, 0),
(70, 32, 1, '300.00', 1, 0),
(71, 32, 2, '429.00', 1, 0),
(72, 32, 3, '1005.35', 1, 0),
(73, 33, 1, '300.00', 1, 0),
(74, 33, 2, '429.00', 1, 0),
(75, 33, 3, '1005.35', 1, 0),
(76, 34, 1, '300.00', 1, 0),
(77, 35, 1, '300.00', 1, 0),
(78, 36, 1, '300.00', 1, 0),
(79, 37, 1, '300.00', 1, 0),
(80, 38, 1, '300.00', 1, 0),
(81, 39, 1, '300.00', 1, 0),
(82, 40, 1, '300.00', 1, 0),
(83, 41, 1, '300.00', 1, 0),
(84, 50, 1, '300.00', 1, 0),
(85, 51, 1, '300.00', 1, 0),
(86, 52, 1, '300.00', 1, 0),
(87, 53, 1, '300.00', 1, 0),
(88, 54, 1, '300.00', 1, 0),
(89, 55, 1, '300.00', 1, 0),
(90, 56, 1, '300.00', 1, 0),
(91, 57, 1, '300.00', 1, 0),
(92, 58, 1, '300.00', 1, 0),
(93, 59, 1, '300.00', 1, 0),
(94, 60, 1, '300.00', 1, 0),
(95, 61, 1, '300.00', 1, 0),
(96, 62, 1, '300.00', 1, 0),
(97, 63, 1, '300.00', 1, 0),
(98, 64, 1, '300.00', 1, 0),
(99, 65, 1, '300.00', 1, 0),
(100, 66, 1, '300.00', 1, 0),
(101, 67, 1, '300.00', 1, 0),
(102, 68, 1, '300.00', 1, 0),
(103, 69, 1, '300.00', 1, 0),
(104, 70, 1, '300.00', 1, 0),
(105, 71, 1, '300.00', 1, 0),
(106, 72, 1, '300.00', 1, 0),
(107, 73, 1, '300.00', 1, 0),
(108, 74, 1, '300.00', 1, 0),
(109, 75, 1, '300.00', 1, 0),
(110, 76, 1, '300.00', 1, 0),
(111, 77, 1, '300.00', 1, 0),
(112, 78, 1, '300.00', 1, 0),
(113, 79, 1, '300.00', 1, 0),
(114, 80, 1, '300.00', 1, 0),
(115, 81, 1, '300.00', 1, 0),
(116, 82, 1, '300.00', 1, 0),
(117, 83, 1, '300.00', 1, 0),
(118, 84, 1, '300.00', 1, 0),
(119, 85, 1, '300.00', 1, 0),
(120, 86, 1, '300.00', 1, 0),
(121, 87, 1, '300.00', 1, 0),
(122, 88, 1, '300.00', 1, 0),
(123, 89, 1, '300.00', 1, 0),
(124, 90, 1, '300.00', 1, 0),
(125, 91, 1, '300.00', 1, 0),
(126, 92, 1, '300.00', 1, 0),
(127, 93, 1, '300.00', 1, 0),
(128, 94, 1, '300.00', 1, 0),
(129, 95, 1, '300.00', 1, 0),
(130, 96, 1, '300.00', 1, 0),
(131, 97, 1, '300.00', 1, 0),
(132, 98, 1, '300.00', 1, 0),
(133, 99, 1, '300.00', 1, 0),
(134, 100, 1, '300.00', 1, 0),
(135, 100, 2, '429.00', 1, 0),
(136, 100, 3, '1005.35', 1, 0),
(137, 101, 1, '300.00', 1, 0),
(138, 101, 2, '429.00', 1, 0),
(139, 101, 3, '1005.35', 1, 0),
(140, 102, 2, '429.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(20,2) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `nombre`, `precio`, `descripcion`, `imagen`) VALUES
(1, 'Learn PHP 7', '300.00', 'This new book on PHP 7 introduces writing solid, secure, object-oriented code in the new PHP 7: you will create a complete three-tier application using a natural process of building and testing modules within each tier. This practical approach teaches you about app development and introduces PHP features when they are actually needed rather than providing you with abstract theory and contrived examples.', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(2, 'Professional ASP.NET MVC 5 ', '429.00', 'MVC 5 is the newest update to the popular Microsoft technology that enables you to build dynamic, data-driven websites. Like previous versions, this guide shows you step-by-step techniques on using MVC to best advantage, with plenty of practical tutorials to illustrate the concepts. It covers controllers, views, and models; forms and HTML helpers; data annotation and validation; membership, authorization, and security.\r\n', 'https://images-na.ssl-images-amazon.com/images/I/51u-ERS1W8L._SX396_BO1,204,203,200_.jpg'),
(3, 'Learning Vue.js 2', '1005.35', '* Learn how to propagate DOM changes across the website without writing extensive jQuery callbacks code.\r\n* Learn how to achieve reactivity and easily compose views with Vue.js and understand what it does behind the scenes.\r\n* Explore the core features of Vue.js with small examples, learn how to build dynamic content into preexisting web applications, and build Vue.js applications from scratch.', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/7864/9781786469946.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblVentas`
--

CREATE TABLE `tblVentas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblVentas`
--

INSERT INTO `tblVentas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(1, '12345678910', '', '2019-07-22 00:00:00', 'ldaniel.crisostomo@gmail.com', '700.00', 'pendiente'),
(2, '12345678910', '', '2019-07-22 00:00:00', 'ldaniel.crisostomo@gmail.com', '700.00', 'pendiente'),
(6, 'evv98pecjp51ffi7lqmt513uk2', '', '2019-07-22 23:44:07', 'luisdcm10@gmail.com', '729.00', 'pendiente'),
(7, 'evv98pecjp51ffi7lqmt513uk2', '', '2019-07-22 23:47:05', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(8, 'evv98pecjp51ffi7lqmt513uk2', '', '2019-07-23 00:11:30', 'ldaniel.crisostomo@gmail.com', '1734.35', 'pendiente'),
(9, 'evv98pecjp51ffi7lqmt513uk2', '', '2019-07-23 00:13:50', 'ldaniel.crisostomo@gmail.com', '1734.35', 'pendiente'),
(10, 'evv98pecjp51ffi7lqmt513uk2', '', '2019-07-23 00:20:23', 'ldaniel.crisostomo@gmail.com', '1734.35', 'pendiente'),
(11, 'evv98pecjp51ffi7lqmt513uk2', '', '2019-07-23 00:21:03', 'ldaniel.crisostomo@gmail.com', '1734.35', 'pendiente'),
(12, 'evv98pecjp51ffi7lqmt513uk2', '', '2019-07-23 00:21:25', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(13, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 10:59:01', 'ldaniel.crisostomo@gmail.com', '1734.35', 'pendiente'),
(14, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 11:10:13', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(15, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:24:37', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(16, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:24:54', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(17, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:29:59', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(18, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:30:10', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(19, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:31:37', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(20, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:31:57', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(21, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:33:09', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(22, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:37:04', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(23, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:37:53', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(24, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:42:58', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(25, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:43:41', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(26, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:45:29', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(27, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:59:14', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(28, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:59:30', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(29, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 12:59:57', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(30, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:00:15', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(31, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:01:11', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(32, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:02:43', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(33, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:04:55', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(34, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:05:06', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(35, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:06:32', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(36, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:07:14', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(37, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:07:51', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(38, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:10:50', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(39, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:10:58', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(40, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:41:11', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(41, '3eorg6ef5p9mni87h4s1gfp4fv', '', '2019-07-23 13:59:38', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(42, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:16:00', 'luisdcm10@hotmail.com', '0.00', 'pendiente'),
(43, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:16:05', 'luisdcm10@hotmail.com', '0.00', 'pendiente'),
(44, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:16:05', 'luisdcm10@hotmail.com', '0.00', 'pendiente'),
(45, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:16:06', 'luisdcm10@hotmail.com', '0.00', 'pendiente'),
(46, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:16:17', 'luisdcm10@hotmail.com', '0.00', 'pendiente'),
(47, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:16:27', 'luisdcm10@hotmail.com', '0.00', 'pendiente'),
(48, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:16:28', 'luisdcm10@hotmail.com', '0.00', 'pendiente'),
(49, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:16:29', 'luisdcm10@hotmail.com', '0.00', 'pendiente'),
(50, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:16:39', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(51, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:17:46', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(52, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:21:01', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(53, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:21:02', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(54, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:21:03', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(55, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:22:43', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(56, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:22:45', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(57, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:22:45', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(58, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:22:46', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(59, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:23:07', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(60, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:23:07', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(61, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:23:09', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(62, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:24:17', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(63, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:24:17', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(64, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:24:17', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(65, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:24:19', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(66, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:24:47', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(67, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:24:48', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(68, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:24:49', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(69, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:27:07', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(70, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:27:08', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(71, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:27:09', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(72, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:27:10', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(73, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:28:22', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(74, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:31:27', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(75, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:32:19', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(76, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:33:08', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(77, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:34:32', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(78, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:42:38', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(79, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 14:59:52', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(80, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 15:00:54', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(81, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 15:01:06', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(82, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 15:02:19', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(83, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 15:06:18', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(84, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 15:09:00', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(85, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 15:09:36', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(86, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 15:10:17', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(87, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 15:11:19', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(88, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 15:12:08', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(89, 'ld1s6ht9h6ja9eikcbf8070n90', '', '2019-07-23 15:13:12', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(90, '1uph59i6ip36p2admvip18vdkn', '', '2019-07-23 22:23:09', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(91, '1uph59i6ip36p2admvip18vdkn', '', '2019-07-23 23:05:50', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(92, '1uph59i6ip36p2admvip18vdkn', '', '2019-07-23 23:53:52', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(93, '1uph59i6ip36p2admvip18vdkn', '', '2019-07-23 23:55:37', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(94, '1uph59i6ip36p2admvip18vdkn', '', '2019-07-23 23:57:16', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(95, '1uph59i6ip36p2admvip18vdkn', '', '2019-07-24 00:02:29', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(96, '1uph59i6ip36p2admvip18vdkn', '', '2019-07-24 00:04:40', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(97, '1uph59i6ip36p2admvip18vdkn', '', '2019-07-24 00:08:03', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(98, '1uph59i6ip36p2admvip18vdkn', '', '2019-07-24 00:09:15', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(99, '1uph59i6ip36p2admvip18vdkn', '', '2019-07-24 00:09:39', 'luisdcm10@hotmail.com', '300.00', 'pendiente'),
(100, 'ouccohgl6a00tq30ovsj0homsv', '', '2019-07-24 00:50:39', 'luisdcm10@hotmail.com', '1734.35', 'pendiente'),
(101, 'ouccohgl6a00tq30ovsj0homsv', '{\"id\":\"42X30612GU646132L\",\"intent\":\"CAPTURE\",\"purchase_units\":[{\"reference_id\":\"ouccohgl6a00tq30ovsj0homsv#RxzCN67I3bcwD1hD/ouRKQ==\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"1734.35\"},\"payee\":{\"email_address\":\"luisdcm10-facilitator@gmail.com\",\"merchant_id\":\"889J59D5QLX4E\"},\"description\":\"Compra de productos a Develoteca\",\"soft_descriptor\":\"PAYPAL *TESTFACILIT\",\"shipping\":{\"name\":{\"full_name\":\"test buyer\"},\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"payments\":{\"captures\":[{\"id\":\"15638403CX681913N\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"1734.35\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"MXN\",\"value\":\"1734.35\"},\"paypal_fee\":{\"currency_code\":\"MXN\",\"value\":\"84.07\"},\"net_amount\":{\"currency_code\":\"MXN\",\"value\":\"1650.28\"}},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/15638403CX681913N\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/15638403CX681913N/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/42X30612GU646132L\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2019-07-24T16:01:39Z\",\"update_time\":\"2019-07-24T16:01:39Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"test\",\"surname\":\"buyer\"},\"email_address\":\"luisdcm10-buyer@gmail.com\",\"payer_id\":\"4LJC2RSS2NHRE\",\"address\":{\"country_code\":\"MX\"}},\"create_time\":\"2019-07-24T16:01:08Z\",\"update_time\":\"2019-07-24T16:01:39Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/42X30612GU646132L\",\"rel\":\"self\",\"method\":\"GET\"}],\"status\":\"COMPLETED\"}', '2019-07-24 11:00:58', 'luisdcm10@hotmail.com', '1734.35', 'aprobado'),
(102, 'ouccohgl6a00tq30ovsj0homsv', '{\"id\":\"4WP25993300524150\",\"intent\":\"CAPTURE\",\"purchase_units\":[{\"reference_id\":\"ouccohgl6a00tq30ovsj0homsv#QqIWu2dFEEhRmlgijFHBAg==\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"429.00\"},\"payee\":{\"email_address\":\"luisdcm10-facilitator@gmail.com\",\"merchant_id\":\"889J59D5QLX4E\"},\"description\":\"Compra de productos a Develoteca\",\"soft_descriptor\":\"PAYPAL *TESTFACILIT\",\"shipping\":{\"name\":{\"full_name\":\"test buyer\"},\"address\":{\"address_line_1\":\"Calle Juarez 1\",\"admin_area_2\":\"Miguel Hidalgo\",\"admin_area_1\":\"Ciudad de Mexico\",\"postal_code\":\"11580\",\"country_code\":\"MX\"}},\"payments\":{\"captures\":[{\"id\":\"9TL30202D7376484R\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"MXN\",\"value\":\"429.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"MXN\",\"value\":\"429.00\"},\"paypal_fee\":{\"currency_code\":\"MXN\",\"value\":\"24.29\"},\"net_amount\":{\"currency_code\":\"MXN\",\"value\":\"404.71\"}},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/9TL30202D7376484R\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/9TL30202D7376484R/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4WP25993300524150\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2019-07-24T16:48:39Z\",\"update_time\":\"2019-07-24T16:48:39Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"test\",\"surname\":\"buyer\"},\"email_address\":\"luisdcm10-buyer@gmail.com\",\"payer_id\":\"4LJC2RSS2NHRE\",\"address\":{\"country_code\":\"MX\"}},\"create_time\":\"2019-07-24T16:47:19Z\",\"update_time\":\"2019-07-24T16:48:39Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4WP25993300524150\",\"rel\":\"self\",\"method\":\"GET\"}],\"status\":\"COMPLETED\"}', '2019-07-24 11:47:17', 'luisdcm10@hotmail.com', '429.00', 'completo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblDetalleVenta`
--
ALTER TABLE `tblDetalleVenta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDventa` (`IDventa`),
  ADD KEY `IDproducto` (`IDproducto`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblVentas`
--
ALTER TABLE `tblVentas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblDetalleVenta`
--
ALTER TABLE `tblDetalleVenta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblVentas`
--
ALTER TABLE `tblVentas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblDetalleVenta`
--
ALTER TABLE `tblDetalleVenta`
  ADD CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`IDventa`) REFERENCES `tblVentas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`IDproducto`) REFERENCES `tblproductos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
