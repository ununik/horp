-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 05. říj 2015, 17:41
-- Verze serveru: 5.6.15-log
-- Verze PHP: 5.5.8

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
  `ip` varchar(255) NOT NULL,
  `timestamp` int(20) NOT NULL,
  `count` text NOT NULL,
  `item` text NOT NULL,
  `color` text NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `basket`
--

INSERT INTO `basket` (`ip`, `timestamp`, `count`, `item`, `color`) VALUES
('::1', 1444059621, '_;_15', '_;_1', '_;_1');

-- --------------------------------------------------------

--
-- Struktura tabulky `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cz` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `en` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Vypisuji data pro tabulku `category`
--

INSERT INTO `category` (`id`, `cz`, `en`) VALUES
(1, 'Polyesterové chyty', '0'),
(2, 'Epoxy chyty', '0'),
(3, 'Speciální chyty', '0'),
(4, 'Jiné', '0');

-- --------------------------------------------------------

--
-- Struktura tabulky `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `color` varchar(10) NOT NULL,
  `cz` varchar(100) NOT NULL,
  `en` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Vypisuji data pro tabulku `colors`
--

INSERT INTO `colors` (`id`, `color`, `cz`, `en`) VALUES
(1, '#FFFFFF', 'bílá', ''),
(2, '#fbd782', 'sv?tlý okr', ''),
(3, '#ffe700', 'žlutá', ''),
(4, '#f0862d', 'oranžová', ''),
(5, '#ff0000', '?ervená', ''),
(6, '#001eff', 'modrá', ''),
(7, '#129614', 'zelená', ''),
(8, '#656565', 'šedá', ''),
(9, '#000000', '?erná', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `subcategory` int(10) NOT NULL,
  `cz` varchar(255) NOT NULL,
  `en` varchar(255) NOT NULL,
  `sklad` int(10) NOT NULL,
  `zakoupeno` int(10) NOT NULL,
  `cenaBezDPH` float NOT NULL,
  `cenaSDPH` float NOT NULL,
  `montazniPrvek` varchar(255) NOT NULL,
  `rozmery` varchar(255) NOT NULL,
  `popis` text NOT NULL,
  `poznamka` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Vypisuji data pro tabulku `item`
--

INSERT INTO `item` (`id`, `subcategory`, `cz`, `en`, `sklad`, `zakoupeno`, `cenaBezDPH`, `cenaSDPH`, `montazniPrvek`, `rozmery`, `popis`, `poznamka`) VALUES
(1, 8, 'P?írodní chyty', '', 15, 0, 55, 66.6, 'vrut ø 5', '', '• P?írodní chyty r?zných tvar? a velikostí, uchycení je zpravidla na 3 ks vrut? ø 5.', '• P?i objednání namixujeme r?znou škálu velikostí a tvar?, nebo podle dohody.');

-- --------------------------------------------------------

--
-- Struktura tabulky `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` int(10) NOT NULL,
  `cz` varchar(255) NOT NULL,
  `en` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Vypisuji data pro tabulku `subcategory`
--

INSERT INTO `subcategory` (`id`, `category`, `cz`, `en`) VALUES
(1, 1, 'Mikro chyty', '0'),
(2, 1, 'Mini chyty', ''),
(3, 1, 'S chyty', ''),
(4, 1, 'M chyty', ''),
(5, 1, 'L chyty', ''),
(6, 1, 'D?tské chyty', ''),
(7, 1, 'Koule chyty', ''),
(8, 3, 'P?írodní chyty', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
