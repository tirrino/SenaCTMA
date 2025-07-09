-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2025 a las 19:27:57
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
-- Base de datos: `natilatam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `Id_Administradores` int(11) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ahorro`
--

CREATE TABLE `ahorro` (
  `Id_Ahorro` int(11) NOT NULL,
  `Id_Usuario` int(50) NOT NULL,
  `Fecha` date NOT NULL,
  `Monto` int(50) NOT NULL,
  `Tipo_Pago` text NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ahorro`
--

INSERT INTO `ahorro` (`Id_Ahorro`, `Id_Usuario`, `Fecha`, `Monto`, `Tipo_Pago`, `Descripcion`) VALUES
(1, 2, '2025-01-01', 500000, 'Mensual', 'Para comprar el marrano de fin de año, el estren y el paseo con la familia.'),
(2, 3, '2025-02-02', 1000000, 'Mensual', 'Para operarse los ojos'),
(3, 4, '2025-03-03', 3000000, 'Mensual', 'Para la cuota inicial de un vehiculo.'),
(4, 1, '2025-04-04', 5000000, 'Mensual', 'Cuota inicial para el apartamento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficios`
--

CREATE TABLE `beneficios` (
  `Id_Beneficio` int(11) NOT NULL,
  `Tipo_Beneficio` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `beneficios`
--

INSERT INTO `beneficios` (`Id_Beneficio`, `Tipo_Beneficio`, `Descripcion`, `Fecha`) VALUES
(1, 'Descuento de ropa', 'Daremos el 20% de descuento en ropa femenina.', '2025-01-01'),
(2, 'Descuentos en comida', 'Daremos el 10% en comida rapida.', '2025-02-02'),
(3, 'Descuento en supermercados', 'Daremos el 20% de descuento en productos de aseo y carnes.', '2025-03-03'),
(4, 'Descuento en concecionarias', 'Daremos el 40% de descuento a la hora de comprar un vehiculo.', '2025-04-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclo_cuotas`
--

CREATE TABLE `ciclo_cuotas` (
  `Id_Cuotas` int(11) NOT NULL,
  `Fecha/Inicio` date NOT NULL,
  `Fecha_Liquidacion` date NOT NULL,
  `Descripcion` text NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Tipo_Cuota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciclo_cuotas`
--

INSERT INTO `ciclo_cuotas` (`Id_Cuotas`, `Fecha/Inicio`, `Fecha_Liquidacion`, `Descripcion`, `Id_Usuario`, `Tipo_Cuota`) VALUES
(1, '2025-01-01', '2026-01-01', 'El ciclo va a ser mensual dando las cuotas de 500000', 1, 'Mensual'),
(2, '2025-02-02', '2026-02-02', 'El ciclo va a ser mensual dando las cuotas 1000000', 2, 'Mensual'),
(3, '2025-03-03', '2026-03-03', 'El ciclo va a ser mensual dando las cuotas de 3000000', 3, 'Mensual'),
(4, '2025-04-04', '2026-04-04', 'El ciclo va a ser mensual dando las cuotas de 50000000 ', 4, 'Mensual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_bancaria`
--

CREATE TABLE `info_bancaria` (
  `Id_info_bancaria` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Cantidad_Targetas` varchar(100) NOT NULL,
  `Deudas` varchar(100) NOT NULL,
  `Creditos` varchar(100) NOT NULL,
  `Reportes_Bancario` text NOT NULL,
  `Historial_Crediticio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `info_bancaria`
--

INSERT INTO `info_bancaria` (`Id_info_bancaria`, `Id_Usuario`, `Cantidad_Targetas`, `Deudas`, `Creditos`, `Reportes_Bancario`, `Historial_Crediticio`) VALUES
(1, 1, '1', 'No tiene', 'Tiene credito hasta de 2000000', 'No tiene ', 'No reportado'),
(2, 2, '3', '1', 'Tiene un credito hasta de 7000000', 'Tiene un reporte bancario', 'Reportado'),
(3, 3, '2', '0', 'Tiene un credito hasta de 4000000', 'No tiene', 'No tiene'),
(4, 4, '10', 'No tiene', 'Tiene un credito hasta de 50000000', 'No tiene', 'No reportado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_usuario`
--

CREATE TABLE `info_usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Tipo_Id` text NOT NULL,
  `Numero_Id` int(11) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Genero` varchar(1) NOT NULL,
  `Edad` int(50) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `Cod_Postal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `info_usuario`
--

INSERT INTO `info_usuario` (`Id_Usuario`, `Tipo_Id`, `Numero_Id`, `Nombres`, `Apellidos`, `Genero`, `Edad`, `Fecha_Nacimiento`, `Direccion`, `Ciudad`, `Pais`, `Cod_Postal`) VALUES
(1, 'cedula', 1018345689, 'cristina', 'gonzales', 'F', 39, '1987-06-16', 'calle 40 numero 37 sur ', 'medellin', 'colombia', '5000926'),
(2, 'Cedula', 1023232026, 'Carlos', 'Romero', 'M', 18, '0000-00-00', 'cll 89 #53 A 15', 'Medellin', 'Colombia', '0000001'),
(3, 'Cedula', 102325678, 'Sebastian', 'Mendoza', 'M', 23, '0000-00-00', 'cll 23 #18 A 52', 'Medellin', 'Colombia', '0000002'),
(4, 'Cedula', 101823610, 'Mariana', 'Acevedo', 'F', 19, '0000-00-00', 'cll 29 #45 B 15', 'Medellin', 'Colombia', '000005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_cuotas`
--

CREATE TABLE `pago_cuotas` (
  `Id_PagoCuotas` int(11) NOT NULL,
  `Id_Ahorro` int(11) NOT NULL,
  `Fecha_Pago` date NOT NULL,
  `Monto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago_cuotas`
--

INSERT INTO `pago_cuotas` (`Id_PagoCuotas`, `Id_Ahorro`, `Fecha_Pago`, `Monto`) VALUES
(1, 1, '2026-06-26', '500000'),
(2, 2, '2027-01-01', '1000000'),
(3, 3, '2026-12-01', '3000000'),
(4, 4, '2027-06-25', '5000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_prestamos`
--

CREATE TABLE `pago_prestamos` (
  `Id_PagoPrestamos` int(11) NOT NULL,
  `Fecha_Pago` date NOT NULL,
  `Id_Prestamo` int(11) NOT NULL,
  `Monto_Pagar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago_prestamos`
--

INSERT INTO `pago_prestamos` (`Id_PagoPrestamos`, `Fecha_Pago`, `Id_Prestamo`, `Monto_Pagar`) VALUES
(1, '2026-06-26', 1, '350000'),
(2, '2027-01-01', 2, '5000000'),
(3, '2026-12-01', 3, '2500000'),
(4, '2027-06-25', 4, '25000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `Id_Prestamos` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Monto` varchar(50) NOT NULL,
  `Fecha_Solicitud` date NOT NULL,
  `Aprobado` varchar(100) NOT NULL,
  `Id_InfoBancaria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`Id_Prestamos`, `Id_Usuario`, `Monto`, `Fecha_Solicitud`, `Aprobado`, `Id_InfoBancaria`) VALUES
(1, 1, '500000', '2025-01-01', 'Si', 1),
(2, 2, '1000000', '2025-02-02', 'Si', 3),
(3, 3, '3000000', '2025-03-03', 'No', 2),
(4, 4, '5000000', '2025-04-04', 'Si', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_beneficio`
--

CREATE TABLE `usuario_beneficio` (
  `Id_UsuarioBeneficio` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Beneficio` int(11) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_beneficio`
--

INSERT INTO `usuario_beneficio` (`Id_UsuarioBeneficio`, `Id_Usuario`, `Id_Beneficio`, `Descripcion`) VALUES
(1, 1, 1, 'Daremos el 20% de descuento en ropa femenina'),
(2, 4, 4, 'Daremos el 40% de descuento a la hora de comprar un vehiculo.'),
(3, 2, 2, 'Daremos el 10% en comidas rapidas.'),
(4, 3, 3, 'Daremos el 20% de descuento en productos de aseo y carnes.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`Id_Administradores`);

--
-- Indices de la tabla `ahorro`
--
ALTER TABLE `ahorro`
  ADD PRIMARY KEY (`Id_Ahorro`),
  ADD KEY `ahorro_ibfk_1` (`Id_Usuario`);

--
-- Indices de la tabla `beneficios`
--
ALTER TABLE `beneficios`
  ADD PRIMARY KEY (`Id_Beneficio`);

--
-- Indices de la tabla `ciclo_cuotas`
--
ALTER TABLE `ciclo_cuotas`
  ADD PRIMARY KEY (`Id_Cuotas`),
  ADD KEY `ciclo_cuotas_ibfk_1` (`Id_Usuario`);

--
-- Indices de la tabla `info_bancaria`
--
ALTER TABLE `info_bancaria`
  ADD PRIMARY KEY (`Id_info_bancaria`),
  ADD KEY `info_bancaria_ibfk_1` (`Id_Usuario`);

--
-- Indices de la tabla `info_usuario`
--
ALTER TABLE `info_usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- Indices de la tabla `pago_cuotas`
--
ALTER TABLE `pago_cuotas`
  ADD PRIMARY KEY (`Id_PagoCuotas`),
  ADD KEY `pago_cuotas_ibfk_1` (`Id_Ahorro`);

--
-- Indices de la tabla `pago_prestamos`
--
ALTER TABLE `pago_prestamos`
  ADD PRIMARY KEY (`Id_PagoPrestamos`),
  ADD KEY `pago_prestamos_ibfk_1` (`Id_Prestamo`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`Id_Prestamos`),
  ADD KEY `prestamos_ibfk_1` (`Id_Usuario`),
  ADD KEY `prestamos_ibfk_2` (`Id_InfoBancaria`);

--
-- Indices de la tabla `usuario_beneficio`
--
ALTER TABLE `usuario_beneficio`
  ADD PRIMARY KEY (`Id_UsuarioBeneficio`),
  ADD KEY `Id_Usuario` (`Id_Usuario`),
  ADD KEY `usuario_beneficio_ibfk_1` (`Id_Beneficio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `Id_Administradores` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ahorro`
--
ALTER TABLE `ahorro`
  MODIFY `Id_Ahorro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `beneficios`
--
ALTER TABLE `beneficios`
  MODIFY `Id_Beneficio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ciclo_cuotas`
--
ALTER TABLE `ciclo_cuotas`
  MODIFY `Id_Cuotas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `info_bancaria`
--
ALTER TABLE `info_bancaria`
  MODIFY `Id_info_bancaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `info_usuario`
--
ALTER TABLE `info_usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pago_cuotas`
--
ALTER TABLE `pago_cuotas`
  MODIFY `Id_PagoCuotas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pago_prestamos`
--
ALTER TABLE `pago_prestamos`
  MODIFY `Id_PagoPrestamos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `Id_Prestamos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario_beneficio`
--
ALTER TABLE `usuario_beneficio`
  MODIFY `Id_UsuarioBeneficio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ahorro`
--
ALTER TABLE `ahorro`
  ADD CONSTRAINT `ahorro_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `info_usuario` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ciclo_cuotas`
--
ALTER TABLE `ciclo_cuotas`
  ADD CONSTRAINT `ciclo_cuotas_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `info_usuario` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `info_bancaria`
--
ALTER TABLE `info_bancaria`
  ADD CONSTRAINT `info_bancaria_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `info_usuario` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pago_cuotas`
--
ALTER TABLE `pago_cuotas`
  ADD CONSTRAINT `pago_cuotas_ibfk_1` FOREIGN KEY (`Id_Ahorro`) REFERENCES `ahorro` (`Id_Ahorro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pago_prestamos`
--
ALTER TABLE `pago_prestamos`
  ADD CONSTRAINT `pago_prestamos_ibfk_1` FOREIGN KEY (`Id_Prestamo`) REFERENCES `prestamos` (`Id_Prestamos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `info_usuario` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`Id_InfoBancaria`) REFERENCES `info_bancaria` (`Id_info_bancaria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_beneficio`
--
ALTER TABLE `usuario_beneficio`
  ADD CONSTRAINT `usuario_beneficio_ibfk_1` FOREIGN KEY (`Id_Beneficio`) REFERENCES `beneficios` (`Id_Beneficio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_beneficio_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `info_usuario` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
