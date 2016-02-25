-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vygenerováno: Čtv 25. úno 2016, 19:57
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
  `mailing` tinyint(1) NOT NULL DEFAULT '1',
  `voacher` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

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
  `cenaZaGramEN` float NOT NULL,
  `cenaZaJdenBalikEN` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Struktura tabulky `galerie`
--

CREATE TABLE IF NOT EXISTS `galerie` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `titleEN` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `descriptionEN` text NOT NULL,
  `link` text NOT NULL,
  `linkEN` text NOT NULL,
  `timestamp` int(20) NOT NULL,
  `likes` int(20) NOT NULL DEFAULT '0',
  `youtube` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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

-- --------------------------------------------------------

--
-- Struktura tabulky `mailing`
--

CREATE TABLE IF NOT EXISTS `mailing` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `language` varchar(10) NOT NULL,
  `timestamp` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
