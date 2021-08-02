-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2021 a las 04:36:51
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecontrato`
--
CREATE DATABASE IF NOT EXISTS `tecontrato` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `tecontrato`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `ID_PERSONA` int(5) NOT NULL,
  `CALIFICACION` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`ID_PERSONA`, `CALIFICACION`) VALUES
(1, 4),
(1, 5),
(10, 4),
(14, 3),
(10, 3),
(14, 5),
(4, 5),
(11, 4),
(2, 4),
(17, 4),
(13, 4),
(15, 5),
(12, 3),
(16, 4),
(20, 3),
(21, 5),
(19, 4),
(18, 4),
(23, 3),
(22, 5),
(24, 3),
(1, 5),
(21, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion`
--

CREATE TABLE `formacion` (
  `ID_FORMACION` int(5) NOT NULL,
  `DESCRIPCION` varchar(150) NOT NULL,
  `FOTO1` varchar(100) NOT NULL,
  `FOTO2` varchar(100) NOT NULL,
  `ID_PERSONA` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `ID_LUGAR` int(5) NOT NULL,
  `nombre_lugar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`ID_LUGAR`, `nombre_lugar`) VALUES
(1, 'Napo'),
(2, 'Valle'),
(3, 'Camal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `ID_SERVICIOS` int(5) NOT NULL,
  `NOMBRE_SERVICIO` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`ID_SERVICIOS`, `NOMBRE_SERVICIO`) VALUES
(1, 'Docente'),
(2, 'Secretaria'),
(3, 'Psicologia'),
(4, 'Limpieza'),
(5, 'Soporte tecnico'),
(6, 'Dispensario médico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `ID_TIPO` int(2) NOT NULL,
  `TIPO_USUARIO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`ID_TIPO`, `TIPO_USUARIO`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `ID_TRABAJO` int(11) NOT NULL,
  `NOMBRE_TRABAJO` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(300) NOT NULL,
  `FOTO1` varchar(100) NOT NULL,
  `FOTO2` varchar(100) NOT NULL,
  `FOTO3` varchar(100) NOT NULL,
  `ID_PERSONA` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_PERSONA` int(5) NOT NULL,
  `ID_TIPO` int(2) NOT NULL,
  `ID_SERVICIOS` int(5) NOT NULL,
  `ID_LUGAR` int(5) NOT NULL,
  `NOMBRE` varchar(40) NOT NULL,
  `EDAD` int(2) NOT NULL,
  `CORREO` varchar(30) NOT NULL,
  `PSWD` varchar(20) NOT NULL,
  `DESCRIPCION` text DEFAULT NULL,
  `TELEFONO` int(10) DEFAULT NULL,
  `CELULAR` bigint(15) DEFAULT NULL,
  `AN_EXPERIENCIA` int(2) DEFAULT NULL,
  `FOTO` text DEFAULT NULL,
  `FACEBOOK` varchar(60) DEFAULT NULL,
  `INSTAGRAM` varchar(60) DEFAULT NULL,
  `NUM_VISITAS` int(5) DEFAULT 0,
  `NUM_REDES` int(5) NOT NULL DEFAULT 0,
  `NUM_SMS` int(5) NOT NULL DEFAULT 0,
  `NUM_COR` int(5) NOT NULL DEFAULT 0,
  `ESTATUS` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_PERSONA`, `ID_TIPO`, `ID_SERVICIOS`, `ID_LUGAR`, `NOMBRE`, `EDAD`, `CORREO`, `PSWD`, `DESCRIPCION`, `TELEFONO`, `CELULAR`, `AN_EXPERIENCIA`, `FOTO`, `FACEBOOK`, `INSTAGRAM`, `NUM_VISITAS`, `NUM_REDES`, `NUM_SMS`, `NUM_COR`, `ESTATUS`) VALUES
