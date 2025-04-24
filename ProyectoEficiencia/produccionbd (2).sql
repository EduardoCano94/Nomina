-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2025 a las 08:48:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `produccionbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acciones`
--

CREATE TABLE `acciones` (
  `id_accion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `comentarios` text NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` int(11) NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `dias_trabajados` int(11) NOT NULL,
  `hora_entrada` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desempenio_diario`
--

CREATE TABLE `desempenio_diario` (
  `id_desempenio` int(11) NOT NULL,
  `porcentaje` int(5) NOT NULL,
  `numero_piezas_realizadas` int(10) NOT NULL,
  `id_meta_diaria` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia_semana`
--

CREATE TABLE `dia_semana` (
  `id_dia_semana` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eficiencia_corte`
--

CREATE TABLE `eficiencia_corte` (
  `id_eficiencia_corte` int(11) NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `seccion_id` int(11) NOT NULL,
  `operacion_id` int(11) NOT NULL,
  `desempenio_id` int(11) NOT NULL,
  `porcentage_total` int(11) NOT NULL,
  `garantia` int(11) NOT NULL,
  `dias_totales` int(11) NOT NULL,
  `linea_id` int(11) NOT NULL,
  `pactado` int(11) NOT NULL,
  `rebase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ap_pat` varchar(50) NOT NULL DEFAULT '',
  `ap_mat` varchar(50) NOT NULL DEFAULT '',
  `anio_nacimiento` date DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL,
  `seccion` varchar(50) NOT NULL,
  `operacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `ap_pat`, `ap_mat`, `anio_nacimiento`, `telefono`, `estado`, `created_at`, `updated_at`, `delated_at`, `seccion`, `operacion`) VALUES
(251, 'Jose Eduardo', '', '', NULL, NULL, 1, '2025-04-24 05:11:45', '2025-04-24 05:11:45', NULL, 'Delantero', 'Pegar cierre'),
(301, 'Juan Jose Palomino Jacobo', '', '', NULL, NULL, 1, '2025-04-24 05:11:45', '2025-04-24 05:11:45', NULL, 'Trasero', 'Manual'),
(351, 'alfredo Vega', '', '', NULL, NULL, 1, '2025-04-24 05:11:45', '2025-04-24 05:11:45', NULL, 'ensamble', 'Pretina'),
(401, 'ROSARIO HERNANDEZ', '', '', NULL, NULL, 1, '2025-04-24 05:11:45', '2025-04-24 05:11:45', NULL, 'REVISADO', 'DESHEBRADO'),
(451, 'Joel Cano ', '', '', NULL, NULL, 1, '2025-04-24 05:11:45', '2025-04-24 05:11:45', NULL, 'Delantero', 'Pegar cierre'),
(501, 'Joel Cano ', '', '', NULL, NULL, 1, '2025-04-24 05:11:45', '2025-04-24 05:11:45', NULL, 'ensamble', 'Cerrar entrepierna'),
(551, 'Joel Cano ', '', '', NULL, NULL, 1, '2025-04-24 05:11:45', '2025-04-24 05:11:45', NULL, 'ensamble', 'Cerrar entrepierna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas`
--

CREATE TABLE `lineas` (
  `id_linea` int(11) NOT NULL,
  `numero_linea` int(5) NOT NULL,
  `comentarios` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meta_diaria`
--

CREATE TABLE `meta_diaria` (
  `id_meta_diaria` int(11) NOT NULL,
  `numero_piezas_meta` int(10) NOT NULL,
  `operacion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nominas`
--

CREATE TABLE `nominas` (
  `id_nomina` int(11) NOT NULL,
  `eficiencia_corte_id` int(11) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `salario_base` decimal(10,2) NOT NULL,
  `horas_trabajadas` int(11) NOT NULL,
  `tarifa_hora` decimal(10,2) DEFAULT NULL,
  `horas_extras` int(11) DEFAULT NULL,
  `tarifa_horas_extras` decimal(10,2) DEFAULT NULL,
  `salario_neto` decimal(10,2) NOT NULL,
  `fecha_pago` date DEFAULT NULL,
  `periodo_pago` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE `operaciones` (
  `id_operacion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `comentarios` text NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `accion_id` int(11) NOT NULL,
  `tipo_maquina_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE `periodos` (
  `id` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `estatus` enum('Abierto','Cerrado') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productividad`
--

CREATE TABLE `productividad` (
  `id` int(11) NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `produccion` int(11) NOT NULL,
  `meta` int(11) NOT NULL,
  `rendimiento` decimal(5,2) GENERATED ALWAYS AS (`produccion` / `meta` * 100) STORED,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id_seccion` int(11) NOT NULL,
  `comentarios` text NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence`
--

CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `sequence`
--

INSERT INTO `sequence` (`SEQ_NAME`, `SEQ_COUNT`) VALUES
('SEQ_GEN', 600);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sueldos`
--

CREATE TABLE `sueldos` (
  `id` int(11) NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `pactado` decimal(10,2) NOT NULL,
  `rebase` decimal(10,2) DEFAULT 0.00,
  `garantia` decimal(10,2) DEFAULT 0.00,
  `sueldo_real` decimal(10,2) NOT NULL,
  `sueldo_con_garantia` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_maquina`
--

CREATE TABLE `tipo_maquina` (
  `id_tipo_maquina` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `comentarios` text NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `delated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acciones`
--
ALTER TABLE `acciones`
  ADD PRIMARY KEY (`id_accion`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asistencias_ibfk_1` (`empleado_id`);

--
-- Indices de la tabla `desempenio_diario`
--
ALTER TABLE `desempenio_diario`
  ADD PRIMARY KEY (`id_desempenio`),
  ADD KEY `id_meta_diaria` (`id_meta_diaria`);

--
-- Indices de la tabla `dia_semana`
--
ALTER TABLE `dia_semana`
  ADD PRIMARY KEY (`id_dia_semana`);

--
-- Indices de la tabla `eficiencia_corte`
--
ALTER TABLE `eficiencia_corte`
  ADD PRIMARY KEY (`id_eficiencia_corte`),
  ADD KEY `fk_empleado_nomina` (`empleado_id`),
  ADD KEY `fk_seccion_nomina` (`seccion_id`),
  ADD KEY `fk_operacion_nomina` (`operacion_id`),
  ADD KEY `fk_desempenio_nomina` (`desempenio_id`),
  ADD KEY `fk_linea_nomina` (`linea_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD PRIMARY KEY (`id_linea`);

--
-- Indices de la tabla `meta_diaria`
--
ALTER TABLE `meta_diaria`
  ADD PRIMARY KEY (`id_meta_diaria`),
  ADD KEY `operacion_id` (`operacion_id`);

--
-- Indices de la tabla `nominas`
--
ALTER TABLE `nominas`
  ADD PRIMARY KEY (`id_nomina`),
  ADD KEY `fk_eficiencia_empleado` (`eficiencia_corte_id`);

--
-- Indices de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD PRIMARY KEY (`id_operacion`),
  ADD KEY `accion_id` (`accion_id`),
  ADD KEY `tipo_maquina_id` (`tipo_maquina_id`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productividad`
--
ALTER TABLE `productividad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleado_id` (`empleado_id`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id_seccion`);

--
-- Indices de la tabla `sequence`
--
ALTER TABLE `sequence`
  ADD PRIMARY KEY (`SEQ_NAME`);

--
-- Indices de la tabla `sueldos`
--
ALTER TABLE `sueldos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleado_id` (`empleado_id`);

--
-- Indices de la tabla `tipo_maquina`
--
ALTER TABLE `tipo_maquina`
  ADD PRIMARY KEY (`id_tipo_maquina`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acciones`
--
ALTER TABLE `acciones`
  MODIFY `id_accion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `desempenio_diario`
--
ALTER TABLE `desempenio_diario`
  MODIFY `id_desempenio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dia_semana`
--
ALTER TABLE `dia_semana`
  MODIFY `id_dia_semana` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eficiencia_corte`
--
ALTER TABLE `eficiencia_corte`
  MODIFY `id_eficiencia_corte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT de la tabla `lineas`
--
ALTER TABLE `lineas`
  MODIFY `id_linea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `meta_diaria`
--
ALTER TABLE `meta_diaria`
  MODIFY `id_meta_diaria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nominas`
--
ALTER TABLE `nominas`
  MODIFY `id_nomina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  MODIFY `id_operacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productividad`
--
ALTER TABLE `productividad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id_seccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sueldos`
--
ALTER TABLE `sueldos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_maquina`
--
ALTER TABLE `tipo_maquina`
  MODIFY `id_tipo_maquina` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `desempenio_diario`
--
ALTER TABLE `desempenio_diario`
  ADD CONSTRAINT `fk_meta_desempenio` FOREIGN KEY (`id_meta_diaria`) REFERENCES `meta_diaria` (`id_meta_diaria`);

--
-- Filtros para la tabla `eficiencia_corte`
--
ALTER TABLE `eficiencia_corte`
  ADD CONSTRAINT `fk_desempenio_nomina` FOREIGN KEY (`desempenio_id`) REFERENCES `desempenio_diario` (`id_desempenio`),
  ADD CONSTRAINT `fk_empleado_nomina` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`),
  ADD CONSTRAINT `fk_linea_nomina` FOREIGN KEY (`linea_id`) REFERENCES `lineas` (`id_linea`),
  ADD CONSTRAINT `fk_operacion_nomina` FOREIGN KEY (`operacion_id`) REFERENCES `operaciones` (`id_operacion`),
  ADD CONSTRAINT `fk_seccion_nomina` FOREIGN KEY (`seccion_id`) REFERENCES `secciones` (`id_seccion`);

--
-- Filtros para la tabla `meta_diaria`
--
ALTER TABLE `meta_diaria`
  ADD CONSTRAINT `fk_operacion_meta` FOREIGN KEY (`operacion_id`) REFERENCES `operaciones` (`id_operacion`);

--
-- Filtros para la tabla `nominas`
--
ALTER TABLE `nominas`
  ADD CONSTRAINT `fk_eficiencia_empleado` FOREIGN KEY (`eficiencia_corte_id`) REFERENCES `eficiencia_corte` (`id_eficiencia_corte`);

--
-- Filtros para la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD CONSTRAINT `fk_accion_operacion` FOREIGN KEY (`accion_id`) REFERENCES `acciones` (`id_accion`),
  ADD CONSTRAINT `fk_tipo_maquina_id` FOREIGN KEY (`tipo_maquina_id`) REFERENCES `tipo_maquina` (`id_tipo_maquina`);

--
-- Filtros para la tabla `productividad`
--
ALTER TABLE `productividad`
  ADD CONSTRAINT `productividad_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sueldos`
--
ALTER TABLE `sueldos`
  ADD CONSTRAINT `sueldos_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
