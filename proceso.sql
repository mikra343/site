-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2020 a las 21:34:38
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proceso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adeudo`
--

CREATE TABLE `adeudo` (
  `id_adeudo` int(11) NOT NULL,
  `nc` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adeudo`
--

INSERT INTO `adeudo` (`id_adeudo`, `nc`, `id_area`) VALUES
(1, 2015123021, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `recursos` varchar(60) DEFAULT NULL,
  `computo` varchar(60) DEFAULT NULL,
  `talleres` varchar(60) DEFAULT NULL,
  `biblioteca` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `recursos`, `computo`, `talleres`, `biblioteca`) VALUES
(1, 'Departamento de Recursos Materiares', 'Laboratorio de Computo', 'Laboratorios y Talleres', 'Biblioteca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesor`
--

CREATE TABLE `asesor` (
  `id_asesor` int(11) NOT NULL,
  `nombreA` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asesor`
--

INSERT INTO `asesor` (`id_asesor`, `nombreA`) VALUES
(1, 'Lic. Maria Guadalupe Ordoñez'),
(2, 'Ing. Benoito Pedroza Romero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autorizacion`
--

CREATE TABLE `autorizacion` (
  `id_auto` int(11) NOT NULL,
  `id_director` int(11) DEFAULT NULL,
  `id_sinodales` int(11) DEFAULT NULL,
  `id_dje` int(11) DEFAULT NULL,
  `nc` int(11) DEFAULT NULL,
  `id_division` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autorizacion`
--

INSERT INTO `autorizacion` (`id_auto`, `id_director`, `id_sinodales`, `id_dje`, `nc`, `id_division`) VALUES
(1, NULL, NULL, NULL, NULL, 0),
(14, 1, 21, 1, 2015123021, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospersonales`
--

CREATE TABLE `datospersonales` (
  `nc` int(10) NOT NULL,
  `ap` varchar(30) DEFAULT NULL,
  `am` varchar(30) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `curp` varchar(20) DEFAULT NULL,
  `generacion` varchar(20) DEFAULT NULL,
  `carrera` varchar(50) DEFAULT NULL,
  `id_proyecto` int(11) DEFAULT NULL,
  `opcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datospersonales`
--

INSERT INTO `datospersonales` (`nc`, `ap`, `am`, `nombre`, `curp`, `generacion`, `carrera`, `id_proyecto`, `opcion`) VALUES
(2015123021, 'Diaz', 'Flores', 'Erica', 'DIFE961006MMCZLR', '2016 - 2020', 'Ingeniería En Sistemas Computacionales', 1, 'Residencia Profesional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `id_director` int(11) NOT NULL,
  `nombreD` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`id_director`, `nombreD`) VALUES
(1, 'Lic. Luis Enrique González Baeza ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `division`
--

CREATE TABLE `division` (
  `id_division` int(11) NOT NULL,
  `nombreJ` varchar(60) DEFAULT NULL,
  `carrera` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `division`
--

INSERT INTO `division` (`id_division`, `nombreJ`, `carrera`) VALUES
(1, 'Lic. Demetrio Diaz', 'Ingeniería en Sistemas Computacionales'),
(2, 'Ing. Felipe Raimundo', 'Ingeniería en Electrónica'),
(3, 'Innovación', 'Licenciatura en Innovación Agrícola'),
(4, 'Turismo', 'Licenciatura en Turismo'),
(5, 'Industrias', 'Ingeniería en Industrias Alimentarias'),
(6, 'Administración', 'Licenciatura en Administración');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dje`
--

CREATE TABLE `dje` (
  `id_dje` int(11) NOT NULL,
  `nombreDJE` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dje`
--

INSERT INTO `dje` (`id_dje`, `nombreDJE`) VALUES
(1, 'Lic Pedro Robero ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `id_domicilio` int(11) NOT NULL,
  `calle` varchar(50) DEFAULT NULL,
  `ne` int(6) DEFAULT NULL,
  `ni` int(6) DEFAULT NULL,
  `colonia` varchar(50) DEFAULT NULL,
  `poblacion` varchar(50) DEFAULT NULL,
  `municipio` varchar(50) DEFAULT NULL,
  `entidad` varchar(50) DEFAULT NULL,
  `telefono` varchar(11) DEFAULT NULL,
  `celular` varchar(11) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `domicilio`
--

INSERT INTO `domicilio` (`id_domicilio`, `calle`, `ne`, `ni`, `colonia`, `poblacion`, `municipio`, `entidad`, `telefono`, `celular`, `correo`, `facebook`) VALUES
(1, 'Sendero de Vida', NULL, NULL, 'Emiliano Zapata', 'Tenancingo', 'Tenancingo', 'Estado de México', NULL, '7229024183', 'kiika_06@hotmail.es', 'Acire Diaz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma`
--

CREATE TABLE `forma` (
  `id_forma` int(11) NOT NULL,
  `individual` varchar(1) DEFAULT NULL,
  `equipo` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `forma`
--

INSERT INTO `forma` (`id_forma`, `individual`, `equipo`) VALUES
(1, NULL, 'x');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inconveniencia`
--

CREATE TABLE `inconveniencia` (
  `id_inc` int(11) NOT NULL,
  `id_sub` int(11) DEFAULT NULL,
  `nc` int(11) DEFAULT NULL,
  `id_dje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inconveniencia`
--

INSERT INTO `inconveniencia` (`id_inc`, `id_sub`, `nc`, `id_dje`) VALUES
(1, 1, 2015123021, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liberacion`
--

CREATE TABLE `liberacion` (
  `id_liberacion` int(11) NOT NULL,
  `id_division` int(11) DEFAULT NULL,
  `nc` int(11) DEFAULT NULL,
  `id_asesor` int(11) DEFAULT NULL,
  `id_revisor` int(11) DEFAULT NULL,
  `id_proyecto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `liberacion`
--

INSERT INTO `liberacion` (`id_liberacion`, `id_division`, `nc`, `id_asesor`, `id_revisor`, `id_proyecto`) VALUES
(1, 1, 2015123021, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion`
--

CREATE TABLE `opcion` (
  `id_opcion` int(11) NOT NULL,
  `residencia` varchar(1) DEFAULT NULL,
  `integral` varchar(1) DEFAULT NULL,
  `investigacion` varchar(1) DEFAULT NULL,
  `estancia` varchar(1) DEFAULT NULL,
  `integrador` varchar(1) DEFAULT NULL,
  `tesis` varchar(1) DEFAULT NULL,
  `productivo` varchar(1) DEFAULT NULL,
  `ceneval` varchar(1) DEFAULT NULL,
  `innovacion` varchar(1) DEFAULT NULL,
  `promedio` varchar(1) DEFAULT NULL,
  `emprendedurismo` varchar(1) DEFAULT NULL,
  `otro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opcion`
--

INSERT INTO `opcion` (`id_opcion`, `residencia`, `integral`, `investigacion`, `estancia`, `integrador`, `tesis`, `productivo`, `ceneval`, `innovacion`, `promedio`, `emprendedurismo`, `otro`) VALUES
(1, 'x', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nombrep` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id_proyecto`, `nombrep`) VALUES
(1, 'SIITE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisor`
--

CREATE TABLE `revisor` (
  `id_revisor` int(11) NOT NULL,
  `revisorA` varchar(60) DEFAULT NULL,
  `revisorB` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `revisor`
--

INSERT INTO `revisor` (`id_revisor`, `revisorA`, `revisorB`) VALUES
(1, NULL, NULL),
(2, 'mm', 'mmm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rproyecto`
--

CREATE TABLE `rproyecto` (
  `id_rproyecto` int(11) NOT NULL,
  `id_division` int(11) DEFAULT NULL,
  `id_proyecto` int(11) DEFAULT NULL,
  `id_asesor` int(11) DEFAULT NULL,
  `id_revisor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rproyecto`
--

INSERT INTO `rproyecto` (`id_rproyecto`, `id_division`, `id_proyecto`, `id_asesor`, `id_revisor`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sinodales`
--

CREATE TABLE `sinodales` (
  `id_sinodales` int(11) NOT NULL,
  `presidente` varchar(60) DEFAULT NULL,
  `secretario` varchar(60) DEFAULT NULL,
  `vocal` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sinodales`
--

INSERT INTO `sinodales` (`id_sinodales`, `presidente`, `secretario`, `vocal`) VALUES
(1, NULL, NULL, NULL),
(21, 'Lic. María Guadalupe Guerrero Ordoñez', 'Ing. Benito Pedroza Romero', 'Ing. Fernando Trejo Roman'),
(22, '3', '3', '3'),
(23, '4', '4', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solinicio`
--

CREATE TABLE `solinicio` (
  `id_inicio` int(11) NOT NULL,
  `nc` int(11) DEFAULT NULL,
  `id_domicilio` int(11) DEFAULT NULL,
  `id_opcion` int(11) DEFAULT NULL,
  `id_forma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solinicio`
--

INSERT INTO `solinicio` (`id_inicio`, `nc`, `id_domicilio`, `id_opcion`, `id_forma`) VALUES
(1, 2015123021, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subdirector`
--

CREATE TABLE `subdirector` (
  `id_sub` int(11) NOT NULL,
  `nombreS` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subdirector`
--

INSERT INTO `subdirector` (`id_sub`, `nombreS`) VALUES
(1, 'Subdirector Escolar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adeudo`
--
ALTER TABLE `adeudo`
  ADD PRIMARY KEY (`id_adeudo`),
  ADD KEY `nc` (`nc`),
  ADD KEY `id_area` (`id_area`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `asesor`
--
ALTER TABLE `asesor`
  ADD PRIMARY KEY (`id_asesor`);

--
-- Indices de la tabla `autorizacion`
--
ALTER TABLE `autorizacion`
  ADD PRIMARY KEY (`id_auto`),
  ADD KEY `id_director` (`id_director`),
  ADD KEY `id_sinodales` (`id_sinodales`),
  ADD KEY `id_dje` (`id_dje`),
  ADD KEY `nc` (`nc`),
  ADD KEY `id_division` (`id_division`);

--
-- Indices de la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  ADD PRIMARY KEY (`nc`),
  ADD KEY `id_proyecto` (`id_proyecto`) USING BTREE;

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id_director`);

--
-- Indices de la tabla `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id_division`),
  ADD UNIQUE KEY `carrera` (`id_division`);

--
-- Indices de la tabla `dje`
--
ALTER TABLE `dje`
  ADD PRIMARY KEY (`id_dje`);

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`id_domicilio`);

--
-- Indices de la tabla `forma`
--
ALTER TABLE `forma`
  ADD PRIMARY KEY (`id_forma`);

--
-- Indices de la tabla `inconveniencia`
--
ALTER TABLE `inconveniencia`
  ADD PRIMARY KEY (`id_inc`),
  ADD KEY `id_sub` (`id_sub`),
  ADD KEY `nc` (`nc`),
  ADD KEY `id_dje` (`id_dje`);

--
-- Indices de la tabla `liberacion`
--
ALTER TABLE `liberacion`
  ADD PRIMARY KEY (`id_liberacion`),
  ADD KEY `id_division` (`id_division`),
  ADD KEY `nc` (`nc`),
  ADD KEY `id_asesor` (`id_asesor`),
  ADD KEY `id_revisor` (`id_revisor`),
  ADD KEY `id_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `opcion`
--
ALTER TABLE `opcion`
  ADD PRIMARY KEY (`id_opcion`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- Indices de la tabla `revisor`
--
ALTER TABLE `revisor`
  ADD PRIMARY KEY (`id_revisor`);

--
-- Indices de la tabla `rproyecto`
--
ALTER TABLE `rproyecto`
  ADD PRIMARY KEY (`id_rproyecto`),
  ADD KEY `id_division` (`id_division`),
  ADD KEY `id_proyecto` (`id_proyecto`),
  ADD KEY `id_asesor` (`id_asesor`),
  ADD KEY `id_revisor` (`id_revisor`);

--
-- Indices de la tabla `sinodales`
--
ALTER TABLE `sinodales`
  ADD PRIMARY KEY (`id_sinodales`);

--
-- Indices de la tabla `solinicio`
--
ALTER TABLE `solinicio`
  ADD PRIMARY KEY (`id_inicio`),
  ADD KEY `nc` (`nc`),
  ADD KEY `id_domicilio` (`id_domicilio`),
  ADD KEY `id_opcion` (`id_opcion`),
  ADD KEY `id_forma` (`id_forma`);

--
-- Indices de la tabla `subdirector`
--
ALTER TABLE `subdirector`
  ADD PRIMARY KEY (`id_sub`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adeudo`
--
ALTER TABLE `adeudo`
  MODIFY `id_adeudo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asesor`
--
ALTER TABLE `asesor`
  MODIFY `id_asesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `autorizacion`
--
ALTER TABLE `autorizacion`
  MODIFY `id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `director`
--
ALTER TABLE `director`
  MODIFY `id_director` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `division`
--
ALTER TABLE `division`
  MODIFY `id_division` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `dje`
--
ALTER TABLE `dje`
  MODIFY `id_dje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  MODIFY `id_domicilio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `forma`
--
ALTER TABLE `forma`
  MODIFY `id_forma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inconveniencia`
--
ALTER TABLE `inconveniencia`
  MODIFY `id_inc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `liberacion`
--
ALTER TABLE `liberacion`
  MODIFY `id_liberacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `opcion`
--
ALTER TABLE `opcion`
  MODIFY `id_opcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `revisor`
--
ALTER TABLE `revisor`
  MODIFY `id_revisor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rproyecto`
--
ALTER TABLE `rproyecto`
  MODIFY `id_rproyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sinodales`
--
ALTER TABLE `sinodales`
  MODIFY `id_sinodales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `solinicio`
--
ALTER TABLE `solinicio`
  MODIFY `id_inicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subdirector`
--
ALTER TABLE `subdirector`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adeudo`
--
ALTER TABLE `adeudo`
  ADD CONSTRAINT `adeudo_ibfk_1` FOREIGN KEY (`nc`) REFERENCES `datospersonales` (`nc`),
  ADD CONSTRAINT `adeudo_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`);

--
-- Filtros para la tabla `autorizacion`
--
ALTER TABLE `autorizacion`
  ADD CONSTRAINT `autorizacion_ibfk_1` FOREIGN KEY (`id_director`) REFERENCES `director` (`id_director`),
  ADD CONSTRAINT `autorizacion_ibfk_2` FOREIGN KEY (`id_sinodales`) REFERENCES `sinodales` (`id_sinodales`),
  ADD CONSTRAINT `autorizacion_ibfk_3` FOREIGN KEY (`id_dje`) REFERENCES `dje` (`id_dje`),
  ADD CONSTRAINT `autorizacion_ibfk_4` FOREIGN KEY (`nc`) REFERENCES `datospersonales` (`nc`);

--
-- Filtros para la tabla `inconveniencia`
--
ALTER TABLE `inconveniencia`
  ADD CONSTRAINT `inconveniencia_ibfk_1` FOREIGN KEY (`id_sub`) REFERENCES `subdirector` (`id_sub`),
  ADD CONSTRAINT `inconveniencia_ibfk_2` FOREIGN KEY (`nc`) REFERENCES `datospersonales` (`nc`);

--
-- Filtros para la tabla `liberacion`
--
ALTER TABLE `liberacion`
  ADD CONSTRAINT `liberacion_ibfk_1` FOREIGN KEY (`id_division`) REFERENCES `rproyecto` (`id_division`),
  ADD CONSTRAINT `liberacion_ibfk_2` FOREIGN KEY (`nc`) REFERENCES `datospersonales` (`nc`),
  ADD CONSTRAINT `liberacion_ibfk_3` FOREIGN KEY (`id_asesor`) REFERENCES `asesor` (`id_asesor`),
  ADD CONSTRAINT `liberacion_ibfk_4` FOREIGN KEY (`id_revisor`) REFERENCES `revisor` (`id_revisor`);

--
-- Filtros para la tabla `rproyecto`
--
ALTER TABLE `rproyecto`
  ADD CONSTRAINT `rproyecto_ibfk_1` FOREIGN KEY (`id_division`) REFERENCES `division` (`id_division`),
  ADD CONSTRAINT `rproyecto_ibfk_2` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`),
  ADD CONSTRAINT `rproyecto_ibfk_3` FOREIGN KEY (`id_asesor`) REFERENCES `asesor` (`id_asesor`),
  ADD CONSTRAINT `rproyecto_ibfk_4` FOREIGN KEY (`id_revisor`) REFERENCES `revisor` (`id_revisor`);

--
-- Filtros para la tabla `solinicio`
--
ALTER TABLE `solinicio`
  ADD CONSTRAINT `solinicio_ibfk_1` FOREIGN KEY (`nc`) REFERENCES `datospersonales` (`nc`),
  ADD CONSTRAINT `solinicio_ibfk_2` FOREIGN KEY (`id_domicilio`) REFERENCES `domicilio` (`id_domicilio`),
  ADD CONSTRAINT `solinicio_ibfk_3` FOREIGN KEY (`id_opcion`) REFERENCES `opcion` (`id_opcion`),
  ADD CONSTRAINT `solinicio_ibfk_4` FOREIGN KEY (`id_forma`) REFERENCES `forma` (`id_forma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
