-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vygenerováno: Úte 09. úno 2016, 18:19
-- Verze serveru: 5.5.46-0ubuntu0.14.04.2
-- Verze PHP: 5.5.9-1ubuntu4.14

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
  `id` int(24) NOT NULL AUTO_INCREMENT,
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
  `done` tinyint(1) NOT NULL DEFAULT '0',
  `stat` varchar(255) COLLATE utf8_bin NOT NULL,
  `mena` varchar(5) COLLATE utf8_bin NOT NULL COMMENT '"" = Kc, ''EN'' = EUR',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Vypisuji data pro tabulku `basket`
--

INSERT INTO `basket` (`id`, `ip`, `timestamp`, `count`, `item`, `color`, `comment`, `doprava`, `jmeno`, `prijmeni`, `firma`, `ic`, `dic`, `adresa`, `mesto`, `psc`, `jmeno_dodaci`, `prijmeni_dodaci`, `adresa_dodaci`, `mesto_dodaci`, `psc_dodaci`, `postovne`, `mail`, `tel`, `done`, `stat`, `mena`) VALUES
(1, '127.0.0.1', 1455003819, '_;_2_;_6', '_;_1_;_68', '', '', 1, 'fdsa', 'fads', '', '', '', 'fdsa', 'fads', 'fads', '', '', '', '', '', 0, 'dfas', '', 0, 'fdas', '');

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
(4, 'Doplňky', 'Accessories'),
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
  `rozmeryEN` varchar(255) COLLATE utf8_bin NOT NULL,
  `poznamkaEN` text COLLATE utf8_bin NOT NULL,
  `cenaBezDPHEN` float NOT NULL,
  `cenaSDPHEN` float NOT NULL,
  `montazniPrvekEN` varchar(255) COLLATE utf8_bin NOT NULL,
  `popisEN` text COLLATE utf8_bin NOT NULL,
  `poradi` int(5) NOT NULL,
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
  `img1` varchar(255) COLLATE utf8_bin NOT NULL,
  `img2` varchar(255) COLLATE utf8_bin NOT NULL,
  `img3` varchar(255) COLLATE utf8_bin NOT NULL,
  `img4` varchar(255) COLLATE utf8_bin NOT NULL,
  `img5` varchar(255) COLLATE utf8_bin NOT NULL,
  `dalsi_zbozi` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=335 ;

--
-- Vypisuji data pro tabulku `item`
--

