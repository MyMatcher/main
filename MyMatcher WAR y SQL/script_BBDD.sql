drop database if exists MyMatcher;
CREATE DATABASE MyMatcher;

use MyMatcher;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `MyMatcher`
--

-- ----------------------------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  	`user` varchar(20) NOT NULL,
  	`password` varchar(20),
  	`nombre` varchar(25),
  	`apellidos` varchar(25),
	`fechanac` date,
	`correo` varchar(40),
	`descripcion` varchar(100),
	`atributo1` varchar(20),
	`atributo2` varchar(20),
	`atributo3` varchar(20),
	`atributo4` varchar(20),
	`atributo5` varchar(20),
	`atributo6` varchar(20),
	`atributo7` varchar(20),
	`atributo8` varchar(20),
	`atributo9` varchar(20),
	`atributo10` varchar(20),
	`atributo11` varchar(20),
	`atributo12` varchar(20),
	`atributo13` varchar(20),
	`atributo14` varchar(20),
	`atributo15` varchar(20),
	PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Adrian', '11111111', 'Adrian', 'Mata', '1212-12-12', 'adrian@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Aitor', '22222222', 'Aitor', 'Cantero', '2003-12-12', 'aitor@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Alex', '33333333', 'Alex', 'Kovacs', '2000-06-27', 'alexkovacs27.06@gmail.com', 'Esto es una descripcion', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo');
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Andrea', '88888888', 'Andrea', 'Kovacs', '1999-02-07', 'andrea@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Dorotasio', '22222222', 'Dorotasio', 'Pedrote', '1212-12-12', 'dorotasio@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Gonzalo', '55555555', 'Gonzalo', 'Higuain', '1212-12-12', 'gonzalo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Javier', '66666666', 'Javier', 'García', '2002-12-21', 'javier@gmail.com', 'Esto es una descripcion', 'Feo ', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo');
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Jhon', '77777777', 'Jhon', 'Tixi', '2000-04-29', 'jhon@gmail.com', 'Esto es una descripcion', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo');
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Julian', '44444444', 'Julian', 'Perez', '2022-05-12', 'julian@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Miguel', '99999999', 'Miguel', 'Martinez', '1999-03-12', 'miguel@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('mrcremita', 'mrcremitas', 'Javier', 'Garcia Tena', '2002-12-21', 'mrcremita@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, `atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`, `atributo15`) VALUES ('Sylwia', '11111111', 'Sylwia', 'Niecko', '2000-05-17', 'sylwia@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


