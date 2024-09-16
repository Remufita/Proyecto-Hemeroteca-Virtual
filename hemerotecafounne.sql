-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2024 a las 01:03:50
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hemerotecafounne`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `ID_Publicacion` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Editor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`ID_Publicacion`, `Codigo`, `Titulo`, `Editor`) VALUES
(1, 'AAO', 'Ateneo Argentino de Odontología. Revista del:', 'Ateneo Argentino de Odontología. (Tomás de Anchorena 1176 CABA Argentina)'),
(2, 'ACO', 'Actualidad en Cirugía Oral y Maxilofacial', 'Ediciones Arán. Barcelona España'),
(3, 'ADD', 'Adhesive Dentistry. Journal of:', 'Quintessence Publishing Co. Londres'),
(4, 'AJO', 'American Journal of Orthodontics & Dentofacial Orthopedics', 'Elsevier. (Amsterdam, Países Bajos)'),
(5, 'AOA', 'Asociación Odontológica Argentina. Revista de la:', 'Asociación Odontológica Argentina. (Junin 959 CABA, Argentina)'),
(6, 'AOL', 'Acta Odontologica Latinoamericana', 'Sociedad Argentina de Investigación Odontológica, SAIO. (Marcelo T. de Alvear 2142 - Piso 6° Sector B CABA, Argentina)'),
(7, 'AOM', 'Atlas of the Oral and Maxillofacial Surgery Clinics of North America', 'Saunders - Elsevier. (Philadelphia, EE.UU.)'),
(8, 'AOR', 'Angle Orthodontist', 'Sociedad de Ortodoncia Edward H. Angle. (Dallas, EE. UU.)'),
(9, 'APC', 'Revista da Associação Paulista de Cirurgiões Dentista', 'Pontificia Universidade Católica do Paraná. Editora Champagnat. (Curitiba, Paraná, Brasil)'),
(10, 'BJO', 'British Journal of Oral and Maxillofacial Surgery', 'Elsevier. (Amsterdam, Países Bajos)'),
(11, 'CAO', 'Revista del Círculo Argentino de Odontología', 'Círculo Argentino de Odontología. (Eduardo Acevedo 54, CABA, Argentina)'),
(12, 'CLO', 'Claves de Odontología', 'Círculo Odontológico de Córdoba. (27 de abril 1135. Córdoba, Argentina)'),
(13, 'CUS', 'Cúspide', 'Fundación CREO. (Avda. Vélez Sarsfield 1460 5° Piso. Córdoba, Argentina)'),
(14, 'DMA', 'Dental Materials', 'University of Manchester. Elsevier. (Amsterdam, Países Bajos)'),
(15, 'JJC', 'Fundación Juan José Carraro. Revista', 'Fundación Juan José Carraro. (Bulmes 2040. P.B: CABA, Argentina)'),
(16, 'DTR', 'Dental Tamatology', 'International Association for Dental Traumatology. (Los Angeles, EE.UU.)'),
(17, 'IJO', 'International Journal of Oral & Maxillofacial Surgery', 'Association of Oral and Maxillofacial Surgeons'),
(18, 'JCM', 'Journal of Clinical Microbiology', 'American Society for Microbiology (Washington, EE.UU.)'),
(19, 'JOE', 'Journal of Endodontics', 'American Association of Endodontics (Philadelphia, EE.UU.)'),
(20, 'JOP', 'Journal of Periodontology', 'American Academy of Periodontology'),
(21, 'MOM', 'Molecular Oral Microbiology', 'American Academy of Periodontology. (Chicago, IL, EE.UU.)'),
(22, 'MPC', 'Medicina Oral, Patología Oral y Cirugía Bucal', 'Sociedad Española de Medicina Oral'),
(23, 'OOO', 'Oral Surgery, Oral Medicine, Oral Pathology, Oral Radiology and Endodontics', 'American Association of Stomatologists'),
(24, 'OPM', 'Journal of Oral Pathology & Medicine', 'International Association of Oral Pathologists'),
(25, 'ORP', 'Odontología Restauradora y Periodoncia', 'Editorial Quintessence (Barcelona, España)'),
(26, 'PER', 'Periodontology 2000', 'Editorial Ars Médica (Barcelona, España)'),
(27, 'QCL', 'Quintessence Clínica', 'Ediciones Doyma (Barcelona, España)'),
(28, 'QTE', 'Quintessence Técnica', 'Ediciones Doyma (Barcelona, España)'),
(29, 'ROL', 'Revista Odontológica Latinoamericana', 'Facultad de Odontología. Universidad Nacional Autónoma de Yucatán (Mérida, México)'),
(30, 'UAM', 'Revista Odontológica Mexicana', 'Facultad de Odontología. Universidad Nacional Autónoma de México (Ciudad de México)'),
(31, 'UCP', 'Clínica e Pesquisa Odontológica. Revista de', 'Pontificia Universidad Católica do Paraná (Curitiba, Brasil)'),
(32, 'UNE', 'Facultad de Odontología. Revista de la', 'Facultad de Odontología. Universidad Nacional del Nordeste (Corrientes, Argentina)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `volumenes`
--

CREATE TABLE `volumenes` (
  `ID_Volumen` int(11) NOT NULL,
  `ID_Publicacion` int(11) NOT NULL,
  `Volumen` varchar(50) DEFAULT NULL,
  `Numero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `volumenes`
