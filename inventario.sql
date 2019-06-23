-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2019 a las 07:21:10
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

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
-- Volcado de datos para la tabla `1campus`
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
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_cam` int(4) UNSIGNED NOT NULL,
  `idusuario` int(4) UNSIGNED NOT NULL,
  `nombre` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `rut` int(8) NOT NULL,
  `password` varchar(35) COLLATE utf8_spanish_ci NOT NULL
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
  `f_inicio` datetime NOT NULL,
  `f_termino` datetime NOT NULL,
  `f_informe` datetime NOT NULL,
  `f_elaboracion` datetime NOT NULL,
  `f_aprobacion` datetime NOT NULL,
  `f_revision` datetime NOT NULL
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
-- Estructura de tabla para la tabla `historial_libros`
--

CREATE TABLE `historial_libros` (
  `id_historial_L` int(4) UNSIGNED NOT NULL,
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
-- Estructura de tabla para la tabla `edita`
--

CREATE TABLE `edita` (
  `idusuario` int(4) UNSIGNED NOT NULL,
  `id_historial_c` int(4) UNSIGNED NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modifica`
--

CREATE TABLE `modifica` (
  `idusuario` int(4) UNSIGNED NOT NULL,
  `id_historial_i` int(4) UNSIGNED NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambia`
--

CREATE TABLE `cambia` (
  `idusuario` int(4) UNSIGNED NOT NULL,
  `id_historial_l` int(4) UNSIGNED NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actualiza`
--

CREATE TABLE `actualiza` (
  `idusuario` int(4) UNSIGNED NOT NULL,
  `id_historial_r` int(4) UNSIGNED NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`id_cam`),
  ADD UNIQUE KEY `nombre_cam` (`nombre`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `id_cam` (`id_cam`);

--
-- Indices de la tabla `resp`
--
ALTER TABLE `resp`
  ADD PRIMARY KEY (`idinventario_resp`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`idinventario_libros`);

--
-- Indices de la tabla `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`idinventario_issue`);

--
-- Indices de la tabla `cd`
--
ALTER TABLE `cd`
  ADD PRIMARY KEY (`idinventario_cd`);

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
-- Indices de la tabla `registra`
--
ALTER TABLE `registra`
  ADD PRIMARY KEY (`idregistro`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idinventario` (`idinventario`);

--
-- Indices de la tabla `historial_resp`
--
ALTER TABLE `historial_resp`
  ADD PRIMARY KEY (`id_historial_r`),
  ADD KEY `idinventario_resp` (`idinventario_resp`);

--
-- Indices de la tabla `historial_libros`
--
ALTER TABLE `historial_libros`
  ADD PRIMARY KEY (`id_historial_L`),
  ADD KEY `idinventario_libros` (`idinventario_libros`);

--
-- Indices de la tabla `historial_issue`
--
ALTER TABLE `historial_issue`
  ADD PRIMARY KEY (`id_historial_i`),
  ADD KEY `idinventario_issue` (`idinventario_issue`);

--
-- Indices de la tabla `historial_cd`
--
ALTER TABLE `historial_cd`
  ADD PRIMARY KEY (`id_historial_c`),
  ADD KEY `idinventario_cd` (`idinventario_cd`);

--
-- Indices de la tabla `edita`
--
ALTER TABLE `edita`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `id_historial_c` (`id_historial_c`);

--
-- Indices de la tabla `modifica`
--
ALTER TABLE `modifica`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `id_historial_i` (`id_historial_i`);

--
-- Indices de la tabla `cambia`
--
ALTER TABLE `cambia`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `id_historial_l` (`id_historial_l`);

--
-- Indices de la tabla `actualiza`
--
ALTER TABLE `actualiza`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `id_historial_r` (`id_historial_r`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campus`
--
ALTER TABLE `campus`
  MODIFY `id_cam` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idinventario` int(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `campus_ibfk_1` FOREIGN KEY (`id_cam`) REFERENCES `campus` (`id_cam`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`idinventario_issue`) REFERENCES `issue` (`idinventario_issue`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`idinventario_libros`) REFERENCES `libros` (`idinventario_libros`),
  ADD CONSTRAINT `inventario_ibfk_3` FOREIGN KEY (`idinventario_resp`) REFERENCES `resp` (`idinventario_resp`),
  ADD CONSTRAINT `inventario_ibfk_4` FOREIGN KEY (`idinventario_cd`) REFERENCES `cd` (`idinventario_cd`);

--
-- Filtros para la tabla `registra`
--
ALTER TABLE `registra`
  ADD CONSTRAINT `registra_ibfk_1` FOREIGN KEY (`idinventario`) REFERENCES `inventario` (`idinventario`),
  ADD CONSTRAINT `registra_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `historial_resp`
--
ALTER TABLE `historial_resp`
  ADD CONSTRAINT `historial_resp_ibfk_1` FOREIGN KEY (`idinventario_resp`) REFERENCES `resp` (`idinventario_resp`);

--
-- Filtros para la tabla `historial_libros`
--
ALTER TABLE `historial_libros`
  ADD CONSTRAINT `historial_libros_ibfk_1` FOREIGN KEY (`idinventario_libros`) REFERENCES `libros` (`idinventario_libros`);

--
-- Filtros para la tabla `historial_issue`
--
ALTER TABLE `historial_issue`
  ADD CONSTRAINT `historial_issue_ibfk_1` FOREIGN KEY (`idinventario_issue`) REFERENCES `issue` (`idinventario_issue`);

--
-- Filtros para la tabla `historial_cd`
--
ALTER TABLE `historial_cd`
  ADD CONSTRAINT `historial_cd_ibfk_1` FOREIGN KEY (`idinventario_cd`) REFERENCES `cd` (`idinventario_cd`);

--
-- Filtros para la tabla `edita`
--
ALTER TABLE `edita`
  ADD CONSTRAINT `edita_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `edita_ibfk_2` FOREIGN KEY (`id_historial_c`) REFERENCES `historial_cd` (`id_historial_c`);

--
-- Filtros para la tabla `modifica`
--
ALTER TABLE `modifica`
  ADD CONSTRAINT `modifica_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `modifica_ibfk_2` FOREIGN KEY (`id_historial_i`) REFERENCES `historial_issue` (`id_historial_i`);

--
-- Filtros para la tabla `cambia`
--
ALTER TABLE `cambia`
  ADD CONSTRAINT `cambia_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `cambia_ibfk_2` FOREIGN KEY (`id_historial_l`) REFERENCES `historial_libros` (`id_historial_L`);

--
-- Filtros para la tabla `actualiza`
--
ALTER TABLE `actualiza`
  ADD CONSTRAINT `actualiza_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `actualiza_ibfk_2` FOREIGN KEY (`id_historial_r`) REFERENCES `historial_resp` (`id_historial_r`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
