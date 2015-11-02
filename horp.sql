-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vygenerováno: Pon 02. lis 2015, 17:34
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
-- Struktura tabulky `doprava`
--

CREATE TABLE IF NOT EXISTS `doprava` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `cz` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `en` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cenaZaGram` float NOT NULL,
  `cenaZaJdenBalik` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=6 ;

--
-- Vypisuji data pro tabulku `doprava`
--

INSERT INTO `doprava` (`id`, `cz`, `en`, `cenaZaGram`, `cenaZaJdenBalik`) VALUES
(1, 'Platba předem - balík Na poštu', '', 0.004, 72),
(2, 'Platba předem - balík Do ruky', '', 0.004, 72),
(3, 'Dobírka - balík Na poštu', '', 0.004, 102),
(4, 'Dobírka - balík Do ruky', '', 0.004, 102),
(5, 'Osobní odběr', '', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
