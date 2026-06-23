-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2026 a las 05:39:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dreamprop-inmobiliaria`
--
CREATE DATABASE IF NOT EXISTS `dreamprop-inmobiliaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dreamprop-inmobiliaria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE `comprador` (
  `DNI_P_Comprador` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `Nro_Serie` varchar(30) NOT NULL,
  `fechaFirma` date NOT NULL,
  `fechaOcupacion` date NOT NULL,
  `fechaDesocupacion` date DEFAULT NULL,
  `montoMensual` decimal(15,2) NOT NULL,
  `DNI_P_Inquilino_Firma` bigint(20) NOT NULL,
  `Nro_Matricula_E_Certifica` varchar(30) NOT NULL,
  `id_Prop_Alquilada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escribano`
--

CREATE TABLE `escribano` (
  `DNI_P_Escribano` bigint(11) NOT NULL,
  `Direccion_Estudio_M` varchar(150) NOT NULL,
  `Nro_Matricula_E` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inquilino`
--

CREATE TABLE `inquilino` (
  `DNI_P_Inquilino` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `DNI_P` bigint(20) NOT NULL,
  `NomyApe_P` varchar(100) NOT NULL,
  `Direccion_P` varchar(150) NOT NULL,
  `Tipo_P` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`DNI_P`, `NomyApe_P`, `Direccion_P`, `Tipo_P`) VALUES
(12345678, 'Sofía Fernández', 'Pringles 303', 'Propietario'),
(15890890, 'Ana Martínez', 'Rivadavia 101', 'Propietario'),
(28456789, 'María Gómez', 'San Martín 456', 'Propietario'),
(35123456, 'Juan Pérez', 'Mitre 123', 'Propietario'),
(40123123, 'Lucas Rodríguez', 'Illia 789', 'Propietario'),
(42567890, 'Pedro López', 'Colón 202', 'Propietario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `id_Prop` int(11) NOT NULL,
  `direccion_Prop` varchar(150) NOT NULL,
  `cod_Tipo_Prop` int(11) NOT NULL,
  `en_Venta` tinyint(1) NOT NULL,
  `en_Alquiler` tinyint(1) NOT NULL,
  `valor_Prop` float NOT NULL,
  `antiguedad_Prop` int(11) NOT NULL,
  `cantAmbientes_Prop` int(11) NOT NULL,
  `superficie_Prop` int(11) NOT NULL,
  `nro_Zona_Ubicada` int(11) NOT NULL,
  `DNI_P_Propietario` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`id_Prop`, `direccion_Prop`, `cod_Tipo_Prop`, `en_Venta`, `en_Alquiler`, `valor_Prop`, `antiguedad_Prop`, `cantAmbientes_Prop`, `superficie_Prop`, `nro_Zona_Ubicada`, `DNI_P_Propietario`) VALUES
(16, 'Av. Illia 123, Piso 4', 2, 1, 0, 85000, 5, 2, 50, 1, 35123456),
(17, 'Chacabuco 654', 3, 0, 1, 350000, 12, 3, 120, 2, 28456789),
(18, 'Rivadavia 450, PB', 6, 0, 1, 150000, 2, 1, 35, 2, 40123123),
(19, 'San Martín 900', 3, 1, 1, 150000, 20, 4, 150, 2, 15890890),
(20, 'Caseros 300', 2, 1, 0, 95000, 8, 3, 75, 1, 42567890),
(21, 'Bolívar 120, Piso 2', 6, 0, 1, 140000, 1, 1, 32, 2, 12345678),
(22, 'Av. del Viento Chorrillero 2500', 4, 1, 1, 250000, 15, 6, 450, 4, 35123456),
(23, 'Ruta 20 Km 15', 4, 1, 0, 320000, 10, 5, 800, 4, 28456789),
(24, 'Calle Los Eucaliptos 45', 1, 1, 0, 180000, 5, 4, 220, 4, 40123123),
(25, 'Panchomula s/n', 4, 0, 0, 195000, 25, 4, 600, 4, 15890890),
(26, 'Sucre 200', 1, 1, 0, 65000, 30, 3, 110, 5, 42567890),
(27, 'Lafinur 800', 1, 0, 1, 280000, 18, 3, 95, 6, 12345678),
(28, 'Mitre 1500', 1, 0, 1, 220000, 40, 4, 130, 3, 35123456),
(29, 'Las Heras 750', 5, 1, 1, 110000, 0, 3, 85, 6, 28456789),
(30, 'Av. Santos Ortiz 5000', 3, 0, 1, 450000, 5, 5, 300, 5, 40123123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `DNI_P_Propietario` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `propietario`
--

INSERT INTO `propietario` (`DNI_P_Propietario`) VALUES
(12345678),
(15890890),
(28456789),
(35123456),
(40123123),
(42567890);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos_persona`
--

CREATE TABLE `telefonos_persona` (
  `DNI_P` bigint(20) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_propiedad`
--

CREATE TABLE `tipos_propiedad` (
  `cod_Tipo_Prop` int(11) NOT NULL,
  `descripcionTipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_propiedad`
--

INSERT INTO `tipos_propiedad` (`cod_Tipo_Prop`, `descripcionTipo`) VALUES
(1, 'Casa'),
(2, 'Departamento'),
(3, 'Local Comercial'),
(4, 'Quinta'),
(5, 'Dúplex'),
(6, 'Monoambiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_Venta` int(11) NOT NULL,
  `comision` decimal(15,2) NOT NULL,
  `fecha` date NOT NULL,
  `precio` decimal(15,2) NOT NULL,
  `DNI_P_Comprador_Participa` bigint(20) NOT NULL,
  `DNI_P_Propietario_Participa` bigint(20) NOT NULL,
  `Nro_Matricula_E_Interviene` varchar(30) NOT NULL,
  `id_Prop_Registrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `nro_Z` int(11) NOT NULL,
  `nombre_Z` varchar(100) NOT NULL,
  `descripcion_Z` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`nro_Z`, `nombre_Z`, `descripcion_Z`) VALUES
(1, 'Centro', 'Zona comercial principal'),
(2, 'Microcentro', 'Área administrativa central'),
(3, 'Este', 'Zona este residencial'),
(4, 'Juana Koslay', 'Zona residencial y de quintas'),
(5, 'Sur', 'Zona sur comercial y residencial'),
(6, 'Oeste', 'Zona oeste');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`DNI_P_Comprador`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`Nro_Serie`),
  ADD KEY `DNI_P_Inquilino_Firma` (`DNI_P_Inquilino_Firma`),
  ADD KEY `Nro_Matricula_E_Certifica` (`Nro_Matricula_E_Certifica`),
  ADD KEY `id_Prop_Alquilada` (`id_Prop_Alquilada`);

--
-- Indices de la tabla `escribano`
--
ALTER TABLE `escribano`
  ADD PRIMARY KEY (`Nro_Matricula_E`),
  ADD UNIQUE KEY `DNI-P-Escribano` (`DNI_P_Escribano`);

--
-- Indices de la tabla `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`DNI_P_Inquilino`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`DNI_P`);

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`id_Prop`),
  ADD KEY `nro_Zona_Ubicada` (`nro_Zona_Ubicada`),
  ADD KEY `cod_Tipo_Prop` (`cod_Tipo_Prop`),
  ADD KEY `DNI_P_Propietario` (`DNI_P_Propietario`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`DNI_P_Propietario`);

--
-- Indices de la tabla `telefonos_persona`
--
ALTER TABLE `telefonos_persona`
  ADD PRIMARY KEY (`DNI_P`,`telefono`);

--
-- Indices de la tabla `tipos_propiedad`
--
ALTER TABLE `tipos_propiedad`
  ADD PRIMARY KEY (`cod_Tipo_Prop`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_Venta`),
  ADD KEY `DNI_P_Comprador_Participa` (`DNI_P_Comprador_Participa`),
  ADD KEY `DNI_P_Propietario_Participa` (`DNI_P_Propietario_Participa`),
  ADD KEY `Nro_Matricula_E_Interviene` (`Nro_Matricula_E_Interviene`),
  ADD KEY `id_Prop_Registrada` (`id_Prop_Registrada`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`nro_Z`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `id_Prop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `nro_Z` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD CONSTRAINT `comprador_ibfk_1` FOREIGN KEY (`DNI_P_Comprador`) REFERENCES `persona` (`DNI_P`);

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`DNI_P_Inquilino_Firma`) REFERENCES `inquilino` (`DNI_P_Inquilino`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`Nro_Matricula_E_Certifica`) REFERENCES `escribano` (`Nro_Matricula_E`),
  ADD CONSTRAINT `contrato_ibfk_3` FOREIGN KEY (`id_Prop_Alquilada`) REFERENCES `propiedades` (`id_Prop`);

--
-- Filtros para la tabla `escribano`
--
ALTER TABLE `escribano`
  ADD CONSTRAINT `escribano_ibfk_1` FOREIGN KEY (`DNI_P_Escribano`) REFERENCES `persona` (`DNI_P`);

--
-- Filtros para la tabla `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`DNI_P_Inquilino`) REFERENCES `persona` (`DNI_P`);

--
-- Filtros para la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD CONSTRAINT `propiedades_ibfk_1` FOREIGN KEY (`nro_Zona_Ubicada`) REFERENCES `zonas` (`nro_Z`),
  ADD CONSTRAINT `propiedades_ibfk_2` FOREIGN KEY (`cod_Tipo_Prop`) REFERENCES `tipos_propiedad` (`cod_Tipo_Prop`),
  ADD CONSTRAINT `propiedades_ibfk_3` FOREIGN KEY (`DNI_P_Propietario`) REFERENCES `propietario` (`DNI_P_Propietario`);

--
-- Filtros para la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD CONSTRAINT `propietario_ibfk_1` FOREIGN KEY (`DNI_P_Propietario`) REFERENCES `persona` (`DNI_P`);

--
-- Filtros para la tabla `telefonos_persona`
--
ALTER TABLE `telefonos_persona`
  ADD CONSTRAINT `telefonos_persona_ibfk_1` FOREIGN KEY (`DNI_P`) REFERENCES `persona` (`DNI_P`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`DNI_P_Comprador_Participa`) REFERENCES `comprador` (`DNI_P_Comprador`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`DNI_P_Propietario_Participa`) REFERENCES `propietario` (`DNI_P_Propietario`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`Nro_Matricula_E_Interviene`) REFERENCES `escribano` (`Nro_Matricula_E`),
  ADD CONSTRAINT `venta_ibfk_4` FOREIGN KEY (`id_Prop_Registrada`) REFERENCES `propiedades` (`id_Prop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
