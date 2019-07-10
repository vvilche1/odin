-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2019 a las 02:14:04
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actualiza`
--

CREATE TABLE `actualiza` (
  `id` int(11) NOT NULL,
  `idusuario` int(4) UNSIGNED NOT NULL,
  `id_historial_r` int(4) UNSIGNED NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add campus', 7, 'add_campus'),
(26, 'Can change campus', 7, 'change_campus'),
(27, 'Can delete campus', 7, 'delete_campus'),
(28, 'Can view campus', 7, 'view_campus'),
(29, 'Can add cd', 8, 'add_cd'),
(30, 'Can change cd', 8, 'change_cd'),
(31, 'Can delete cd', 8, 'delete_cd'),
(32, 'Can view cd', 8, 'view_cd'),
(33, 'Can add historial cd', 9, 'add_historialcd'),
(34, 'Can change historial cd', 9, 'change_historialcd'),
(35, 'Can delete historial cd', 9, 'delete_historialcd'),
(36, 'Can view historial cd', 9, 'view_historialcd'),
(37, 'Can add historial issue', 10, 'add_historialissue'),
(38, 'Can change historial issue', 10, 'change_historialissue'),
(39, 'Can delete historial issue', 10, 'delete_historialissue'),
(40, 'Can view historial issue', 10, 'view_historialissue'),
(41, 'Can add historial libros', 11, 'add_historiallibros'),
(42, 'Can change historial libros', 11, 'change_historiallibros'),
(43, 'Can delete historial libros', 11, 'delete_historiallibros'),
(44, 'Can view historial libros', 11, 'view_historiallibros'),
(45, 'Can add historial resp', 12, 'add_historialresp'),
(46, 'Can change historial resp', 12, 'change_historialresp'),
(47, 'Can delete historial resp', 12, 'delete_historialresp'),
(48, 'Can view historial resp', 12, 'view_historialresp'),
(49, 'Can add inventario', 13, 'add_inventario'),
(50, 'Can change inventario', 13, 'change_inventario'),
(51, 'Can delete inventario', 13, 'delete_inventario'),
(52, 'Can view inventario', 13, 'view_inventario'),
(53, 'Can add issue', 14, 'add_issue'),
(54, 'Can change issue', 14, 'change_issue'),
(55, 'Can delete issue', 14, 'delete_issue'),
(56, 'Can view issue', 14, 'view_issue'),
(57, 'Can add libros', 15, 'add_libros'),
(58, 'Can change libros', 15, 'change_libros'),
(59, 'Can delete libros', 15, 'delete_libros'),
(60, 'Can view libros', 15, 'view_libros'),
(61, 'Can add registra', 16, 'add_registra'),
(62, 'Can change registra', 16, 'change_registra'),
(63, 'Can delete registra', 16, 'delete_registra'),
(64, 'Can view registra', 16, 'view_registra'),
(65, 'Can add resp', 17, 'add_resp'),
(66, 'Can change resp', 17, 'change_resp'),
(67, 'Can delete resp', 17, 'delete_resp'),
(68, 'Can view resp', 17, 'view_resp'),
(69, 'Can add usuario', 18, 'add_usuario'),
(70, 'Can change usuario', 18, 'change_usuario'),
(71, 'Can delete usuario', 18, 'delete_usuario'),
(72, 'Can view usuario', 18, 'view_usuario'),
(73, 'Can add actualiza', 19, 'add_actualiza'),
(74, 'Can change actualiza', 19, 'change_actualiza'),
(75, 'Can delete actualiza', 19, 'delete_actualiza'),
(76, 'Can view actualiza', 19, 'view_actualiza'),
(77, 'Can add cambia', 20, 'add_cambia'),
(78, 'Can change cambia', 20, 'change_cambia'),
(79, 'Can delete cambia', 20, 'delete_cambia'),
(80, 'Can view cambia', 20, 'view_cambia'),
(81, 'Can add edita', 21, 'add_edita'),
(82, 'Can change edita', 21, 'change_edita'),
(83, 'Can delete edita', 21, 'delete_edita'),
(84, 'Can view edita', 21, 'view_edita'),
(85, 'Can add modifica', 22, 'add_modifica'),
(86, 'Can change modifica', 22, 'change_modifica'),
(87, 'Can delete modifica', 22, 'delete_modifica'),
(88, 'Can view modifica', 22, 'view_modifica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE latin1_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambia`
--

