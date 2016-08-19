-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-08-2016 a las 19:03:26
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `golf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `CourseID` int(11) NOT NULL,
  `AddressInfo` text NOT NULL,
  `NumHoles` int(11) NOT NULL,
  `Par` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hole`
--

CREATE TABLE IF NOT EXISTS `hole` (
  `CourseID` int(11) NOT NULL,
  `HoleNum` int(11) NOT NULL,
  `MPar` int(11) NOT NULL,
  `WPar` int(11) NOT NULL,
  `Difficulty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `match`
--

CREATE TABLE IF NOT EXISTS `match` (
  `CourseID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `MatchName` int(11) NOT NULL,
  `StartDate` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `PlayerID` int(11) NOT NULL,
  `Username` int(11) NOT NULL,
  `Password` int(11) NOT NULL,
  `Birthday` int(11) NOT NULL,
  `Handicap` int(11) NOT NULL,
  `ProfilePic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `round`
--

CREATE TABLE IF NOT EXISTS `round` (
  `RoundID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `RoundNum` int(11) NOT NULL,
  `StartDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `CourseID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `RoundID` int(11) NOT NULL,
  `HoleID` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `NumPutts` int(11) NOT NULL,
  `NumStrokes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
