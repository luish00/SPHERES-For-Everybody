-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2015 a las 22:59:13
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `data`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `name` varchar(60) CHARACTER SET latin1 NOT NULL,
`id` int(11) NOT NULL,
  `description` varchar(300) CHARACTER SET latin1 NOT NULL,
  `img` varchar(100) CHARACTER SET latin1 NOT NULL,
  `link` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `info`
--

INSERT INTO `info` (`name`, `id`, `description`, `img`, `link`) VALUES
('	Aplications of SPHERES	', 1, '	Space Applications:\r\nThe NASA International Space Station Education Concept Development Report calls out three levels of interaction for students involved with NASA activities: exposure, engage, and educate. SPHERES-Zero-Robotics provides a unique and valuable opportunity to go far beyond exposure.', 'http://www.nasa.gov/sites/default/files/s1_1.jpg	', ''),
('How does SPHERES function?	', 2, 'The MIT Space Systems Laboratory, in conjunction with NASA, DARPA, and Aurora Flight Sciences, developed and operates the SPHERES (Synchronized Position Hold Engage and Reorient Experimental Satellite) system to provide a safe and reusable zero gravity platform to test sensor, control and autonomy ', 'http://ssl.mit.edu/spheres/images/flight/TS007/ISS014E17875.jpg	', ''),
('NASAs Ames Research Center 75th Anniversary Open House', 3, 'On October 18, 2014 NASAs Ames Research Center opened its gates to the public for the first time in 17 years to celebrate Ames 75th Anniversary. The Open House event attracted over a hundred thousand people who participated in a two mile self-guided walking tour past the unique facilities where t', 'http://www.nasa.gov/sites/default/files/styles/673xvariable_height/public/3_2.jpg?itok=pk1EOjAM	', ''),
('	Project Tango on SPHERES	', 4, 'Project Tango is a new system from smartphones to virtualize the world we live in to bring new applications and uses never before seen. More information can be found directly from google below: https://www.google.com/atap/projecttango/', 'http://www.nasa.gov/sites/default/files/styles/466x248/public/tango.jpg?itok=LVDaQJs3	', ''),
('Smart Phones Working With Smart SPHERES', 5, 'The Synchronized Position Hold, Engage, Reorient, Experimental Satellites', 'http://cdn.arstechnica.net/wp-content/uploads/2013/03/IMG_3210.jpg	', ''),
('	Smart SPHERES Are About to Get A Whole Lot Smarter	', 6, 'Smart devices  such as tablets and phones increasingly are an essential part of everyday life on Earth. The same can be said', 'http://www.nasa.gov/sites/default/files/iss029e036493.jpg', ''),
('	SPHERES Engineering Perform Tests on 3-D printed Ultem 9085', 7, '3D printed materials are becoming of more interest in engineering as well as space applications. A SPHERES payload Slosh was the first to use a 3D printed material called Ultem 9085. This material is planned to be used in more SPHERES payloads and the SPHERES engineering team felt with a new mate', 'http://www.nasa.gov/sites/default/files/styles/673xvariable_height/public/ultem_bar_fea_0.png?itok=', ''),
('	The History of SPHERES	', 8, 'SPHERES was produced by Massachusetts Institute of Technologys Space Systems Laboratory as a way to provide DARPA, NASA, and other research institutions with a test platform for metrology, controls, and autonomous technologies in formation flight. It began in 2000, when Professor David W. Miller, ', 'http://www.nasa.gov/sites/default/files/styles/673xvariable_height/public/iss020e019069.jpg?itok=bt', ''),
('Zero Robotics Middle School Competition-2014	', 9, 'Zero Robotics is a robotics programming competition where the robots are SPHERES Synchronized Position Hold Engage and Reorient Experimental Satellites inside the International Space Station. The competition starts online, on this website, where teams program the SPHERES to solve an annual challe', 'http://www.nasa.gov/sites/default/files/styles/673xvariable_height/public/zr_twitter_photo_2.gif?it', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `info`
--
ALTER TABLE `info`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `info`
--
ALTER TABLE `info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
