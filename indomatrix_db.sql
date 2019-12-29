-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-02-2019 a las 11:25:17
-- Versión del servidor: 10.2.19-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `indomatrix_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acategorias`
--

CREATE TABLE `acategorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `acategorias`
--

INSERT INTO `acategorias` (`id`, `titulo`, `imagen`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Adhesivo Industrial', 'imagen1.png', '', 'AA', '2018-05-30 08:14:40', '2018-06-11 20:57:27'),
(5, 'Adhesivo Industrial', 'imagen1.png', '', 'BB', '2018-05-30 08:14:40', '2018-06-11 20:57:27'),
(6, 'Adhesivo Industrial', 'imagen1.png', '', 'CC', '2018-05-30 08:14:40', '2018-06-11 20:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aproductos`
--

CREATE TABLE `aproductos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `breve` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `resena` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `aproductos`
--

INSERT INTO `aproductos` (`id`, `titulo`, `breve`, `resena`, `texto1`, `texto2`, `pdf`, `imagen`, `id_categoria`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'CM-65', '<p><span style=\"color:#9a9a9a\">Ideal para ser utilizado en hilados de algod&oacute;n 100% y art&iacute;culos pesados como guardapolvos</span></p>', NULL, '<p><span style=\"color:#fe7e3d\"><strong>Descripci&oacute;n</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">El CM-65 es un almid&oacute;n modificado de la caracter&iacute;stica de nuestra l&iacute;nea de aproductos encolantes. Su particularidad es la de tener una</span><span style=\"color:#fe8212\"> viscosidad media </span><span style=\"color:#4c4c4c\">y a su vez ser lo bastante soluble, de manera tal que, con un tratamiento levemente alcalino o uno suave enzim&aacute;tico, permite removerlo en su totalidad.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Caracter&iacute;&nbsp;sticas</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buen brillo</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Alta flexibilidad</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buena solubilidad</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Usos</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">Este producto es ideal para ser utilizado en</span><span style=\"color:#fe8212\"> hilados de algod&oacute;n 100% </span><span style=\"color:#4c4c4c\">y art&iacute;culos pesados como guardapolvos, camiser&iacute;a, ropa de trabajo, lonas para recubrimientos, zapatillas, &iacute;ndigo, etc., ya que por su media viscosidad nos permite trabajar a una baja concentraci&oacute;n sin perder las caracter&iacute;sticas de recubrimiento y adhesividad que necesita una cola para este tipo de art&iacute;culos.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Apariencia</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Apariencia: polvo blanco.</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; S&oacute;lidos: 90-92%</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; pH: 6-7</span></p>', '', 'ficha.pdf', 'imagen.jpg', 1, 'AA', '2018-06-04 17:56:00', '2018-06-11 22:28:13'),
(2, 'DTX-1010', '<p><span style=\"color:#9a9a9a\">Se recomienda especialmente para aquellos artículos de títulos \r\nmedios a finos</span></p>', NULL, '<p><span style=\"color:#fe7e3d\"><strong>Descripci&oacute;n</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">El CM-65 es un almid&oacute;n modificado de la caracter&iacute;stica de nuestra l&iacute;nea de aproductos encolantes. Su particularidad es la de tener una</span><span style=\"color:#fe8212\"> viscosidad media </span><span style=\"color:#4c4c4c\">y a su vez ser lo bastante soluble, de manera tal que, con un tratamiento levemente alcalino o uno suave enzim&aacute;tico, permite removerlo en su totalidad.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Caracter&iacute;&nbsp;sticas</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buen brillo</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Alta flexibilidad</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buena solubilidad</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Usos</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">Este producto es ideal para ser utilizado en</span><span style=\"color:#fe8212\"> hilados de algod&oacute;n 100% </span><span style=\"color:#4c4c4c\">y art&iacute;culos pesados como guardapolvos, camiser&iacute;a, ropa de trabajo, lonas para recubrimientos, zapatillas, &iacute;ndigo, etc., ya que por su media viscosidad nos permite trabajar a una baja concentraci&oacute;n sin perder las caracter&iacute;sticas de recubrimiento y adhesividad que necesita una cola para este tipo de art&iacute;culos.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Apariencia</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Apariencia: polvo blanco.</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; S&oacute;lidos: 90-92%</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; pH: 6-7</span></p>', '', 'ficha.pdf', 'imagen.jpg', 1, 'CC', '2018-06-04 17:56:00', '2018-06-11 22:28:13'),
(3, 'ELVANOL T-25/T-66 (DUPONT)', '<p><span style=\"color:#9a9a9a\">Polímero vinílico especialmente ideado para el encolado en la industria textil</span></p>', NULL, '<p><span style=\"color:#fe7e3d\"><strong>Descripci&oacute;n</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">El CM-65 es un almid&oacute;n modificado de la caracter&iacute;stica de nuestra l&iacute;nea de aproductos encolantes. Su particularidad es la de tener una</span><span style=\"color:#fe8212\"> viscosidad media </span><span style=\"color:#4c4c4c\">y a su vez ser lo bastante soluble, de manera tal que, con un tratamiento levemente alcalino o uno suave enzim&aacute;tico, permite removerlo en su totalidad.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Caracter&iacute;&nbsp;sticas</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buen brillo</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Alta flexibilidad</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buena solubilidad</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Usos</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">Este producto es ideal para ser utilizado en</span><span style=\"color:#fe8212\"> hilados de algod&oacute;n 100% </span><span style=\"color:#4c4c4c\">y art&iacute;culos pesados como guardapolvos, camiser&iacute;a, ropa de trabajo, lonas para recubrimientos, zapatillas, &iacute;ndigo, etc., ya que por su media viscosidad nos permite trabajar a una baja concentraci&oacute;n sin perder las caracter&iacute;sticas de recubrimiento y adhesividad que necesita una cola para este tipo de art&iacute;culos.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Apariencia</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Apariencia: polvo blanco.</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; S&oacute;lidos: 90-92%</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; pH: 6-7</span></p>', '', 'ficha.pdf', 'imagen.jpg', 1, 'EE', '2018-06-04 17:56:00', '2018-06-11 22:28:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_contenido`
--

CREATE TABLE `banner_contenido` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banner_contenido`
--

INSERT INTO `banner_contenido` (`id`, `imagen`, `titulo`, `texto`, `created_at`, `updated_at`) VALUES
(1, 'bannercontenidos__bannerHome.jpg', '¿Por qué Indomatrix?', '<p>Por la trayectoria, responsabilidad y experiencia que nos dan 42 a&ntilde;os en la industria metal&uacute;rgica.</p>\r\n\r\n<p>Porque el costo/beneficio es muy importante a la hora de evaluar un proyecto de fabricaci&oacute;n.</p>\r\n\r\n<p>Porque brindamos servicio pre y post venta y as&iacute; garantizamos su tranquilidad. Porque a la hora de construir marcamos diferencias por innovaci&oacute;n constante de las tecnolog&iacute;as aplicadas: &nbsp;CAD-CAM-CAE. (Tecnolog&iacute;a SIEMENS)</p>', '2018-06-25 00:58:53', '2018-06-25 19:06:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_iconos`
--

CREATE TABLE `banner_iconos` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banner_iconos`
--

INSERT INTO `banner_iconos` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'bannericonos__icon1.png', '42 Años de Trayectoria', NULL, 'AA', '2018-06-25 02:00:04', '2018-06-25 02:00:04'),
(2, 'bannericonos__icon2.png', 'Servicio pre y post venta', NULL, 'BB', '2018-06-25 02:00:23', '2018-06-25 02:00:23'),
(3, 'bannericonos__icon3.png', 'Relación Costo/Beneficio', NULL, 'CC', '2018-06-25 02:00:36', '2018-06-25 02:00:36'),
(4, 'bannericonos__icon4.png', 'Innovación Constante', NULL, 'DD', '2018-06-25 02:00:51', '2018-06-25 02:00:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calidades`
--

CREATE TABLE `calidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `calidades`
--

INSERT INTO `calidades` (`id`, `titulo`, `descripcion`, `imagen`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, '<p><em>Asumiento un compromiso<br />\r\nde excelencia en la calidad<br />\r\nde nuestros productos</em></p>', '<p>Diatex es una empresa que desde sus inicios se ha dedicado a brindar a sus clientes productos de calidad y otorgarles todo el apoyo t&eacute;cnico que estos requieran. Hemos tomado un compromiso de calidad y eficiencia que quedan demostrados en cada uno de nuestros pasos.<br />\r\n<br />\r\nDiatex cuenta con una extensa variedad de productos para distintos tipos de industria. Entre los mismos podemos dividirlos y enumerarlos en dos: La rama textil y otra dedicada a la fabricaci&oacute;n de adhesivos industriales de diferentes caracter&iacute;sticas.</p>', 'imagen1.png', 'ruta', 'AA', NULL, '2018-06-13 08:04:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `titulo`, `imagen`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Encolantes', 'imagen1.png', '', 'AA', '2018-05-30 08:14:40', '2018-06-11 20:57:27'),
(2, 'Acrilatos', 'imagen2.png', '', 'BB', '2018-05-30 08:14:53', '2018-05-30 08:14:53'),
(3, 'Aprestos', 'imagen3.png', '', 'CC', '2018-05-30 08:15:07', '2018-05-30 08:15:07'),
(4, 'Suavizantes', 'imagen4.png', '', 'DD', '2018-05-30 08:15:07', '2018-05-30 08:15:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_compresors`
--

CREATE TABLE `categorias_compresors` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias_compresors`
--

INSERT INTO `categorias_compresors` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Compresores Airdin', NULL, 'AA', '2018-06-26 17:37:01', '2018-06-26 17:37:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_luminarias`
--

CREATE TABLE `categorias_luminarias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias_luminarias`
--