(1, 2, 5, 1, 'Sebastian Cordova', 22, 'isacorecal@outlook.com', '123456', 'Soporte Tecnico', 2733415, 593983533898, 4, 'imagenes/fotos_perfil/seb.jpg', NULL, NULL, 16, 2, 2, 0, 1),
(2, 2, 1, 1, 'Carlos Pallarez', 48, 'pcarlos@gmail.com', 'ocarlos', 'Docente de la materia de matemáticas ', 2365896, 593956325698, 15, 'imagenes/fotos_perfil/2.jpg', NULL, NULL, 7, 0, 0, 0, 1),
(4, 2, 1, 2, 'Roberto Toctiuco', 28, 'trobert@gmail.com', 'trobert', 'Docente de la materia de fisica', 3194409, 593593985519588, 2, 'imagenes//fotos_perfil/11.jpg', NULL, NULL, 11, 4, 1, 0, 1),
(7, 1, 1, 3, 'Administrador del Sistema', 21, 'admin@andrew.com', 'admin123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1),
(8, 2, 1, 2, 'Karl Marx', 50, 'kMarx@yahoo.com', 'kmarx', 'Docente de la materia de filosofia', 2365987, 593698564523, 20, 'imagenes/fotos_perfil/14.jpg', NULL, NULL, 17, 0, 0, 0, 0),
(10, 2, 1, 1, 'Mario Benedetti', 50, 'mbenedetti@hotmail.com', 'mbenedetti', 'Docente de la materia de educación fisica', 2365985, 593652365489, 10, 'imagenes/fotos_perfil/16.jpg', NULL, NULL, 6, 0, 0, 1, 1),
(11, 2, 4, 2, 'Jaime Andrade', 50, 'jandrade@yahoo.com', 'jandrade', 'Servicio de limpieza', 2036689, 593989653256, 5, 'imagenes/fotos_perfil/4.jpg', NULL, NULL, 2, 0, 0, 0, 1),
(12, 2, 4, 4, 'Jaime Lopez', 29, 'jaimito44@gmail.com', 'jaime44', 'Servicio de limpieza', 3194409, 5930984667732, 8, 'imagenes/fotos_perfil/5.jpg', NULL, NULL, 3, 0, 1, 0, 1),
(13, 2, 4, 3, 'Carlos Jarrín', 35, 'carlosj@hotmail.com', 'carlitos123', 'Servicio de limpieza', 2365985, 593986532659, 10, 'imagenes/fotos_perfil/6.jpg', NULL, NULL, 1, 0, 0, 0, 1),
(14, 2, 4, 1, 'Israel Medina', 42, 'isramed@gmail.com', 'israel123', 'Servicio de limpieza', 2365985, 593659865236, 3, 'imagenes/fotos_perfil/8.jpg', NULL, NULL, 4, 0, 0, 0, 1),
(15, 2, 2, 3, 'Maria Pozo', 33, 'Mariap@outlook.com', 'maria123', 'Secretaria', 2356985, 593652365985, 9, 'imagenes/fotos_perfil/1.jpg', NULL, NULL, 1, 0, 0, 0, 1),
(16, 2, 2, 1, 'Hugo Rivas', 40, 'hugorivas1@hotmail.com', 'hugo2406', 'Secretaria', 2486521, 593265985632, 20, 'imagenes/fotos_perfil/13.jpg', NULL, NULL, 2, 0, 0, 0, 1),
(17, 2, 5, 2, 'María Aguirre', 22, 'maryagui@gmail.com', 'mary123', 'Soprote tecnico', 2356985, 593989653325, 3, 'imagenes/fotos_perfil/18.jpg', NULL, NULL, 1, 0, 0, 0, 1),
(18, 2, 3, 2, 'Mery Juárez', 36, 'rodijj@gmail.com', 'mery123', 'Psicologia', 2147856, 593652365123, 20, 'imagenes/fotos_perfil/20.jpg', NULL, NULL, 1, 0, 0, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formacion`
--
ALTER TABLE `formacion`
  ADD PRIMARY KEY (`ID_FORMACION`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`ID_LUGAR`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`ID_SERVICIOS`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`ID_TIPO`);

--
-- Indices de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD PRIMARY KEY (`ID_TRABAJO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_PERSONA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formacion`
--
ALTER TABLE `formacion`
  MODIFY `ID_FORMACION` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `ID_LUGAR` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `ID_SERVICIOS` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `ID_TIPO` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  MODIFY `ID_TRABAJO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_PERSONA` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