--

INSERT INTO `volumenes` (`ID_Volumen`, `ID_Publicacion`, `Volumen`, `Numero`) VALUES
(1, 1, 'Vol 48', '2009 N° 1'),
(2, 1, 'Vol 47', '2008 N° 1-2-3'),
(3, 1, 'Vol 46', '2007 N° 1-2-3'),
(4, 1, 'Vol 45', '2006 N° 1-2-3'),
(5, 1, 'Vol 44', '2005 N° 1-2-3'),
(6, 1, 'Vol 43', '2004 N° 2-3'),
(7, 1, 'Vol 42', '2003 N° 1'),
(8, 1, 'Vol 41', '2002 N° 1'),
(9, 1, 'Vol 40', '2001 N° 1-2-3'),
(10, 1, 'Vol 39', '2000 N° 2'),
(11, 2, 'Vol 42', '2003'),
(12, 2, 'Vol 41', '2002'),
(13, 2, 'Vol 31', '2006 N° 31'),
(14, 2, 'Vol 28-29-30', '2006'),
(15, 3, 'Vol 13', '2011 N° 1-2-3-4-5-6'),
(16, 3, 'Vol 12', '2010 N° 1-2-3-4-5-6'),
(17, 3, 'Vol 9', '2007 N° 1-2-3-4-5-6'),
(18, 3, 'Vol 8', '2006 N° 1-2-3-4-5-6'),
(19, 4, 'Vol 139/140', '2011 N° 1-12'),
(20, 4, 'Vol 137/138', '2010 N° 1-12'),
(21, 4, 'Vol 135/136', '2009 N° 1-12'),
(22, 4, 'Vol 133/134', '2008 N° 1-12'),
(23, 5, 'Vol 98', '2010 N° 1-5'),
(24, 5, 'Vol 97', '2009 N° 2-5'),
(25, 5, 'Vol 96', '2008 N° 1-5'),
(26, 6, 'Vol 23', '2010 N° 1-2'),
(27, 6, 'Vol 22', '2009 N° 1-2'),
(28, 7, 'Vol 18', '2010 N° 1-2'),
(29, 7, 'Vol 17', '2009 N° 1-2'),
(30, 7, 'Vol 16', '2008 N° 1-2'),
(31, 8, 'Vol 79', '2009 N° 1-5'),
(32, 8, 'Vol 78', '2008 N° 1'),
(33, 8, 'Vol 77', '2007 N° 1-5'),
(34, 9, 'Vol 63', '2009 N° 1'),
(35, 9, 'Vol 62', '2008 N° 2-7'),
(36, 9, 'Vol 61', '2007 N° 8-12'),
(37, 10, 'Vol 49', '2011 N° 1-8'),
(38, 10, 'Vol 48', '2010 N° 1-8'),
(39, 10, 'Vol 47', '2009 N° 1-8'),
(40, 11, 'Vol 19', '2012 N° 69'),
(41, 11, 'Vol 18', '2011 N° 67-68'),
(42, 12, 'Vol 17', '2010 N° 65'),
(43, 12, 'Vol 16', '2009 N° 63-64'),
(44, 13, 'Vol 26', '2010 N° 1-6'),
(45, 13, 'Vol 25', '2009 N° 1-6'),
(46, 13, 'Vol 24', '2008 N° 1-6'),
(47, 13, 'Vol 23', '2007 N° 1-6'),
(48, 14, 'Vol 27', '2011 N° 1-12'),
(49, 14, 'Vol 26', '2010 N° 1-12'),
(50, 14, 'Vol 25', '2009 N° 1-12'),
(51, 15, 'Vol 40', '2011 N° 1-12'),
(52, 15, 'Vol 39', '2010 N° 1-12'),
(53, 15, 'Vol 38', '2009 N° 1-12'),
(54, 1, 'Vol 26', '2010 N° 1-6'),
(55, 1, 'Vol 23', '2007 N° 1-6'),
(56, 1, 'Vol 22', '2006 N° 1-6'),
(57, 2, 'Vol 40', '2011 N° 1-12'),
(58, 2, 'Vol 39', '2010 N° 1-12'),
(59, 2, 'Vol 38', '2009 N° 1-12'),
(60, 2, 'Vol 37', '2008 N° 1-12'),
(61, 2, 'Vol 35', '2006 N° 1-12'),
(62, 3, 'Vol 26', '2010 N° 1-6'),
(63, 3, 'Vol 23', '2007 N° 1-6'),
(64, 3, 'Vol 22', '2006 N° 1-6'),
(65, 4, 'Vol 37', '2011 N° 1-12'),
(66, 4, 'Vol 36', '2010 N° 1-12'),
(67, 4, 'Vol 35', '2009 N° 1-12'),
(68, 4, 'Vol 34', '2008 N° 1-12'),
(69, 4, 'Vol 33', '2007 N° 1-12'),
(70, 4, 'Vol 32', '2006 N° 1-12'),
(71, 4, 'Vol 31', '2005 N° 1-12'),
(72, 5, 'Vol 82', '2011 N° 1-12'),
(73, 5, 'Vol 81', '2010 N° 1-12'),
(74, 5, 'Vol 80', '2009 N° 1-12'),
(75, 5, 'Vol 79', '2008 N° 1-12'),
(76, 5, 'Vol 78', '2007 N° 1-12'),
(77, 5, 'Vol 77', '2006 N° 1-12'),
(78, 5, 'Vol 76', '2005 N° 1-12'),
(79, 6, 'Vol 25', '2012 N° 1-6'),
(80, 7, 'Vol 12', '2007 N° 1-4'),
(81, 7, 'Vol 11', '2007 N° 1-4'),
(82, 8, 'Vol 112', '2011 N° 1-6'),
(83, 8, 'Vol 111', '2011 N° 1-6'),
(84, 8, 'Vol 110', '2010 N° 1-6'),
(85, 8, 'Vol 108', '2009 N° 1-6'),
(86, 8, 'Vol 107', '2009 N° 1-6'),
(87, 9, 'Vol 40', '2011 N° 2-10'),
(88, 9, 'Vol 39', '2010 N° 1-8'),
(89, 9, 'Vol 36', '2007 N° 2-10'),
(90, 10, 'Vol 15', '2011 N° 1-3'),
(91, 10, 'Vol 14', '2010 N° 1-6'),
(92, 10, 'Vol 13', '2009 N° 1-6'),
(93, 10, 'Vol 12', '2008 N° 1-6'),
(94, 11, '2011', 'N° 55-57'),
(95, 11, '2010', 'N° 52-54'),
(96, 11, '2008', 'N° 19-20'),
(97, 12, 'Vol 24', '2011 N° 1-10'),
(98, 12, 'Vol 23', '2010 N° 1-10'),
(99, 12, 'Vol 22', '2009 N° 1-10'),
(100, 13, 'Vol 22', '2011 N° 1-10'),
(101, 13, 'Vol 21', '2010 N° 1-10'),
(102, 13, 'Vol 20', '2009 N° 1-10'),
(103, 14, 'Vol 6', '2014 N° 1'),
(104, 14, 'Vol 5', '2013 N° 1-2'),
(105, 15, 'Vol 21', '2017 N° 1'),
(106, 15, 'Vol 20', '2016 N° 2-4'),
(107, 16, 'Vol 6', '2010 N° 1-2'),
(108, 16, 'Vol 5', '2009 N° 1-3'),
(109, 17, 'Vol 14', '2021 N° 1-2'),
(110, 17, 'Vol 13', '2020 N° 1-2'),
(111, 17, 'Vol 12', '2019 N° 1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`ID_Publicacion`);

--
-- Indices de la tabla `volumenes`
--
ALTER TABLE `volumenes`
  ADD PRIMARY KEY (`ID_Volumen`),
  ADD KEY `ID_Publicacion` (`ID_Publicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `ID_Publicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `volumenes`
--
ALTER TABLE `volumenes`
  MODIFY `ID_Volumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `volumenes`
--
ALTER TABLE `volumenes`
  ADD CONSTRAINT `volumenes_ibfk_1` FOREIGN KEY (`ID_Publicacion`) REFERENCES `publicaciones` (`ID_Publicacion`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
