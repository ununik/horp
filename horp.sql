-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vygenerováno: Pát 06. lis 2015, 17:32
-- Verze serveru: 5.5.44-0ubuntu0.14.04.1
-- Verze PHP: 5.5.9-1ubuntu4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `horp`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `basket`
--

CREATE TABLE IF NOT EXISTS `basket` (
  `ip` varchar(255) COLLATE utf8_bin NOT NULL,
  `timestamp` int(20) NOT NULL,
  `count` text COLLATE utf8_bin NOT NULL,
  `item` text COLLATE utf8_bin NOT NULL,
  `color` text COLLATE utf8_bin NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `doprava` int(11) NOT NULL DEFAULT '1',
  `jmeno` varchar(255) COLLATE utf8_bin NOT NULL,
  `prijmeni` varchar(255) COLLATE utf8_bin NOT NULL,
  `firma` varchar(255) COLLATE utf8_bin NOT NULL,
  `ic` varchar(255) COLLATE utf8_bin NOT NULL,
  `dic` varchar(255) COLLATE utf8_bin NOT NULL,
  `adresa` varchar(255) COLLATE utf8_bin NOT NULL,
  `mesto` varchar(255) COLLATE utf8_bin NOT NULL,
  `psc` varchar(10) COLLATE utf8_bin NOT NULL,
  `jmeno_dodaci` varchar(255) COLLATE utf8_bin NOT NULL,
  `prijmeni_dodaci` varchar(255) COLLATE utf8_bin NOT NULL,
  `adresa_dodaci` varchar(255) COLLATE utf8_bin NOT NULL,
  `mesto_dodaci` varchar(255) COLLATE utf8_bin NOT NULL,
  `psc_dodaci` varchar(10) COLLATE utf8_bin NOT NULL,
  `postovne` int(15) NOT NULL,
  `mail` varchar(255) COLLATE utf8_bin NOT NULL,
  `tel` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Vypisuji data pro tabulku `basket`
--

INSERT INTO `basket` (`ip`, `timestamp`, `count`, `item`, `color`, `comment`, `doprava`, `jmeno`, `prijmeni`, `firma`, `ic`, `dic`, `adresa`, `mesto`, `psc`, `jmeno_dodaci`, `prijmeni_dodaci`, `adresa_dodaci`, `mesto_dodaci`, `psc_dodaci`, `postovne`, `mail`, `tel`) VALUES
('127.0.0.1', 1446731411, '', '', '', '', 1, 's', 'fd', '', '', '', 'fds', 'fds', 'fsd', '', '', '', '', '', 0, '', ''),
('::1', 1446317051, '_;_3_;_20', '_;_2_;_1', '', '', 2, 'jfg', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cz` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `en` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Vypisuji data pro tabulku `category`
--

INSERT INTO `category` (`id`, `cz`, `en`) VALUES
(1, 'Polyesterové chyty', 'Polyester holds'),
(2, 'Epoxy chyty', 'Epoxy holds'),
(3, 'Speciální chyty', 'Special holds'),
(4, 'Spojovací materiál', 'Hardware'),
(5, 'Jiné', 'Others');

-- --------------------------------------------------------

--
-- Struktura tabulky `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `color` varchar(10) CHARACTER SET latin1 NOT NULL,
  `cz` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `en` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Vypisuji data pro tabulku `colors`
--

INSERT INTO `colors` (`id`, `color`, `cz`, `en`) VALUES
(1, '#FFFFFF', 'bílá', ''),
(2, '#fbd782', 'světlý okr', ''),
(3, '#ffe700', 'žlutá', ''),
(4, '#f0862d', 'oranžová', ''),
(5, '#ff0000', 'červená', ''),
(6, '#001eff', 'modrá', ''),
(7, '#129614', 'zelená', ''),
(8, '#656565', 'šedá', ''),
(9, '#000000', 'černá', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `doprava`
--

CREATE TABLE IF NOT EXISTS `doprava` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `cz` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `en` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cenaZaGram` float NOT NULL,
  `cenaZaJdenBalik` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Vypisuji data pro tabulku `doprava`
--

INSERT INTO `doprava` (`id`, `cz`, `en`, `cenaZaGram`, `cenaZaJdenBalik`) VALUES
(1, 'Platba předem - balík Na poštu', '', 0.004, 72),
(2, 'Platba předem - balík Do ruky', '', 0.004, 72),
(3, 'Dobírka - balík Na poštu', '', 0.004, 102),
(4, 'Dobírka - balík Do ruky', '', 0.004, 102),
(5, 'Osobní odběr', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `subcategory` int(10) NOT NULL,
  `cz` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `en` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `sklad` int(10) NOT NULL,
  `zakoupeno` int(10) NOT NULL,
  `cenaBezDPH` float NOT NULL,
  `cenaSDPH` float NOT NULL,
  `montazniPrvek` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `rozmery` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `popis` text CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `poznamka` text CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `hmotnost` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=277 ;

--
-- Vypisuji data pro tabulku `item`
--

INSERT INTO `item` (`id`, `subcategory`, `cz`, `en`, `sklad`, `zakoupeno`, `cenaBezDPH`, `cenaSDPH`, `montazniPrvek`, `rozmery`, `popis`, `poznamka`, `hmotnost`) VALUES
(1, 1, 'Mikro - 1', 'Micro - 1', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(2, 1, 'Mikro - 2', 'Micro - 2', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(3, 1, 'Mikro - 3', 'Micro - 3', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(4, 1, 'Mikro - 4', 'Micro - 4', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(5, 1, 'Mikro - 5', 'Micro - 5', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(6, 1, 'Mikro - 6', 'Micro - 6', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(7, 1, 'Mikro - 7', 'Micro - 7', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(8, 1, 'Mikro - 8', 'Micro - 8', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(9, 1, 'Mikro - 9', 'Micro - 9', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(10, 1, 'Mikro - 10', 'Micro - 10', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(11, 2, 'Mini - 1', 'Mini - 1', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(12, 2, 'Mini - 2', 'Mini - 2', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(13, 2, 'Mini - 3', 'Mini - 3', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(14, 2, 'Mini - 4', 'Mini - 4', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(15, 2, 'Mini - 5', 'Mini - 5', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(16, 2, 'Mini - 6', 'Mini - 6', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(17, 2, 'Mini - 7', 'Mini - 7', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(18, 2, 'Mini - 8', 'Mini - 8', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(19, 2, 'Mini - 9', 'Mini - 9', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(20, 2, 'Mini - 10', 'Mini - 10', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(21, 2, 'Mini - 11', 'Mini - 11', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(22, 2, 'Mini - 12', 'Mini - 12', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(23, 2, 'Mini - 13', 'Mini - 13', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(24, 2, 'Mini - 14', 'Mini - 14', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(25, 2, 'Mini - 15', 'Mini - 15', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(26, 3, 'S - a', 'S - a', 0, 0, 26, 31.2, 'vrut ø 5', '', '', '', 0),
(27, 3, 'S - b', 'S - b', 0, 0, 26, 31.2, 'vrut ø 5', '', '', '', 0),
(28, 3, 'S - c', 'S - c', 0, 0, 26, 31.2, 'vrut ø 5', '', '', '', 0),
(29, 3, 'S - d', 'S - d', 0, 0, 26, 31.2, 'vrut ø 5', '', '', '', 0),
(30, 3, 'S - e', 'S - e', 0, 0, 26, 31.2, 'vrut ø 5', '', '', '', 0),
(31, 3, 'S - I', 'S - I', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '', '', '', 0),
(32, 3, 'S - II', 'S - II', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '', '', '', 0),
(33, 3, 'S - III', 'S - III', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '', '', '', 0),
(34, 3, 'S - IV', 'S - IV', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '', '', '', 0),
(35, 3, 'S - V', 'S - V', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '', '', '', 0),
(36, 3, 'S - VI', 'S - VI', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '', '', '', 0),
(37, 3, 'S - 1', 'S - 1', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(38, 3, 'S - 2', 'S - 2', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(39, 3, 'S - 3', 'S - 3', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(40, 3, 'S - 4', 'S - 4', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(41, 3, 'S - 5', 'S - 5', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(42, 3, 'S - 6', 'S - 6', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(43, 3, 'S - 7', 'S - 7', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(44, 3, 'S - 8', 'S - 8', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(45, 3, 'S - 9', 'S - 9', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(46, 3, 'S - 10', 'S - 10', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(47, 3, 'S - 11', 'S - 11', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(48, 3, 'S - 12', 'S - 12', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(49, 3, 'S - 13', 'S - 13', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(50, 3, 'S - 14', 'S - 14', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(51, 3, 'S - 15', 'S - 15', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(52, 3, 'S - 15', 'S - 15', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(53, 3, 'S - 16', 'S - 16', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(54, 3, 'S - 17', 'S - 17', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(55, 3, 'S - 18', 'S - 18', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(56, 3, 'S - 19', 'S - 19', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(57, 3, 'S - 20', 'S - 20', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(58, 3, 'S - 21', 'S - 21', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(59, 3, 'S - 22', 'S - 22', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(60, 3, 'S - 23', 'S - 23', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(61, 3, 'S - 24', 'S - 24', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(62, 3, 'S - 25', 'S - 25', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(63, 3, 'S - 26', 'S - 26', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(64, 3, 'S - 27', 'S - 27', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(65, 3, 'S - 28', 'S - 28', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(66, 3, 'S - 29', 'S - 29', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(67, 3, 'S - 30', 'S - 30', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(68, 3, 'S - 31', 'S - 31', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(69, 3, 'S - 32', 'S - 32', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(70, 3, 'S - 33', 'S - 33', 0, 0, 26, 31.2, 'imbus M10', '', '', '', 0),
(71, 4, 'M - a', 'M - a', 0, 0, 45, 54.5, 'vrut ø 5', '', '', '', 0),
(72, 4, 'M - b', 'M - b', 0, 0, 45, 54.5, 'vrut ø 5', '', '', '', 0),
(73, 4, 'M - c', 'M - c', 0, 0, 45, 54.5, 'vrut ø 5', '', '', '', 0),
(74, 4, 'M - d', 'M - d', 0, 0, 45, 54.5, 'vrut ø 5', '', '', '', 0),
(75, 4, 'M - e', 'M - e', 0, 0, 45, 54.5, 'vrut ø 5', '', '', '', 0),
(76, 4, 'M - f', 'M - f', 0, 0, 45, 54.5, 'vrut ø 5', '', '', '', 0),
(77, 4, 'M - 1', 'M - 1', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(78, 4, 'M - 2', 'M - 2', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(79, 4, 'M - 3', 'M - 3', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(80, 4, 'M - 4', 'M - 4', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(81, 4, 'M - 5', 'M - 5', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(82, 4, 'M - 6', 'M - 6', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(83, 4, 'M - 7', 'M - 7', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(84, 4, 'M - 8', 'M - 8', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(85, 4, 'M - 9', 'M - 9', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(86, 4, 'M - 10', 'M - 10', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(87, 4, 'M - 11', 'M - 11', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(88, 4, 'M - 12', 'M - 12', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(89, 4, 'M - 12', 'M - 12', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(90, 4, 'M - 13', 'M - 13', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(91, 4, 'M - 14', 'M - 14', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(92, 4, 'M - 15', 'M - 15', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(93, 4, 'M - 16', 'M - 16', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(94, 4, 'M - 17', 'M - 17', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(95, 4, 'M - 18', 'M - 18', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(96, 4, 'M - 19', 'M - 19', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(97, 4, 'M - 20', 'M - 20', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(98, 4, 'M - 21', 'M - 21', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(99, 4, 'M - 23', 'M - 23', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(100, 4, 'M - 24', 'M - 24', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(101, 4, 'M - 25', 'M - 25', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(102, 4, 'M - 26', 'M - 26', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(103, 4, 'M - 27', 'M - 27', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(104, 4, 'M - 28', 'M - 28', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(105, 4, 'M - 29', 'M - 29', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(106, 4, 'M - 30', 'M - 30', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(107, 4, 'M - 31', 'M - 31', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(108, 4, 'M - 32', 'M - 32', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(109, 4, 'M - 33', 'M - 33', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(110, 4, 'M - 34', 'M - 34', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(111, 4, 'M - 35', 'M - 35', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(112, 4, 'M - 36', 'M - 36', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(113, 4, 'M - 37', 'M - 37', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(114, 4, 'M - 38', 'M - 38', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(115, 4, 'M - 39', 'M - 39', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(116, 4, 'M - 40', 'M - 40', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(117, 4, 'M - 41', 'M - 41', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(118, 4, 'M - 42', 'M - 42', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(119, 4, 'M - 43', 'M - 43', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(120, 4, 'M - 44', 'M - 44', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(121, 4, 'M - 45', 'M - 45', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(122, 4, 'M - 46', 'M - 46', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(123, 4, 'M - 47', 'M - 47', 0, 0, 45, 54.5, 'imbus M10', '', '', '', 0),
(124, 5, 'L - a', 'L - a', 0, 0, 61, 73.8, 'vrut ø 5', '', '', '', 0),
(125, 5, 'L - b', 'L - b', 0, 0, 61, 73.8, 'vrut ø 5', '', '', '', 0),
(126, 5, 'L - c', 'L - c', 0, 0, 61, 73.8, 'vrut ø 5', '', '', '', 0),
(127, 5, 'L - d', 'L - d', 0, 0, 61, 73.8, 'vrut ø 5', '', '', '', 0),
(128, 5, 'L - e', 'L - e', 0, 0, 61, 73.8, 'vrut ø 5', '', '', '', 0),
(129, 5, 'L - f', 'L - f', 0, 0, 61, 73.8, 'vrut ø 5', '', '', '', 0),
(130, 5, 'L - g', 'L - g', 0, 0, 61, 73.8, 'vrut ø 5', '', '', '', 0),
(131, 5, 'L - 1', 'L - 1', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(132, 5, 'L - 2', 'L - 2', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(133, 5, 'L - 3', 'L - 3', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(134, 5, 'L - 4', 'L - 4', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(135, 5, 'L - 5', 'L - 5', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(136, 5, 'L - 6', 'L - 6', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(137, 5, 'L - 7', 'L - 7', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(138, 5, 'L - 8', 'L - 8', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(139, 5, 'L - 9', 'L - 9', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(140, 5, 'L - 10', 'L - 10', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(141, 5, 'L - 11', 'L - 11', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(142, 5, 'L - 12', 'L - 12', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(143, 5, 'L - 13', 'L - 13', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(144, 5, 'L - 14', 'L - 14', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(145, 5, 'L - 15', 'L - 15', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(146, 5, 'L - 16', 'L - 16', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(147, 5, 'L - 17', 'L - 17', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(148, 5, 'L - 18', 'L - 18', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(149, 5, 'L - 19', 'L - 19', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(150, 5, 'L - 20', 'L - 20', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(151, 5, 'L - 21', 'L - 21', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(152, 5, 'L - 22', 'L - 22', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(153, 5, 'L - 23', 'L - 23', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(154, 5, 'L - 24', 'L - 24', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(155, 5, 'L - 25', 'L - 25', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(156, 5, 'L - 26', 'L - 26', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(157, 5, 'L - 27', 'L - 27', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(158, 5, 'L - 28', 'L - 28', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(159, 5, 'L - 29', 'L - 29', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(160, 5, 'L - 30', 'L - 30', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(161, 5, 'L - 31', 'L - 31', 0, 0, 61, 73.8, 'imbus M10', '', '', '', 0),
(162, 6, 'Mega - a', 'Mega - a', 0, 0, 210, 254.1, 'imbus M10', '7 x 24 x 33 cm', '', '', 0),
(163, 6, 'Mega - b', 'Mega - b', 0, 0, 150, 181.5, 'imbus M10', '5,5 x 9 x 28 cm', '', '', 0),
(164, 6, 'Mega - c', 'Mega - c', 0, 0, 150, 181.5, 'imbus M10', '5 x 21 x 30 cm', '', '', 0),
(165, 6, 'Mega - d', 'Mega - d', 0, 0, 250, 302.5, 'imbus M10', '7 x 20 x 36 cm', '', '', 0),
(166, 6, 'Mega - e', 'Mega - e', 0, 0, 210, 254.1, 'imbus M10', '11 x 15 x 18 cm', '', '', 0),
(167, 6, 'Mega - f', 'Mega - f', 0, 0, 210, 254.1, 'imbus M10', '5,5 x 20 x 33 cm', '', '', 0),
(168, 6, 'Mega - g', 'Mega - g', 0, 0, 390, 471.9, 'imbus M10', '11 x 26 x 31 cm', '', '', 0),
(169, 7, 'Žába', 'Frog', 0, 0, 119, 144, 'imbus šroub M10', '', '', '', 0),
(170, 7, 'Červ', 'Worm', 0, 0, 119, 144, 'imbus šroub M10', '', '', 'Velikost L', 0),
(171, 7, 'Hvězdice', 'Star', 0, 0, 119, 144, 'imbus šroub M10', '', '', 'Velikost L', 0),
(172, 7, 'Srdce', 'Heart', 0, 0, 92, 111.3, 'imbus šroub M10', '', '', 'Velikost M', 0),
(173, 0, 'Medvěd', 'Bear', 0, 0, 79, 95.6, 'imbus šroub M10', '', '', 'Velikost S', 0),
(174, 7, 'Prase', 'Pig', 0, 0, 79, 95.6, 'imbus šroub M10', '', '', 'Velikost S', 0),
(175, 7, 'Slon', 'Elephant', 0, 0, 79, 95.6, 'imbus šroub M10', '', '', 'Velikost S', 0),
(176, 7, 'Velryba', 'Whale', 0, 0, 79, 95.6, 'imbus šroub M10', '', '', 'Velikost S', 0),
(177, 7, 'Želva', 'Turtle', 0, 0, 79, 95.6, 'imbus šroub M10', '', '', 'Velikost S', 0),
(178, 8, 'Koule - S', 'Ball - S', 0, 0, 26, 31.5, 'imbus M10', 'ø 6 cm', '', '', 0),
(179, 8, 'Koule - M', 'Ball - M', 0, 0, 45, 54.5, 'imbus M10', 'ø 8 cm', '', '', 0),
(180, 8, 'Koule - L', 'Ball - L', 0, 0, 61, 73.8, 'imbus M10', 'ø 10 cm', '', '', 0),
(181, 8, 'Koule - XL', 'Ball - XL', 0, 0, 81, 98, 'imbus M10', 'ø 12 cm', '', '', 0),
(182, 9, 'Mikro - 1', 'Micro - 1', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(183, 9, 'Mikro - 2', 'Micro - 2', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(184, 9, 'Mikro - 3', 'Micro - 3', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(185, 9, 'Mikro - 4', 'Micro - 4', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(186, 9, 'Mikro - 5', 'Micro - 5', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(187, 9, 'Mikro - 6', 'Micro - 6', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(188, 9, 'Mikro - 7', 'Micro - 7', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(189, 9, 'Mikro - 8', 'Micro - 8', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(190, 9, 'Mikro - 9', 'Micro - 9', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(191, 9, 'Mikro - 10', 'Micro - 10', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 0),
(192, 10, 'Mini - 1', 'Mini - 1', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(193, 10, 'Mini - 2', 'Mini - 2', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(195, 10, 'Mini - 3', 'Mini - 3', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(196, 10, 'Mini - 4', 'Mini - 4', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(197, 10, 'Mini - 5', 'Mini - 5', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(198, 10, 'Mini - 6', 'Mini - 6', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(199, 10, 'Mini - 7', 'Mini - 7', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(200, 10, 'Mini - 8', 'Mini - 8', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(201, 10, 'Mini - 9', 'Mini - 9', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(202, 10, 'Mini - 10', 'Mini - 10', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 0),
(203, 11, 'S - 1', 'S - 1', 0, 0, 26, 31.5, 'imbus M10', '', '', '', 0),
(204, 11, 'S - 2', 'S - 2', 0, 0, 26, 31.5, 'imbus M10', '', '', '', 0),
(205, 11, 'S - 3', 'S - 3', 0, 0, 26, 31.5, 'imbus M10', '', '', '', 0),
(206, 11, 'S - 4', 'S - 4', 0, 0, 26, 31.5, 'imbus M10', '', '', '', 0),
(207, 11, 'S - 5', 'S - 5', 0, 0, 26, 31.5, 'imbus M10', '', '', '', 0),
(208, 11, 'S - 6', 'S - 6', 0, 0, 26, 31.5, 'imbus M10', '', '', '', 0),
(209, 11, 'S - 7', 'S - 7', 0, 0, 26, 31.5, 'imbus M10', '', '', '', 0),
(210, 11, 'S - 8', 'S - 8', 0, 0, 26, 31.5, 'imbus M10', '', '', '', 0),
(211, 11, 'S - 9', 'S - 9', 0, 0, 26, 31.5, 'imbus M10', '', '', '', 0),
(212, 11, 'S - 10', 'S - 10', 0, 0, 26, 31.5, 'imbus M10', '', '', '', 0),
(213, 12, 'M - 1', 'M - 1', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(214, 12, 'M - 2', 'M - 2', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(215, 12, 'M - 3', 'M - 3', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(216, 12, 'M - 4', 'M - 4', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(217, 12, 'M - 5', 'M - 5', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(218, 12, 'M - 6', 'M - 6', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(219, 12, 'M - 7', 'M - 7', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(220, 12, 'M - 8', 'M - 8', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(221, 12, 'M - 9', 'M - 9', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(222, 12, 'M - 10', 'M - 10', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(223, 12, 'M - 11', 'M - 11', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(224, 12, 'M - 12', 'M - 12', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(225, 12, 'M - 13', 'M - 13', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(226, 12, 'M - 14', 'M - 14', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(227, 12, 'M - 15', 'M - 15', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(228, 12, 'M - 16', 'M - 16', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(229, 12, 'M - 17', 'M - 17', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(230, 12, 'M - 18', 'M - 18', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(231, 12, 'M - 19', 'M - 19', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(232, 12, 'M - 20', 'M - 20', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(233, 12, 'M - 21', 'M - 21', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(234, 12, 'M - 22', 'M - 22', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(235, 12, 'M - 23', 'M - 23', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(236, 12, 'M - 24', 'M - 24', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(237, 12, 'M - 25', 'M - 25', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(238, 12, 'M - 26', 'M - 26', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(239, 12, 'M - 27', 'M - 27', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(240, 12, 'M - 28', 'M - 28', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(241, 12, 'M - 29', 'M - 29', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(242, 12, 'M - 30', 'M - 30', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(243, 12, 'M - 31', 'M - 31', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(244, 12, 'M - 32', 'M - 32', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(245, 12, 'M - 33', 'M - 33', 0, 0, 43, 52, 'imbus M10', '', '', '', 0),
(246, 13, 'L - 1', 'L - 1', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(247, 13, 'L - 2', 'L - 2', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(248, 13, 'L - 3', 'L - 3', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(249, 13, 'L - 4', 'L - 4', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(250, 13, 'L - 5', 'L - 5', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(251, 13, 'L - 6', 'L - 6', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(252, 13, 'L - 7', 'L - 7', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(253, 13, 'L - 8', 'L - 8', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(254, 13, 'L - 9', 'L - 9', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(255, 13, 'L - 10', 'L - 10', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(256, 13, 'L - 11', 'L - 11', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(257, 13, 'L - 12', 'L - 12', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(258, 13, 'L - 13', 'L - 13', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(259, 13, 'L - 14', 'L - 14', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(260, 13, 'L - 15', 'L - 15', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(261, 13, 'L - 16', 'L - 16', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(262, 13, 'L - 17', 'L - 17', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(263, 13, 'L - 18', 'L - 18', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(264, 13, 'L - 19', 'L - 19', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(265, 13, 'L - 20', 'L - 20', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(266, 13, 'L - 21', 'L - 21', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(267, 13, 'L - 22', 'L - 22', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(268, 13, 'L - 23', 'L - 23', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(269, 13, 'L - 24', 'L - 24', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(270, 13, 'L - 25', 'L - 25', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(271, 13, 'L - 26', 'L - 26', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(272, 13, 'L - 27', 'L - 27', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(273, 13, 'L - 28', 'L - 28', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(274, 13, 'L - 29', 'L - 29', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(275, 13, 'L - 30', 'L - 30', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0),
(276, 13, 'L - 31', 'L - 31', 0, 0, 58, 70.2, 'imbus M10', '', '', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `sleva`
--

CREATE TABLE IF NOT EXISTS `sleva` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `zboziNad` int(10) NOT NULL,
  `sleva` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Vypisuji data pro tabulku `sleva`
--

INSERT INTO `sleva` (`id`, `zboziNad`, `sleva`) VALUES
(1, 5000, 3),
(2, 10000, 5),
(3, 20000, 7),
(4, 40000, 9),
(5, 60000, 11),
(6, 80000, 13),
(7, 100000, 15);

-- --------------------------------------------------------

--
-- Struktura tabulky `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` int(10) NOT NULL,
  `cz` varchar(255) COLLATE utf8_bin NOT NULL,
  `en` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=22 ;

--
-- Vypisuji data pro tabulku `subcategory`
--

INSERT INTO `subcategory` (`id`, `category`, `cz`, `en`) VALUES
(1, 1, 'Mikro chyty', 'Micro holds'),
(2, 1, 'Mini chyty', 'Mini holds'),
(3, 1, 'S chyty', 'S holds'),
(4, 1, 'M Chyty', 'M holds'),
(5, 1, 'L chyty', 'L holds'),
(6, 1, 'Mega chyty', 'Mega holds'),
(7, 1, 'Dětské chyty', 'Children´s holds'),
(8, 1, 'Koule chyty', 'Ball holds'),
(9, 2, 'Mikro chyty', 'Micro holds'),
(10, 2, 'Mini chyty', 'Mini holds'),
(11, 2, 'S chyty', 'S holds'),
(12, 2, 'M chyty', 'M holds'),
(13, 2, 'L chyty', 'L holds'),
(14, 2, 'XL chyty', 'XL holds'),
(15, 2, 'XXL chyty', 'XXL holds'),
(16, 2, 'Mega chyty', 'Mega holds'),
(17, 2, 'Lišty', 'Ledges'),
(18, 2, 'Drytooling', 'Drytooling'),
(19, 2, 'Posilovací panely', 'Boards'),
(20, 3, 'Přírodní chyty', 'Natural´s holds'),
(21, 5, 'Trika', 'T-shirts');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
