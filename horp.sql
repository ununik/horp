-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 08. říj 2015, 09:44
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
('::1', 1444144120, '_;_2_;_2_;_16_;_1', '_;_1_;_1_;_1_;_1', '_;_1_;_2_;_8_;_4', '123456', 2, 'Martin', 'Pribyl', 'lingoking', '1654ads5456', '544656fasd5456', 'fdsafsdafsd', 'fsdfasfasdfasdf', 'fasdfsdfas', 'TEASD', 'fsda', 'fasd asd', 'gfsd g', 'gsdfgdfgdf');

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
-- Struktura tabulky `doprava`
--

CREATE TABLE IF NOT EXISTS `doprava` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `cz` varchar(255) NOT NULL,
  `en` varchar(255) NOT NULL,
  `cena` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Vypisuji data pro tabulku `doprava`
--

INSERT INTO `doprava` (`id`, `cz`, `en`, `cena`) VALUES
(1, 'Dobírka', '', 100),
(2, 'Platba p?edem na ú?et', '', 40),
(3, 'Osobní p?evzetí', '', 0);

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
(1, 8, 'P?írodní chyty', 'Natural´s holds', 15, 0, 55, 66.6, 'vrut ø 5', '', '• P?írodní chyty r?zných tvar? a velikostí, uchycení je zpravidla na 3 ks vrut? ø 5.', '• P?i objednání namixujeme r?znou škálu velikostí a tvar?, nebo podle dohody.');

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
(1, 1, 'Mikro chyty', 'Micro holds'),
(2, 1, 'Mini chyty', 'Mini holds'),
(3, 1, 'S chyty', 'S holds'),
(4, 1, 'M chyty', 'M holds'),
(5, 1, 'L chyty', 'L holds'),
(6, 1, 'D?tské chyty', 'Children´s holds'),
(7, 1, 'Koule chyty', 'Ball holds'),
(8, 3, 'P?írodní chyty', 'Natural´s holds');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