INSERT INTO `item` (`id`, `rozmeryEN`, `poznamkaEN`, `cenaBezDPHEN`, `cenaSDPHEN`, `montazniPrvekEN`, `popisEN`, `poradi`, `subcategory`, `cz`, `en`, `sklad`, `zakoupeno`, `cenaBezDPH`, `cenaSDPH`, `montazniPrvek`, `rozmery`, `popis`, `poznamka`, `hmotnost`, `img1`, `img2`, `img3`, `img4`, `img5`, `dalsi_zbozi`) VALUES
(1, '0.36 x 0.47 x 0.18 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 1', 'Micro - 1', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.36 x 0.47 x 0.18 cm', '', '', 30, '', '', '', '', '', '327'),
(2, '0.36 x 0.47 x 0.17 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 2', 'Micro - 2', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.36 x 0.47 x 0.17 cm', '', '', 30, '', '', '', '', '', '327'),
(3, '0.33 x 0.48 x 0.18 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 3', 'Micro - 3', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.33 x 0.48 x 0.18 cm', '', '', 30, '', '', '', '', '', '327'),
(4, '0.28 x 0.53 x 0.14 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 4', 'Micro - 4', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.28 x 0.53 x 0.14 cm', '', '', 30, '', '', '', '', '', '327'),
(5, '0.30 x 0.55 x 0.16 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 5', 'Micro - 5', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.30 x 0.55 x 0.16 cm', '', '', 30, '', '', '', '', '', '327'),
(6, '0.26 x 0.53 x 0.14 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 6', 'Micro - 6', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.26 x 0.53 x 0.14 cm', '', '', 30, '', '', '', '', '', '327'),
(7, '0.43 x 0.47 x 0.17 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 7', 'Micro - 7', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.43 x 0.47 x 0.17 cm', '', '', 30, '', '', '', '', '', '327'),
(8, '0.43 x 0.48 x 0.18 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 8', 'Micro - 8', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.43 x 0.48 x 0.18 cm', '', '', 30, '', '', '', '', '', '327'),
(9, '0.39 x 0.43 x 0.17 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 9', 'Micro - 9', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.39 x 0.43 x 0.17 cm', '', '', 30, '', '', '', '', '', '327'),
(10, '0.43 x 0.48 x 0.16 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 10', 'Micro - 10', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.43 x 0.48 x 0.16 cm', '', '', 30, '', '', '', '', '', '327'),
(11, '0.38 x 0.45 x 0.23 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 1', 'Mini - 1', 0, 0, 20, 24.2, 'vrut ø 4', '0.38 x 0.45 x 0.23 cm', '', '', 40, '', '', '', '', '', '330'),
(12, '0.40 x 0.53 x 0.22 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 2', 'Mini - 2', 0, 0, 20, 24.2, 'vrut ø 4', '0.40 x 0.53 x 0.22 cm', '', '', 40, '', '', '', '', '', '330'),
(13, '0.40 x 0.50 x 0.24 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 3', 'Mini - 3', 0, 0, 20, 24.2, 'vrut ø 4', '0.40 x 0.50 x 0.24 cm', '', '', 40, '', '', '', '', '', '330'),
(14, '0.35 x 0.60 x 0.20 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 4', 'Mini - 4', 0, 0, 20, 24.2, 'vrut ø 4', '0.35 x 0.60 x 0.20 cm', '', '', 40, '', '', '', '', '', '330'),
(15, '0.33 x 0.58 x 0.21 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 5', 'Mini - 5', 0, 0, 20, 24.2, 'vrut ø 4', '0.33 x 0.58 x 0.21 cm', '', '', 40, '', '', '', '', '', '330'),
(16, '0.35 x 0.51 x 0.23 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 6', 'Mini - 6', 0, 0, 20, 24.2, 'vrut ø 4', '0.35 x 0.51 x 0.23 cm', '', '', 40, '', '', '', '', '', '330'),
(17, '0.38 x 0.52 x 0.2 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 7', 'Mini - 7', 0, 0, 20, 24.2, 'vrut ø 4', '0.38 x 0.52 x 0.2 cm', '', '', 40, '', '', '', '', '', '330'),
(18, '0.46 x 0.58 x 0.22 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 8', 'Mini - 8', 0, 0, 20, 24.2, 'vrut ø 4', '0.46 x 0.58 x 0.22 cm', '', '', 40, '', '', '', '', '', '330'),
(19, '0.4 x 0.63 x 0.23 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 9', 'Mini - 9', 0, 0, 20, 24.2, 'vrut ø 4', '0.4 x 0.63 x 0.23 cm', '', '', 40, '', '', '', '', '', '330'),
(20, '0.36 x 0.63 x 0.2 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 10', 'Mini - 10', 0, 0, 20, 24.2, 'vrut ø 4', '0.36 x 0.63 x 0.2 cm', '', '', 40, '', '', '', '', '', '330'),
(21, '0.45 x 0.65 x 0.24 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 11', 'Mini - 11', 0, 0, 20, 24.2, 'vrut ø 4', '0.45 x 0.65 x 0.24 cm', '', '', 40, '', '', '', '', '', '330'),
(22, '0.47 x 0.5 x 0.25 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 12', 'Mini - 12', 0, 0, 20, 24.2, 'vrut ø 4', '0.47 x 0.5 x 0.25 cm', '', '', 40, '', '', '', '', '', '330'),
(23, '0.4 x 0.6 x 0.22 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 13', 'Mini - 13', 0, 0, 20, 24.2, 'vrut ø 4', '0.4 x 0.6 x 0.22 cm', '', '', 40, '', '', '', '', '', '330'),
(24, '0.4 x 0.62 x 0.24 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 14', 'Mini - 14', 0, 0, 20, 24.2, 'vrut ø 4', '0.4 x 0.62 x 0.24 cm', '', '', 40, '', '', '', '', '', '330'),
(25, '0.48 x 0.5 x 0.21 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 15', 'Mini - 15', 0, 0, 20, 24.2, 'vrut ø 4', '0.48 x 0.5 x 0.21 cm', '', '', 40, '', '', '', '', '', '330'),
(26, '5.5 x 7 x 1.6 cm', '', 1.13, 1.37, 'screw ø 5', '', 0, 3, 'S - a', 'S - a', 0, 0, 26, 31.2, 'vrut ø 5', '5.5 x 7 x 1.6 cm', '', '', 70, 'a.png', '', '', '', '', '328'),
(27, '6.8 x 7.7 x 1.5 cm', '', 1.13, 1.37, 'screw ø 5', '', 0, 3, 'S - b', 'S - b', 0, 0, 26, 31.2, 'vrut ø 5', '6.8 x 7.7 x 1.5 cm', '', '', 60, 'b.png', '', '', '', '', '328'),
(28, '7.5 x 9.7 x 1.8 cm', '', 1.13, 1.37, 'screw ø 5', '', 0, 3, 'S - c', 'S - c', 0, 0, 26, 31.2, 'vrut ø 5', '7.5 x 9.7 x 1.8 cm', '', '', 90, 'c.png', '', '', '', '', '328'),
(29, '4.2 x 7.6 x 1.7 cm', '', 1.13, 1.37, 'screw ø 5', '', 0, 3, 'S - d', 'S - d', 0, 0, 26, 31.2, 'vrut ø 5', '4.2 x 7.6 x 1.7 cm', '', '', 60, 'd.png', '', '', '', '', '328'),
(30, '5.8 x 8.6 x 1.7 cm', '', 1.13, 1.37, 'screw ø 5', '', 0, 3, 'S - e', 'S - e', 0, 0, 26, 31.2, 'vrut ø 5', '5.8 x 8.6 x 1.7 cm', '', '', 80, 'e.png', '', '', '', '', '328'),
(31, '3.2 x 6.8 x 2.1 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - I', 'S - I', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '3.2 x 6.8 x 2.1 cm', '', '', 70, 'i.png', '', '', '', '', '329'),
(32, '5.2 x 5.6 x 1.9 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - II', 'S - II', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '5.2 x 5.6 x 1.9 cm', '', '', 60, 'ii.png', '', '', '', '', '329'),
(33, '4.7 x 5.2 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - III', 'S - III', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '4.7 x 5.2 x 2.5 cm', '', '', 60, 'iii.png', '', '', '', '', '329'),
(34, '5.2 x 6.3 x 2.2 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - IV', 'S - IV', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '5.2 x 6.3 x 2.2 cm', '', '', 60, 'iv.png', '', '', '', '', '329'),
(35, '3.9 x 4.1 x 2.3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - V', 'S - V', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '3.9 x 4.1 x 2.3 cm', '', '', 50, 'v.png', '', '', '', '', '329'),
(36, '5.2 x 4.9 x 2.3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - VI', 'S - VI', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '5.2 x 4.9 x 2.3 cm', '', '', 50, 'vi.png', '', '', '', '', '329'),
(37, '4.8 x 5.8 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 1', 'S - 1', 0, 0, 26, 31.2, 'imbus M10', '4.8 x 5.8 x 2.7 cm', '', '', 60, '1.png', '', '', '', '', '326'),
(38, '6 x 6.8 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 2', 'S - 2', 0, 0, 26, 31.2, 'imbus M10', '6 x 6.8 x 2.5 cm', '', '', 80, '2.png', '', '', '', '', '326'),
(39, '4.8 x 6 x 2.8 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 3', 'S - 3', 0, 0, 26, 31.2, 'imbus M10', '4.8 x 6 x 2.8 cm', '', '', 70, '3.png', '', '', '', '', '326'),
(40, '5 x 5.3 x 2.1 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 4', 'S - 4', 0, 0, 26, 31.2, 'imbus M10', '5 x 5.3 x 2.1 cm', '', '', 60, '4.png', '', '', '', '', '326'),
(41, '5 x 7.4 x 3.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 5', 'S - 5', 0, 0, 26, 31.2, 'imbus M10', '5 x 7.4 x 3.5 cm', '', '', 90, '5.png', '', '', '', '', '326'),
(42, '6.9 x 7.5 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 6', 'S - 6', 0, 0, 26, 31.2, 'imbus M10', '6.9 x 7.5 x 2.5 cm', '', '', 80, '6.png', '', '', '', '', '326'),
(43, '5.2 x 5.7 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 7', 'S - 7', 0, 0, 26, 31.2, 'imbus M10', '5.2 x 5.7 x 2.7 cm', '', '', 70, '7.png', '', '', '', '', '326'),
(44, '4 x 8.2 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 8', 'S - 8', 0, 0, 26, 31.2, 'imbus M10', '4 x 8.2 x 2.5 cm', '', '', 70, '8.png', '', '', '', '', '326'),
(45, '3.6 x 9.5 x 2.2 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 9', 'S - 9', 0, 0, 26, 31.2, 'imbus M10', '3.6 x 9.5 x 2.2 cm', '', '', 70, '9.png', '', '', '', '', '326'),
(46, '6.2 x 7.3 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 10', 'S - 10', 0, 0, 26, 31.2, 'imbus M10', '6.2 x 7.3 x 2.4 cm', '', '', 80, '10.png', '', '', '', '', '326'),
(47, '4.4 x 9.1 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 11', 'S - 11', 0, 0, 26, 31.2, 'imbus M10', '4.4 x 9.1 x 2.4 cm', '', '', 70, '11.png', '', '', '', '', '326'),
(48, '5.5 x 6.5 x 3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 12', 'S - 12', 0, 0, 26, 31.2, 'imbus M10', '5.5 x 6.5 x 3 cm', '', '', 70, '12.png', '', '', '', '', '326'),
(49, '4.1 x 7.8 x 2.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 13', 'S - 13', 0, 0, 26, 31.2, 'imbus M10', '4.1 x 7.8 x 2.6 cm', '', '', 80, '13.png', '', '', '', '', '326'),
(50, '5.5 x 6.9 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 14', 'S - 14', 0, 0, 26, 31.2, 'imbus M10', '5.5 x 6.9 x 2.7 cm', '', '', 70, '14.png', '', '', '', '', '326'),
(51, '5.6 x 9.6 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 15', 'S - 15', 0, 0, 26, 31.2, 'imbus M10', '5.6 x 9.6 x 2.4 cm', '', '', 80, '15.png', '', '', '', '', '326'),
(53, '6.2 x 8.3 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 16', 'S - 16', 0, 0, 26, 31.2, 'imbus M10', '6.2 x 8.3 x 2.4 cm', '', '', 70, '16.png', '', '', '', '', '326'),
(54, '5.2 x 5.4 x 3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 17', 'S - 17', 0, 0, 26, 31.2, 'imbus M10', '5.2 x 5.4 x 3 cm', '', '', 80, '17.png', '', '', '', '', '326'),
(55, '5.2 x 7.2 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 18', 'S - 18', 0, 0, 26, 31.2, 'imbus M10', '5.2 x 7.2 x 2.5 cm', '', '', 80, '18.png', '', '', '', '', '326'),
(56, '4.2 x 7 x 2.3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 19', 'S - 19', 0, 0, 26, 31.2, 'imbus M10', '4.2 x 7 x 2.3 cm', '', '', 60, '19.png', '', '', '', '', '326'),
(57, '7.5 x 8 x 2.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 20', 'S - 20', 0, 0, 26, 31.2, 'imbus M10', '7.5 x 8 x 2.6 cm', '', '', 80, '20.png', '', '', '', '', '326'),
(58, '4.5 x 7 x 2.2 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 21', 'S - 21', 0, 0, 26, 31.2, 'imbus M10', '4.5 x 7 x 2.2 cm', '', '', 70, '21.png', '', '', '', '', '326'),
(59, '5.1 x 5.4 x 2.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 22', 'S - 22', 0, 0, 26, 31.2, 'imbus M10', '5.1 x 5.4 x 2.6 cm', '', '', 60, '22.png', '', '', '', '', '326'),
(60, '5.3 x 6.9 x 2.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 23', 'S - 23', 0, 0, 26, 31.2, 'imbus M10', '5.3 x 6.9 x 2.6 cm', '', '', 60, '23.png', '', '', '', '', '326'),
(61, '6.4 x 6.9 x 2.8 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 24', 'S - 24', 0, 0, 26, 31.2, 'imbus M10', '6.4 x 6.9 x 2.8 cm', '', '', 90, '24.png', '', '', '', '', '326'),
(62, '4.1 x 7.9 x 1.9 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 25', 'S - 25', 0, 0, 26, 31.2, 'imbus M10', '4.1 x 7.9 x 1.9 cm', '', '', 60, '25.png', '', '', '', '', '326'),
(63, '6.1 x 6.9 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 26', 'S - 26', 0, 0, 26, 31.2, 'imbus M10', '6.1 x 6.9 x 2.4 cm', '', '', 80, '26.png', '', '', '', '', '326'),
(64, '4.3 x 5.5 x 3.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 27', 'S - 27', 0, 0, 26, 31.2, 'imbus M10', '4.3 x 5.5 x 3.6 cm', '', '', 90, '27.png', '', '', '', '', '326'),
(65, '4.3 x 7.6 x 2.3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 28', 'S - 28', 0, 0, 26, 31.2, 'imbus M10', '4.3 x 7.6 x 2.3 cm', '', '', 60, '28.png', '', '', '', '', '326'),
(66, '6 x 7.2 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 29', 'S - 29', 0, 0, 26, 31.2, 'imbus M10', '6 x 7.2 x 2.4 cm', '', '', 90, '29.png', '', '', '', '', '326'),
(67, '5 x 5.5 x 3.1 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 30', 'S - 30', 0, 0, 26, 31.2, 'imbus M10', '5 x 5.5 x 3.1 cm', '', '', 80, '30.png', '', '', '', '', '326'),
(68, '8.4 x 10.2 x 2 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 31', 'S - 31', 0, 0, 26, 31.2, 'imbus M10', '8.4 x 10.2 x 2 cm', '', '', 70, '31.png', '', '', '', '', '326'),
(69, '4.5 x 8.2 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 32', 'S - 32', 0, 0, 26, 31.2, 'imbus M10', '4.5 x 8.2 x 2.4 cm', '', '', 70, '32.png', '', '', '', '', '326'),
(70, '4.5 x 7.4 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 33', 'S - 33', 0, 0, 26, 31.2, 'imbus M10', '4.5 x 7.4 x 2.5 cm', '', '', 60, '33.png', '', '', '', '', '326'),
(71, '6.9 x 8.2 x 3 cm', '', 1.96, 2.37, 'screw ø 5', '', 1, 4, 'M - a', 'M - a', 0, 0, 45, 54.5, 'vrut ø 5', '6.9 x 8.2 x 3 cm', '', '', 220, 'a1.png', 'a2.png', '', '', '', '328'),
(72, '6.2 x 13.5 x 2.6 cm', '', 1.96, 2.37, 'screw ø 5', '', 2, 4, 'M - b', 'M - b', 0, 0, 45, 54.5, 'vrut ø 5', '6.2 x 13.5 x 2.6 cm', '', '', 200, 'b1.png', 'b2.png', '', '', '', '328'),
(73, '6.5 x 12.7 x 3 cm', '', 1.96, 2.37, 'screw ø 5', '', 3, 4, 'M - c', 'M - c', 0, 0, 45, 54.5, 'vrut ø 5', '6.5 x 12.7 x 3 cm', '', '', 170, 'c1.png', 'c2.png', '', '', '', '328'),
(74, '7.4 x 11.5 x 2.8 cm', '', 1.96, 2.37, 'screw ø 5', '', 4, 4, 'M - d', 'M - d', 0, 0, 45, 54.5, 'vrut ø 5', '7.4 x 11.5 x 2.8 cm', '', '', 170, 'd1.png', 'd2.png', '', '', '', '328'),
(75, '9 x 9.3 x 3 cm', '', 1.96, 2.37, 'screw ø 5', '', 5, 4, 'M - e', 'M - e', 0, 0, 45, 54.5, 'vrut ø 5', '9 x 9.3 x 3 cm', '', '', 150, 'e1.png', 'e2.png', '', '', '', '328'),
(76, '3.5 x 11.6 x 2.2 cm', '', 1.96, 2.37, 'screw ø 5', '', 6, 4, 'M - f', 'M - f', 0, 0, 45, 54.5, 'vrut ø 5', '3.5 x 11.6 x 2.2 cm', '', '', 130, 'f1.png', 'f2.png', '', '', '', '328'),
(77, '7.2 x 11.5 x 3.6 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 7, 4, 'M - 1', 'M - 1', 0, 0, 45, 54.5, 'imbus M10', '7.2 x 11.5 x 3.6 cm', '', '', 220, '1_1.png', '1_2.png', '', '', '', '326'),
(78, '4 x 12 x 3.2 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 8, 4, 'M - 2', 'M - 2', 0, 0, 45, 54.5, 'imbus M10', '4 x 12 x 3.2 cm', '', '', 170, '2_1.png', '2_2.png', '', '', '', '326'),
(79, '5 x 12.3 x 3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 9, 4, 'M - 3', 'M - 3', 0, 0, 45, 54.5, 'imbus M10', '5 x 12.3 x 3 cm', '', '', 200, '3_1.png', '3_2.png', '', '', '', '326'),
(80, '4.8 x 12.7 x 2.6 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 10, 4, 'M - 4', 'M - 4', 0, 0, 45, 54.5, 'imbus M10', '4.8 x 12.7 x 2.6 cm', '', '', 170, '4_1.png', '4_2.png', '', '', '', '326'),
(81, '5 x 13.2 x 2.5 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 11, 4, 'M - 5', 'M - 5', 0, 0, 45, 54.5, 'imbus M10', '5 x 13.2 x 2.5 cm', '', '', 140, '5_1.png', '5_2.png', '', '', '', '326'),
(82, '5.4 x 12.8 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 12, 4, 'M - 6', 'M - 6', 0, 0, 45, 54.5, 'imbus M10', '5.4 x 12.8 x 3.4 cm', '', '', 200, '6_1.png', '6_2.png', '', '', '', '326'),
(83, '5.8 x 13.4 x 2.6 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 13, 4, 'M - 7', 'M - 7', 0, 0, 45, 54.5, 'imbus M10', '5.8 x 13.4 x 2.6 cm', '', '', 240, '7_1.png', '7_2.png', '', '', '', '326'),
(84, '4.8 x 10.5 x 2.7 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 14, 4, 'M - 8', 'M - 8', 0, 0, 45, 54.5, 'imbus M10', '4.8 x 10.5 x 2.7 cm', '', '', 170, '8_1.png', '8_2.png', '', '', '', '326'),
(85, '6 x 11.4 x 4.2 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 15, 4, 'M - 9', 'M - 9', 0, 0, 45, 54.5, 'imbus M10', '6 x 11.4 x 4.2 cm', '', '', 240, '9_1.png', '9_2.png', '', '', '', '326'),
(86, '7.2 x 12 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 16, 4, 'M - 10', 'M - 10', 0, 0, 45, 54.5, 'imbus M10', '7.2 x 12 x 3.4 cm', '', '', 180, '10_1.png', '10_2.png', '', '', '', '326'),
(87, '6 x 12.3 x 3.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 17, 4, 'M - 11', 'M - 11', 0, 0, 45, 54.5, 'imbus M10', '6 x 12.3 x 3.8 cm', '', '', 250, '11_1.png', '11_2.png', '', '', '', '326'),
(88, '6.8 x 10.2 x 3.5 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 18, 4, 'M - 12', 'M - 12', 0, 0, 45, 54.5, 'imbus M10', '6.8 x 10.2 x 3.5 cm', '', '', 190, '12_1.png', '12_2.png', '', '', '', '326'),
(90, '7.3 x 11.5 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 19, 4, 'M - 13', 'M - 13', 0, 0, 45, 54.5, 'imbus M10', '7.3 x 11.5 x 3.4 cm', '', '', 230, '13_1.png', '13_2.png', '', '', '', '326'),
(91, '9.8 x 11.1 x 3.1 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 20, 4, 'M - 14', 'M - 14', 0, 0, 45, 54.5, 'imbus M10', '9.8 x 11.1 x 3.1 cm', '', '', 180, '14_1.png', '14_2.png', '', '', '', '326'),
(92, '11.6 x 12.2 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 21, 4, 'M - 15', 'M - 15', 0, 0, 45, 54.5, 'imbus M10', '11.6 x 12.2 x 3.4 cm', '', '', 240, '15_1.png', '15_2.png', '', '', '', '326'),
(93, '7.9 x 13.2 x 2.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 22, 4, 'M - 16', 'M - 16', 0, 0, 45, 54.5, 'imbus M10', '7.9 x 13.2 x 2.8 cm', '', '', 250, '16_1.png', '16_2.png', '', '', '', '326'),
(94, '9.3 x 9.6 x 3.5 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 23, 4, 'M - 17', 'M - 17', 0, 0, 45, 54.5, 'imbus M10', '9.3 x 9.6 x 3.5 cm', '', '', 260, '17_1.png', '17_2.png', '', '', '', '326'),
(95, '8 x 10 x 3.7 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 24, 4, 'M - 18', 'M - 18', 0, 0, 45, 54.5, 'imbus M10', '8 x 10 x 3.7 cm', '', '', 270, '18_1.png', '18_2.png', '', '', '', '326'),
(96, '6.8 x 10.7 x 3.9 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 25, 4, 'M - 19', 'M - 19', 0, 0, 45, 54.5, 'imbus M10', '6.8 x 10.7 x 3.9 cm', '', '', 230, '19_1.png', '19_2.png', '', '', '', '326'),
(97, '7.7 x 13 x 3.1 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 26, 4, 'M - 20', 'M - 20', 0, 0, 45, 54.5, 'imbus M10', '7.7 x 13 x 3.1 cm', '', '', 180, '20_1.png', '20_2.png', '', '', '', '326'),
(98, '9.8 x 11.2 x 3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 27, 4, 'M - 21', 'M - 21', 0, 0, 45, 54.5, 'imbus M10', '9.8 x 11.2 x 3 cm', '', '', 230, '21_1.png', '21_2.png', '', '', '', '326'),
(99, '10.3 x 10.3 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 29, 4, 'M - 23', 'M - 23', 0, 0, 45, 54.5, 'imbus M10', '10.3 x 10.3 x 3.4 cm', '', '', 300, '23_1.png', '23_2.png', '', '', '', '326'),
(100, '9 x 9 x 4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 30, 4, 'M - 24', 'M - 24', 0, 0, 45, 54.5, 'imbus M10', '9 x 9 x 4 cm', '', '', 310, '24_1.png', '24_2.png', '', '', '', '326'),
(101, '8.5 x 9.1 x 3.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 31, 4, 'M - 25', 'M - 25', 0, 0, 45, 54.5, 'imbus M10', '8.5 x 9.1 x 3.8 cm', '', '', 280, '25_1.png', '25_2.png', '', '', '', '326'),
(102, '10 x 10 x 2.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 32, 4, 'M - 26', 'M - 26', 0, 0, 45, 54.5, 'imbus M10', '10 x 10 x 2.4 cm', '', '', 300, '26_1.png', '26_2.png', '', '', '', '326'),
(103, '7.7 x 7.7 x 4.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 33, 4, 'M - 27', 'M - 27', 0, 0, 45, 54.5, 'imbus M10', '7.7 x 7.7 x 4.8 cm', '', '', 290, '27_1.png', '27_2.png', '', '', '', '326'),
(104, '8 x 8.4 x 3.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 34, 4, 'M - 28', 'M - 28', 0, 0, 45, 54.5, 'imbus M10', '8 x 8.4 x 3.8 cm', '', '', 250, '28_1.png', '28_2.png', '', '', '', '326'),
(105, '8.5 x 9 x 3.7 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 35, 4, 'M - 29', 'M - 29', 0, 0, 45, 54.5, 'imbus M10', '8.5 x 9 x 3.7 cm', '', '', 230, '29_1.png', '29_2.png', '', '', '', '326'),
(106, '6.4 x 7 x 5.2 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 36, 4, 'M - 30', 'M - 30', 0, 0, 45, 54.5, 'imbus M10', '6.4 x 7 x 5.2 cm', '', '', 220, '30_1.png', '30_2.png', '', '', '', '326'),
(107, '7.4 x 9.3 x 4.3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 37, 4, 'M - 31', 'M - 31', 0, 0, 45, 54.5, 'imbus M10', '7.4 x 9.3 x 4.3 cm', '', '', 130, '31_1.png', '31_2.png', '', '', '', '326'),
(108, '5 x 7 x 4.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 38, 4, 'M - 32', 'M - 32', 0, 0, 45, 54.5, 'imbus M10', '5 x 7 x 4.8 cm', '', '', 210, '32_1.png', '32_2.png', '', '', '', '326'),
(109, '9.5 x 12 x 3.5 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 39, 4, 'M - 33', 'M - 33', 0, 0, 45, 54.5, 'imbus M10', '9.5 x 12 x 3.5 cm', '', '', 310, '33_1.png', '33_2.png', '', '', '', '326'),
(110, '8.9 x 10.6 x 3.3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 40, 4, 'M - 34', 'M - 34', 0, 0, 45, 54.5, 'imbus M10', '8.9 x 10.6 x 3.3 cm', '', '', 220, '34_1.png', '34_2.png', '', '', '', '326'),
(111, '9 x 9 x 3.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 41, 4, 'M - 35', 'M - 35', 0, 0, 45, 54.5, 'imbus M10', '9 x 9 x 3.8 cm', '', '', 230, '35_1.png', '35_2.png', '', '', '', '326'),
(112, '8.2 x 9 x 4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 42, 4, 'M - 36', 'M - 36', 0, 0, 45, 54.5, 'imbus M10', '8.2 x 9 x 4 cm', '', '', 260, '36_1.png', '36_2.png', '', '', '', '326'),
(113, '8.2 x 10 x 3.3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 43, 4, 'M - 37', 'M - 37', 0, 0, 45, 54.5, 'imbus M10', '8.2 x 10 x 3.3 cm', '', '', 200, '37_1.png', '37_2.png', '', '', '', '326'),
(114, '8.5 x 9.8 x 3.5 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 44, 4, 'M - 38', 'M - 38', 0, 0, 45, 54.5, 'imbus M10', '8.5 x 9.8 x 3.5 cm', '', '', 210, '38_1.png', '38_2.png', '', '', '', '326'),
(115, '7.2 x 11.8 x 3.7 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 45, 4, 'M - 39', 'M - 39', 0, 0, 45, 54.5, 'imbus M10', '7.2 x 11.8 x 3.7 cm', '', '', 260, '39_1.png', '39_2.png', '', '', '', '326'),
(116, '9.5 x 9.5 x 3.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 46, 4, 'M - 40', 'M - 40', 0, 0, 45, 54.5, 'imbus M10', '9.5 x 9.5 x 3.8 cm', '', '', 330, '40_1.png', '40_2.png', '', '', '', '326'),
(117, '10.5 x 12 x 3.2 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 47, 4, 'M - 41', 'M - 41', 0, 0, 45, 54.5, 'imbus M10', '10.5 x 12 x 3.2 cm', '', '', 270, '41_1.png', '41_2.png', '', '', '', '326'),
(118, '6.8 x 11.3 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 48, 4, 'M - 42', 'M - 42', 0, 0, 45, 54.5, 'imbus M10', '6.8 x 11.3 x 3.4 cm', '', '', 180, '42_1.png', '42_2.png', '', '', '', '326'),
(119, '5 x 13.5 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 49, 4, 'M - 43', 'M - 43', 0, 0, 45, 54.5, 'imbus M10', '5 x 13.5 x 3.4 cm', '', '', 240, '43_1.png', '43_2.png', '', '', '', '326'),
(120, '10.2 x 12.1 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 50, 4, 'M - 44', 'M - 44', 0, 0, 45, 54.5, 'imbus M10', '10.2 x 12.1 x 3.4 cm', '', '', 240, '44_1.png', '44_2.png', '', '', '', '326'),
(121, '8.6 x 11.7 x 3.6 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 51, 4, 'M - 45', 'M - 45', 0, 0, 45, 54.5, 'imbus M10', '8.6 x 11.7 x 3.6 cm', '', '', 220, '45_1.png', '45_2.png', '', '', '', '326'),
(122, '8.5 x 12.1 x 3.3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 52, 4, 'M - 46', 'M - 46', 0, 0, 45, 54.5, 'imbus M10', '8.5 x 12.1 x 3.3 cm', '', '', 250, '46_1.png', '46_2.png', '', '', '', '326'),
(123, '9.5 x 11.3 x 3.3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 53, 4, 'M - 47', 'M - 47', 0, 0, 45, 54.5, 'imbus M10', '9.5 x 11.3 x 3.3 cm', '', '', 230, '47_1.png', '47_2.png', '', '', '', '326'),
(124, '8.5 x 21 x 3.8 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - a', 'L - a', 0, 0, 61, 73.8, 'vrut ø 5', '8.5 x 21 x 3.8 cm', '', '', 370, 'a1.png', 'a2.png', '', '', '', '328'),
(125, '8.4 x 22 x 3 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - b', 'L - b', 0, 0, 61, 73.8, 'vrut ø 5', '8.4 x 22 x 3 cm', '', '', 350, 'b1.png', 'b2.png', '', '', '', '328'),
(126, '10.5 x 18.5 x 3.4 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - c', 'L - c', 0, 0, 61, 73.8, 'vrut ø 5', '10.5 x 18.5 x 3.4 cm', '', '', 320, 'c1.png', 'c2.png', '', '', '', '328'),
(127, '6.5 x 20.5 x 3.2 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - d', 'L - d', 0, 0, 61, 73.8, 'vrut ø 5', '6.5 x 20.5 x 3.2 cm', '', '', 280, 'd1.png', 'd2.png', '', '', '', '328'),
(128, '4.3 x 23 x 3.6 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - e', 'L - e', 0, 0, 61, 73.8, 'vrut ø 5', '4.3 x 23 x 3.6 cm', '', '', 350, 'e1.png', 'e2.png', '', '', '', '328'),
(129, '4.5 x 21.5 x 2.5 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - f', 'L - f', 0, 0, 61, 73.8, 'vrut ø 5', '4.5 x 21.5 x 2.5 cm', '', '', 240, 'f1.png', 'f2.png', '', '', '', '328'),
(130, '4.7 x 25 x 3 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - g', 'L - g', 0, 0, 61, 73.8, 'vrut ø 5', '4.7 x 25 x 3 cm', '', '', 320, 'g1.png', 'g2.png', '', '', '', '328'),
(131, '10.3 x 11 x 5.4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 1', 'L - 1', 0, 0, 61, 73.8, 'imbus M10', '10.3 x 11 x 5.4 cm', '', '', 370, '1_1.png', '1_2.png', '', '', '', '326'),
(132, '8.6 x 12.7 x 7 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 2', 'L - 2', 0, 0, 61, 73.8, 'imbus M10', '8.6 x 12.7 x 7 cm', '', '', 420, '2_1.png', '2_2.png', '', '', '', '326'),
(133, '7.2 x 13.5 x 6.5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 3', 'L - 3', 0, 0, 61, 73.8, 'imbus M10', '7.2 x 13.5 x 6.5 cm', '', '', 430, '3_1.png', '3_2.png', '', '', '', '326'),
(134, '9.3 x 11.6 x 6.8 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 4', 'L - 4', 0, 0, 61, 73.8, 'imbus M10', '9.3 x 11.6 x 6.8 cm', '', '', 400, '4_1.png', '4_2.png', '', '', '', '326'),
(135, '10 x 11.5 x 6.5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 5', 'L - 5', 0, 0, 61, 73.8, 'imbus M10', '10 x 11.5 x 6.5 cm', '', '', 600, '5_1.png', '5_2.png', '', '', '', '326'),
(136, '11.2 x 11.8 x 6.4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 6', 'L - 6', 0, 0, 61, 73.8, 'imbus M10', '11.2 x 11.8 x 6.4 cm', '', '', 500, '6_1.png', '6_2.png', '', '', '', '326'),
(137, '11.8 x 14.3 x 3.9 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 7', 'L - 7', 0, 0, 61, 73.8, 'imbus M10', '11.8 x 14.3 x 3.9 cm', '', '', 450, '7_1.png', '7_2.png', '', '', '', '326'),
(138, '11 x 11.6 x 4.6 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 8', 'L - 8', 0, 0, 61, 73.8, 'imbus M10', '11 x 11.6 x 4.6 cm', '', '', 450, '8_1.png', '8_2.png', '', '', '', '326'),
(139, '7.9 x 13.8 x 5.9 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 9', 'L - 9', 0, 0, 61, 73.8, 'imbus M10', '7.9 x 13.8 x 5.9 cm', '', '', 470, '9_1.png', '9_2.png', '', '', '', '326'),
(140, '11.2 x 11.5 x 5.5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 10', 'L - 10', 0, 0, 61, 73.8, 'imbus M10', '11.2 x 11.5 x 5.5 cm', '', '', 680, '10_1.png', '10_2.png', '', '', '', '326'),
(141, '10.8 x 11.2 x 5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 11', 'L - 11', 0, 0, 61, 73.8, 'imbus M10', '10.8 x 11.2 x 5 cm', '', '', 520, '11_1.png', '11_2.png', '', '', '', '326'),
(142, '12.8 x 13.9 x 5.2 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 12', 'L - 12', 0, 0, 61, 73.8, 'imbus M10', '12.8 x 13.9 x 5.2 cm', '', '', 450, '12_1.png', '12_2.png', '', '', '', '326'),
(143, '11.7 x 15.2 x 4.7 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 13', 'L - 13', 0, 0, 61, 73.8, 'imbus M10', '11.7 x 15.2 x 4.7 cm', '', '', 400, '13_1.png', '13_2.png', '', '', '', '326'),
(144, '8.6 x 16.3 x 4.3 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 14', 'L - 14', 0, 0, 61, 73.8, 'imbus M10', '8.6 x 16.3 x 4.3 cm', '', '', 450, '14_1.png', '14_2.png', '', '', '', '326'),
(145, '8 x 13.7 x 4.4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 15', 'L - 15', 0, 0, 61, 73.8, 'imbus M10', '8 x 13.7 x 4.4 cm', '', '', 390, '15_1.png', '15_2.png', '', '', '', '326'),
(146, '10.3 x 15.2 x 4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 16', 'L - 16', 0, 0, 61, 73.8, 'imbus M10', '10.3 x 15.2 x 4 cm', '', '', 470, '16_1.png', '16_2.png', '', '', '', '326'),
(147, '8.6 x 13.4 x 3.5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 17', 'L - 17', 0, 0, 61, 73.8, 'imbus M10', '8.6 x 13.4 x 3.5 cm', '', '', 290, '17_1.png', '17_2.png', '', '', '', '326'),
(148, '9 x 14 x 4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 18', 'L - 18', 0, 0, 61, 73.8, 'imbus M10', '9 x 14 x 4 cm', '', '', 360, '18_1.png', '18_2.png', '', '', '', '326'),
(149, '10 x 14 x 5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 19', 'L - 19', 0, 0, 61, 73.8, 'imbus M10', '10 x 14 x 5 cm', '', '', 400, '19_1.png', '19_2.png', '', '', '', '326'),
(150, '6.1 x 15 x 4.6 cm ', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 20', 'L - 20', 0, 0, 61, 73.8, 'imbus M10', '6.1 x 15 x 4.6 cm ', '', '', 450, '20_1.png', '20_2.png', '', '', '', '326'),
(151, '9.5 x 14.5 x 4.8 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 21', 'L - 21', 0, 0, 61, 73.8, 'imbus M10', '9.5 x 14.5 x 4.8 cm', '', '', 370, '21_1.png', '21_2.png', '', '', '', '326'),
(152, '11.8 x 15 x 3.7 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 22', 'L - 22', 0, 0, 61, 73.8, 'imbus M10', '11.8 x 15 x 3.7 cm', '', '', 530, '22_1.png', '22_2.png', '', '', '', '326'),
(153, '12.3 x 13.2 x 3.5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 23', 'L - 23', 0, 0, 61, 73.8, 'imbus M10', '12.3 x 13.2 x 3.5 cm', '', '', 460, '23_1.png', '23_2.png', '', '', '', '326'),
(154, '12.8 x 14.2 x 3.4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 24', 'L - 24', 0, 0, 61, 73.8, 'imbus M10', '12.8 x 14.2 x 3.4 cm', '', '', 400, '24_1.png', '24_2.png', '', '', '', '326'),
(155, '8.6 x 16 x 3.6 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 25', 'L - 25', 0, 0, 61, 73.8, 'imbus M10', '8.6 x 16 x 3.6 cm', '', '', 400, '25_1.png', '25_2.png', '', '', '', '326'),
(156, '8.9 x 15.4 x 3.1 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 26', 'L - 26', 0, 0, 61, 73.8, 'imbus M10', '8.9 x 15.4 x 3.1 cm', '', '', 430, '26_1.png', '26_2.png', '', '', '', '326'),
(157, '7.5 x 14.5 x 5.2 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 27', 'L - 27', 0, 0, 61, 73.8, 'imbus M10', '7.5 x 14.5 x 5.2 cm', '', '', 500, '27_1.png', '27_2.png', '', '', '', '326'),
(158, '10.5 x 14 x 4.7 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 28', 'L - 28', 0, 0, 61, 73.8, 'imbus M10', '10.5 x 14 x 4.7 cm', '', '', 440, '28_1.png', '28_2.png', '', '', '', '326'),
(159, '5.6 x 18.3 x 3.9 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 29', 'L - 29', 0, 0, 61, 73.8, 'imbus M10', '5.6 x 18.3 x 3.9 cm', '', '', 400, '29_1.png', '29_2.png', '', '', '', '326'),
(160, '6 x 18 x 4.2 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 30', 'L - 30', 0, 0, 61, 73.8, 'imbus M10', '6 x 18 x 4.2 cm', '', '', 330, '30_1.png', '30_2.png', '', '', '', '326'),
(161, '12.7 x 13.5 x 3 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 31', 'L - 31', 0, 0, 61, 73.8, 'imbus M10', '12.7 x 13.5 x 3 cm', '', '', 490, '31_1.png', '31_2.png', '', '', '', '326'),
(162, '24 x 33 x 7 cm', '', 9.13, 11.06, 'Cap head bolt M10', '', 0, 6, 'Mega - a', 'Mega - a', 0, 0, 210, 254.1, 'imbus M10', '24 x 33 x 7 cm', '', '', 3300, 'a1.png', 'a2.png', 'a3.png', '', '', '326'),
(163, '9 x 28 x 5.5 cm', '', 6.52, 7.89, 'Cap head bolt M10', '', 0, 6, 'Mega - b', 'Mega - b', 0, 0, 150, 181.5, 'imbus M10', '9 x 28 x 5.5 cm', '', '', 1200, 'b1.png', 'b2.png', 'b3.png', '', '', '326'),
(164, '21 x 30 x 5 cm', '', 6.52, 7.89, 'Cap head bolt M10', '', 0, 6, 'Mega - c', 'Mega - c', 0, 0, 150, 181.5, 'imbus M10', '21 x 30 x 5 cm', '', '', 2100, 'c1.png', 'c2.png', 'c3.png', '', '', '326'),
(165, '20 x 36 x 7 cm', '', 10.86, 13.14, 'Cap head bolt M10', '', 0, 6, 'Mega - d', 'Mega - d', 0, 0, 250, 302.5, 'imbus M10', '20 x 36 x 7 cm', '', '', 4000, 'd1.png', 'd2.png', 'd3.png', '', '', '326'),
(166, '15 x 18 x 19 cm', '', 9.13, 11.06, 'Cap head bolt M10', '', 0, 6, 'Mega - e', 'Mega - e', 0, 0, 210, 254.1, 'imbus M10', '15 x 18 x 19 cm', '', '', 3000, 'e1.png', 'e2.png', 'e3.png', '', '', '326'),
(167, '20 x 33 x 5.5 cm', '', 9.13, 11.06, 'Cap head bolt M10', '', 0, 6, 'Mega - f', 'Mega - f', 0, 0, 210, 254.1, 'imbus M10', '20 x 33 x 5.5 cm', '', '', 2900, 'f1.png', 'f2.png', 'f3.png', '', '', '326'),
(168, '26 x 31 x 11 cm', '', 16.95, 20.51, 'Cap head bolt M10', '', 0, 6, 'Mega - g', 'Mega - g', 0, 0, 390, 471.9, 'imbus M10', '26 x 31 x 11 cm', '', '', 4700, 'g1.png', 'g2.png', 'g3.png', '', '', '326'),
(169, '14.7 x 17 x 10 cm', '', 5.17, 6.26, 'Cap head bolt M10', '', 0, 7, 'Žába', 'Frog', 0, 0, 119, 144, 'imbus M10', '14.7 x 17 x 10 cm', '', 'Velikost L', 1800, 'zaba1.png', 'zaba2.png', 'zaba3.png', '', '', ''),
(170, '13.5 x 18.5 x 9.2 cm', '', 5.17, 6.26, 'Cap head bolt M10', '', 0, 7, 'Červ', 'Worm', 0, 0, 119, 144, 'imbus M10', '13.5 x 18.5 x 9.2 cm', '', 'Velikost L', 1200, 'cerv1.png', 'cerv2.png', 'cerv3.png', '', '', ''),
(171, '22 x 22 x 6 cm', '', 5.17, 6.26, 'Cap head bolt M10', '', 0, 7, 'Hvězdice', 'Star', 0, 0, 119, 144, 'imbus M10', '22 x 22 x 6 cm', '', 'Velikost L', 1200, 'hvezdice1.png', 'hvezdice2.png', 'hvezdice3.png', '', '', ''),
(172, '11.8 x 10.4 x 4 cm', '', 4, 4.84, 'Cap head bolt M10', '', 0, 7, 'Srdce', 'Heart', 0, 0, 92, 111.3, 'imbus M10', '11.8 x 10.4 x 4 cm', '', 'Velikost M', 500, 'srdce1.png', 'srdce2.png', 'srdce3.png', '', '', ''),
(174, '6.4 x 10.2 x 5.7 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Prase', 'Pig', 0, 0, 79, 95.6, 'imbus M10', '6.4 x 10.2 x 5.7 cm', '', 'Velikost S', 400, 'prase1.png', 'prase2.png', 'prase3.png', '', '', ''),
(175, '8.5 x 9.1 x 6.2 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Slon', 'Elephant', 0, 0, 79, 95.6, 'imbus M10', '8.5 x 9.1 x 6.2 cm', '', 'Velikost S', 400, 'slon1.png', 'slon2.png', 'slon3.png', '', '', ''),
(176, '7.6 x 9.2 x 3.6 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Velryba', 'Whale', 0, 0, 79, 95.6, 'imbus M10', '7.6 x 9.2 x 3.6 cm', '', 'Velikost S', 300, 'velryba1.png', 'velryba2.png', 'velryba3.png', '', '', ''),
(177, '8.8 x 11.5 x 6.8 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Želva', 'Turtle', 0, 0, 79, 95.6, 'imbus M10', '8.8 x 11.5 x 6.8 cm', '', 'Velikost S', 400, 'zelva1.png', 'zelva2.png', 'zelva3.png', '', '', ''),
(178, 'ø 6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 8, 'Koule - S', 'Ball - S', 0, 0, 26, 31.5, 'imbus M10', 'ø 6 cm', '', '', 200, 'koule.png', '', '', '', '', '326'),
(179, 'ø 8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 0, 8, 'Koule - M', 'Ball - M', 0, 0, 45, 54.5, 'imbus M10', 'ø 8 cm', '', '', 500, 'koule.png', '', '', '', '', '326'),
(180, 'ø 10 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 8, 'Koule - L', 'Ball - L', 0, 0, 61, 73.8, 'imbus M10', 'ø 10 cm', '', '', 800, 'koule.png', '', '', '', '', '326'),
(181, 'ø 12 cm', '', 3.52, 4.26, 'Cap head bolt M10', '', 0, 8, 'Koule - XL', 'Ball - XL', 0, 0, 81, 98, 'imbus M10', 'ø 12 cm', '', '', 1400, 'koule.png', '', '', '', '', '326'),
(182, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 1', 'Micro - 1', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327'),
(183, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 2', 'Micro - 2', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327'),
(184, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 3', 'Micro - 3', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327'),
(185, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 4', 'Micro - 4', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327'),
(186, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 5', 'Micro - 5', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327'),
(187, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 6', 'Micro - 6', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327'),
(188, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 7', 'Micro - 7', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327'),
(189, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 8', 'Micro - 8', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327'),
(190, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 9', 'Micro - 9', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327'),
(191, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 10', 'Micro - 10', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327'),
(192, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 1', 'Mini - 1', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', ''),
(193, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 2', 'Mini - 2', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', ''),
(195, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 3', 'Mini - 3', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', ''),
(196, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 4', 'Mini - 4', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', ''),
(197, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 5', 'Mini - 5', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', ''),
(198, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 6', 'Mini - 6', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', ''),
(199, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 7', 'Mini - 7', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', ''),
(200, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 8', 'Mini - 8', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', ''),
(201, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 9', 'Mini - 9', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', ''),
(202, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 10', 'Mini - 10', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', ''),
(203, '5.7 x 6.1 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 1', 'S - 1', 0, 0, 26, 31.5, 'imbus M10', '5.7 x 6.1 x 2.7 cm', '', '', 80, '1.png', '', '', '', '', '326'),
(204, '4.3 x 7 x 2.8 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 2', 'S - 2', 0, 0, 26, 31.5, 'imbus M10', '4.3 x 7 x 2.8 cm', '', '', 80, '2.png', '', '', '', '', '326'),
(205, '5.6 x 6.5 x 2.9 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 3', 'S - 3', 0, 0, 26, 31.5, 'imbus M10', '5.6 x 6.5 x 2.9 cm', '', '', 90, '3.png', '', '', '', '', '326'),
(206, '5.2 x 5.2 x 3.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 4', 'S - 4', 0, 0, 26, 31.5, 'imbus M10', '5.2 x 5.2 x 3.4 cm', '', '', 90, '4.png', '', '', '', '', '326'),
(207, '4.2 x 8.9 x 2.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 5', 'S - 5', 0, 0, 26, 31.5, 'imbus M10', '4.2 x 8.9 x 2.6 cm', '', '', 80, '5.png', '', '', '', '', '326'),
(208, '4.9 x 6.2 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 6', 'S - 6', 0, 0, 26, 31.5, 'imbus M10', '4.9 x 6.2 x 2.7 cm', '', '', 80, '6.png', '', '', '', '', '326'),
(209, '5.6 x 5.6 x 3.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 7', 'S - 7', 0, 0, 26, 31.5, 'imbus M10', '5.6 x 5.6 x 3.5 cm', '', '', 90, '7.png', '', '', '', '', '326'),
(210, '5.2 x 6.4 x 2.2 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 8', 'S - 8', 0, 0, 26, 31.5, 'imbus M10', '5.2 x 6.4 x 2.2 cm', '', '', 80, '8.png', '', '', '', '', '326'),
(211, '5.2 x 5.2 x 3.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 9', 'S - 9', 0, 0, 26, 31.5, 'imbus M10', '5.2 x 5.2 x 3.5 cm', '', '', 90, '9.png', '', '', '', '', '326'),
(212, '4.5 x 6.1 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 10', 'S - 10', 0, 0, 26, 31.5, 'imbus M10', '4.5 x 6.1 x 2.7 cm', '', '', 80, '10.png', '', '', '', '', '326'),
(213, '8.3 x 8.5 x 4.2 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 1', 'M - 1', 0, 0, 43, 52, 'imbus M10', '8.3 x 8.5 x 4.2 cm', '', '', 220, '1a.png', '1b.png', '', '', '', '326'),
(214, '7.5 x 10.6 x 4.2 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 2', 'M - 2', 0, 0, 43, 52, 'imbus M10', '7.5 x 10.6 x 4.2 cm', '', '', 250, '2a.png', '2b.png', '', '', '', '326'),
(215, '6.5 x 11.7 x 3.5 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 3', 'M - 3', 0, 0, 43, 52, 'imbus M10', '6.5 x 11.7 x 3.5 cm', '', '', 200, '3a.png', '3b.png', '', '', '', '326'),
(216, '7.5 x 10.5 x 3.8 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 4', 'M - 4', 0, 0, 43, 52, 'imbus M10', '7.5 x 10.5 x 3.8 cm', '', '', 220, '4a.png', '4b.png', '', '', '', '326'),
(217, '4.9 x 12.3 x 2.9 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 5', 'M - 5', 0, 0, 43, 52, 'imbus M10', '4.9 x 12.3 x 2.9 cm', '', '', 180, '5a.png', '5b.png', '', '', '', '326'),
(218, '7.8 x 8.8 x 5 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 6', 'M - 6', 0, 0, 43, 52, 'imbus M10', '7.8 x 8.8 x 5 cm', '', '', 230, '6a.png', '6b.png', '', '', '', '326'),
(219, '7.7 x 11.3 x 3.8 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 7', 'M - 7', 0, 0, 43, 52, 'imbus M10', '7.7 x 11.3 x 3.8 cm', '', '', 270, '7a.png', '7b.png', '', '', '', '326'),
(220, '8 x 8.8 x 3.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 8', 'M - 8', 0, 0, 43, 52, 'imbus M10', '8 x 8.8 x 3.1 cm', '', '', 200, '8a.png', '8b.png', '', '', '', '326'),
(221, '9.5 x 9.2 x 4.3 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 9', 'M - 9', 0, 0, 43, 52, 'imbus M10', '9.5 x 9.2 x 4.3 cm', '', '', 330, '9a.png', '9b.png', '', '', '', '326'),
(222, '6.3 x 8 x 4.6 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 10', 'M - 10', 0, 0, 43, 52, 'imbus M10', '6.3 x 8 x 4.6 cm', '', '', 220, '10a.png', '10b.png', '', '', '', '326'),
(223, '7.6 x 10.7 x 3.4 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 11', 'M - 11', 0, 0, 43, 52, 'imbus M10', '7.6 x 10.7 x 3.4 cm', '', '', 170, '11a.png', '11b.png', '', '', '', '326'),
(224, '5.5 x 12.2 x 4 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 12', 'M - 12', 0, 0, 43, 52, 'imbus M10', '5.5 x 12.2 x 4 cm', '', '', 250, '12a.png', '12b.png', '', '', '', '326'),
(225, '8.7 x 9.4 x 3.8 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 13', 'M - 13', 0, 0, 43, 52, 'imbus M10', '8.7 x 9.4 x 3.8 cm', '', '', 280, '13a.png', '13b.png', '', '', '', '326'),
(226, '9.8 x 10.2 x 2.9 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 14', 'M - 14', 0, 0, 43, 52, 'imbus M10', '9.8 x 10.2 x 2.9 cm', '', '', 350, '14a.png', '14b.png', '', '', '', '326'),
(227, '7.8 x 10.5 x 2.8 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 15', 'M - 15', 0, 0, 43, 52, 'imbus M10', '7.8 x 10.5 x 2.8 cm', '', '', 180, '15a.png', '15b.png', '', '', '', '326'),
(228, '8 x 9.4 x 4.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 16', 'M - 16', 0, 0, 43, 52, 'imbus M10', '8 x 9.4 x 4.1 cm', '', '', 240, '16a.png', '16b.png', '', '', '', '326'),
(229, '5 x 13 x 3.6 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 17', 'M - 17', 0, 0, 43, 52, 'imbus M10', '5 x 13 x 3.6 cm', '', '', 210, '17a.png', '17b.png', '', '', '', '326'),
(230, '8.1 x 10.8 x 3.9 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 18', 'M - 18', 0, 0, 43, 52, 'imbus M10', '8.1 x 10.8 x 3.9 cm', '', '', 300, '18a.png', '18b.png', '', '', '', '326'),
(231, '8.2 x 9.3 x 4.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 19', 'M - 19', 0, 0, 43, 52, 'imbus M10', '8.2 x 9.3 x 4.1 cm', '', '', 260, '19a.png', '19b.png', '', '', '', '326'),
(232, '4.5 x 13.1 x 2.4 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 20', 'M - 20', 0, 0, 43, 52, 'imbus M10', '4.5 x 13.1 x 2.4 cm', '', '', 160, '20a.png', '20b.png', '', '', '', '326'),
(233, '6.6 x 7.1 x 5.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 21', 'M - 21', 0, 0, 43, 52, 'imbus M10', '6.6 x 7.1 x 5.1 cm', '', '', 200, '21a.png', '21b.png', '', '', '', '326'),
(234, '6.2 x 11 x 3.7 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 22', 'M - 22', 0, 0, 43, 52, 'imbus M10', '6.2 x 11 x 3.7 cm', '', '', 240, '22a.png', '22b.png', '', '', '', '326'),
(235, '7.8 x 8.1 x 5 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 23', 'M - 23', 0, 0, 43, 52, 'imbus M10', '7.8 x 8.1 x 5 cm', '', '', 340, '23a.png', '23b.png', '', '', '', '326'),
(236, '7.4 x 9.2 x 4.3 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 24', 'M - 24', 0, 0, 43, 52, 'imbus M10', '7.4 x 9.2 x 4.3 cm', '', '', 250, '24a.png', '24b.png', '', '', '', '326'),
(237, '7.1 x 8.6 x 3.2 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 25', 'M - 25', 0, 0, 43, 52, 'imbus M10', '7.1 x 8.6 x 3.2 cm', '', '', 200, '25a.png', '25b.png', '', '', '', '326'),
(238, '6.6 x 11 x 3.6 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 26', 'M - 26', 0, 0, 43, 52, 'imbus M10', '6.6 x 11 x 3.6 cm', '', '', 200, '26a.png', '26b.png', '', '', '', '326'),
(239, '8.2 x 8.8 x 4.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 27', 'M - 27', 0, 0, 43, 52, 'imbus M10', '8.2 x 8.8 x 4.1 cm', '', '', 300, '27a.png', '27b.png', '', '', '', '326'),
(240, '7.7 x 9.4 x 5.2 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 28', 'M - 28', 0, 0, 43, 52, 'imbus M10', '7.7 x 9.4 x 5.2 cm', '', '', 260, '28a.png', '28b.png', '', '', '', '326'),
(241, '8.1 x 9.3 x 5.3 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 29', 'M - 29', 0, 0, 43, 52, 'imbus M10', '8.1 x 9.3 x 5.3 cm', '', '', 230, '29a.png', '29b.png', '', '', '', '326'),
(242, '6.5 x 8.2 x 5.6 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 30', 'M - 30', 0, 0, 43, 52, 'imbus M10', '6.5 x 8.2 x 5.6 cm', '', '', 300, '30a.png', '30b.png', '', '', '', '326'),
(243, '9 x 9.5 x 4.5 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 31', 'M - 31', 0, 0, 43, 52, 'imbus M10', '9 x 9.5 x 4.5 cm', '', '', 280, '31a.png', '31b.png', '', '', '', '326'),
(244, '7.9 x 8.9 x 4.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 32', 'M - 32', 0, 0, 43, 52, 'imbus M10', '7.9 x 8.9 x 4.1 cm', '', '', 250, '', '', '', '', '', '326'),
(245, '9.4 x 10 x 3.6 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 33', 'M - 33', 0, 0, 43, 52, 'imbus M10', '9.4 x 10 x 3.6 cm', '', '', 220, '', '', '', '', '', '326'),
(246, '12.2 x 15 x 4.1 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 1', 'L - 1', 0, 0, 58, 70.2, 'imbus M10', '12.2 x 15 x 4.1 cm', '', '', 500, '', '', '', '', '', '326'),
(247, '7.3 x 15.5 x 6.1 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 2', 'L - 2', 0, 0, 58, 70.2, 'imbus M10', '7.3 x 15.5 x 6.1 cm', '', '', 690, '', '', '', '', '', '326'),
(248, '10 x 16 x 4.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 3', 'L - 3', 0, 0, 58, 70.2, 'imbus M10', '10 x 16 x 4.5 cm', '', '', 440, '', '', '', '', '', '326'),
(249, '7.7 x 12 x 8 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 4', 'L - 4', 0, 0, 58, 70.2, 'imbus M10', '7.7 x 12 x 8 cm', '', '', 500, '', '', '', '', '', '326'),
(250, '8 x 14 x 7 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 5', 'L - 5', 0, 0, 58, 70.2, 'imbus M10', '8 x 14 x 7 cm', '', '', 480, '', '', '', '', '', '326'),
(251, '11.13 x 11.13 x 5.7 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 6', 'L - 6', 0, 0, 58, 70.2, 'imbus M10', '11.13 x 11.13 x 5.7 cm', '', '', 610, '', '', '', '', '', '326'),
(252, '13 x 12.4 x 7.1 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 7', 'L - 7', 0, 0, 58, 70.2, 'imbus M10', '13 x 12.4 x 7.1 cm', '', '', 630, '', '', '', '', '', '326'),
(253, '11.5 x 14.8 x 6.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 8', 'L - 8', 0, 0, 58, 70.2, 'imbus M10', '11.5 x 14.8 x 6.2 cm', '', '', 690, '', '', '', '', '', '326'),
(254, '5.7 x 18.5 x 4 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 9', 'L - 9', 0, 0, 58, 70.2, 'imbus M10', '5.7 x 18.5 x 4 cm', '', '', 430, '', '', '', '', '', '326'),
(255, '11.4 x 11.6 x 6.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 10', 'L - 10', 0, 0, 58, 70.2, 'imbus M10', '11.4 x 11.6 x 6.2 cm', '', '', 500, '', '', '', '', '', '326'),
(256, '7 x 7 x 9.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 11', 'L - 11', 0, 0, 58, 70.2, 'imbus M10', '7 x 7 x 9.5 cm', '', '', 500, '', '', '', '', '', '326'),
(257, '8.2 x 10.3 x 8.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 12', 'L - 12', 0, 0, 58, 70.2, 'imbus M10', '8.2 x 10.3 x 8.2 cm', '', '', 700, '', '', '', '', '', '326'),
(258, '7.5 x 14.5 x 7.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 13', 'L - 13', 0, 0, 58, 70.2, 'imbus M10', '7.5 x 14.5 x 7.5 cm', '', '', 500, '', '', '', '', '', '326'),
(259, '10 x 12.5 x 6 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 14', 'L - 14', 0, 0, 58, 70.2, 'imbus M10', '10 x 12.5 x 6 cm', '', '', 550, '', '', '', '', '', '326'),
(260, '11.3 x 11.8 x 4.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 15', 'L - 15', 0, 0, 58, 70.2, 'imbus M10', '11.3 x 11.8 x 4.2 cm', '', '', 420, '', '', '', '', '', '326'),
(261, '6 x 18.5 x 4.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 16', 'L - 16', 0, 0, 58, 70.2, 'imbus M10', '6 x 18.5 x 4.5 cm', '', '', 400, '', '', '', '', '', '326'),
(262, '8.5 x 12.1 x 5.8 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 17', 'L - 17', 0, 0, 58, 70.2, 'imbus M10', '8.5 x 12.1 x 5.8 cm', '', '', 400, '', '', '', '', '', '326'),
(263, '10 x 17 x 5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 18', 'L - 18', 0, 0, 58, 70.2, 'imbus M10', '10 x 17 x 5 cm', '', '', 550, '', '', '', '', '', '326'),
(264, '11.4 x 11.4 x 6 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 19', 'L - 19', 0, 0, 58, 70.2, 'imbus M10', '11.4 x 11.4 x 6 cm', '', '', 760, '', '', '', '', '', '326');
INSERT INTO `item` (`id`, `rozmeryEN`, `poznamkaEN`, `cenaBezDPHEN`, `cenaSDPHEN`, `montazniPrvekEN`, `popisEN`, `poradi`, `subcategory`, `cz`, `en`, `sklad`, `zakoupeno`, `cenaBezDPH`, `cenaSDPH`, `montazniPrvek`, `rozmery`, `popis`, `poznamka`, `hmotnost`, `img1`, `img2`, `img3`, `img4`, `img5`, `dalsi_zbozi`) VALUES
(265, '11.4 x 12.7 x 6.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 20', 'L - 20', 0, 0, 58, 70.2, 'imbus M10', '11.4 x 12.7 x 6.5 cm', '', '', 580, '', '', '', '', '', '326'),
(266, '10 x 10 x 5.6 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 21', 'L - 21', 0, 0, 58, 70.2, 'imbus M10', '10 x 10 x 5.6 cm', '', '', 440, '', '', '', '', '', '326'),
(267, '10.3 x 13 x 4.8 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 22', 'L - 22', 0, 0, 58, 70.2, 'imbus M10', '10.3 x 13 x 4.8 cm', '', '', 400, '', '', '', '', '', '326'),
(268, '12 x 15.5 x 7.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 23', 'L - 23', 0, 0, 58, 70.2, 'imbus M10', '12 x 15.5 x 7.2 cm', '', '', 600, '', '', '', '', '', '326'),
(269, '10.3 x 11.7 x 7 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 24', 'L - 24', 0, 0, 58, 70.2, 'imbus M10', '10.3 x 11.7 x 7 cm', '', '', 690, '', '', '', '', '', '326'),
(270, '7.1 x 13.3 x 7.6 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 25', 'L - 25', 0, 0, 58, 70.2, 'imbus M10', '7.1 x 13.3 x 7.6 cm', '', '', 600, '', '', '', '', '', '326'),
(271, '13.3 x 14 x 6.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 26', 'L - 26', 0, 0, 58, 70.2, 'imbus M10', '13.3 x 14 x 6.5 cm', '', '', 580, '', '', '', '', '', '326'),
(272, '9.7 x 11.7 x 7.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 27', 'L - 27', 0, 0, 58, 70.2, 'imbus M10', '9.7 x 11.7 x 7.2 cm', '', '', 460, '', '', '', '', '', '326'),
(273, '10 x 10.2 x 5.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 28', 'L - 28', 0, 0, 58, 70.2, 'imbus M10', '10 x 10.2 x 5.5 cm', '', '', 490, '', '', '', '', '', '326'),
(274, '11.2 x 12 x 6.8 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 29', 'L - 29', 0, 0, 58, 70.2, 'imbus M10', '11.2 x 12 x 6.8 cm', '', '', 650, '', '', '', '', '', '326'),
(275, '8.5 x 14.5 x 5.8 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 30', 'L - 30', 0, 0, 58, 70.2, 'imbus M10', '8.5 x 14.5 x 5.8 cm', '', '', 540, '', '', '', '', '', '326'),
(276, '8.2 x 14 x 5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 31', 'L - 31', 0, 0, 58, 70.2, 'imbus M10', '8.2 x 14 x 5 cm', '', '', 470, '', '', '', '', '', '326'),
(277, '6.2 x 9.3 x 5.8 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Medvěd', 'Bear', 0, 0, 79, 95.6, 'imbus šroub M10', '6.2 x 9.3 x 5.8 cm', '', 'Velikost S', 400, 'medved1.png', 'medved2.png', 'medved3.png', '', '', '326'),
(278, '59 x 23 x 7 cm', '', 23.33, 28.23, 'The delivery also includes hardware. (screw M8)', '', 0, 19, 'Panel S', 'Board S', 0, 0, 560, 677.6, 'Součástí dodávky je i spojovací materiál. (vrut ø 8 se šestihrannou hlavou)', '59 x 23 x 7 cm', '', 'V případě osobního odběru bude poskytnuta sleva 10 % z ceny panelu.', 7000, 'S1.png', 'S2.png', 'S3.png', 'S4.png', '', ''),
(279, '82 x 21 x 6 cm', '', 36.25, 43.86, 'The delivery also includes hardware. (screw M8)', '', 0, 19, 'Panel M', 'Board M', 0, 0, 870, 1052.7, 'Součástí dodávky je i spojovací materiál. (vrut ø 8 se šestihrannou hlavou)', '82 x 21 x 6 cm', '', 'V případě osobního odběru bude poskytnuta sleva 10 % z ceny panelu.', 9000, 'M1.png', 'M2.png', 'M3.png', 'M4.png', '', ''),
(280, '80 x 27 x 7 cm', '', 45.42, 54.95, 'The delivery also includes hardware. (screw M8)', '', 0, 19, 'Panel L', 'Board L', 0, 0, 1090, 1318.9, 'Součástí dodávky je i spojovací materiál. (vrut ø 8 se šestihrannou hlavou)', '80 x 27 x 7 cm', '', 'V případě osobního odběru bude poskytnuta sleva 10 % z ceny panelu.', 12000, 'L1.png', 'L2.png', 'L3.png', 'L4.png', '', ''),
(281, '7.5 x 30 x 2.5 cm', '', 2.51, 3.04, 'screw ø 5', '', 0, 17, 'Lišta L', 'Ledge L', 0, 0, 58, 70.2, 'vrut ø 5', '7.5 x 30 x 2.5 cm', '', '', 400, 'L1.png', 'L2.png', '', '', '', '328'),
(282, '9.8 x 37.5 x 3.3 cm', '', 3.35, 4.05, 'screw ø 5', '', 0, 17, 'Lišta XL', 'Ledge XL', 0, 0, 77, 93.2, 'vrut ø 5', '9.8 x 37.5 x 3.3 cm', '', '', 700, 'XL1.png', 'XL2.png', '', '', '', '328'),
(283, '9 x 11.3 x 3.9 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 28, 4, 'M - 22', 'M - 22', 0, 0, 45, 54.5, 'imbus M10', '9 x 11.3 x 3.9 cm', '', '', 360, '22_1.png', '22_2.png', '', '', '', '326'),
(284, '19 x 15 x 14 cm', '', 7.83, 9.47, 'Cap head bolt M10', '', 0, 16, 'Nos', 'Nose', 0, 0, 180, 217.8, 'imbus M10', '19 x 15 x 14 cm', '', '', 2100, 'nos1.png', 'nos2.png', 'nos3.png', '', '', '326'),
(285, '20 x 18 x 10 cm', '', 10.87, 13.15, 'Cap head bolt M10', '', 0, 16, 'Boule', 'Bumb', 0, 0, 250, 302.5, 'imbus M10', '20 x 18 x 10 cm', '', '', 3200, 'boule1.png', 'boule2.png', 'boule3.png', '', '', '326'),
(286, '17 x 15 x 15 cm', '', 11.74, 14.21, 'Cap head bolt M10', '', 0, 16, 'Hrb', 'Hump', 0, 0, 270, 326.7, 'imbus M10', '17 x 15 x 15 cm', '', '', 3560, 'hrb1.png', 'hrb2.png', 'hrb3.png', '', '', '326'),
(287, '25 x 25 x 7 cm', '', 11.74, 14.21, 'Cap head bolt M10', '', 0, 16, 'Měsíc', 'Moon', 0, 0, 270, 326.7, 'imbus M10', '25 x 25 x 7 cm', '', '', 3510, 'mesic1.png', 'mesic2.png', 'mesic3.png', '', '', '326'),
(288, '40 x 12 x 9 cm', '', 13.04, 15.78, 'Cap head bolt M10', '', 0, 16, 'Rohlik', 'Croissant', 0, 0, 300, 363, 'imbus M10', '40 x 12 x 9 cm', '', '', 3870, 'rohlik1.png', 'rohlik2.png', 'rohlik3.png', '', '', '326'),
(289, '23 x 18 x 8 cm', '', 9.13, 11.05, 'Cap head bolt M10', '', 0, 16, 'Placka', 'Pancake', 0, 0, 210, 254.1, 'imbus M10', '23 x 18 x 8 cm', '', '', 2610, 'placka1.png', 'placka2.png', 'placka3.png', '', '', '326'),
(290, '', '', 4.65, 5.26, 'Cap head bolt M10, screw ø 5', '', 0, 18, 'Drytooling - 1', 'Drytooling - 1', 0, 0, 100, 121, 'imbus šroub M10, vrut ø 5', '', '', '', 0, '', '', '', '', '', '326_;_328'),
(291, '', '', 4.65, 5.26, 'Cap head bolt M10, screw ø 5', '', 0, 18, 'Drytooling - 2', 'Drytooling - 2', 0, 0, 100, 121, 'imbus šroub M10, vrut ø 5', '', '', '', 0, '', '', '', '', '', '326_;_328'),
(292, '', '', 4.65, 5.26, 'Cap head bolt M10, screw ø 5', '', 0, 18, 'Drytooling - 3', 'Drytooling - 3', 0, 0, 100, 121, 'imbus šroub M10, vrut ø 5', '', '', '', 0, '', '', '', '', '', '326_;_328'),
(293, '', '', 2.38, 2.88, 'screw ø 5', '', 0, 20, 'Přírodní chyty', 'Natural´s holds', 0, 0, 55, 66.6, 'zpravidla na 3 ks vrutů ø 5', '', 'Přírodní chyty různých tvarů a velikostí.', 'Při objednání namixujeme různou škálu velikostí a tvarů, nebo podle dohody.', 0, '', '', '', '', '', '328'),
(294, '8.5 x 16.5 x 11.8 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 1', 'XXL - 1', 0, 0, 90, 108.9, 'imbus M10', '8.5 x 16.5 x 11.8 cm', '', '', 1200, '', '', '', '', '', '326'),
(295, '12.5 x 17.8 x 7.5 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 2', 'XXL - 2', 0, 0, 90, 108.9, 'imbus M10', '12.5 x 17.8 x 7.5 cm', '', '', 1200, '', '', '', '', '', '326'),
(296, '16 x 13.2 x 7.5 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 3', 'XXL - 3', 0, 0, 90, 108.9, 'imbus M10', '16 x 13.2 x 7.5 cm', '', '', 1100, '', '', '', '', '', '326'),
(297, '15 x 16.5 x 6.8 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 4', 'XXL - 4', 0, 0, 90, 108.9, 'imbus M10', '15 x 16.5 x 6.8 cm', '', '', 1100, '', '', '', '', '', '326'),
(298, '11.4 x 18.2 x 10 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 5', 'XXL - 5', 0, 0, 90, 108.9, 'imbus M10', '11.4 x 18.2 x 10 cm', '', '', 1400, '', '', '', '', '', '326'),
(299, '12.7 x 19 x 7.4 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 6', 'XXL - 6', 0, 0, 90, 108.9, 'imbus M10', '12.7 x 19 x 7.4 cm', '', '', 1200, '', '', '', '', '', '326'),
(300, '15.2 x 16.4 x 6.7 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 7', 'XXL - 7', 0, 0, 90, 108.9, 'imbus M10', '15.2 x 16.4 x 6.7 cm', '', '', 1100, '', '', '', '', '', '326'),
(301, '12 x 17.3 x 9 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 8', 'XXL - 8', 0, 0, 90, 108.9, 'imbus M10', '12 x 17.3 x 9 cm', '', '', 1200, '', '', '', '', '', '326'),
(302, '12.5 x 15.5 x 10.8 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 9', 'XXL - 9', 0, 0, 90, 108.9, 'imbus M10', '12.5 x 15.5 x 10.8 cm', '', '', 1400, '', '', '', '', '', '326'),
(303, '13.5 x 16 x 7 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 10', 'XXL - 10', 0, 0, 90, 108.9, 'imbus M10', '13.5 x 16 x 7 cm', '', '', 1200, '', '', '', '', '', '326'),
(304, '12.5 x 12.5 x 6.7 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 11', 'XXL - 11', 0, 0, 90, 108.9, 'imbus M10', '12.5 x 12.5 x 6.7 cm', '', '', 900, '', '', '', '', '', '326'),
(306, '12 x 7 x 9 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 1', 'XL - 1', 0, 0, 77, 93.2, 'imbus M10', '12 x 7 x 9 cm', '', '', 750, '', '', '', '', '', '326'),
(307, '15 x 8 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 2', 'XL - 2', 0, 0, 77, 93.2, 'imbus M10', '15 x 8 x 8 cm', '', '', 840, '', '', '', '', '', '326'),
(308, '15 x 11 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 3', 'XL - 3', 0, 0, 77, 93.2, 'imbus M10', '15 x 11 x 8 cm', '', '', 820, '', '', '', '', '', '326'),
(309, '16 x 7 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 4', 'XL - 4', 0, 0, 77, 93.2, 'imbus M10', '16 x 7 x 8 cm', '', '', 770, '', '', '', '', '', '326'),
(310, '14 x 9 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 5', 'XL - 5', 0, 0, 77, 93.2, 'imbus M10', '14 x 9 x 8 cm', '', '', 900, '', '', '', '', '', '326'),
(311, '13 x 11 x 7 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 6', 'XL - 6', 0, 0, 77, 93.2, 'imbus M10', '13 x 11 x 7 cm', '', '', 810, '', '', '', '', '', '326'),
(312, '18 x 9 x 5 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 7', 'XL - 7', 0, 0, 77, 93.2, 'imbus M10', '18 x 9 x 5 cm', '', '', 720, '', '', '', '', '', '326'),
(313, '16 x 6 x 9 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 8', 'XL - 8', 0, 0, 77, 93.2, 'imbus M10', '16 x 6 x 9 cm', '', '', 810, '', '', '', '', '', '326'),
(314, '10 x 8 x 10 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 9', 'XL - 9', 0, 0, 77, 93.2, 'imbus M10', '10 x 8 x 10 cm', '', '', 860, '', '', '', '', '', '326'),
(315, '16 x 8 x 9 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 10', 'XL - 10', 0, 0, 77, 93.2, 'imbus M10', '16 x 8 x 9 cm', '', '', 800, '', '', '', '', '', '326'),
(316, '15 x 9 x 7 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 11', 'XL - 11', 0, 0, 77, 93.2, 'imbus M10', '15 x 9 x 7 cm', '', '', 760, '', '', '', '', '', '326'),
(317, '14 x 13 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 12', 'XL - 12', 0, 0, 77, 93.2, 'imbus M10', '14 x 13 x 8 cm', '', '', 900, '', '', '', '', '', '326'),
(318, '16 x 12 x 7 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 13', 'XL - 13', 0, 0, 77, 93.2, 'imbus M10', '16 x 12 x 7 cm', '', '', 860, '', '', '', '', '', '326'),
(319, '17 x 10 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 14', 'XL - 14', 0, 0, 77, 93.2, 'imbus M10', '17 x 10 x 8 cm', '', '', 830, '', '', '', '', '', '326'),
(320, '16 x 11 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 15', 'XL - 15', 0, 0, 77, 93.2, 'imbus M10', '16 x 11 x 8 cm', '', '', 900, '', '', '', '', '', '326'),
(321, '10 x 13 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 16', 'XL - 16', 0, 0, 77, 93.2, 'imbus M10', '10 x 13 x 8 cm', '', '', 710, '', '', '', '', '', '326'),
(322, '17 x 10 x 7 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 17', 'XL - 17', 0, 0, 77, 93.2, 'imbus M10', '17 x 10 x 7 cm', '', '', 890, '', '', '', '', '', '326'),
(323, '12 x 13 x 7 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 18', 'XL - 18', 0, 0, 77, 93.2, 'imbus M10', '12 x 13 x 7 cm', '', '', 820, '', '', '', '', '', '326'),
(324, '15 x 9 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 19', 'XL - 19', 0, 0, 77, 93.2, 'imbus M10', '15 x 9 x 8 cm', '', '', 840, '', '', '', '', '', '326'),
(325, '14 x 14 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 20', 'XL - 20', 0, 0, 77, 93.2, 'imbus M10', '14 x 14 x 8 cm', '', '', 980, '', '', '', '', '', '326'),
(326, 'M10', '', 0, 0, '', '', 1, 22, 'imbus M10', 'imbus M10', 0, 0, 5, 6.05, '', 'M10', '', '', 0, '', '', '', '', '', ''),
(327, 'ø 3,5', '', 0, 0, '', '', 3, 22, 'Vrut ø 3,5', 'Screw ø 3,5', 0, 0, 5, 6.05, '', 'ø 3,5', '', '', 0, '', '', '', '', '', ''),
(328, 'ø 5', '', 0, 0, '', '', 5, 22, 'Vrut ø 5', 'Screw ø 5', 0, 0, 5, 6.05, '', 'ø 5', '', '', 0, '', '', '', '', '', ''),
(329, 'M10', '', 0, 0, '', '', 2, 22, 'imbus M10 se zapuštěnou hlavou', 'imbus M10 cap head bolt', 0, 0, 5, 6.05, '', 'M10', '', '', 0, '', '', '', '', '', ''),
(330, 'ø 4', '', 0, 0, '', '', 4, 22, 'vrut ø 4', 'Screw ø 4', 0, 0, 5, 6.05, '', 'ø 4', '', '', 0, '', '', '', '', '', ''),
(331, 'S - L', '', 0, 0, '', '', 0, 21, 'Triko - Lezec', 'T-shirt - Climber', 0, 0, 200, 242, '', 'S - L', '100% bavlna<br>barvy:<br>zelená, oranžová, černá', 'Velikosti upřesněte při odesílání objednávky, jinak budete kontaktováni pro její upřesnění.', 0, '', '', '', '', '', ''),
(332, 'ø 10cm/6cm', '', 0, 0, '', '', 0, 8, 'Dvojkoule - L', 'Doubleball - L', 0, 0, 0, 0, 'Imbus M10', 'ø 10cm/6cm', '', '', 900, '', '', '', '', '', ''),
(333, '7 x 9.5 x 5 cm', '', 0, 0, '', '', 0, 7, 'Ježek', 'Hedgehog', 0, 0, 79, 95.6, 'imbus šroub M10', '7 x 9.5 x 5 cm', '', 'Velikost S', 300, '', '', '', '', '', ''),
(334, 'ø 12cm/8cm', '', 0, 0, '', '', 0, 8, 'Dvojkoule - XL', 'Doubleball - XL', 0, 0, 0, 0, 'Imbus M10', 'ø 12cm/8cm', '', '', 1600, '', '', '', '', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=23 ;

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
(21, 5, 'Trika', 'T-shirts'),
(22, 4, 'Spojovací materiál', 'Hardware');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