INSERT INTO `categorias_luminarias` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(4, NULL, 'Luminaria Led', NULL, 'AA', '2018-06-26 16:07:10', '2018-06-26 16:33:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_novedads`
--

CREATE TABLE `categorias_novedads` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias_novedads`
--

INSERT INTO `categorias_novedads` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Actualidad', NULL, 'AA', '2018-06-26 20:52:53', '2018-06-26 20:52:53'),
(2, NULL, 'Empresa', NULL, 'BB', '2018-06-26 20:58:06', '2018-06-26 20:58:06'),
(3, NULL, 'Productos', NULL, 'CC', '2018-06-26 20:58:11', '2018-06-26 20:58:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'clientes__1.jpg', 'Volkswagen', NULL, 'AA', '2018-06-26 20:01:03', '2018-06-26 20:01:03'),
(2, 'clientes__2.jpg', 'FAVRA', NULL, 'BB', '2018-06-26 20:01:13', '2018-06-26 20:01:13'),
(3, 'clientes__3.jpg', 'INDAVE', NULL, 'CC', '2018-06-26 20:01:20', '2018-06-26 20:01:20'),
(4, 'clientes__4.jpg', 'GOLDCORP', NULL, 'DD', '2018-06-26 20:02:09', '2018-06-26 20:02:09'),
(5, 'clientes__5.jpg', 'MINERA SANTA CRUZ', NULL, 'EE', '2018-06-26 20:02:18', '2018-06-26 20:02:18'),
(6, 'clientes__6.jpg', 'National Oilwell Varco', NULL, 'FF', '2018-06-26 20:02:27', '2018-06-26 20:02:27'),
(7, 'clientes__7.jpg', 'CALDERA DE VAPOR', NULL, 'GG', '2018-06-26 20:02:34', '2018-06-26 20:02:34'),
(8, 'clientes__8.jpg', 'FLOWSERVE', NULL, 'HH', '2018-06-26 20:02:42', '2018-06-26 20:03:16'),
(9, 'clientes__9.jpg', 'VORTEX DESIGN SOLUTIONS', NULL, 'II', '2018-06-26 20:02:49', '2018-06-26 20:03:33'),
(10, 'clientes__RUHRPUMPEN.png', 'RUHRPUMPEN', NULL, 'JJ', '2018-10-09 00:06:58', '2018-10-09 00:06:58'),
(11, 'clientes__YPFpng.png', 'YPF', NULL, 'KK', '2018-10-09 00:07:18', '2018-10-09 00:07:18'),
(12, 'clientes__SHELL.jpg', 'SHELL', NULL, 'LL', '2018-10-09 00:07:45', '2018-10-09 00:07:45'),
(13, 'clientes__toyota.png', 'TOYOTA', NULL, 'MM', '2018-10-09 00:08:05', '2018-10-09 00:08:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`id`, `imagen`, `titulo`, `subtitulo`, `texto`, `ruta`, `created_at`, `updated_at`) VALUES
(1, NULL, '<p style=\"text-align:center\">Producto Llave en Mano</p>', '<p style=\"text-align:center\">Todo el desarrollo en un solo lugar</p>', '<p style=\"text-align:center\">Nos especializamos en realizar todas las &aacute;reas del proceso de manufacturing de un producto industrial:</p>\r\n\r\n<p style=\"text-align:center\">INGENIER&Iacute;A &middot; DISE&Ntilde;O &middot; MODELOS PARA FUNDICI&Oacute;N &middot; MATRICES &middot; PIEZAS FUNDIDAS (aleaciones</p>\r\n\r\n<p style=\"text-align:center\">de aluminio, aceros , fundiciones gris y bronce) &middot; MECANIZADOS CNC</p>\r\n\r\n<p style=\"text-align:center\">CAD CAM&middot; MANUFACTURA DE PRODUCTOS</p>\r\n\r\n<p style=\"text-align:center\">INDOMATRIX ofrece productos de alta calidad, herramentales duraderos y precios competitivos.</p>', 'empresa', NULL, '2018-06-28 17:49:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correos`
--

CREATE TABLE `correos` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `correos`
--

INSERT INTO `correos` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Visión', '<p>&middot; Constituir una cartera comercial diversificada en n&uacute;mero de clientes y dirigida a diferentes sectores para asegurar la estabilidad.</p>\r\n\r\n<p>&middot; Consolidar las relaciones con nuevos clientes mediante b&uacute;squeda activa y conseguir el reconocimiento de sus profesionales.</p>\r\n\r\n<p>&middot; Mantener un crecimiento constante y sostenido.</p>\r\n\r\n<p>&middot; Hacer que la mejora de calidad y la innovaci&oacute;n impregnen nuestro d&iacute;a a d&iacute;a.</p>\r\n\r\n<p>&middot; Encontrar soluciones t&eacute;cnicas para el sector industrial y sus procesos productivos, de acuerdo con las nuevas tecnolog&iacute;as y materiales.</p>', 'AA', NULL, '2018-06-25 22:29:31'),
(2, '2__publications.jpg', 'Política de Calidad', '<p>INDOMATRIX est&aacute; gestionada por un ERP que ayuda a dirigir todos sus procesos y llevar un control exhaustivo, con trazabilidad inclusive, de todos los proyectos que realiza. Adicionalmente el portal Tecnonet proporciona a nuestros clientes transparencia y trazabilidad de los proyectos actuales o pasados. Nuestro sistema de gesti&oacute;n de la calidad, basado en las normas ISO 9001:2000 y EN9100, nos permite mejorar continuamente la eficacia y eficiencia de nuestros procesos y aumentar la satisfacci&oacute;n de nuestros clientes.</p>', 'CC', NULL, '2018-06-25 22:31:34'),
(3, NULL, '3', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `contrasena` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `nombre`, `email`, `contrasena`, `created_at`, `updated_at`) VALUES
(1, 'PABLO OSOLE', 'pablo@osole.es', 'pablo', '2018-06-03 09:50:41', '2018-06-03 09:50:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `tipo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'direccion', 'Calle 12 Nº 53 Berazategui, Buenos Aires, Argentina', 'aa', NULL, '2018-06-28 23:02:59'),
(2, 'telefono', '+54 11 4275-6769<br />+54 11 6002-9285', 'bb', NULL, '2018-06-28 23:03:07'),
(3, 'correo', 'ventas@indomatrix.com.ar', 'cc', NULL, '2018-11-20 16:03:56'),
(4, 'oficina', 'Juana Manso 1633 / 2° piso Oficina 3, Ciudad Autónoma de Buenos Aires', 'dd', NULL, '2018-06-28 23:03:15'),
(5, 'horario', 'Lunes a Viernes: </br> 07:00 - 16:00', 'ee', NULL, '2018-06-28 23:03:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas`
--

CREATE TABLE `descargas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `descargas`
--

INSERT INTO `descargas` (`id`, `titulo`, `subtitulo`, `texto`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'ISO 9001:2015', 'Ver Certificación', '', 'archivo1.pdf', '', NULL, NULL),
(2, 'Política de Calidad', 'Ver Certificación', '', 'archivo2.pdf', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destacados`
--

CREATE TABLE `destacados` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `destacados`
--

INSERT INTO `destacados` (`id`, `titulo`, `texto`, `imagen`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, '<p>LUMINARIA LED</p>', '<p>Somos los &uacute;nicos representantes en el pa&iacute;s &nbsp;de la firma &ldquo;DUPONT Chemicals Company&rdquo;. Tenemos a nuestro cargo la comercializaci&oacute;n de los productos ELVANOL T-25 y ELVANOL T-66, alcoholes polivin&iacute;licos desarrollados especialmente.</p>', 'destacados__1.jpg', 'luminaria/4', 'DD', NULL, '2018-07-01 01:20:51'),
(2, '<p>AIRDIN COMPRESORES</p>', '<p>Fabricaci&oacute;n de adhesivos industriales de diferentes caracter&iacute;sticas cubriendo las distintas gamas de pegado y maquinarias tales como cart&oacute;n corrugado, cerrado de cajas, pegado de estuches, trabajos de imprenta, etiquetado, carpinter&iacute;a.</p>', 'destacados__2.jpg', 'compresor/1', 'CC', NULL, '2018-07-01 01:22:19'),
(3, '<p>MODELOS PARA FUNDICI&Oacute;N</p>', '<p>Contamos con un equipo de ingenieros y t&eacute;cnicos expertos en el rubro, capacitados para comprender las necesidades de nuestros clientes, y as&iacute; poder ofrecer las soluci&oacute;n a medida apropiada.</p>', 'destacados__3.jpg', 'modelos/1', 'AA', NULL, '2018-07-01 01:19:39'),
(4, '<p>MECANIZADO DE PIEZAS</p>', '<p>Contamos con un equipo de ingenieros y t&eacute;cnicos expertos en el rubro, capacitados para comprender las necesidades de nuestros clientes, y as&iacute; poder ofrecer las soluci&oacute;n a medida apropiada.</p>', 'destacados__4.jpg', 'modelos/2', 'BB', NULL, '2018-07-01 01:21:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `politica` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `titulo`, `titulo2`, `texto`, `texto2`, `imagen`, `politica`, `descripcion`, `imagen2`, `created_at`, `updated_at`) VALUES
(1, '<p>Nuestra Historia</p>', '<p>Una vida de Experiencias Industriales</p>', '<p>INDOMATRIX es una empresa familiar altamente tecnificada y con recursos humando capacitados que son el principal activo, para aplicar t&eacute;cnicas de avanzadas en los procesos productivos. Asumimos el compromiso de seguir incorporando tecnolog&iacute;a de punta para brindar m&aacute;s y mejores servicios a nuestros clientes, desarrollando junto a ellos la responsabilidad de mantener est&aacute;ndares de calidad a nivel internacional.</p>\r\n\r\n<p>Mi padre, Carlos Ort&iacute;z comienza la historia de nuestra actividad en la localidad de Bernal.</p>\r\n\r\n<p>A los dos a&ntilde;os construye un taller m&aacute;s grande, tambi&eacute;n en la localidad de Bernal, en el fondo de su vivienda personal. Desde all&iacute;, sigui&oacute; especializ&aacute;ndose en v&aacute;lvulas, y a incorporar el rubro de bombas centrifugas e impulsores.</p>\r\n\r\n<p>A&ntilde;os m&aacute;s tarde adquiere el terreno lindero y es en esta etapa cuando yo, Daniel Ortiz, me incorporo a las actividades.</p>\r\n\r\n<p>Luego de mi incorporaci&oacute;n, decidimos realizar una ampliaci&oacute;n del taller actual y comienzamos con la tecnificaci&oacute;n e incorporaci&oacute;n de tecnolog&iacute;a. La experiencia y las nuevas tendencias tecnol&oacute;gicas producen un cambio sustancial en la visi&oacute;n estrat&eacute;gica y se mejoran y adecuan las t&eacute;cnicas milenarias del buen arte, logrando los primeros modelos mecanizados CNC, con la incorporaci&oacute;n de nuestra primer frezadora de torreta CNC Bridgeport.</p>\r\n\r\n<p>Incursionamos en la idea y realizaci&oacute;n de desarrollo de piezas industriales a nivel integral, dise&ntilde;o, desarrollo y producci&oacute;n mecanizada.</p>', '', 'empresa__fund 3.jpg', '<p>Pol&iacute;tica de Calidad</p>', '<p>INDOMATRIX est&aacute; gestionada por un ERP que ayuda a dirigir todos sus procesos y llevar un control exhaustivo, con trazabilidad inclusive, de todos los proyectos que realiza. Adicionalmente el portal Tecnonet proporciona a nuestros clientes transparencia y trazabilidad de los proyectos actuales o pasados. Nuestro sistema de gesti&oacute;n de la calidad, basado en las normas ISO 9001:2000 y EN9100, nos permite mejorar continuamente la eficacia y eficiencia de nuestros procesos y aumentar la satisfacci&oacute;n de nuestros clientes.</p>', 'empresa__publications.jpg', NULL, '2018-07-19 06:10:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipamientos`
--

CREATE TABLE `equipamientos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `texto` text COLLATE utf8_unicode_ci NOT NULL,
  `orden` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci NOT NULL,
  `id_producto` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias_modelos`
--

CREATE TABLE `galerias_modelos` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `seccion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_productos_modelos` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `galerias_modelos`
--

INSERT INTO `galerias_modelos` (`id`, `imagen`, `titulo`, `texto`, `fecha`, `orden`, `seccion`, `id_productos_modelos`, `created_at`, `updated_at`) VALUES
(10, 'galeriamodelo__2.jpg', 'Modelos de bombas  y válvulas con sus cajas de noyos', NULL, NULL, 'AA', NULL, 6, '2018-07-06 05:54:03', '2018-07-06 05:54:03'),
(11, 'galeriamodelo__2017-05-03-22-37-06.jpg', 'MODELO Y PIEZA LOGRADA DE BOMBA BIPARTIDA DOBLE SUCCION', NULL, NULL, 'AA', NULL, 6, '2018-07-06 05:57:35', '2018-07-06 05:57:35'),
(12, 'galeriamodelo__2018-05-21_23.06.04.jpg', 'DIFUSORES PARA BOMBAS .modelos y piezas resultantes', NULL, NULL, 'CC', NULL, 6, '2018-07-09 04:04:21', '2018-07-09 04:04:21'),
(13, 'galeriamodelo__2013-10-09 15.26.09.jpg', 'Piezas resultantes de BOMBA SUMERGIBLE.(tazones , impulsores y difusor)', NULL, NULL, 'DD', NULL, 6, '2018-07-09 04:07:00', '2018-07-09 04:07:00'),
(14, 'galeriamodelo__Foto0527.jpg', 'MODELO DE ALUMINIO MECANIZADO CNC', NULL, NULL, 'AA', NULL, 8, '2018-07-09 04:12:34', '2018-07-09 04:12:34'),
(15, 'galeriamodelo__2014-03-27 08.50.17.jpg', 'MODELOS DE ALUMINIO PARA VALVULAS ESFERICAS', NULL, NULL, 'BB', NULL, 8, '2018-07-09 04:13:27', '2018-07-09 04:13:27'),
(16, 'galeriamodelo__valvulasmecanizadas.jpg', 'Modelos de aluminio para  valvulas', NULL, NULL, 'CC', NULL, 8, '2018-07-09 04:15:27', '2018-07-09 04:15:27'),
(17, 'galeriamodelo__DSC02254.JPG', 'Modelos de aluminio mecanizados CNC de esferas con muñon', NULL, NULL, 'DD', NULL, 8, '2018-07-09 04:17:25', '2018-07-09 04:17:25'),
(18, 'galeriamodelo__2014-08-01 09.46.15.jpg', 'Modelo de madera mecanizado CNC para MUELA MINERA', NULL, NULL, 'AA', NULL, 11, '2018-08-14 03:29:20', '2018-08-14 03:29:20'),
(19, 'galeriamodelo__DSC04428.JPG', 'Modelo de madera para esfera de válvula esférica', NULL, NULL, 'bb', NULL, 11, '2018-08-14 03:31:47', '2018-08-14 03:31:47'),
(20, 'galeriamodelo__DSC06513.jpg', 'Modelo de madera de cuña y torre para válvula esclusa', NULL, NULL, 'CC', NULL, 11, '2018-08-14 03:34:12', '2018-08-14 03:34:12'),
(21, 'galeriamodelo__modelos-de impulsor de cgran caudal.jpg', 'Modelo en madera de impulsor para condiciones extremas', NULL, NULL, 'DD', NULL, 11, '2018-08-14 03:36:52', '2018-08-14 03:36:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias_novedads`
--

CREATE TABLE `galerias_novedads` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `extracto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ficha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_productos_novedads` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `galerias_novedads`
--

INSERT INTO `galerias_novedads` (`id`, `imagen`, `titulo`, `extracto`, `texto`, `ficha`, `fecha`, `orden`, `id_productos_novedads`, `created_at`, `updated_at`) VALUES
(1, 'galerianovedad__sliderNovedad.jpg', NULL, NULL, NULL, NULL, NULL, 'AA', 1, '2018-06-26 22:35:50', '2018-06-28 22:40:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_clientes`
--

CREATE TABLE `home_clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `orden` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `pdf` text COLLATE utf8_unicode_ci NOT NULL,
  `orden` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`id`, `titulo`, `pdf`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Titulo', 'PDF', 'ord', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `nombre`, `imagen`, `tipo`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'header', 'logos__header.png', 'header', 'AA', NULL, '2018-06-21 04:03:27'),
(2, 'footer', 'logos__footer.png', 'footer', 'BB', NULL, '2018-06-21 04:03:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `orden` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `nombre`, `descripcion`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Home', 'AA', NULL, NULL),
(2, 'Empresa', 'Empresa', 'BB', NULL, NULL),
(3, 'Productos Luminarias', 'Productos Luminarias', 'CC', NULL, '2018-06-28 22:18:49'),
(4, 'Compresores', 'Compresores', 'DD', NULL, '2018-06-28 22:19:13'),
(5, 'Modelos', 'Modelos', 'EE', NULL, '2018-06-28 22:20:03'),
(6, 'Novedades', 'Novedades', 'FF', NULL, '2018-06-28 22:20:27'),
(7, 'Clientes', 'Clientes', 'DD', NULL, '2018-06-28 22:19:13'),
(8, 'Redes Sociales', 'Redes Sociales', 'EE', NULL, '2018-06-28 22:20:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_29_213140_create_redes_table', 1),
(4, '2018_04_29_213158_create_metadatos_table', 1),
(5, '2018_04_29_213216_create_sliders_table', 1),
(6, '2018_04_29_213239_create_destacados_table', 1),
(7, '2018_04_29_213253_create_datos_table', 1),
(8, '2018_04_29_213310_create_logos_table', 1),
(9, '2018_04_29_213326_create_empresas_table', 1),
(10, '2018_04_29_213344_create_equipamientos_table', 1),
(11, '2018_04_29_213400_create_servicios_table', 1),
(12, '2018_04_29_213418_create_clientes_table', 1),
(13, '2018_04_29_213549_create_descargas_table', 1),
(14, '2018_04_29_213638_create_home_clientes_table', 1),
(15, '2018_05_10_185158_create_productos_table', 1),
(18, '2018_05_17_145758_create_contenidos_table', 1),
(19, '2018_05_17_145826_create_categorias_table', 1),
(20, '2018_05_17_151858_create_listas_table', 1),
(22, '2018_05_10_185258_create_cuentas_table', 3),
(27, '2018_05_10_185258_create_productos_table', 4),
(28, '2018_05_10_185258_create_galerias_table', 5),
(29, '2018_05_10_185258_create_novedades_table', 5),
(30, '2018_05_10_185258_create_calidades_table', 6),
(56, '2014_10_12_100000_create_banner_contenido_table', 8),
(57, '2014_10_12_100000_create_banner_iconos_table', 8),
(58, '2014_10_12_100000_create_categorias_compresores_table', 8),
(59, '2014_10_12_100000_create_categorias_luminarias_table', 8),
(60, '2014_10_12_100000_create_categorias_novedads_table', 8),
(61, '2014_10_12_100000_create_clientes_table', 8),
(62, '2014_10_12_100000_create_modelos_contenidos_table', 9),
(63, '2014_10_12_100000_create_modelos_galerias_table', 9),
(65, '2014_10_12_100000_create_publicacions_table', 10),
(66, '2014_10_12_100000_create_tiempo_table', 10),
(67, '2014_10_12_100000_create_productos_compresors_table', 11),
(68, '2014_10_12_100000_create_productos_luminarias_table', 11),
(69, '2014_10_12_100000_create_productos_novedads_table', 11),
(70, '2015_10_12_100000_create_productos_compresors_table', 12),
(71, '2015_10_12_100000_create_productos_luminarias_table', 12),
(72, '2015_10_12_100000_create_productos_novedads_table', 12),
(73, '2015_10_12_100000_create_galerias_novedads_table', 13),
(75, '2015_10_12_100000_create_galerias_modelos_table', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos_contenidos`
--

CREATE TABLE `modelos_contenidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `seccion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `modelos_contenidos`
--

INSERT INTO `modelos_contenidos` (`id`, `titulo`, `texto`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 'Modelos para Fundición', '<p>A partir de los datos suministrados por el cliente (en formato CAD 2D CAD 3D, planos, piezas propias existentes o prototipos,&nbsp;nuestra oficina t&eacute;cnica realiza un estudio de viabilidad y adaptaci&oacute;n para cada PIEZA FUNDIDA, de acuerdo con las indicaciones y criterios de las fundiciones y el cliente final, detectando inconvenientes y proponiendo posibles mejoras. S&oacute;lo entonces comienza el plan de producci&oacute;n, empleando la metodolog&iacute;a necesaria para garantizar la calidad y plazo de entrega exigido, con controles de verificaci&oacute;n intermedia propios de INDOMATRIX S.A. y en algunos casos del cliente</p>', 1, NULL, '2018-06-30 01:34:49'),
(2, 'Mecanizado de Piezas', '<p>&raquo; Mecanizados CNC</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&raquo; MECANIZADO 3D: Desde 2002 hemos incorporado a nuestro sistema productivo el mecanizado de modelo y cajas de noyos generados a partir de dise&ntilde;os con sistemas CAD-CAM. Con esto optimizamos al m&aacute;ximo la calidad dimensional de los mismos y nos permite dominar en su totalidad las formas en el espacio con total exactitud.&nbsp;Excelencia en el producto y satisfacci&oacute;n del cliente a trav&eacute;s de este sistema que revolucion&oacute; las formas</p>\r\n\r\n<p>&raquo; Mecanizados en bajas, medianas y altas series</p>\r\n\r\n<p>&raquo; Torner&iacute;a de precisi&oacute;n</p>\r\n\r\n<p>&raquo; Mecanizados convencionales</p>', 2, NULL, '2018-06-28 21:52:00'),
(3, 'Indomatrix Energía', '<p><strong>Creamos un mundo verde junto a vosotros</strong></p>\r\n\r\n<p>Diez motivos para cambiar a la iluminaci&oacute;n LED<br />\r\n&nbsp;</p>\r\n\r\n<p>1. &nbsp; Ahorro energ&eacute;tico<br />\r\n2. &nbsp; Respeto al medio ambiente<br />\r\n3. &nbsp; Reducci&oacute;n de emisiones de CO2<br />\r\n4. &nbsp; Tecnolog&iacute;a que se adapta a nuestras necesidades<br />\r\n5. &nbsp; Sin radiaciones potencialmente nocivas<br />\r\n6. &nbsp; 50.000 horas de luz<br />\r\n7. &nbsp; Variedad crom&aacute;tica<br />\r\n8. &nbsp; Resistencia a las vibraciones<br />\r\n9. &nbsp; Mayor control de la distribuci&oacute;n de la luz<br />\r\n10. Capacidad de respuesta m&aacute;s r&aacute;pida</p>', 3, NULL, '2018-06-28 16:40:07'),
(4, 'Calibres de Control', '<ul>\r\n	<li>&raquo; Dise&ntilde;amos y construimos&nbsp;<em>&Uacute;tiles de Control Dimensional</em></li>\r\n	<li>&raquo; Ofrecemos soluci&oacute;n a los sobrecostos por falta de calidad dimensional</li>\r\n	<li>&raquo; En el sector metal mec&aacute;nico, automotor, aeron&aacute;utico y naval, los costos por la falta de control dimensional y&nbsp;la recuperaci&oacute;n de piezas producidas con defectos, es el principal causante de bajas en las productividad</li>\r\n	<li>&raquo; Con nuestros &uacute;tiles de control mejorar&aacute; la calidad, la productividad y la eficiencia</li>\r\n	<li>&raquo; Trabajamos para ofrecer la mejor herramienta de control, hecha a medida y pensada para cada caso y cada&nbsp;necesidad</li>\r\n	<li><em>&raquo; Nuestros servicios</em>:</li>\r\n	<li>&nbsp; &nbsp; &raquo;&nbsp;<a href=\"http://www.megamodelsa.com.ar/calibres-de-control.php\"><span style=\"color:null\">Calibres de control</span></a><span style=\"color:null\">&nbsp;p</span>ara todo tipo de piezas</li>\r\n	<li>&nbsp; &nbsp; &raquo;&nbsp;Presentadores, cubings y galgas pasa/ no pasa</li>\r\n	<li>&nbsp; &nbsp; &raquo;&nbsp;Construcci&oacute;n de prototipos</li>\r\n	<li>&nbsp; &nbsp; &raquo;&nbsp;Ingenier&iacute;a inversa</li>\r\n</ul>', 4, NULL, '2018-06-28 16:53:54'),
(5, 'Mecanizados', '<p>&raquo; Mecanizados CNC</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&raquo; MECANIZADO 3D: Desde 2002 hemos incorporado a nuestro sistema productivo el mecanizado de modelo y cajas de noyos generados a partir de dise&ntilde;os con sistemas CAD-CAM. Con esto optimizamos al m&aacute;ximo la calidad dimensional de los mismos y nos permite dominar en su totalidad las formas en el espacio con total exactitud.&nbsp;Excelencia en el producto y satisfacci&oacute;n del cliente a trav&eacute;s de este sistema que revolucion&oacute; las formas</p>\r\n\r\n<p>&raquo; Mecanizados en bajas, medianas y altas series</p>\r\n\r\n<p>&raquo; Torner&iacute;a de precisi&oacute;n</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&raquo; Mecanizados convencionales</p>', 5, NULL, '2018-06-28 19:57:39'),
(6, 'Matricería', '<p><span style=\"font-size:18px\"><strong>&iexcl;&iexcl;&iexcl; TRANSFORMAMOS SUS IDEAS EN REALIDADES CONCRETAS !!!</strong></span></p>\r\n\r\n<p><br />\r\nDesarrollo de nuevos productos desde la etapa de dise&ntilde;o industrial hasta la fabricaci&oacute;n de producto final, pasando por todas las instancias previas, ingenier&iacute;a, ensayos, prototipos r&aacute;pidos funcionales.</p>', 6, NULL, '2018-06-28 20:29:48'),
(7, 'Servicios de Fundición', '<p>&raquo; Aluminio: Moldeo manual, semiautom&aacute;tico.</p>\r\n\r\n<p>&raquo; Coquillado</p>\r\n\r\n<p>&raquo; Hierro Gris y Nodular: Moldeo manual, semiautom&aacute;tico, autom&aacute;tico, shell molding</p>\r\n\r\n<p>&raquo; Aceros A216: aleados, inoxidables. Calidades CF8M y DUPLEX</p>', 7, NULL, '2018-06-28 20:31:29'),
(8, 'Epoxies / Composites', '<p>&raquo; &Aacute;rea de trabajo climatizada.</p>\r\n\r\n<p>&raquo; Moldes y modelos ep&oacute;xicos</p>\r\n\r\n<p>&raquo; Reproducciones epoxie</p>\r\n\r\n<p>&raquo; Moldes en PRFV</p>\r\n\r\n<p>&raquo; Reproducciones en pl&aacute;stico reforzado en fibra de vidrio (PRFV)</p>\r\n\r\n<p>&raquo; COMPOSITES ( epoxies y fibra de carbono )</p>', 8, NULL, '2018-06-28 20:34:05'),
(9, 'Ingeniería', '<p>&raquo;&nbsp;Servicios de ingenier&iacute;a aportando soluciones adecuadas a cada necesidad, proveyendo los&nbsp;siguientes servicios para &aacute;reas de Ingenier&iacute;a, Desarrollo y Manufactura:</p>\r\n\r\n<p>&nbsp; &nbsp; &raquo; Generaci&oacute;n y Administraci&oacute;n de Documentaci&oacute;n T&eacute;cnica CAD</p>\r\n\r\n<p>&nbsp; &nbsp; &raquo; Consultor&iacute;a de Ingenier&iacute;a en C&aacute;lculo y Simulaci&oacute;n (CAE)</p>\r\n\r\n<p>&nbsp; &nbsp; &raquo; Asesoramiento de Normas para equipos sometidos a presi&oacute;n (API, ASME, BS)</p>\r\n\r\n<p>&raquo; Consultor&iacute;a de Ingenier&iacute;a y Dise&ntilde;o Industrial</p>\r\n\r\n<p>&raquo; Modelo 3D</p>', 9, NULL, '2018-06-28 21:21:01'),
(10, 'Desarrollo de Ideas', '<p><span style=\"font-size:20px\">&iexcl;&iexcl;&iexcl; TRANSFORMAMOS SUS IDEAS EN REALIDADES CONCRETAS !!!</span></p>\r\n\r\n<p>&raquo; Desarrollo de nuevos productos desde la etapa de dise&ntilde;o industrial hasta la fabricaci&oacute;n de producto final, pasando por todas las instancias previas:</p>\r\n\r\n<p>&raquo; <em>Ingenier&iacute;a</em></p>\r\n\r\n<p>&raquo; <em>ensayos</em></p>\r\n\r\n<p>&raquo; <em>prototipos r&aacute;pidos funcionales</em></p>\r\n\r\n<p>&raquo; <strong>Piezas Especiales</strong></p>', 10, NULL, '2018-06-28 21:33:10'),
(11, 'Fabricación de máquinas especiales', '<p>&raquo; LIJABAND M-300: lijadora de banda ancho 300 x 1436 en forma dual vertical y horizontal</p>\r\n\r\n<p>&raquo; ROUTERS LIVIANOS: CNC para mecanizado en madera, telgopor, pl&aacute;sticos y materiales livianos</p>\r\n\r\n<p>&raquo; ROUTERS SEMIPESADOS: CNC para mecanizado de metales como aluminio y fundici&oacute;n</p>', 11, NULL, '2018-10-09 00:10:53'),
(12, 'Compresores Airdin', 'Textos', 12, NULL, NULL),
(13, 'Minería', '<p><span style=\"color:#000000\"><strong>Division MINERIA</strong></span></p>\r\n\r\n<p>Tenemos amplia EXPERIENCIA y realizamos proyectos de&nbsp;sustitucion de importaciones de piezas y partes componentes metalicas fundidas en materiales especificos&nbsp;</p>\r\n\r\n<p>antidesgaste , como ser aceros al manganeso , duplex , superduplex , hastelloy , bronces al aluminio por ejemplo AG200&nbsp;</p>\r\n\r\n<p>Aplicamos ingenieria inversa desde la pieza o plano o conjunto ensamblado de BOMBAS, IMPULSORES, BOMBAS SUMERGIBLES , TAZONES,&nbsp;</p>\r\n\r\n<p>MANTOS CONCAVOS Y COVEXOS , MUELAS TRITURADORAS entre otras .menores encontramos PIN BOLTERS , PIN HOLDERS , SLIDERS ,</p>\r\n\r\n<p>ESTRUCTURAS METALIZAS en aceros soldados y mecanizados CNC .</p>\r\n\r\n<p>ESTAMOS HOMOLOGADOS COMO PROVEEDORES MINEROS EN SECRETARIA DE ENERGIA Y MINERIA DE LA NACION .</p>', 13, NULL, '2018-06-28 21:38:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos_galerias`
--

CREATE TABLE `modelos_galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `seccion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `modelos_galerias`
--

INSERT INTO `modelos_galerias` (`id`, `imagen`, `imagen1`, `imagen2`, `titulo`, `orden`, `seccion`, `created_at`, `updated_at`) VALUES
(6, 'modelogaleria__1.jpg', 'modelogaleria__Foto0555.jpg', 'modelogaleria__2017-05-03-22-37-06.jpg', '<p>ESPECIALISTAS EN V&Aacute;LVULAS, BOMBAS E IMPULSORES</p>', 'AA', '1', '2018-06-26 18:53:15', '2018-07-03 19:33:09'),
(8, 'modelogaleria__3.jpg', 'modelogaleria__Foto0555.jpg', 'modelogaleria__20150310_190444.jpg', '<p>MODELOS DE ALUMINIO</p>', 'CC', '1', '2018-06-26 18:53:31', '2018-07-03 01:46:59'),
(9, 'modelogaleria__4.jpg', NULL, NULL, '<p>MODELO MECANIZADO CNC PARA MATRIZ DE EPS</p>', 'DD', '1', '2018-06-26 18:53:38', '2018-06-26 18:53:38'),
(10, 'modelogaleria__2013-08-21 15.22.21.jpg', NULL, NULL, '<p>MODELOS PARA MOLDEO AUTOMATICO</p>', 'EE', '1', '2018-06-26 18:53:45', '2018-08-14 03:40:23'),
(11, 'modelogaleria__20161202_152929.jpg', 'modelogaleria__20141128_123049.jpg', 'modelogaleria__20150113_090125.jpg', '<p>MODELOS DE MADERA</p>', 'AA1', '1', '2018-06-26 18:53:56', '2018-07-03 06:14:21'),
(12, 'modelogaleria__luminaria-cielo.jpg', NULL, NULL, '<p>Luminarias Urbanas</p>', 'AA', '3', '2018-06-28 16:44:41', '2018-06-28 16:44:41'),
(13, 'modelogaleria__luminaria.jpg', NULL, NULL, '<p>Iluminaci&oacute;n para empresas</p>', 'BB', '3', '2018-06-28 16:44:57', '2018-06-28 16:44:57'),
(14, 'modelogaleria__energia-eolica.jpg', NULL, NULL, '<p>Energ&iacute;a E&oacute;lica</p>', 'CC', '3', '2018-06-28 16:45:27', '2018-06-28 16:45:27'),
(15, 'modelogaleria__luminaria-on.jpg', NULL, NULL, '<p>Iluminaci&oacute;n LED</p>', 'DD', '3', '2018-06-28 16:46:18', '2018-06-28 16:46:18'),
(16, 'modelogaleria__molino.jpg', NULL, NULL, '<p>Aerogeneradores</p>', 'EE', '3', '2018-06-28 16:46:34', '2018-06-28 16:46:34'),
(17, 'modelogaleria__1calibre-clasea.jpg', NULL, NULL, '<p>Calibre de forma Clase A</p>', 'AA', '4', '2018-06-28 17:04:41', '2018-06-28 17:04:41'),
(18, 'modelogaleria__2calibre-para-puntos-soldadura-robot.jpg', NULL, NULL, '<p>Calibre de control para puntos de soldadura robot</p>', 'BB', '4', '2018-06-28 17:04:49', '2018-06-28 17:04:49'),
(19, 'modelogaleria__305.jpg', NULL, NULL, '<p>Poka-yoke (Sistema a prueba de errores)</p>', 'CC', '4', '2018-06-28 17:05:03', '2018-06-28 17:05:03'),
(20, 'modelogaleria__401.jpg', NULL, NULL, '<p>Calibre pasa no pasa para ca&ntilde;o de combustible</p>', 'DD', '4', '2018-06-28 17:05:14', '2018-06-28 17:05:14'),
(21, 'modelogaleria__503.jpg', NULL, NULL, '<p>Sistema para ensamblaje ca&ntilde;o de combustible</p>', 'EE', '4', '2018-06-28 17:05:25', '2018-06-28 17:05:25'),
(22, 'modelogaleria__a.jpg', NULL, NULL, '<p>Mecanizados en Cuarto Eje</p>', 'AA', '5', '2018-06-28 17:16:40', '2018-06-28 21:54:12'),
(23, 'modelogaleria__b.jpg', NULL, NULL, '<p>Mecanizados en Cuarto Eje</p>', 'BB', '5', '2018-06-28 17:16:54', '2018-06-28 21:54:27'),
(24, 'modelogaleria__c.jpg', NULL, NULL, '<p>Mecanizados de piezas</p>', 'CC', '5', '2018-06-28 17:17:06', '2018-06-28 21:54:34'),
(25, 'modelogaleria__d.jpg', NULL, NULL, '<p>Turbo en AI</p>', 'DD', '5', '2018-06-28 17:17:18', '2018-06-28 21:54:46'),
(26, 'modelogaleria__e.jpg', NULL, NULL, '<p>Centro de mecanizado ROMI D 1250</p>', 'EE', '5', '2018-06-28 17:17:28', '2018-06-28 21:54:54'),
(27, 'modelogaleria__f.jpg', NULL, NULL, '<p>Torneados en piezas varias</p>', 'FF', '5', '2018-06-28 17:17:37', '2018-06-28 21:55:03'),
(28, 'modelogaleria__g.jpg', NULL, NULL, '<p>Mecanizados de modelos</p>', 'GG', '5', '2018-06-28 17:17:50', '2018-06-28 21:55:14'),
(29, 'modelogaleria__h.jpg', NULL, NULL, '<p>Bomba centr&iacute;fuga chica en fundici&oacute;n gris</p>', 'HH', '5', '2018-06-28 17:17:59', '2018-06-28 21:55:28'),
(30, 'modelogaleria__1-parte-de-matriz-para-eps.jpg', NULL, NULL, '<p>Parte de matriz para EPS</p>', 'AA', '6', '2018-06-28 20:43:06', '2018-06-28 20:43:06'),
(31, 'modelogaleria__2-matriz-para-soplado-en-shell-molding.jpg', NULL, NULL, '<p>Matriz para soplado en Shell Molding</p>', 'BB', '6', '2018-06-28 20:43:16', '2018-06-28 20:43:16'),
(32, 'modelogaleria__3-prototipo-en-eps.jpg', NULL, NULL, '<p>Prototipo en EPS</p>', 'CC', '6', '2018-06-28 20:43:25', '2018-06-28 20:43:25'),
(33, 'modelogaleria__4-piezas.jpg', NULL, NULL, '<p>Piezas logradas con matricer&iacute;a de producci&oacute;n para EPS</p>', 'DD', '6', '2018-06-28 20:43:42', '2018-06-28 20:43:42'),
(34, 'modelogaleria__1-bomba1fundida.jpg', NULL, NULL, '<p>Dispositivos para cig&uuml;e&ntilde;ales</p>', 'AA', '7', '2018-06-28 20:45:06', '2018-06-28 20:45:06'),
(35, 'modelogaleria__2-slide3.jpg', NULL, NULL, '<p>Otra</p>', 'BB', '7', '2018-06-28 20:45:17', '2018-06-28 20:45:17'),
(36, 'modelogaleria__3-slide2.jpg', NULL, NULL, '<p>Moldeo</p>', 'CC', '7', '2018-06-28 20:45:30', '2018-06-28 20:45:30'),
(37, 'modelogaleria__1-cop-carp.jpg', NULL, NULL, '<p>Copiadora de precisi&oacute;n Carpinteria en Al</p>', 'AA', '10', '2018-06-28 21:05:59', '2018-06-28 21:05:59'),
(38, 'modelogaleria__2-lum.jpg', NULL, NULL, '<p>Iluminaci&oacute;n P&uacute;blica a LED</p>', 'BB', '10', '2018-06-28 21:06:23', '2018-06-28 21:06:23'),
(39, 'modelogaleria__3-port-bici.jpg', NULL, NULL, '<p>Bicicletero Urbano</p>', 'CC', '10', '2018-06-28 21:06:34', '2018-06-28 21:06:34'),
(40, 'modelogaleria__4-cort-carp.jpg', NULL, NULL, '<p>Cortadora de precisi&oacute;n circular Carpinteria en Al</p>', 'DD', '10', '2018-06-28 21:06:48', '2018-06-28 21:06:48'),
(41, 'modelogaleria__5-parada.jpg', NULL, NULL, '<p>Mobiliario Urbano</p>', 'EE', '10', '2018-06-28 21:06:56', '2018-06-28 21:06:56'),
(42, 'modelogaleria__0-caja-modelo-ensamblado.jpg', NULL, NULL, '<p>Caja modelo ensamblada</p>', 'AA', '9', '2018-06-28 21:10:58', '2018-06-28 21:10:58'),
(43, 'modelogaleria__01-modelo.jpg', NULL, NULL, '<p>Cuerpo de bomba</p>', 'BB', '9', '2018-06-28 21:11:23', '2018-06-28 21:11:23'),
(44, 'modelogaleria__1-caja-modelo2.jpg', NULL, NULL, '<p>Caja modelo</p>', 'CC', '9', '2018-06-28 21:11:47', '2018-06-28 21:11:47'),
(45, 'modelogaleria__2-caja-modelo.jpg', NULL, NULL, '<p>Caja modelo</p>', 'DD', '9', '2018-06-28 21:12:19', '2018-06-28 21:12:19'),
(46, 'modelogaleria__3-centro-de-mecanizado-cnc.jpg', NULL, NULL, '<p>Centro de mecanizado CNC</p>', 'EE', '9', '2018-06-28 21:12:37', '2018-06-28 21:12:37'),
(47, 'modelogaleria__4-caja2cpobomba.jpg', NULL, NULL, '<p>Caja cuerpo bomba</p>', 'FF', '9', '2018-06-28 21:18:23', '2018-06-28 21:18:23'),
(48, 'modelogaleria__5-impulsor-2.jpg', NULL, NULL, '<p>Impulsor</p>', 'GG', '9', '2018-06-28 21:18:51', '2018-06-28 21:18:51'),
(49, 'modelogaleria__6-caja-modelo2-ensamble.jpg', NULL, NULL, '<p>Caja modelo ensamblada</p>', 'HH', '9', '2018-06-28 21:19:03', '2018-06-28 21:19:03'),
(50, 'modelogaleria__7-modelo-cpo-bomba.jpg', NULL, NULL, '<p>Modelo cuerpo de bomba</p>', 'II', '9', '2018-06-28 21:19:32', '2018-06-28 21:19:32'),
(51, 'modelogaleria__8-impulsor.jpg', NULL, NULL, '<p>Impulsor</p>', 'JJ', '9', '2018-06-28 21:19:48', '2018-06-28 21:19:48'),
(52, 'modelogaleria__1-router-1.jpg', NULL, NULL, '<p>Construcci&oacute;n de router liviano</p>', 'AA', '11', '2018-06-28 21:31:08', '2018-06-28 21:31:08'),
(53, 'modelogaleria__2-lijaband-1.jpg', NULL, NULL, '<p>Lijaband M-300</p>', 'BB', '11', '2018-06-28 21:31:20', '2018-06-28 21:31:20'),
(54, 'modelogaleria__3-lijaband-3.jpg', NULL, NULL, '<p>Dise&ntilde;o de Lijaband M-300</p>', 'CC', '11', '2018-06-28 21:31:31', '2018-06-28 21:31:31'),
(55, 'modelogaleria__4-centro-mecanizado.jpg', NULL, NULL, '<p>Dise&ntilde;o de centro de mecanizado</p>', 'DD', '11', '2018-06-28 21:31:40', '2018-06-28 21:31:40'),
(56, 'modelogaleria__5-lijaband-2.jpg', NULL, NULL, '<p>Lijaband M-300 terminada</p>', 'EE', '11', '2018-06-28 21:31:48', '2018-06-28 21:31:48'),
(57, 'modelogaleria__6-mecanizado-1.jpg', NULL, NULL, '<p>Parte fundida de centro de mecanizado</p>', 'FF', '11', '2018-06-28 21:31:59', '2018-06-28 21:31:59'),
(58, 'modelogaleria__1-slide2.jpg', NULL, NULL, '<p>Modelos ep&oacute;xicos</p>', 'AA', '8', '2018-06-28 21:34:45', '2018-06-28 21:34:45'),
(59, 'modelogaleria__2-slide1.jpg', NULL, NULL, '<p>Modelos ep&oacute;xicos</p>', 'BB', '8', '2018-06-28 21:34:54', '2018-06-28 21:34:54'),
(60, 'modelogaleria__3-slide3.jpg', NULL, NULL, '<p>Modelos ep&oacute;xicos</p>', 'CC', '8', '2018-06-28 21:35:03', '2018-06-28 21:35:03'),
(61, 'modelogaleria__1-05.jpg', NULL, NULL, '<p>Mecanizados en Cuarto Eje</p>', 'AA', '2', '2018-06-28 21:48:36', '2018-06-28 21:48:36'),
(62, 'modelogaleria__2-06.jpg', NULL, NULL, '<p>Mecanizados en Cuarto Eje</p>', 'BB', '2', '2018-06-28 21:48:45', '2018-06-28 21:48:45'),
(63, 'modelogaleria__3-02.jpg', NULL, NULL, '<p>Turbo en AI</p>', 'CC', '2', '2018-06-28 21:48:57', '2018-06-28 21:49:30'),
(64, 'modelogaleria__4-07.jpg', NULL, NULL, '<p>Mecanizados de modelos</p>', 'DD', '2', '2018-06-28 21:49:07', '2018-06-28 21:49:41'),
(65, 'modelogaleria__5-01.jpg', NULL, NULL, '<p>Centro de mecanizado ROMI D 1250</p>', 'EE', '2', '2018-06-28 21:50:04', '2018-06-28 21:50:04'),
(66, 'modelogaleria__6-08.jpg', NULL, NULL, '<p>Mecanizados de piezas</p>', 'FF', '2', '2018-06-28 21:50:18', '2018-06-28 21:50:18'),
(67, 'modelogaleria__7-03.jpg', NULL, NULL, '<p>Bomba centr&iacute;fuga chica en fundici&oacute;n gris</p>', 'GG', '2', '2018-06-28 21:50:31', '2018-06-28 21:50:31'),
(68, 'modelogaleria__8-04.jpg', NULL, NULL, '<p>Torneados en piezas varias</p>', 'HH', '2', '2018-06-28 21:50:39', '2018-06-28 21:50:39'),
(71, 'modelogaleria__1-compresor-para-uso-petrolero_m.jpg', NULL, NULL, '<p>Compresor para uso petrolero.</p>', 'AA', '12', '2018-06-28 23:28:36', '2018-06-28 23:28:36'),
(72, 'modelogaleria__2.jpg', NULL, NULL, '<p>Compresores para trasvase de GLP</p>', 'BB', '12', '2018-06-28 23:29:02', '2018-06-28 23:29:02'),
(73, 'modelogaleria__3-airpur_m.jpg', NULL, NULL, '<p>Compresores para respiracion autonoma</p>', 'CC', '12', '2018-06-28 23:29:28', '2018-06-28 23:29:28'),
(74, 'modelogaleria__4-compresores-piston-seco_m.jpg', NULL, NULL, '<p>Compresores piston seco</p>', 'DD', '12', '2018-06-28 23:29:42', '2018-06-28 23:30:41'),
(76, 'modelogaleria__2017-05-19 12.27.03.jpg', NULL, NULL, '<p>Bujes para cabezal delantero de percutora fabricados en material altamente resistente Bronce al aluminio AG200</p>', 'AA', '13', '2018-06-29 20:15:09', '2018-06-29 20:15:09'),
(77, 'modelogaleria__2017-05-10 14.06.10.jpg', NULL, NULL, '<p>Bujes estriados internos y externos para maquina minera en bronce al aluminio AG200 (sustitucion de importacion)</p>', 'BB', '13', '2018-06-29 20:19:28', '2018-06-29 20:19:28'),
(78, 'modelogaleria__2017-03-03 11.59.54.jpg', NULL, NULL, '<p>Ingenieria inversa , modelos para fundicion y fundicion de LINGOTERAS DE CASCADA (sustitucion de importacion)</p>', 'cc', '13', '2018-06-29 20:28:21', '2018-06-29 20:40:14'),
(80, 'modelogaleria__2013-10-03 19.04.26-1.jpg', NULL, NULL, '<p>MECANIZADOS CNC&nbsp;</p>', 'A1A', '2', '2018-07-02 21:13:21', '2018-07-02 21:13:21'),
(81, '', NULL, NULL, NULL, NULL, '1', '2018-10-09 18:05:58', '2018-10-09 18:05:58'),
(82, 'modelogaleria__2014-08-01 10.37.56.jpg', NULL, NULL, '<p>ING INVERSA Y MODELOS DE MANDIBULAS PARA CHANCADORAS</p>', 'DD', '13', '2018-10-09 18:06:17', '2018-10-09 18:06:17'),
(83, 'modelogaleria__2013-11-21 15.29.48.jpg', NULL, NULL, '<p>CONCAVOS PARA TRITURADORA</p>', 'EE', '13', '2018-10-09 18:53:54', '2018-10-09 18:53:54'),
(84, 'modelogaleria__2013-11-21 15.30.01.jpg', NULL, NULL, '<p>MANTOS PARA TRITURADORA</p>', 'FF', '13', '2018-10-09 18:54:41', '2018-10-09 18:54:41'),
(85, '', NULL, NULL, NULL, NULL, '1', '2018-10-09 18:58:31', '2018-10-09 18:58:31'),
(89, 'modelogaleria__INDO MINERA.jpg', NULL, NULL, '<p>MANDIBULAS PARA CHANCADORES</p>', 'HH', '13', '2018-10-09 19:42:23', '2018-10-09 19:42:23'),
(90, 'modelogaleria__SUSTITUCION DE IMPORTACIONES UÑAS.jpg', NULL, NULL, '<p>SUSTITUCION DE IMPORTACIONES U&Ntilde;AS</p>', 'II', '1', '2018-10-09 19:43:06', '2018-10-09 19:43:06'),
(91, 'modelogaleria__SUSTITUCION DE IMPORTACIONES UÑAS.jpg', NULL, NULL, '<p>SUSTITUCION DE IMPORTACIONES U&Ntilde;AS</p>', 'JJ', '13', '2018-10-09 19:44:27', '2018-10-09 19:44:27'),
(92, 'modelogaleria__MANTOS CONCAVOS Y MANDIBULAS.jpg', NULL, NULL, '<p>MANTOS CONCAVOS Y MANDIBULAS</p>', 'GG', '1', '2018-10-09 19:46:48', '2018-10-09 19:46:48'),
(93, 'modelogaleria__MANTOS CONCAVOS Y MANDIBULAS.jpg', NULL, NULL, '<p>MANTOS, CONCAVOS Y MANDIBULAS</p>', 'II', '13', '2018-10-09 19:50:30', '2018-10-09 19:50:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `breve` text COLLATE utf8_unicode_ci NOT NULL,
  `resena` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` text COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `pdf` text COLLATE utf8_unicode_ci NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `imagen`, `titulo`, `breve`, `resena`, `fecha`, `descripcion`, `pdf`, `id_categoria`, `created_at`, `updated_at`) VALUES
(1, '1_novedad.png', 'Catálogo de productos 2018', '<p>Ya est&aacute; disponible el cat&aacute;logo actualizado de productos. Puede consultarlo o descargarlo a continuaci&oacute;n.</p>', NULL, '23/04/18', '<p>Ya est&aacute; disponible el cat&aacute;logo actualizado de productos. Puede consultarlo o descargarlo a continuaci&oacute;n.</p>', '1_archivo.pdf', 1, '2018-05-30 20:05:14', '2018-06-04 17:11:39'),
(2, '2_novedad.png', 'Servicio de Calidad y Excelencia', '<p>Fabricantes de una amplia gama de Bulones, Tornillos y Tuercas especiales y est&aacute;ndar. Utilizando normas internacionales.</p>', NULL, '12/02/18', '<p>Fabricantes de una amplia gama de Bulones, Tornillos y Tuercas especiales y est&aacute;ndar. Utilizando normas internacionales.</p>', '2_archivo.pdf', 3, '2018-05-30 20:05:14', '2018-06-05 21:51:36'),
(3, '3_novedad.png', 'Recorrido por la historia', '<p>La llegada de tecnologia moderna conduce a nuestra empresa convirtiendo la planta en productora de &quot;TODO TIPO DE TORNILLERIA&quot;.</p>', NULL, '26/03/18', '<p>La llegada de tecnologia moderna conduce a nuestra empresa convirtiendo la planta en productora de &quot;TODO TIPO DE TORNILLERIA&quot;.</p>', '3_archivo.pdf', 2, '2018-05-30 20:05:14', '2018-06-05 22:07:29'),
(4, '4_4_novedad.png', 'Nuevas línea de fabricación', '<p>Radistor S.A. ampl&iacute;a su planta industrial. Incorporando mejor tecnolog&iacute;a de &uacute;ltima generaci&oacute;n. Ingres&aacute; para leer la nota completa.</p>', NULL, '11/03/18', '<p>Radistor S.A. ampl&iacute;a su planta industrial. Incorporando mejor tecnolog&iacute;a de &uacute;ltima generaci&oacute;n. Ingres&aacute; para leer la nota completa.</p>', '4_7_6_1_producto1.jpg', 3, '2018-05-30 20:05:14', '2018-06-04 17:10:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `breve` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `resena` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `breve`, `resena`, `texto1`, `texto2`, `pdf`, `imagen`, `imagen1`, `imagen2`, `id_categoria`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Común', '<p><span style=\"color:#9a9a9a\">Ideal para ser utilizado en hilados de algod&oacute;n 100% y art&iacute;culos pesados como guardapolvos</span></p>', NULL, NULL, '', 'ficha.pdf', '1_imagen1.jpg', NULL, NULL, 1, 'AA', '2018-06-04 17:56:00', '2018-06-18 03:16:56'),
(2, 'A la vista', '<p><span style=\"color:#9a9a9a\">Ideal para ser utilizado en hilados de algodón 100% por la excelente película que forma en el encolado</span></p>', NULL, NULL, '', 'ficha.pdf', '2_imagen2.jpg', NULL, NULL, 1, 'BB', '2018-06-04 17:56:00', '2018-06-18 03:16:38'),
(3, 'Portante Chico', '<p><span style=\"color:#9a9a9a\">Se recomienda especialmente para aquellos artículos de títulos \r\nmedios a finos</span></p>', NULL, NULL, '', 'ficha.pdf', '3_1_imagen1.jpg', '3_1_imagen2.jpg', '3_1_imagen3.jpg', 1, 'CC', '2018-06-04 17:56:00', '2018-06-18 03:16:23'),
(4, 'Portante Grande', '<p><span style=\"color:#9a9a9a\">Ideal para ser utilizado en hilados de algodón 100% tales como toallas y rizo de toalla</span></p>', NULL, NULL, '', 'ficha.pdf', '4_imagen4.jpg', NULL, NULL, 1, 'DD', '2018-06-04 17:56:00', '2018-06-18 03:12:48'),
(5, 'Ladrillo 12 X 25 X 38', '<p><span style=\"color:#9a9a9a\">Polímero vinílico especialmente ideado para el encolado en la industria textil</span></p>', NULL, NULL, '', 'ficha.pdf', '5_imagen5.jpg', NULL, NULL, 1, 'EE', '2018-06-04 17:56:00', '2018-06-18 03:13:28'),
(6, 'Huecos 8 X 18 X 33', NULL, NULL, NULL, NULL, NULL, '6_imagen6.jpg', NULL, NULL, NULL, 'FF', '2018-06-18 03:14:42', '2018-06-18 03:14:42'),
(7, 'Huecos 12 X 18 X 33', NULL, NULL, NULL, NULL, NULL, '7_imagen7.jpg', NULL, NULL, NULL, 'GG', '2018-06-18 03:15:34', '2018-06-18 03:15:34'),
(8, 'Huecos 18 X 18 X 33', NULL, NULL, NULL, NULL, NULL, '8_imagen8.jpg', NULL, NULL, NULL, 'HH', '2018-06-18 03:16:01', '2018-06-18 03:16:01'),
(9, 'titulo', NULL, NULL, '<p>texto</p>', NULL, NULL, '9_black.jpg', '9_black.jpg', '9_black.jpg', NULL, 'aa', '2018-06-20 05:36:55', '2018-06-20 05:36:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_compresors`
--

CREATE TABLE `productos_compresors` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ficha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dibujo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dibujo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categorias_compresors` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos_compresors`
--

INSERT INTO `productos_compresors` (`id`, `imagen`, `imagen1`, `imagen2`, `titulo`, `texto`, `texto1`, `ficha`, `dibujo`, `dibujo1`, `ruta`, `orden`, `id_categorias_compresors`, `created_at`, `updated_at`) VALUES
(1, 'productocompresor__E125.jpg', 'productocompresor__luminaria1.jpg', 'productocompresor__luminaria2.jpg', 'Compresor Airdin', '<p><span style=\"color:null\"><strong>Vis&iacute;tenos en nuestra p&aacute;gina web</strong></span></p>\r\n\r\n<p><span style=\"color:null\">Desde 1971 brindando Calidad y Excelencia</span></p>\r\n\r\n<p><span style=\"color:null\">M&aacute;s de 40 A&ntilde;os de Trayectoria</span></p>\r\n\r\n<p><span style=\"color:null\">Compresores AIRDIN &reg;, producidos por Indomatrix S.A. que cuenta, orgullosamente, con el respaldo de esta marca y la experiencia de 45 a&ntilde;os de dise&ntilde;o en la fabricaci&oacute;n de compresores. Ingres&aacute; a continuaci&oacute;n para conocer m&aacute;s.</span></p>\r\n\r\n<p><a href=\"http://compresores.com.ar/\"><span style=\"color:null\"><strong>Ver m&aacute;s</strong>...</span></a></p>', '<p><strong>Vis&iacute;tenos en nuestra p&aacute;gina web</strong></p>\r\n\r\n<p>Desde 1971 brindando Calidad y Excelencia</p>\r\n\r\n<p>M&aacute;s de 40 A&ntilde;os de Trayectoria</p>\r\n\r\n<p>Compresores AIRDIN &reg;, producidos por Indomatrix S.A. que cuenta, orgullosamente, con el respaldo de esta marca y la experiencia de 45 a&ntilde;os de dise&ntilde;o en la fabricaci&oacute;n de compresores. Ingres&aacute; a continuaci&oacute;n para conocer m&aacute;s.</p>\r\n\r\n<p><a href=\"http://compresores.com.ar/\"><span style=\"color:null\"><strong>Ver m&aacute;s</strong>...</span></a></p>', 'productocompresor__Prueba.pdf', '', '', 'http://compresores.com.ar/', 'AA', 1, '2018-06-26 17:41:19', '2018-06-29 17:13:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_luminarias`
--

CREATE TABLE `productos_luminarias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ficha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dibujo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dibujo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categorias_luminarias` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos_luminarias`
--

INSERT INTO `productos_luminarias` (`id`, `imagen`, `imagen1`, `imagen2`, `titulo`, `texto`, `texto1`, `ficha`, `dibujo`, `dibujo1`, `ruta`, `orden`, `id_categorias_luminarias`, `created_at`, `updated_at`) VALUES
(1, 'productoluminaria__1.jpg', 'productoluminaria__luminaria1.jpg', 'productoluminaria__luminaria2.jpg', 'SIMPLE', '<p><span style=\"font-size:16px\"><span style=\"color:#434242\"><strong>Detalles</strong></span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Iluminaci&oacute;n p&uacute;blica con la &uacute;ltima tecnolog&iacute;a en LED.</span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</span></span></p>', '<p><span style=\"font-size:16px\"><span style=\"color:#d2041a\"><strong>Caracter&iacute;sticas</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Tensi&oacute;n de entrada: 90-270 VAC</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia de LED: 50 watts</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura de operaci&oacute;n: -40&deg;C / 50&deg;C</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Distribuci&oacute;n de luz: Haz sim&eacute;trico oval</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cuerpo principal y m&oacute;dulos de iluminaci&oacute;n fundidos en aluminio </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Acabado con pintura en polvo electrost&aacute;tica</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Color est&aacute;ndar: Blanco</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Refractor: Vidrio esf&eacute;rico convexo, distribuye de un modo homog&eacute;neo y aumenta la apertura de alcance del haz de luz </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Apertura superior del conexionado el&eacute;ctrico. Sellado mediante o&acute;ring de goma, cierre por tornillo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&oacute;dulos de iluminaci&oacute;n dirigibles </span></p>\r\n\r\n<p><span style=\"font-size:14px\">ujeci&oacute;n a ca&ntilde;os de &Oslash;60 y &Oslash;45 mediante cuatro tornillos prensa </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Caracter&iacute;sticas Led:</span></strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia: 50W</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Alimentaci&oacute;n: 30-36V</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Corriente: 1500mA</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Flujo Luminoso: 5000-5500Lm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura Color: 6000&deg;- 6500&deg;K</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vida Util: 50.000 Hs</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Dibujo T&eacute;cnico</span></strong></span></p>\r\n\r\n<p>&nbsp;</p>', 'productoluminaria__Prueba.pdf', 'productoluminaria__dibujo1.jpg', 'productoluminaria__dibujo2.jpg', NULL, 'AA', 4, '2018-06-26 16:16:59', '2018-06-29 15:59:36'),
(2, 'productoluminaria__doble.jpg', 'productoluminaria__doble1.jpg', 'productoluminaria__doble2.jpg', 'DOBLE', '<p><span style=\"font-size:16px\"><span style=\"color:#434242\"><strong>Detalles</strong></span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Iluminaci&oacute;n p&uacute;blica con la &uacute;ltima tecnolog&iacute;a en LED.</span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</span></span></p>', '<p><span style=\"font-size:16px\"><span style=\"color:#d2041a\"><strong>Caracter&iacute;sticas</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Tensi&oacute;n de entrada: 90-270 VAC</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia de LED: 50 watts</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura de operaci&oacute;n: -40&deg;C / 50&deg;C</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Distribuci&oacute;n de luz: Haz sim&eacute;trico oval</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cuerpo principal y m&oacute;dulos de iluminaci&oacute;n fundidos en aluminio </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Acabado con pintura en polvo electrost&aacute;tica</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Color est&aacute;ndar: Blanco</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Refractor: Vidrio esf&eacute;rico convexo, distribuye de un modo homog&eacute;neo y aumenta la apertura de alcance del haz de luz </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Apertura superior del conexionado el&eacute;ctrico. Sellado mediante o&acute;ring de goma, cierre por tornillo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&oacute;dulos de iluminaci&oacute;n dirigibles </span></p>\r\n\r\n<p><span style=\"font-size:14px\">ujeci&oacute;n a ca&ntilde;os de &Oslash;60 y &Oslash;45 mediante cuatro tornillos prensa </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Caracter&iacute;sticas Led:</span></strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia: 50W</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Alimentaci&oacute;n: 30-36V</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Corriente: 1500mA</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Flujo Luminoso: 5000-5500Lm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura Color: 6000&deg;- 6500&deg;K</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vida Util: 50.000 Hs</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Dibujo T&eacute;cnico</span></strong></span></p>\r\n\r\n<p>&nbsp;</p>', 'productoluminaria__Prueba.pdf', 'productoluminaria__dibujo1.jpg', 'productoluminaria__dibujo2.jpg', NULL, 'BB', 4, '2018-06-26 16:16:59', '2018-06-29 16:04:04'),
(3, 'productoluminaria__triple.jpg', 'productoluminaria__triple1.jpg', 'productoluminaria__triple2.jpg', 'TRIPLE', '<p><span style=\"font-size:16px\"><span style=\"color:#434242\"><strong>Detalles</strong></span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Iluminaci&oacute;n p&uacute;blica con la &uacute;ltima tecnolog&iacute;a en LED.</span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</span></span></p>', '<p><span style=\"font-size:16px\"><span style=\"color:#d2041a\"><strong>Caracter&iacute;sticas</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Tensi&oacute;n de entrada: 90-270 VAC</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia de LED: 50 watts</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura de operaci&oacute;n: -40&deg;C / 50&deg;C</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Distribuci&oacute;n de luz: Haz sim&eacute;trico oval</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cuerpo principal y m&oacute;dulos de iluminaci&oacute;n fundidos en aluminio </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Acabado con pintura en polvo electrost&aacute;tica</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Color est&aacute;ndar: Blanco</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Refractor: Vidrio esf&eacute;rico convexo, distribuye de un modo homog&eacute;neo y aumenta la apertura de alcance del haz de luz </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Apertura superior del conexionado el&eacute;ctrico. Sellado mediante o&acute;ring de goma, cierre por tornillo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&oacute;dulos de iluminaci&oacute;n dirigibles </span></p>\r\n\r\n<p><span style=\"font-size:14px\">ujeci&oacute;n a ca&ntilde;os de &Oslash;60 y &Oslash;45 mediante cuatro tornillos prensa </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Caracter&iacute;sticas Led:</span></strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia: 50W</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Alimentaci&oacute;n: 30-36V</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Corriente: 1500mA</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Flujo Luminoso: 5000-5500Lm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura Color: 6000&deg;- 6500&deg;K</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vida Util: 50.000 Hs</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Dibujo T&eacute;cnico</span></strong></span></p>\r\n\r\n<p>&nbsp;</p>', 'productoluminaria__Prueba.pdf', 'productoluminaria__dibujo1.jpg', 'productoluminaria__dibujo2.jpg', NULL, 'CC', 4, '2018-06-26 16:16:59', '2018-06-29 16:04:38'),
(4, 'productoluminaria__luminaria.jpg', 'productoluminaria__luminaria1.jpg', 'productoluminaria__luminaria2.jpg', 'CUADRÚPLE', '<p><span style=\"font-size:16px\"><span style=\"color:#434242\"><strong>Detalles</strong></span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Iluminaci&oacute;n p&uacute;blica con la &uacute;ltima tecnolog&iacute;a en LED.</span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</span></span></p>', '<p><span style=\"font-size:16px\"><span style=\"color:#d2041a\"><strong>Caracter&iacute;sticas</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Tensi&oacute;n de entrada: 90-270 VAC</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia de LED: 50 watts</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura de operaci&oacute;n: -40&deg;C / 50&deg;C</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Distribuci&oacute;n de luz: Haz sim&eacute;trico oval</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cuerpo principal y m&oacute;dulos de iluminaci&oacute;n fundidos en aluminio </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Acabado con pintura en polvo electrost&aacute;tica</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Color est&aacute;ndar: Blanco</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Refractor: Vidrio esf&eacute;rico convexo, distribuye de un modo homog&eacute;neo y aumenta la apertura de alcance del haz de luz </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Apertura superior del conexionado el&eacute;ctrico. Sellado mediante o&acute;ring de goma, cierre por tornillo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&oacute;dulos de iluminaci&oacute;n dirigibles </span></p>\r\n\r\n<p><span style=\"font-size:14px\">ujeci&oacute;n a ca&ntilde;os de &Oslash;60 y &Oslash;45 mediante cuatro tornillos prensa </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Caracter&iacute;sticas Led:</span></strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia: 50W</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Alimentaci&oacute;n: 30-36V</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Corriente: 1500mA</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Flujo Luminoso: 5000-5500Lm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura Color: 6000&deg;- 6500&deg;K</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vida Util: 50.000 Hs</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Dibujo T&eacute;cnico</span></strong></span></p>\r\n\r\n<p>&nbsp;</p>', 'productoluminaria__Prueba.pdf', 'productoluminaria__dibujo1.jpg', 'productoluminaria__dibujo2.jpg', NULL, 'DD', 4, '2018-06-26 16:16:59', '2018-06-28 22:28:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_novedads`
--

CREATE TABLE `productos_novedads` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `extracto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ficha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categorias_novedads` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos_novedads`
--

INSERT INTO `productos_novedads` (`id`, `imagen`, `titulo`, `extracto`, `texto`, `ficha`, `fecha`, `orden`, `id_categorias_novedads`, `created_at`, `updated_at`) VALUES
(1, 'productonovedad__1.jpg', 'Exposición Indomatrix', '<p>Nos orgullese presentar nuestro cat&aacute;logo de productos y servicios. Nos especializamos en todas las &aacute;reas del proceso de manufacturing de un producto industrial.</p>', '<p>La mayor&iacute;a de los proyectos de iluminaci&oacute;n p&uacute;blica son demorados por falta del tendido de la red el&eacute;ctrica.</p>\r\n\r\n<p>Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</p>\r\n\r\n<p>Analizamos proyectos para:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Municipalidades</p>\r\n\r\n<p>Barrios cerrados</p>\r\n\r\n<p>Countries</p>\r\n\r\n<p>Chacras</p>\r\n\r\n<p>Autopistas</p>\r\n\r\n<p>Estancias</p>\r\n\r\n<p>Otras zonas que requieran iluminaci&oacute;n publica sin necesidad de depender del tendido de la red el&eacute;ctrica</p>', 'productonovedad__Prueba.pdf', '23/05/18', 'AA', 1, '2018-06-26 20:57:17', '2018-06-28 22:34:40'),
(2, 'productonovedad__2.jpg', 'Depósito renovado', '<p>Realizamos la ampliaci&oacute;n de nuestro galp&oacute;n. Contin&uacute;a &nbsp;nuestra expansi&oacute;n manteniendo la excelencia en nuestra cadena. Ingres&aacute; para leer la nota completa.</p>', '<p>Realizamos la ampliaci&oacute;n de nuestro galp&oacute;n. Contin&uacute;a &nbsp;nuestra expansi&oacute;n manteniendo la excelencia en nuestra cadena. Ingres&aacute; para leer la nota completa.</p>\r\n\r\n<p>Realizamos la ampliaci&oacute;n de nuestro galp&oacute;n. Contin&uacute;a &nbsp;nuestra expansi&oacute;n manteniendo la excelencia en nuestra cadena. Ingres&aacute; para leer la nota completa.</p>\r\n\r\n<p>Realizamos la ampliaci&oacute;n de nuestro galp&oacute;n. Contin&uacute;a &nbsp;nuestra expansi&oacute;n manteniendo la excelencia en nuestra cadena. Ingres&aacute; para leer la nota completa.</p>', 'productonovedad__Prueba.pdf', '23/05/18', 'BB', 2, '2018-06-26 20:59:41', '2018-06-28 22:34:49'),
(3, 'productonovedad__3.jpg', 'Mobiliario Urbano', '<p>Presentamos uno de los proyectos m&aacute;s importantes en nuestra empresa. Nuestra misi&oacute;n es satisfacer las necesidades de nuestros clientes.</p>', '<p>Presentamos uno de los proyectos m&aacute;s importantes en nuestra empresa. Nuestra misi&oacute;n es satisfacer las necesidades de nuestros clientes.</p>\r\n\r\n<p>Presentamos uno de los proyectos m&aacute;s importantes en nuestra empresa. Nuestra misi&oacute;n es satisfacer las necesidades de nuestros clientes.</p>\r\n\r\n<p>Presentamos uno de los proyectos m&aacute;s importantes en nuestra empresa. Nuestra misi&oacute;n es satisfacer las necesidades de nuestros clientes.</p>', 'productonovedad__Prueba.pdf', '25/04/18', 'CC', 3, '2018-06-26 21:00:18', '2018-06-28 22:34:58'),
(4, 'productonovedad__4.jpg', 'Iluminación LED', '<p>Calidad y versatilidad en tecnolog&iacute;a LED de ultima generaci&oacute;n. Aprovechamos todos sus beneficios para entregar un producto de excelencia.</p>', '<p>Calidad y versatilidad en tecnolog&iacute;a LED de ultima generaci&oacute;n. Aprovechamos todos sus beneficios para entregar un producto de excelencia.</p>\r\n\r\n<p>Calidad y versatilidad en tecnolog&iacute;a LED de ultima generaci&oacute;n. Aprovechamos todos sus beneficios para entregar un producto de excelencia.</p>\r\n\r\n<p>Calidad y versatilidad en tecnolog&iacute;a LED de ultima generaci&oacute;n. Aprovechamos todos sus beneficios para entregar un producto de excelencia.</p>', 'productonovedad__Prueba.pdf', '12/02/18', 'DD', 3, '2018-06-26 21:00:44', '2018-06-28 22:35:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacions`
--

CREATE TABLE `publicacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `publicacions`
--

INSERT INTO `publicacions` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Visión', '<p>&middot; Constituir una cartera comercial diversificada en n&uacute;mero de clientes y dirigida a diferentes sectores para asegurar la estabilidad.</p>\r\n\r\n<p>&middot; Consolidar las relaciones con nuevos clientes mediante b&uacute;squeda activa y conseguir el reconocimiento de sus profesionales.</p>\r\n\r\n<p>&middot; Mantener un crecimiento constante y sostenido.</p>\r\n\r\n<p>&middot; Hacer que la mejora de calidad y la innovaci&oacute;n impregnen nuestro d&iacute;a a d&iacute;a.</p>\r\n\r\n<p>&middot; Encontrar soluciones t&eacute;cnicas para el sector industrial y sus procesos productivos, de acuerdo con las nuevas tecnolog&iacute;as y materiales.</p>', 'AA', '2018-06-26 14:38:20', '2018-06-26 14:38:20'),
(2, NULL, 'Valores', '<p>&middot; Orientaci&oacute;n al cliente y al resultado: para garantizar la permanencia de la compa&ntilde;&iacute;a, del servicio futuro y la estabilidad de los colaboradores.</p>\r\n\r\n<p>&middot; Potenciaci&oacute;n del capital humano: el principal recurso de INDOMATRIX son las personas, su experiencia y sus conocimientos profesionales y t&eacute;cnicos.</p>\r\n\r\n<p>&middot; Satisfacci&oacute;n del cliente: es garant&iacute;a de &eacute;xito.</p>\r\n\r\n<p>&middot; Apuesta por la innovaci&oacute;n: tanto la tecnol&oacute;gica como la de gesti&oacute;n.</p>\r\n\r\n<p>&middot; La calidad: viene determinada por todos los integrantes del equipo, internos y externos, y est&aacute; impulsada por la filosof&iacute;a de a&ntilde;adir valor a los clientes.</p>\r\n\r\n<p>&middot; Trabajo en equipo: comunicaci&oacute;n, disponibilidad, cooperaci&oacute;n y esfuerzo.</p>', 'BB', '2018-06-26 14:38:50', '2018-06-26 14:39:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id`, `nombre`, `imagen`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'redes__facebook.png', 'https://www.facebook.com/pages/IndOmatrix-SA/776459212405003?fref=ts', 'AA', '2018-06-21 03:19:26', '2018-06-29 17:19:13'),
(2, 'Twitter', 'redes__twitter.png', 'https://twitter.com/indomatrixArg', 'BB', '2018-06-21 03:20:02', '2018-06-29 17:19:29'),
(3, 'Gmail', 'redes__gmail.png', 'https://plus.google.com/u/1/110389756677031250538', 'CC', '2018-06-21 03:20:27', '2018-06-29 17:19:47'),
(4, 'Instagram', 'redes__instagram.png', 'https://www.linkedin.com/company/9288015', 'DD', '2018-06-21 03:21:10', '2018-06-29 17:20:38'),
(5, 'YouTube', 'redes__youtube.png', 'https://www.youtube.com/channel/UCozFg8MJnLZ0NmHhyHICYPg', 'EE', '2018-06-21 03:21:38', '2018-06-29 17:20:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `seccion` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `titulo`, `subtitulo`, `imagen`, `seccion`, `orden`, `created_at`, `updated_at`) VALUES
(1, '<p>Ingenier&iacute;a, Dise&ntilde;o y</p>\r\n\r\n<p>Manufactura de</p>\r\n\r\n<p>Productos Industriales</p>', NULL, 'sliders__VOLUTA COMPLETA.jpg', '1', 'AA', '2018-06-25 14:45:26', '2018-07-01 01:17:10'),
(2, '<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>TODO EL DESARROLLO &quot;EN UN SOLO LUGAR&quot;</strong></span></p>', NULL, 'sliders__sliderEmpresa.jpg', '2', 'AA', '2018-06-25 21:10:27', '2018-07-19 06:31:02'),
(3, '<p><strong>ESPECIALISTAS EN MODELOS PARA FUNDICION&nbsp;</strong></p>', NULL, 'sliders__DSC06617.jpg', '2', 'BB', '2018-07-19 06:19:07', '2018-07-19 06:30:13'),
(4, '<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>GRAN EXPERIENCIA EN PIEZAS FUNDIDAS CON LA MAS</strong></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>ALTA CALIDAD Y TECNOLOGIA</strong></span></p>', NULL, 'sliders__2013-10-09 14.33.21.jpg', '2', 'CC', '2018-07-19 06:23:44', '2018-07-19 06:26:46'),
(5, '<p>SOMOS EXPERTOS EN MECANIZADOS CNC Y CONVENCIONAL</p>', NULL, 'sliders__centros de mecanizdo.jpg', '2', 'DD', '2018-07-20 02:57:59', '2018-07-20 02:57:59'),
(6, '<p>INGENIERIA INVERSA,MODELOS,FUNDICION,MECANIZADO.</p>\r\n\r\n<p><strong>&quot;TODO EN UN SOLO LUGAR&quot;</strong></p>', NULL, 'sliders__20170405_113437.jpg', '1', 'BB', '2018-08-11 02:54:20', '2018-08-11 02:54:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soluciones`
--

CREATE TABLE `soluciones` (
  `id` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `soluciones`
--

INSERT INTO `soluciones` (`id`, `titulo`, `imagen`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Soluciones a Medida', 'imagen.png', '<p style=\"text-align:center\">En Diatex ofrecemos soluciones para una amplia gama de aplicaciones</p>\r\n\r\n<p style=\"text-align:center\">industriales. Contamos con diferentes tipos de adhesivos y un equipo de trabajo</p>\r\n\r\n<p style=\"text-align:center\">capacitado en la elaboraci&oacute;n de soluciones personalizadas para necesidades</p>\r\n\r\n<p style=\"text-align:center\">espec&iacute;ficas de cada aplicaci&oacute;n y lo que el cliente requiera.</p>', NULL, '2018-06-15 16:32:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo`
--

CREATE TABLE `tiempo` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tiempo`
--

INSERT INTO `tiempo` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Inicio', '<p>Mi padre, Carlos Ort&iacute;z comienza la historia de nuestra actividad en la localidad de Bernal. Estudi&oacute; dibujo t&eacute;cnico; Sus primeros conocimientos fueron adquiridos con especialistas del buen arte oriundos de la localidad de Tandil, luego comenz&oacute; en sus principios en un peque&ntilde;o taller en un local comercial trabajando&nbsp;b&aacute;sicamente como rubro principal &ldquo;modelos para fundici&oacute;n&rdquo;, especializado en v&aacute;lvulas &nbsp;diversas piezas mec&aacute;nicas, entre otras.</p>', 'AA', '2018-06-27 22:52:24', '2018-06-28 18:44:32'),
(2, NULL, '1986', '<p>A los dos a&ntilde;os construye un taller m&aacute;s grande, tambi&eacute;n en la localidad de Bernal, en el fondo de su vivienda personal. Desde all&iacute;, sigui&oacute; especializ&aacute;ndose en v&aacute;lvulas, y a incorporar el rubro de bombas centrifugas e impulsores. A&ntilde;os m&aacute;s tarde adquiere el terreno lindero con salida a otra calle y es en esta etapa cuando yo, Daniel Ortiz, se incorpora a las actividades, tras su paso y egreso de la escuela Nacional de Ense&ntilde;anza T&eacute;cnica N&deg;4, especializado en aeron&aacute;utica obteniendo el t&iacute;tulo de &nbsp;&ldquo;T&eacute;cnico Aeron&aacute;utico&rdquo;.</p>', 'BB', '2018-06-27 22:52:33', '2018-06-28 18:46:44'),
(3, NULL, '1987', '<p>Luego de mi incorporaci&oacute;n, decidimos realizar una ampliaci&oacute;n del taller actual y comienzamos con la tecnificaci&oacute;n e incorporaci&oacute;n de tecnolog&iacute;a. La experiencia y las nuevas tendencias tecnol&oacute;gicas producen un cambio sustancial en la visi&oacute;n estrat&eacute;gica y se mejoran y adecuan las t&eacute;cnicas milenarias del buen arte, logrando los primeros modelos mecanizados CNC, con la incorporaci&oacute;n de nuestra primer frezadora de torreta CNC Bridgeport.</p>', 'CC', '2018-06-27 22:52:40', '2018-06-28 18:47:47'),
(4, '', '1988', '<p>En estos a&ntilde;os se profundiza el conocimiento en la construcci&oacute;n de grandes Bombas en forma artesanal en epoxie y tambi&eacute;n se incorporan m&aacute;s recursos humanos capacit&aacute;ndolos en in situ. Este salto tecnol&oacute;gico y la ampliaci&oacute;n de conocimiento de nuestros recursos humanos permiti&oacute; ir ampliando la empresa, la cual se traslada a la ciudad de Berazategui donde es bienvenida por el municipio y su papel representante, el Dr., Juan Jos&eacute; Mussi, brind&aacute;ndole todo su apoyo a la &uacute;nica empresa del distrito en fabricar &ldquo;Modelos para Fundici&oacute;n&rdquo; y &ldquo;maquinaria liviana&rdquo; ya que en estos a&ntilde;os dise&ntilde;amos y fabricamos la LIJABAND M300 (lijadora de banda ancha 300 m de gran versatilidad).</p>', 'DD', '2018-06-27 22:53:20', '2018-06-28 18:48:06'),
(5, NULL, '1989', '<p>Una vez instalados, en esta etapa comienza la &ldquo;DIVERSIFICACION&rdquo; , tanto de conocimientos como de actividades, servicios y productos, logrando as&iacute; sumar nuestro nicho de ofertas. MATRICERIA DE COQUILLA, SHELL MOLDIND, MOLDEADO AUTOMATICO, EPOXIE, CALIBRES DE CONTROL DIMENSIONAL, MOLDES Y MATRICES.</p>', 'EE', '2018-06-27 22:53:35', '2018-06-28 18:50:24'),
(6, NULL, '1990', '<p>A&ntilde;os m&aacute;s tarde tuvimos el honor de que nos conociera la empresa VW de Argentina donde nos dieron una idea y nosotros la desarrollamos y logramos superar los objetivos, para ellos esperados y es as&iacute; que nos confiaron la fabricaci&oacute;n de los calibres de control dimensional de la carrocer&iacute;a clase &ldquo;A&rdquo; (formas exteriores) del Suran, del Fox y por &uacute;ltimo de la nueva gama de Pick up a nivel internacional construida en Argentina como es la AMAROK.</p>', 'FF', '2018-06-27 22:53:52', '2018-06-28 18:50:41'),
(7, NULL, '1991', '<p>Incursionamos en la idea y realizaci&oacute;n de desarrollo de piezas industriales a nivel integral, dise&ntilde;o, desarrollo y producci&oacute;n mecanizada.</p>', 'GG', '2018-06-27 22:54:00', '2018-06-28 18:50:55'),
(8, NULL, '1993', '<p>Tambi&eacute;n en este proceso de explosi&oacute;n de ideas desarrollan una m&aacute;quina de fresado 3D de p&oacute;rtico, haci&eacute;ndola funcionar con &eacute;xito durante 6 a&ntilde;os, perfeccionamos la metodolog&iacute;as implementadas y estamos construyendo otro &ldquo;CENTRO DE MECANIZADO DE PORTICO con cambiador autom&aacute;tico de herramientas&rdquo; en fundici&oacute;n de aluminio autotemplante de grandes espesores para realizar una maquina CNC robusta.</p>', 'HH', '2018-06-27 22:54:08', '2018-06-28 18:51:17'),
(9, NULL, '2011', '<p>En 2011 y hasta la actualidad estamos participando en la construcci&oacute;n &nbsp;de los moldes, piezas y mecanizados de los nuevos refugios del mobiliario urbano de la ciudad de Buenos Aires Buenos Aires a trav&eacute;s de sus dise&ntilde;adores el &ldquo;Estudio Cabeza&rdquo;.</p>', 'II', '2018-06-28 18:53:31', '2018-06-28 18:53:31'),
(10, NULL, '2011', '<p>Tambi&eacute;n estamos desarrollando una excelente relaci&oacute;n laboral y de intercambio con el GRUPO VDS (Vortex Design Solutions con la cual llevamos adelante varios proyectos, como ser calibres POKA-YOKE para Ford Argentina; asimismo estamos trabajando en la construcci&oacute;n de una aeronave deportiva con ingenier&iacute;a de VDS, adem&aacute;s estamos participando activamente en asesoramiento mutua, de esa manera podemos lograr muchos objetivos como realizar ingenier&iacute;a y piezas METRORIO, EMBRAER, INVAP, etc. En Vortex Group &nbsp;aplicamos Ingenier&iacute;a de producto e Indomatrix manufactura, tecnolog&iacute;a aplicada a moldes, matrices y mecanizados de piezas y conjuntos ensamblados.</p>', 'JJ', '2018-06-28 18:55:07', '2018-06-28 18:55:07'),
(11, NULL, '2015', '<p>En 2015 incorporamos la FABRICACION de&nbsp;<span style=\"color:#de1f06\"><strong>COMPRESORES AIRDIN</strong></span>&nbsp;y repuestos originales , donde nos especializamos en el dise&ntilde;o y desarrollo de COMPRESORES DE AIRE Y GASES TECNICOS a medida de las necesidades de nuestros clientes&nbsp;con ingenieria de la marca AIRDIN con una historia de 16000 compresores fabricados en un lapso de 50 a&ntilde;os en el mercado argentino e internacional.</p>', 'KK', '2018-06-28 18:56:55', '2018-06-28 18:56:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajamos`
--

CREATE TABLE `trabajamos` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `trabajamos`
--

INSERT INTO `trabajamos` (`id`, `imagen`, `titulo`, `subtitulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'trabajamos__1.png', 'Presupuesto', '1º PASO', '<p>El departamento de cotizaciones prepara un presupuesto seg&uacute;n las indicaciones enviadas por los clientes. En este caso, se trata de dise&ntilde;o y fabricaci&oacute;n</p>', 'AA', '2018-06-25 17:06:29', '2018-06-25 17:06:29'),
(2, 'trabajamos__2.png', 'Análisis y Planificación', '2º PASO', '<p>En Reuni&oacute;n de Dise&ntilde;o se preparan las etapas necesarias a la fabricaci&oacute;n del producto, necesidad de materia prima y metodolog&iacute;as a emplear</p>', 'BB', '2018-06-25 17:06:43', '2018-06-25 17:06:43'),
(3, 'trabajamos__3.png', 'Fabricación', '3º PASO', '<p>Se genera una O/T &nbsp;con todos los procesos y las &aacute;reas involucradas para su ejecuci&oacute;n con fechas programadas en nuestro sistema de KANBAN</p>', 'CC', '2018-06-25 17:06:57', '2018-06-25 17:06:57'),
(4, 'trabajamos__4.png', 'Terminaciones', '4º PASO', '<p>El taller realiza las terminaciones de pulido, tratamiento superficial y pintado</p>', 'DD', '2018-06-25 17:07:17', '2018-06-25 17:07:17'),
(5, 'trabajamos__5.png', 'Antes de la Entrega', '5º PASO', '<p>Finalizaci&oacute;n del producto, inspecci&oacute;n visual, avisos internos de finalizaci&oacute;n de ejecuci&oacute;n</p>', 'EE', '2018-06-25 17:07:34', '2018-06-25 17:07:34'),
(6, 'trabajamos__6.png', 'Comunicación', '6 PASO', '<p>Durante el proceso de producci&oacute;n, el cliente puede estar informado del estado de su pedido en cualquier momento</p>', 'FF', '2018-06-25 17:07:51', '2018-06-25 17:07:51'),
(7, 'trabajamos__7.png', 'Mediciones', '7º PASO', '<p>El controller controla bajada de noyos y cierre de molde (en el caso de modelos para fundici&oacute;n) &nbsp;y se verifican las cotas</p>', 'GG', '2018-06-25 17:08:05', '2018-06-25 17:08:05'),
(8, 'trabajamos__8.png', 'Entrega', '8º PASO', '<p>Seg&uacute;n las necesidades del cliente, el producto se entrega en un palet, o en una caja realizada a medida</p>', 'HH', '2018-06-25 17:08:31', '2018-06-25 17:08:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pablo', 'pablo', '$2y$10$XlOopRLeg45MV4WTZsevmungGPfpyvO3puI6hRGlAjdm2XPIqFQlO', 'kqucXXdDXURxz8Nc3YRi2GZo6uSGPT9mnBS1658FBNKc4VomPJf6fRWfjN99', NULL, '2018-06-04 16:47:12'),
(4, 'carlos', 'carlos', '$2y$10$Mu0dfGXk1wrhvkYU0uMusuFwYQuwzdqstocQWkXt/XEqrtU2SJEZy', NULL, '2018-06-28 17:34:25', '2018-06-28 17:34:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acategorias`
--
ALTER TABLE `acategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aproductos`
--
ALTER TABLE `aproductos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_contenido`
--
ALTER TABLE `banner_contenido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_iconos`
--
ALTER TABLE `banner_iconos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calidades`
--
ALTER TABLE `calidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias_compresors`
--
ALTER TABLE `categorias_compresors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias_luminarias`
--
ALTER TABLE `categorias_luminarias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias_novedads`
--
ALTER TABLE `categorias_novedads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `correos`
--
ALTER TABLE `correos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descargas`
--
ALTER TABLE `descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destacados`
--
ALTER TABLE `destacados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipamientos`
--
ALTER TABLE `equipamientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerias_id_producto_foreign` (`id_producto`);

--
-- Indices de la tabla `galerias_modelos`
--
ALTER TABLE `galerias_modelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerias_modelos_id_productos_modelos_foreign` (`id_productos_modelos`);

--
-- Indices de la tabla `galerias_novedads`
--
ALTER TABLE `galerias_novedads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerias_novedads_id_productos_novedads_foreign` (`id_productos_novedads`);

--
-- Indices de la tabla `home_clientes`
--
ALTER TABLE `home_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos_contenidos`
--
ALTER TABLE `modelos_contenidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos_galerias`
--
ALTER TABLE `modelos_galerias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `novedades_id_categoria_foreign` (`id_categoria`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_compresors`
--
ALTER TABLE `productos_compresors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_compresors_id_categorias_compresors_foreign` (`id_categorias_compresors`);

--
-- Indices de la tabla `productos_luminarias`
--
ALTER TABLE `productos_luminarias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_luminarias_id_categorias_luminarias_foreign` (`id_categorias_luminarias`);

--
-- Indices de la tabla `productos_novedads`
--
ALTER TABLE `productos_novedads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_novedads_id_categorias_novedads_foreign` (`id_categorias_novedads`);

--
-- Indices de la tabla `publicacions`
--
ALTER TABLE `publicacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `soluciones`
--
ALTER TABLE `soluciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajamos`
--
ALTER TABLE `trabajamos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_unique` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acategorias`
--
ALTER TABLE `acategorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `aproductos`
--
ALTER TABLE `aproductos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `banner_contenido`
--
ALTER TABLE `banner_contenido`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `banner_iconos`
--
ALTER TABLE `banner_iconos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `calidades`
--
ALTER TABLE `calidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias_compresors`
--
ALTER TABLE `categorias_compresors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias_luminarias`
--
ALTER TABLE `categorias_luminarias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias_novedads`
--
ALTER TABLE `categorias_novedads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `correos`
--
ALTER TABLE `correos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `descargas`
--
ALTER TABLE `descargas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `destacados`
--
ALTER TABLE `destacados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `equipamientos`
--
ALTER TABLE `equipamientos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galerias_modelos`
--
ALTER TABLE `galerias_modelos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `galerias_novedads`
--
ALTER TABLE `galerias_novedads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `home_clientes`
--
ALTER TABLE `home_clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `modelos_contenidos`
--
ALTER TABLE `modelos_contenidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `modelos_galerias`
--
ALTER TABLE `modelos_galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos_compresors`
--
ALTER TABLE `productos_compresors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos_luminarias`
--
ALTER TABLE `productos_luminarias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos_novedads`
--
ALTER TABLE `productos_novedads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `publicacions`
--
ALTER TABLE `publicacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `soluciones`
--
ALTER TABLE `soluciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `trabajamos`
--
ALTER TABLE `trabajamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD CONSTRAINT `galerias_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `galerias_modelos`
--
ALTER TABLE `galerias_modelos`
  ADD CONSTRAINT `galerias_modelos_id_productos_modelos_foreign` FOREIGN KEY (`id_productos_modelos`) REFERENCES `modelos_galerias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `galerias_novedads`
--
ALTER TABLE `galerias_novedads`
  ADD CONSTRAINT `galerias_novedads_id_productos_novedads_foreign` FOREIGN KEY (`id_productos_novedads`) REFERENCES `productos_novedads` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD CONSTRAINT `novedades_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos_compresors`
--
ALTER TABLE `productos_compresors`
  ADD CONSTRAINT `productos_compresors_id_categorias_compresors_foreign` FOREIGN KEY (`id_categorias_compresors`) REFERENCES `categorias_compresors` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos_luminarias`
--
ALTER TABLE `productos_luminarias`
  ADD CONSTRAINT `productos_luminarias_id_categorias_luminarias_foreign` FOREIGN KEY (`id_categorias_luminarias`) REFERENCES `categorias_luminarias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos_novedads`
--
ALTER TABLE `productos_novedads`
  ADD CONSTRAINT `productos_novedads_id_categorias_novedads_foreign` FOREIGN KEY (`id_categorias_novedads`) REFERENCES `categorias_novedads` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