CREATE TABLE `cambia` (
  `id` int(11) NOT NULL,
  `idusuario` int(4) UNSIGNED NOT NULL,
  `id_historial_l` int(4) UNSIGNED NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campus`
--

CREATE TABLE `campus` (
  `id_cam` int(2) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cpostal` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `abreviatura` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(800) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `campus`
--

INSERT INTO `campus` (`id_cam`, `nombre`, `direccion`, `cpostal`, `fono`, `email`, `ubicacion`, `abreviatura`, `descripcion`) VALUES
(1, 'CAMPUS SAN ANDRÉS', 'Alonso de Ribera #2850', '4070129', '+56 412345530', 'respinozac@ucsc.cl', 'CONCEPCION, VIII REGION, CHILE', 'BSA', 'Se compone de un edificio de 3 pisos de aproximadamente 3.157m2, con amplias salas de estudio individual y grupal, estanterías y puestos de trabajos para el personal, además, de salas tecnológicas para la búsqueda de informacón electrónica. Cuenta con 62 equipos destinados a la búsqueda de información electrónica, catálogos en línea, donde el usuario puede acceder a la información del material bibliográfico exitente, como también en el uso de herramientas ofimáticas.'),
(2, 'CAMPUS SANTO DOMINGO', 'Lincoyan #255', '4070258', '+56 412345600', 'fflores@ucsc.cl', 'CONCEPCION, VIII REGION, CHILE', 'BSD', 'La biblioteca cuenta con una con una superficie de 745.71mts2, que se dividen en: 2 salas de estudio y estantería abierta. Asi mismo La colección que concentra es, 97% especializada en el área de derecho, ciencias jurídicas y 3% en misceláneas. Esta biblioteca tiene a disposición de los alumnos y docentes recursos electrónicos especializados en el área del derecho. La biblioteca brinda un servicio a los alumnos de Licenciatura en Derecho y de los posgrados de Magister de Derecho Penal, Derecho Privado, y Derecho Procesal de Familia. Dotada con equipos computacionales para uso de usuarios y puestos de trabajos para estudio grupal e individual y también equipo inclusivo. (PIE)'),
(3, 'CAMPUS CLINICO CHILLÁN', 'Francisco Ramirez #10', '(sin codigo postal)', '+56 422248308', 'jyanez@ucsc.cl', 'CHILLAN, VIII REGION, CHILE', 'BCH', 'La biblioteca cuenta con una superficie de 110.71 mts2 y es de modalidad estantería abierta, la colección que concentra es, 95% especializada en el área de medicina y 5% en miscelánea. Asi mismo, esta dotada con equipos computacionales y puestos de trabajos para estudio grupal, y también equipo inclusivo. (PIE).Esta biblioteca tiene a disposición de los alumnos y docentes recursos electrónicos especializados en el área de salud y brinda un servicios a los alumnos de Medicina, Enfermería, Nutrición, que realicen su campo clínico de la Universidad en el Hospital Herminda Martin, además del personal del mismo hospital.'),
(4, 'INSTITUTO TECNOLÓGICO - SEDE TALCAHUANO', 'Colon #2766', '4261202', '+56 412345823', 'biblioteca.it@ucsc.cl', 'TALCAHUANO, VIII REGION, CHILE', 'ITTA', 'Biblioteca Sede Talcahuano cuenta con una infraestructura de 75 metros cuadrados y así mismo está dotada con equipos computacionales y puestos de trabajos para estudios grupal e individual, cuenta también con equipo inclusivo (PIE). Tiene una colección de 2.100 ejemplares con 700 títulos aproximadamente. La biblioteca que presta servicio en jornadas diurna y vespertina a los alumnos y docentes de las carreras técnicas, ingenierías de ejecución y programas de continuidad de estudios.'),
(5, 'INSTITUTO TECNOLÓGICO - SEDE CHILLÁN', 'Arauco #449', '3800676', '+56 42245963', 'jchavez@ucsc.cl', 'CHILLAN, VIII REGION, CHILE', 'ITCH', 'Biblioteca Sede Chillán cuenta con una infraestructura de 100 metros cuadrados y así mismo está dotada con equipos computacionales y puestos de trabajos para estudios grupal e individual, cuenta también con equipo inclusivo (PIE). Tiene una colección de 3200 ejemplares con 1100 títulos aproximadamente. La biblioteca que presta servicios en jornadas diurna y vespertina a los alumnos y docentes de las carreras técnicas, ingenierías de ejecución y programas de continuidad de estudios.'),
(6, 'INSTITUTO TECNOLÓGICO - SEDE LOS ANGELES', 'Caupolicán #276', '4441185', '+56 43345879', 'jaguirre@ucsc.cl', 'LOS ANGELES, VIII REGION, CHILE', 'ITLA', 'Biblioteca Sede Los Ángeles cuenta con una infraestructura de 74 metros cuadrados y así mismo está dotada con equipos computacionales y puestos de trabajos para estudios grupal e individual, cuenta también con equipo inclusivo (PIE). Tiene una colección de 3700 ejemplares con 1500 títulos aproximadamente. La biblioteca que presta servicios en jornadas diurna y vespertina a los alumnos y docentes de las carreras técnicas, ingenierías de ejecución y programas de continuidad de estudios.'),
(7, 'INSTITUTO TECNOLÓGICO - SEDE CAÑETE', 'Av. Eduardo Frei #787', '(sin codigo postal)', '+56 412345775', 'cesarw@ucsc.cl', 'CAÑETE, VIII REGION, CHILE', 'ITCA', 'Biblioteca Sede Cañete cuenta con una infraestructura de 100 metros cuadrados y así mismo está dotada con equipos computacionales y puestos de trabajos para estudios grupal e individual, cuenta también con equipo inclusivo (PIE). Tiene una colección de 3200 ejemplares con 1100 títulos aproximadamente. La biblioteca que presta servicios en jornadas diurna y vespertina a los alumnos y docentes de las carreras técnicas, ingenierías de ejecución y programas de continuidad de estudios.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cd`
--

CREATE TABLE `cd` (
  `idinventario_cd` int(4) UNSIGNED NOT NULL,
  `total_items` int(11) NOT NULL,
  `total_items_inventariados` int(11) NOT NULL,
  `total_items_en_prestamos_permanente` int(11) NOT NULL,
  `total_items_en_morosos_alumnos` int(11) NOT NULL,
  `total_items_morosos_academicos` int(11) NOT NULL,
  `total_items_morosos_funcionarios` int(11) NOT NULL,
  `total_items_morosos_postgrado` int(11) NOT NULL,
  `total_items_morosos_pib` int(11) NOT NULL,
  `total_items_extraviados` int(11) NOT NULL,
  `total_items_perdidos` int(11) NOT NULL,
  `total_items_inutilizados` int(11) NOT NULL,
  `total_items_deteriorados_para_empastar` int(11) NOT NULL,
  `total_items_transito` int(11) NOT NULL,
  `total_items_problemas_de_catalogacion` int(11) NOT NULL,
  `total_items_faltantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cd`
--

INSERT INTO `cd` (`idinventario_cd`, `total_items`, `total_items_inventariados`, `total_items_en_prestamos_permanente`, `total_items_en_morosos_alumnos`, `total_items_morosos_academicos`, `total_items_morosos_funcionarios`, `total_items_morosos_postgrado`, `total_items_morosos_pib`, `total_items_extraviados`, `total_items_perdidos`, `total_items_inutilizados`, `total_items_deteriorados_para_empastar`, `total_items_transito`, `total_items_problemas_de_catalogacion`, `total_items_faltantes`) VALUES
(7, 10, 29, 9, 8, 0, 8, 7, 9, 7, 6, 9, 7, 8, 7, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE latin1_spanish_ci,
  `object_repr` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE latin1_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(19, 'inventario', 'actualiza'),
(20, 'inventario', 'cambia'),
(7, 'inventario', 'campus'),
(8, 'inventario', 'cd'),
(21, 'inventario', 'edita'),
(9, 'inventario', 'historialcd'),
(10, 'inventario', 'historialissue'),
(11, 'inventario', 'historiallibros'),
(12, 'inventario', 'historialresp'),
(13, 'inventario', 'inventario'),
(14, 'inventario', 'issue'),
(15, 'inventario', 'libros'),
(22, 'inventario', 'modifica'),
(16, 'inventario', 'registra'),
(17, 'inventario', 'resp'),
(18, 'inventario', 'usuario'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-07-07 00:04:25.114181'),
(2, 'auth', '0001_initial', '2019-07-07 00:04:27.089743'),
(3, 'admin', '0001_initial', '2019-07-07 00:04:56.744932'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-07-07 00:04:59.471545'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-07-07 00:04:59.693419'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-07-07 00:05:01.609621'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-07-07 00:05:02.927807'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-07-07 00:05:04.440876'),
(9, 'auth', '0004_alter_user_username_opts', '2019-07-07 00:05:04.644751'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-07-07 00:05:05.164431'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-07-07 00:05:05.353315'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-07-07 00:05:05.408615'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-07-07 00:05:06.697262'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-07-07 00:05:08.173636'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-07-07 00:05:09.624743'),
(16, 'auth', '0011_update_proxy_permissions', '2019-07-07 00:05:09.814137'),
(17, 'inventario', '0001_initial', '2019-07-07 00:05:09.986032'),
(18, 'inventario', '0002_auto_20190627_0907', '2019-07-07 00:05:10.061988'),
(19, 'sessions', '0001_initial', '2019-07-07 00:05:10.326824');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE latin1_spanish_ci NOT NULL,
  `session_data` longtext COLLATE latin1_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edita`
--

CREATE TABLE `edita` (
  `id` int(11) NOT NULL,
  `idusuario` int(4) UNSIGNED NOT NULL,
  `id_historial_c` int(4) UNSIGNED NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_cd`
--

CREATE TABLE `historial_cd` (
  `id_historial_c` int(4) UNSIGNED NOT NULL,
  `idinventario_cd` int(4) UNSIGNED NOT NULL,
  `total_items` int(11) UNSIGNED NOT NULL,
  `total_items_inventariados` int(11) UNSIGNED NOT NULL,
  `total_items_en_prestamos_permanente` int(11) UNSIGNED NOT NULL,
  `total_items_en_morosos_alumnos` int(11) UNSIGNED NOT NULL,
  `total_items_morosos_academicos` int(11) UNSIGNED NOT NULL,
  `total_items_morosos_funcionarios` int(11) UNSIGNED NOT NULL,
  `total_items_morosos_postgrado` int(11) UNSIGNED NOT NULL,
  `total_items_morosos_pib` int(11) UNSIGNED NOT NULL,
  `total_items_extraviados` int(11) UNSIGNED NOT NULL,
  `total_items_perdidos` int(11) UNSIGNED NOT NULL,
  `total_items_inutilizados` int(11) UNSIGNED NOT NULL,
  `total_items_deteriorados_para_empastar` int(11) UNSIGNED NOT NULL,
  `total_items_transito` int(11) UNSIGNED NOT NULL,
  `total_items_problemas_de_catalogacion` int(11) UNSIGNED NOT NULL,
  `total_items_faltantes` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_issue`
--

CREATE TABLE `historial_issue` (
  `id_historial_i` int(4) UNSIGNED NOT NULL,
  `idinventario_issue` int(4) UNSIGNED NOT NULL,
  `total_items` int(11) NOT NULL,
  `total_items_inventariados` int(11) NOT NULL,
  `total_items_en_prestamos_permanente` int(11) NOT NULL,
  `total_items_en_morosos_alumnos` int(11) NOT NULL,
  `total_items_morosos_academicos` int(11) NOT NULL,
  `total_items_morosos_funcionarios` int(11) NOT NULL,
  `total_items_morosos_postgrado` int(11) NOT NULL,
  `total_items_morosos_pib` int(11) NOT NULL,
  `total_items_extraviados` int(11) NOT NULL,
  `total_items_perdidos` int(11) NOT NULL,
  `total_items_inutilizados` int(11) NOT NULL,
  `total_items_deteriorados_para_empastar` int(11) NOT NULL,
  `total_items_transito` int(11) NOT NULL,
  `total_items_problemas_de_catalogacion` int(11) NOT NULL,
  `total_items_faltantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_libros`
--

CREATE TABLE `historial_libros` (
  `id_historial_l` int(4) UNSIGNED NOT NULL,
  `idinventario_libros` int(4) UNSIGNED NOT NULL,
  `total_items` int(11) NOT NULL,
  `total_items_inventariados` int(11) NOT NULL,
  `total_items_en_prestamos_permanente` int(11) NOT NULL,
  `total_items_en_morosos_alumnos` int(11) NOT NULL,
  `total_items_morosos_academicos` int(11) NOT NULL,
  `total_items_morosos_funcionarios` int(11) NOT NULL,
  `total_items_morosos_postgrado` int(11) NOT NULL,
  `total_items_morosos_pib` int(11) NOT NULL,
  `total_items_extraviados` int(11) NOT NULL,
  `total_items_perdidos` int(11) NOT NULL,
  `total_items_inutilizados` int(11) NOT NULL,
  `total_items_deteriorados_para_empastar` int(11) NOT NULL,
  `total_items_transito` int(11) NOT NULL,
  `total_items_problemas_de_catalogacion` int(11) NOT NULL,
  `total_items_faltantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_resp`
--

CREATE TABLE `historial_resp` (
  `id_historial_r` int(4) UNSIGNED NOT NULL,
  `idinventario_resp` int(4) UNSIGNED NOT NULL,
  `total_items` int(11) UNSIGNED NOT NULL,
  `total_items_inventariados` int(11) UNSIGNED NOT NULL,
  `total_items_en_prestamos_permanente` int(11) UNSIGNED NOT NULL,
  `total_items_en_morosos_alumnos` int(11) UNSIGNED NOT NULL,
  `total_items_morosos_academicos` int(11) UNSIGNED NOT NULL,
  `total_items_morosos_funcionarios` int(11) UNSIGNED NOT NULL,
  `total_items_morosos_postgrado` int(11) UNSIGNED NOT NULL,
  `total_items_morosos_pib` int(11) UNSIGNED NOT NULL,
  `total_items_extraviados` int(11) UNSIGNED NOT NULL,
  `total_items_perdidos` int(11) UNSIGNED NOT NULL,
  `total_items_inutilizados` int(11) UNSIGNED NOT NULL,
  `total_items_deteriorados_para_empastar` int(11) UNSIGNED NOT NULL,
  `total_items_transito` int(11) UNSIGNED NOT NULL,
  `total_items_problemas_de_catalogacion` int(11) UNSIGNED NOT NULL,
  `total_items_faltantes` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idinventario` int(4) UNSIGNED NOT NULL,
  `idinventario_libros` int(4) UNSIGNED NOT NULL,
  `idinventario_issue` int(4) UNSIGNED NOT NULL,
  `idinventario_cd` int(4) UNSIGNED NOT NULL,
  `idinventario_resp` int(4) UNSIGNED NOT NULL,
  `nombre_inventario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `f_inicio` datetime NOT NULL,
  `f_termino` datetime NOT NULL,
  `f_informe` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idinventario`, `idinventario_libros`, `idinventario_issue`, `idinventario_cd`, `idinventario_resp`, `nombre_inventario`, `f_inicio`, `f_termino`, `f_informe`) VALUES
(7, 7, 7, 7, 7, 'INVENTARIO 2019', '2019-02-23 03:00:00', '2019-02-28 03:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `issue`
--

CREATE TABLE `issue` (
  `idinventario_issue` int(4) UNSIGNED NOT NULL,
  `total_items` int(11) NOT NULL,
  `total_items_inventariados` int(11) NOT NULL,
  `total_items_en_prestamos_permanente` int(11) NOT NULL,
  `total_items_en_morosos_alumnos` int(11) NOT NULL,
  `total_items_morosos_academicos` int(11) NOT NULL,
  `total_items_morosos_funcionarios` int(11) NOT NULL,
  `total_items_morosos_postgrado` int(11) NOT NULL,
  `total_items_morosos_pib` int(11) NOT NULL,
  `total_items_extraviados` int(11) NOT NULL,
  `total_items_perdidos` int(11) NOT NULL,
  `total_items_inutilizados` int(11) NOT NULL,
  `total_items_deteriorados_para_empastar` int(11) NOT NULL,
  `total_items_transito` int(11) NOT NULL,
  `total_items_problemas_de_catalogacion` int(11) NOT NULL,
  `total_items_faltantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `issue`
--

INSERT INTO `issue` (`idinventario_issue`, `total_items`, `total_items_inventariados`, `total_items_en_prestamos_permanente`, `total_items_en_morosos_alumnos`, `total_items_morosos_academicos`, `total_items_morosos_funcionarios`, `total_items_morosos_postgrado`, `total_items_morosos_pib`, `total_items_extraviados`, `total_items_perdidos`, `total_items_inutilizados`, `total_items_deteriorados_para_empastar`, `total_items_transito`, `total_items_problemas_de_catalogacion`, `total_items_faltantes`) VALUES
(7, 10, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `idinventario_libros` int(4) UNSIGNED NOT NULL,
  `total_items` int(11) NOT NULL,
  `total_items_inventariados` int(11) NOT NULL,
  `total_items_en_prestamos_permanente` int(11) NOT NULL,
  `total_items_en_morosos_alumnos` int(11) NOT NULL,
  `total_items_morosos_academicos` int(11) NOT NULL,
  `total_items_morosos_funcionarios` int(11) NOT NULL,
  `total_items_morosos_postgrado` int(11) NOT NULL,
  `total_items_morosos_pib` int(11) NOT NULL,
  `total_items_extraviados` int(11) NOT NULL,
  `total_items_perdidos` int(11) NOT NULL,
  `total_items_inutilizados` int(11) NOT NULL,
  `total_items_deteriorados_para_empastar` int(11) NOT NULL,
  `total_items_transito` int(11) NOT NULL,
  `total_items_problemas_de_catalogacion` int(11) NOT NULL,
  `total_items_faltantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`idinventario_libros`, `total_items`, `total_items_inventariados`, `total_items_en_prestamos_permanente`, `total_items_en_morosos_alumnos`, `total_items_morosos_academicos`, `total_items_morosos_funcionarios`, `total_items_morosos_postgrado`, `total_items_morosos_pib`, `total_items_extraviados`, `total_items_perdidos`, `total_items_inutilizados`, `total_items_deteriorados_para_empastar`, `total_items_transito`, `total_items_problemas_de_catalogacion`, `total_items_faltantes`) VALUES
(7, 100, 10, 1, 1, 1, 2, 2, 1, 2, 13, 1, 3, 3, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modifica`
--

CREATE TABLE `modifica` (
  `id` int(11) NOT NULL,
  `idusuario` int(4) UNSIGNED NOT NULL,
  `id_historial_i` int(4) UNSIGNED NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registra`
--

CREATE TABLE `registra` (
  `idregistro` int(4) UNSIGNED NOT NULL,
  `idusuario` int(4) UNSIGNED NOT NULL,
  `idinventario` int(4) UNSIGNED NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resp`
--

CREATE TABLE `resp` (
  `idinventario_resp` int(4) UNSIGNED NOT NULL,
  `total_items` int(11) NOT NULL,
  `total_items_inventariados` int(11) NOT NULL,
  `total_items_en_prestamos_permanente` int(11) NOT NULL,
  `total_items_en_morosos_alumnos` int(11) NOT NULL,
  `total_items_morosos_academicos` int(11) NOT NULL,
  `total_items_morosos_funcionarios` int(11) NOT NULL,
  `total_items_morosos_postgrado` int(11) NOT NULL,
  `total_items_morosos_pib` int(11) NOT NULL,
  `total_items_extraviados` int(11) NOT NULL,
  `total_items_perdidos` int(11) NOT NULL,
  `total_items_inutilizados` int(11) NOT NULL,
  `total_items_deteriorados_para_empastar` int(11) NOT NULL,
  `total_items_transito` int(11) NOT NULL,
  `total_items_problemas_de_catalogacion` int(11) NOT NULL,
  `total_items_faltantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `resp`
--

INSERT INTO `resp` (`idinventario_resp`, `total_items`, `total_items_inventariados`, `total_items_en_prestamos_permanente`, `total_items_en_morosos_alumnos`, `total_items_morosos_academicos`, `total_items_morosos_funcionarios`, `total_items_morosos_postgrado`, `total_items_morosos_pib`, `total_items_extraviados`, `total_items_perdidos`, `total_items_inutilizados`, `total_items_deteriorados_para_empastar`, `total_items_transito`, `total_items_problemas_de_catalogacion`, `total_items_faltantes`) VALUES
(7, 100, 12, 23, 7, 67, 8, 876, 85, 86, 8, 87, 6, 8, 8, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_cam` int(4) UNSIGNED NOT NULL,
  `idusuario` int(4) UNSIGNED NOT NULL,
  `nombre` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `rut` int(8) NOT NULL,
  `password` varchar(35) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actualiza`
--
ALTER TABLE `actualiza`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `id_historial_r` (`id_historial_r`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` (`group_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cambia`
--
ALTER TABLE `cambia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `id_historial_l` (`id_historial_l`);

--
-- Indices de la tabla `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`id_cam`),
  ADD UNIQUE KEY `nombre_cam` (`nombre`);

--
-- Indices de la tabla `cd`
--
ALTER TABLE `cd`
  ADD PRIMARY KEY (`idinventario_cd`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `edita`
--
ALTER TABLE `edita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `id_historial_c` (`id_historial_c`);

--
-- Indices de la tabla `historial_cd`
--
ALTER TABLE `historial_cd`
  ADD PRIMARY KEY (`id_historial_c`),
  ADD KEY `idinventario_cd` (`idinventario_cd`);

--
-- Indices de la tabla `historial_issue`
--
ALTER TABLE `historial_issue`
  ADD PRIMARY KEY (`id_historial_i`),
  ADD KEY `idinventario_issue` (`idinventario_issue`);

--
-- Indices de la tabla `historial_libros`
--
ALTER TABLE `historial_libros`
  ADD PRIMARY KEY (`id_historial_l`),
  ADD KEY `idinventario_libros` (`idinventario_libros`);

--
-- Indices de la tabla `historial_resp`
--
ALTER TABLE `historial_resp`
  ADD PRIMARY KEY (`id_historial_r`),
  ADD KEY `idinventario_resp` (`idinventario_resp`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idinventario`),
  ADD KEY `idinventario_issue` (`idinventario_issue`),
  ADD KEY `idinventario_cd` (`idinventario_cd`),
  ADD KEY `idinventario_resp` (`idinventario_resp`),
  ADD KEY `idinventario_libros` (`idinventario_libros`) USING BTREE;

--
-- Indices de la tabla `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`idinventario_issue`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`idinventario_libros`);

--
-- Indices de la tabla `modifica`
--
ALTER TABLE `modifica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `id_historial_i` (`id_historial_i`);

--
-- Indices de la tabla `registra`
--
ALTER TABLE `registra`
  ADD PRIMARY KEY (`idregistro`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idinventario` (`idinventario`);

--
-- Indices de la tabla `resp`
--
ALTER TABLE `resp`
  ADD PRIMARY KEY (`idinventario_resp`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `id_cam` (`id_cam`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actualiza`
--
ALTER TABLE `actualiza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cambia`
--
ALTER TABLE `cambia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `campus`
--
ALTER TABLE `campus`
  MODIFY `id_cam` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cd`
--
ALTER TABLE `cd`
  MODIFY `idinventario_cd` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `edita`
--
ALTER TABLE `edita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_cd`
--
ALTER TABLE `historial_cd`
  MODIFY `id_historial_c` int(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_issue`
--
ALTER TABLE `historial_issue`
  MODIFY `id_historial_i` int(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_libros`
--
ALTER TABLE `historial_libros`
  MODIFY `id_historial_l` int(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_resp`
--
ALTER TABLE `historial_resp`
  MODIFY `id_historial_r` int(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idinventario` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `issue`
--
ALTER TABLE `issue`
  MODIFY `idinventario_issue` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `idinventario_libros` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `modifica`
--
ALTER TABLE `modifica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registra`
--
ALTER TABLE `registra`
  MODIFY `idregistro` int(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resp`
--
ALTER TABLE `resp`
  MODIFY `idinventario_resp` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actualiza`
--
ALTER TABLE `actualiza`
  ADD CONSTRAINT `actualiza_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `actualiza_ibfk_2` FOREIGN KEY (`id_historial_r`) REFERENCES `historial_resp` (`id_historial_r`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `cambia`
--
ALTER TABLE `cambia`
  ADD CONSTRAINT `cambia_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `cambia_ibfk_2` FOREIGN KEY (`id_historial_l`) REFERENCES `historial_libros` (`id_historial_l`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `edita`
--
ALTER TABLE `edita`
  ADD CONSTRAINT `edita_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `edita_ibfk_2` FOREIGN KEY (`id_historial_c`) REFERENCES `historial_cd` (`id_historial_c`);

--
-- Filtros para la tabla `historial_cd`
--
ALTER TABLE `historial_cd`
  ADD CONSTRAINT `historial_cd_ibfk_1` FOREIGN KEY (`idinventario_cd`) REFERENCES `cd` (`idinventario_cd`);

--
-- Filtros para la tabla `historial_issue`
--
ALTER TABLE `historial_issue`
  ADD CONSTRAINT `historial_issue_ibfk_1` FOREIGN KEY (`idinventario_issue`) REFERENCES `issue` (`idinventario_issue`);

--
-- Filtros para la tabla `historial_libros`
--
ALTER TABLE `historial_libros`
  ADD CONSTRAINT `historial_libros_ibfk_1` FOREIGN KEY (`idinventario_libros`) REFERENCES `libros` (`idinventario_libros`);

--
-- Filtros para la tabla `historial_resp`
--
ALTER TABLE `historial_resp`
  ADD CONSTRAINT `historial_resp_ibfk_1` FOREIGN KEY (`idinventario_resp`) REFERENCES `resp` (`idinventario_resp`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`idinventario_issue`) REFERENCES `issue` (`idinventario_issue`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`idinventario_libros`) REFERENCES `libros` (`idinventario_libros`),
  ADD CONSTRAINT `inventario_ibfk_3` FOREIGN KEY (`idinventario_resp`) REFERENCES `resp` (`idinventario_resp`),
  ADD CONSTRAINT `inventario_ibfk_4` FOREIGN KEY (`idinventario_cd`) REFERENCES `cd` (`idinventario_cd`);

--
-- Filtros para la tabla `modifica`
--
ALTER TABLE `modifica`
  ADD CONSTRAINT `modifica_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `modifica_ibfk_2` FOREIGN KEY (`id_historial_i`) REFERENCES `historial_issue` (`id_historial_i`);

--
-- Filtros para la tabla `registra`
--
ALTER TABLE `registra`
  ADD CONSTRAINT `registra_ibfk_1` FOREIGN KEY (`idinventario`) REFERENCES `inventario` (`idinventario`),
  ADD CONSTRAINT `registra_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `campus_ibfk_1` FOREIGN KEY (`id_cam`) REFERENCES `campus` (`id_cam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
