-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vygenerováno: Pon 08. úno 2016, 15:15
-- Verze serveru: 5.5.47-0ubuntu0.14.04.1
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Vypisuji data pro tabulku `basket`
--

INSERT INTO `basket` (`id`, `ip`, `timestamp`, `count`, `item`, `color`, `comment`, `doprava`, `jmeno`, `prijmeni`, `firma`, `ic`, `dic`, `adresa`, `mesto`, `psc`, `jmeno_dodaci`, `prijmeni_dodaci`, `adresa_dodaci`, `mesto_dodaci`, `psc_dodaci`, `postovne`, `mail`, `tel`, `done`, `stat`) VALUES
(1, '89.103.193.208', 1452009628, '_;_7_;_10', '_;_36_;_329', '', '', 1, 'poiuytre', 'wertyui', '', '', '', 'mnbvcx', 'mnbvc', 'tgfd', '', '', 'fsdafasdf', 'fsadfsad', 'fsadfads', 0, 'ununik@gmail.com', '', 1, ''),
(2, '89.103.193.208', 1452009689, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, ''),
(3, '89.103.195.25', 1452026294, '_;_5_;_4', '_;_298_;_326', '', '', 2, 'm', 'p', '', '', '', 't', 't', 't', '', '', '', '', '', 0, 'ununil@gmail.com', '', 1, ''),
(4, '89.103.195.25', 1453043744, '_;_4_;_2', '_;_221_;_290', '', '', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, ''),
(5, '85.70.153.164', 1452068365, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, ''),
(6, '83.69.39.134', 1453041119, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, ''),
(7, '127.0.0.1', 1454682028, '_;_10_;_22_;_1', '_;_124_;_77_;_126', '', '', 4, 'fsda', 'fsad', '', '', '', 'fdsa', 'fsda', 'fsad', '', '', '', '', '', 0, 'safd', '', 0, 'CZE');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
