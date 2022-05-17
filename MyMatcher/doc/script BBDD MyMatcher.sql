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


INSERT INTO `usuarios` (`user`, `password`, `nombre`, `apellidos`, `fechanac`, `correo`, `descripcion`, `atributo1`, `atributo2`, `atributo3`, 
`atributo4`, `atributo5`, `atributo6`, `atributo7`, `atributo8`, `atributo9`, `atributo10`, `atributo11`, `atributo12`, `atributo13`, `atributo14`,
 `atributo15`) VALUES
('Alex', '1234asd', 'Alex', 'Kovacs', '2000-12-12', 'alexkovacs27@gmail.com', 'aaaaaaaaaa', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 
'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo'),
('Adri', '1234asd', 'Adri', 'Mata', '2001-03-12', 'adrianmatacontreras@gmail.com', 'eeeeeeeeeee', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 
'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo', 'Feo');
