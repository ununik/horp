-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vygenerováno: Pon 02. lis 2015, 07:48
-- Verze serveru: 5.5.34
-- Verze PHP: 5.4.22

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
  `comment` text NOT NULL,
  `doprava` int(11) NOT NULL DEFAULT '1',
  `jmeno` varchar(255) NOT NULL,
  `prijmeni` varchar(255) NOT NULL,
  `firma` varchar(255) NOT NULL,
  `ic` varchar(255) NOT NULL,
  `dic` varchar(255) NOT NULL,
  `adresa` varchar(255) NOT NULL,
  `mesto` varchar(255) NOT NULL,
  `psc` varchar(10) NOT NULL,
  `jmeno_dodaci` varchar(255) NOT NULL,
  `prijmeni_dodaci` varchar(255) NOT NULL,
  `adresa_dodaci` varchar(255) NOT NULL,
  `mesto_dodaci` varchar(255) NOT NULL,
  `psc_dodaci` varchar(10) NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `basket`
--

INSERT INTO `basket` (`ip`, `timestamp`, `count`, `item`, `color`, `comment`, `doprava`, `jmeno`, `prijmeni`, `firma`, `ic`, `dic`, `adresa`, `mesto`, `psc`, `jmeno_dodaci`, `prijmeni_dodaci`, `adresa_dodaci`, `mesto_dodaci`, `psc_dodaci`) VALUES
('::1', 1446317051, '_;_3_;_20', '_;_2_;_1', '', '', 2, 'jfg', '', '', '', '', '', '', '', '', '', '', '', '');

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
(1, 'Polyesterové chyty', 'Polyester holds'),
(2, 'Epoxy chyty', 'Epoxy holds'),
(3, 'Speciální chyty', 'Special holds'),
(4, 'Jiné', 'Others');

-- --------------------------------------------------------

--
-- Struktura tabulky `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `color` varchar(10) CHARACTER SET latin1 NOT NULL,
  `cz` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `en` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=10 ;

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
  `cz` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `en` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cenaZaGram` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=4 ;

--
-- Vypisuji data pro tabulku `doprava`
--

INSERT INTO `doprava` (`id`, `cz`, `en`, `cenaZaGram`) VALUES
(1, 'Dobírka', '', 100),
(2, 'Platba předem na účet', '', 40),
(3, 'Osobní převzetí', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `subcategory` int(10) NOT NULL,
  `cz` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `en` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `sklad` int(10) NOT NULL,
  `zakoupeno` int(10) NOT NULL,
  `cenaBezDPH` float NOT NULL,
  `cenaSDPH` float NOT NULL,
  `montazniPrvek` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `rozmery` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `popis` text COLLATE utf8_czech_ci NOT NULL,
  `poznamka` text COLLATE utf8_czech_ci NOT NULL,
  `hmotnost` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=4 ;

--
-- Vypisuji data pro tabulku `item`
--

INSERT INTO `item` (`id`, `subcategory`, `cz`, `en`, `sklad`, `zakoupeno`, `cenaBezDPH`, `cenaSDPH`, `montazniPrvek`, `rozmery`, `popis`, `poznamka`, `hmotnost`) VALUES
(1, 8, 'Přírodní chyty', 'Natural´s holds', 15, 0, 55, 66.6, 'vrut ø 5', '', '• Příírodní chyty různých tvarů a velikostí, uchycení je zpravidla na 3 ks vrutů ø 5.', '• Při objednání namixujeme různou škálu velikostí a tvarů, nebo podle dohody.', 30),
(2, 1, 'trefd', 'hfdsiuh', 0, 156, 16, 10, 'fdsfsdfdsgdf', 'fgdfsgdfgdf', 'fdgs dg dfgs dfgd', 'fsdfgsdfgdfgdfgdfs', 25),
(3, 1, 'ffdsg', 'pp[llpdfs[p', 0, 0, 165, 156, '6', '56545df', 'df54dfs6f4ds546dsfds', '', 300);

-- --------------------------------------------------------

--
-- Struktura tabulky `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` int(10) NOT NULL,
  `cz` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `en` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=10 ;

--
-- Vypisuji data pro tabulku `subcategory`
--

INSERT INTO `subcategory` (`id`, `category`, `cz`, `en`) VALUES
(1, 1, 'Mikro chyty', 'Micro holds'),
(2, 1, 'Mini chyty', 'Mini holds'),
(3, 1, 'S chyty', 'S holds'),
(4, 1, 'M chyty', 'M holds'),
(5, 1, 'L chyty', 'L holds'),
(6, 1, 'Dětské chyty', 'Children´s holds'),
(7, 1, 'Koule chyty', 'Ball holds'),
(8, 3, 'Přírodní chyty', 'Natural´s holds'),
(9, 2, 'Micro chyty', 'Micro holds');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
