-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Počítač: wm100.wedos.net:3306
-- Vygenerováno: Pon 29. úno 2016, 10:24
-- Verze serveru: 10.0.21-MariaDB
-- Verze PHP: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `d18905_hpcz`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Vypisuji data pro tabulku `basket`
--

INSERT INTO `basket` (`id`, `ip`, `timestamp`, `count`, `item`, `color`, `comment`, `doprava`, `jmeno`, `prijmeni`, `firma`, `ic`, `dic`, `adresa`, `mesto`, `psc`, `jmeno_dodaci`, `prijmeni_dodaci`, `adresa_dodaci`, `mesto_dodaci`, `psc_dodaci`, `postovne`, `mail`, `tel`, `done`, `stat`, `mena`, `mailing`, `voacher`) VALUES
(1, '127.0.0.1', 1455096732, '_;_2', '_;_1', '', '', 1, 'sdg', 'gsdf', '', '', '', 'gsdf', 'sgdf', 'dsgf', '', '', '', '', '', 0, 'gssdfgsfd', '', 1, '', '', 1, ''),
(2, '127.0.0.1', 1455182004, '_;_1', '_;_249', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, '', 'EN', 1, ''),
(3, '::1', 1456081544, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, '', '', 1, ''),
(4, '89.103.195.25', 1456468735, '_;_1', '_;_291', '', '', 3, 'Martin', 'Pribyl', '', '', '', 'Na Pesine 283', 'Decin', '40501', '', '', '', '', '', 0, 'ununik@gmail.com', '', 1, '', '', 1, ''),
(5, '89.103.193.208', 1456392091, '_;_1_;_5_;_5_;_9', '_;_124_;_71_;_306_;_333', '', 'gfgdf adsf dsaljffůlsjdkljsldjlksfasdfsdfasdfasdfsadfsdfsad', 4, 'gsfd', 'gsfd', '', '', '', 'sdg', 'gsdf', 'gdsf', '', '', '', '', '', 0, 'ununik@gmail.com', '', 1, 'sdg', 'EN', 1, ''),
(6, '89.103.193.208', 1456392956, '_;_12', '_;_213', '', '', 3, '[Test]Martin', 'Pribyl', '', '', '', 'Na Pesine 283', 'Decin', '40505', '', '', '', '', '', 0, 'ununik@gmail.com', '', 1, 'CR', '', 1, ''),
(7, '89.103.193.208', 1456393037, '_;_1', '_;_278', '', '', 4, 'Martin', 'P', '', '', '', 'doisj', 'opdjksop', 'dfopsjopsd', '', '', '', '', '', 0, 'ununik@gmail.com', '', 1, '', 'EN', 1, ''),
(8, '89.103.193.208', 1456393038, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, '', 'EN', 1, ''),
(9, '89.103.195.25', 1456683375, '_;_1_;_1', '_;_174_;_1', '', '', 1, 'Martin', 'Pribyl', '', '', '', 'dsuihfdsi', 'dsihiu', 'dshids', '', '', '', '', '', 0, 'ununik@gmail.com', '', 0, '', '', 0, ''),
(10, '194.228.122.244', 1456501688, '_;_1_;_1_;_1_;_3', '_;_290_;_281_;_293_;_177', '', '', 1, 'Klára', 'haha', '', '', '', 'fff', 'Děčín', '40505', '', '', '', '', '', 0, 'kkkk@sadda', '', 1, '', '', 0, ''),
(11, '194.228.122.244', 1456502306, '_;_1_;_2', '_;_332_;_334', '', 'Já mám objednávku za 0 Kč :-)', 6, 'Klára', 'Přibylová', '', '', '', 'dtjdj', 'Děčín', '40505', '', '', '', '', '', 0, 'dfgdag', '', 1, '', '', 0, ''),
(12, '194.228.122.244', 1456502306, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, '', '', 1, ''),
(13, '83.69.39.134', 1456673633, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, '', '', 1, '');

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
(2, 'Epoxidové chyty', 'Epoxy holds'),
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
  `cenaZaGramEN` float NOT NULL,
  `cenaZaJdenBalikEN` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Vypisuji data pro tabulku `doprava`
--

INSERT INTO `doprava` (`id`, `cz`, `en`, `cenaZaGram`, `cenaZaJdenBalik`, `cenaZaGramEN`, `cenaZaJdenBalikEN`) VALUES
(1, '(ČR) Platba předem - balík Na poštu', '(CZE) Prepayment - Package to post office', 0.004, 72, 0.00014, 2.57),
(2, '(ČR) Platba předem - balík Do ruky', '(CZE) Prepayment  - Package to hand', 0.004, 72, 0.00014, 2.57),
(3, '(ČR) Dobírka - balík Na poštu', '(CZE) Cash on delivery - Package to post office', 0.004, 102, 0.00014, 3.64),
(4, '(ČR) Dobírka - balík Do ruky', '(CZE) Cash on delivery - Package to hand', 0.004, 102, 0.00014, 3.64),
(5, 'Mimo ČR (budete informováni o možnostech)', 'Foreign country (you will be informed about the possibilities)', 0, 0, 0, 0),
(6, 'Osobní odběr', 'Personal collection', 0, 0, 0, 0);

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

--
-- Vypisuji data pro tabulku `galerie`
--

INSERT INTO `galerie` (`id`, `title`, `titleEN`, `description`, `descriptionEN`, `link`, `linkEN`, `timestamp`, `likes`, `youtube`) VALUES
(1, 'czvxxcvcxv', 'fasfa sd', 'fadsf sd fs df', ' sdf sdf sdf ds fas', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 0, 0, 1),
(2, 'ds', 'adsf', 'asdfsda', 'fsad', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 0, 0, 0),
(3, 'sdfa', 'afsd', 'fdsafadsfsad', 'fsadfds', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 0, 0, 1),
(4, 'fsdhttps://www.youtube.com/watch?v=Eq8dOn3LoVc', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 'https://www.youtube.com/watch?v=Eq8dOn3LoVc', 0, 0, 0);

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
  `prodanoKS` int(11) NOT NULL,
  `prodanoObjednavek` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=339 ;

--
-- Vypisuji data pro tabulku `item`
--

INSERT INTO `item` (`id`, `rozmeryEN`, `poznamkaEN`, `cenaBezDPHEN`, `cenaSDPHEN`, `montazniPrvekEN`, `popisEN`, `poradi`, `subcategory`, `cz`, `en`, `sklad`, `zakoupeno`, `cenaBezDPH`, `cenaSDPH`, `montazniPrvek`, `rozmery`, `popis`, `poznamka`, `hmotnost`, `img1`, `img2`, `img3`, `img4`, `img5`, `dalsi_zbozi`, `prodanoKS`, `prodanoObjednavek`) VALUES
(1, '0.36 x 0.47 x 0.18 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 1', 'Micro - 1', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.36 x 0.47 x 0.18 cm', '', '', 30, '', '', '', '', '', '327', 0, 0),
(2, '0.36 x 0.47 x 0.17 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 2', 'Micro - 2', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.36 x 0.47 x 0.17 cm', '', '', 30, '', '', '', '', '', '327', 0, 0),
(3, '0.33 x 0.48 x 0.18 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 3', 'Micro - 3', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.33 x 0.48 x 0.18 cm', '', '', 30, '', '', '', '', '', '327', 0, 0),
(4, '0.28 x 0.53 x 0.14 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 4', 'Micro - 4', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.28 x 0.53 x 0.14 cm', '', '', 30, '', '', '', '', '', '327', 0, 0),
(5, '0.30 x 0.55 x 0.16 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 5', 'Micro - 5', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.30 x 0.55 x 0.16 cm', '', '', 30, '', '', '', '', '', '327', 0, 0),
(6, '0.26 x 0.53 x 0.14 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 6', 'Micro - 6', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.26 x 0.53 x 0.14 cm', '', '', 30, '', '', '', '', '', '327', 0, 0),
(7, '0.43 x 0.47 x 0.17 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 7', 'Micro - 7', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.43 x 0.47 x 0.17 cm', '', '', 30, '', '', '', '', '', '327', 0, 0),
(8, '0.43 x 0.48 x 0.18 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 8', 'Micro - 8', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.43 x 0.48 x 0.18 cm', '', '', 30, '', '', '', '', '', '327', 0, 0),
(9, '0.39 x 0.43 x 0.17 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 9', 'Micro - 9', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.39 x 0.43 x 0.17 cm', '', '', 30, '', '', '', '', '', '327', 0, 0),
(10, '0.43 x 0.48 x 0.16 cm', '', 0.7, 0.85, 'screw ø 3,5', '', 0, 1, 'Mikro - 10', 'Micro - 10', 0, 0, 16, 19.4, 'vrut ø 3,5', '0.43 x 0.48 x 0.16 cm', '', '', 30, '', '', '', '', '', '327', 0, 0),
(11, '0.38 x 0.45 x 0.23 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 1', 'Mini - 1', 0, 0, 20, 24.2, 'vrut ø 4', '0.38 x 0.45 x 0.23 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(12, '0.40 x 0.53 x 0.22 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 2', 'Mini - 2', 0, 0, 20, 24.2, 'vrut ø 4', '0.40 x 0.53 x 0.22 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(13, '0.40 x 0.50 x 0.24 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 3', 'Mini - 3', 0, 0, 20, 24.2, 'vrut ø 4', '0.40 x 0.50 x 0.24 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(14, '0.35 x 0.60 x 0.20 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 4', 'Mini - 4', 0, 0, 20, 24.2, 'vrut ø 4', '0.35 x 0.60 x 0.20 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(15, '0.33 x 0.58 x 0.21 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 5', 'Mini - 5', 0, 0, 20, 24.2, 'vrut ø 4', '0.33 x 0.58 x 0.21 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(16, '0.35 x 0.51 x 0.23 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 6', 'Mini - 6', 0, 0, 20, 24.2, 'vrut ø 4', '0.35 x 0.51 x 0.23 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(17, '0.38 x 0.52 x 0.2 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 7', 'Mini - 7', 0, 0, 20, 24.2, 'vrut ø 4', '0.38 x 0.52 x 0.2 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(18, '0.46 x 0.58 x 0.22 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 8', 'Mini - 8', 0, 0, 20, 24.2, 'vrut ø 4', '0.46 x 0.58 x 0.22 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(19, '0.4 x 0.63 x 0.23 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 9', 'Mini - 9', 0, 0, 20, 24.2, 'vrut ø 4', '0.4 x 0.63 x 0.23 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(20, '0.36 x 0.63 x 0.2 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 10', 'Mini - 10', 0, 0, 20, 24.2, 'vrut ø 4', '0.36 x 0.63 x 0.2 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(21, '0.45 x 0.65 x 0.24 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 11', 'Mini - 11', 0, 0, 20, 24.2, 'vrut ø 4', '0.45 x 0.65 x 0.24 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(22, '0.47 x 0.5 x 0.25 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 12', 'Mini - 12', 0, 0, 20, 24.2, 'vrut ø 4', '0.47 x 0.5 x 0.25 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(23, '0.4 x 0.6 x 0.22 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 13', 'Mini - 13', 0, 0, 20, 24.2, 'vrut ø 4', '0.4 x 0.6 x 0.22 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(24, '0.4 x 0.62 x 0.24 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 14', 'Mini - 14', 0, 0, 20, 24.2, 'vrut ø 4', '0.4 x 0.62 x 0.24 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(25, '0.48 x 0.5 x 0.21 cm', '', 0.87, 1.05, 'screw ø 4', '', 0, 2, 'Mini - 15', 'Mini - 15', 0, 0, 20, 24.2, 'vrut ø 4', '0.48 x 0.5 x 0.21 cm', '', '', 40, '', '', '', '', '', '330', 0, 0),
(26, '5.5 x 7 x 1.6 cm', '', 1.13, 1.37, 'screw ø 5', '', 0, 3, 'S - a', 'S - a', 0, 0, 26, 31.2, 'vrut ø 5', '5.5 x 7 x 1.6 cm', '', '', 70, 'a.png', '', '', '', '', '328', 0, 0),
(27, '6.8 x 7.7 x 1.5 cm', '', 1.13, 1.37, 'screw ø 5', '', 0, 3, 'S - b', 'S - b', 0, 0, 26, 31.2, 'vrut ø 5', '6.8 x 7.7 x 1.5 cm', '', '', 60, 'b.png', '', '', '', '', '328', 0, 0),
(28, '7.5 x 9.7 x 1.8 cm', '', 1.13, 1.37, 'screw ø 5', '', 0, 3, 'S - c', 'S - c', 0, 0, 26, 31.2, 'vrut ø 5', '7.5 x 9.7 x 1.8 cm', '', '', 90, 'c.png', '', '', '', '', '328', 0, 0),
(29, '4.2 x 7.6 x 1.7 cm', '', 1.13, 1.37, 'screw ø 5', '', 0, 3, 'S - d', 'S - d', 0, 0, 26, 31.2, 'vrut ø 5', '4.2 x 7.6 x 1.7 cm', '', '', 60, 'd.png', '', '', '', '', '328', 0, 0),
(30, '5.8 x 8.6 x 1.7 cm', '', 1.13, 1.37, 'screw ø 5', '', 0, 3, 'S - e', 'S - e', 0, 0, 26, 31.2, 'vrut ø 5', '5.8 x 8.6 x 1.7 cm', '', '', 80, 'e.png', '', '', '', '', '328', 0, 0),
(31, '3.2 x 6.8 x 2.1 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - I', 'S - I', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '3.2 x 6.8 x 2.1 cm', '', '', 70, 'i.png', '', '', '', '', '329', 0, 0),
(32, '5.2 x 5.6 x 1.9 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - II', 'S - II', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '5.2 x 5.6 x 1.9 cm', '', '', 60, 'ii.png', '', '', '', '', '329', 0, 0),
(33, '4.7 x 5.2 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - III', 'S - III', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '4.7 x 5.2 x 2.5 cm', '', '', 60, 'iii.png', '', '', '', '', '329', 0, 0),
(34, '5.2 x 6.3 x 2.2 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - IV', 'S - IV', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '5.2 x 6.3 x 2.2 cm', '', '', 60, 'iv.png', '', '', '', '', '329', 0, 0),
(35, '3.9 x 4.1 x 2.3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - V', 'S - V', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '3.9 x 4.1 x 2.3 cm', '', '', 50, 'v.png', '', '', '', '', '329', 0, 0),
(36, '5.2 x 4.9 x 2.3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - VI', 'S - VI', 0, 0, 26, 31.2, 'imbus M10 se zapuštěnou hlavou', '5.2 x 4.9 x 2.3 cm', '', '', 50, 'vi.png', '', '', '', '', '329', 0, 0),
(37, '4.8 x 5.8 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 1', 'S - 1', 0, 0, 26, 31.2, 'imbus M10', '4.8 x 5.8 x 2.7 cm', '', '', 60, '1.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(38, '6 x 6.8 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 2', 'S - 2', 0, 0, 26, 31.2, 'imbus M10', '6 x 6.8 x 2.5 cm', '', '', 80, '2.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(39, '4.8 x 6 x 2.8 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 3', 'S - 3', 0, 0, 26, 31.2, 'imbus M10', '4.8 x 6 x 2.8 cm', '', '', 70, '3.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(40, '5 x 5.3 x 2.1 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 4', 'S - 4', 0, 0, 26, 31.2, 'imbus M10', '5 x 5.3 x 2.1 cm', '', '', 60, '4.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(41, '5 x 7.4 x 3.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 5', 'S - 5', 0, 0, 26, 31.2, 'imbus M10', '5 x 7.4 x 3.5 cm', '', '', 90, '5.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(42, '6.9 x 7.5 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 6', 'S - 6', 0, 0, 26, 31.2, 'imbus M10', '6.9 x 7.5 x 2.5 cm', '', '', 80, '6.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(43, '5.2 x 5.7 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 7', 'S - 7', 0, 0, 26, 31.2, 'imbus M10', '5.2 x 5.7 x 2.7 cm', '', '', 70, '7.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(44, '4 x 8.2 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 8', 'S - 8', 0, 0, 26, 31.2, 'imbus M10', '4 x 8.2 x 2.5 cm', '', '', 70, '8.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(45, '3.6 x 9.5 x 2.2 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 9', 'S - 9', 0, 0, 26, 31.2, 'imbus M10', '3.6 x 9.5 x 2.2 cm', '', '', 70, '9.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(46, '6.2 x 7.3 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 10', 'S - 10', 0, 0, 26, 31.2, 'imbus M10', '6.2 x 7.3 x 2.4 cm', '', '', 80, '10.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(47, '4.4 x 9.1 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 11', 'S - 11', 0, 0, 26, 31.2, 'imbus M10', '4.4 x 9.1 x 2.4 cm', '', '', 70, '11.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(48, '5.5 x 6.5 x 3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 12', 'S - 12', 0, 0, 26, 31.2, 'imbus M10', '5.5 x 6.5 x 3 cm', '', '', 70, '12.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(49, '4.1 x 7.8 x 2.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 13', 'S - 13', 0, 0, 26, 31.2, 'imbus M10', '4.1 x 7.8 x 2.6 cm', '', '', 80, '13.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(50, '5.5 x 6.9 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 14', 'S - 14', 0, 0, 26, 31.2, 'imbus M10', '5.5 x 6.9 x 2.7 cm', '', '', 70, '14.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(51, '5.6 x 9.6 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 15', 'S - 15', 0, 0, 26, 31.2, 'imbus M10', '5.6 x 9.6 x 2.4 cm', '', '', 80, '15.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(53, '6.2 x 8.3 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 16', 'S - 16', 0, 0, 26, 31.2, 'imbus M10', '6.2 x 8.3 x 2.4 cm', '', '', 70, '16.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(54, '5.2 x 5.4 x 3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 17', 'S - 17', 0, 0, 26, 31.2, 'imbus M10', '5.2 x 5.4 x 3 cm', '', '', 80, '17.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(55, '5.2 x 7.2 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 18', 'S - 18', 0, 0, 26, 31.2, 'imbus M10', '5.2 x 7.2 x 2.5 cm', '', '', 80, '18.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(56, '4.2 x 7 x 2.3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 19', 'S - 19', 0, 0, 26, 31.2, 'imbus M10', '4.2 x 7 x 2.3 cm', '', '', 60, '19.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(57, '7.5 x 8 x 2.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 20', 'S - 20', 0, 0, 26, 31.2, 'imbus M10', '7.5 x 8 x 2.6 cm', '', '', 80, '20.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(58, '4.5 x 7 x 2.2 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 21', 'S - 21', 0, 0, 26, 31.2, 'imbus M10', '4.5 x 7 x 2.2 cm', '', '', 70, '21.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(59, '5.1 x 5.4 x 2.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 22', 'S - 22', 0, 0, 26, 31.2, 'imbus M10', '5.1 x 5.4 x 2.6 cm', '', '', 60, '22.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(60, '5.3 x 6.9 x 2.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 23', 'S - 23', 0, 0, 26, 31.2, 'imbus M10', '5.3 x 6.9 x 2.6 cm', '', '', 60, '23.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(61, '6.4 x 6.9 x 2.8 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 24', 'S - 24', 0, 0, 26, 31.2, 'imbus M10', '6.4 x 6.9 x 2.8 cm', '', '', 90, '24.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(62, '4.1 x 7.9 x 1.9 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 25', 'S - 25', 0, 0, 26, 31.2, 'imbus M10', '4.1 x 7.9 x 1.9 cm', '', '', 60, '25.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(63, '6.1 x 6.9 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 26', 'S - 26', 0, 0, 26, 31.2, 'imbus M10', '6.1 x 6.9 x 2.4 cm', '', '', 80, '26.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(64, '4.3 x 5.5 x 3.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 27', 'S - 27', 0, 0, 26, 31.2, 'imbus M10', '4.3 x 5.5 x 3.6 cm', '', '', 90, '27.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(65, '4.3 x 7.6 x 2.3 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 28', 'S - 28', 0, 0, 26, 31.2, 'imbus M10', '4.3 x 7.6 x 2.3 cm', '', '', 60, '28.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(66, '6 x 7.2 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 29', 'S - 29', 0, 0, 26, 31.2, 'imbus M10', '6 x 7.2 x 2.4 cm', '', '', 90, '29.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(67, '5 x 5.5 x 3.1 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 30', 'S - 30', 0, 0, 26, 31.2, 'imbus M10', '5 x 5.5 x 3.1 cm', '', '', 80, '30.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(68, '8.4 x 10.2 x 2 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 31', 'S - 31', 0, 0, 26, 31.2, 'imbus M10', '8.4 x 10.2 x 2 cm', '', '', 70, '31.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(69, '4.5 x 8.2 x 2.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 32', 'S - 32', 0, 0, 26, 31.2, 'imbus M10', '4.5 x 8.2 x 2.4 cm', '', '', 70, '32.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(70, '4.5 x 7.4 x 2.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 3, 'S - 33', 'S - 33', 0, 0, 26, 31.2, 'imbus M10', '4.5 x 7.4 x 2.5 cm', '', '', 60, '33.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(71, '6.9 x 8.2 x 3 cm', '', 1.96, 2.37, 'screw ø 5', '', 1, 4, 'M - a', 'M - a', 0, 0, 45, 54.5, 'vrut ø 5', '6.9 x 8.2 x 3 cm', '', '', 220, 'a1.png', 'a2.png', '', '', '', '328', 0, 0),
(72, '6.2 x 13.5 x 2.6 cm', '', 1.96, 2.37, 'screw ø 5', '', 2, 4, 'M - b', 'M - b', 0, 0, 45, 54.5, 'vrut ø 5', '6.2 x 13.5 x 2.6 cm', '', '', 200, 'b1.png', 'b2.png', '', '', '', '328', 0, 0),
(73, '6.5 x 12.7 x 3 cm', '', 1.96, 2.37, 'screw ø 5', '', 3, 4, 'M - c', 'M - c', 0, 0, 45, 54.5, 'vrut ø 5', '6.5 x 12.7 x 3 cm', '', '', 170, 'c1.png', 'c2.png', '', '', '', '328', 0, 0),
(74, '7.4 x 11.5 x 2.8 cm', '', 1.96, 2.37, 'screw ø 5', '', 4, 4, 'M - d', 'M - d', 0, 0, 45, 54.5, 'vrut ø 5', '7.4 x 11.5 x 2.8 cm', '', '', 170, 'd1.png', 'd2.png', '', '', '', '328', 0, 0),
(75, '9 x 9.3 x 3 cm', '', 1.96, 2.37, 'screw ø 5', '', 5, 4, 'M - e', 'M - e', 0, 0, 45, 54.5, 'vrut ø 5', '9 x 9.3 x 3 cm', '', '', 150, 'e1.png', 'e2.png', '', '', '', '328', 0, 0),
(76, '3.5 x 11.6 x 2.2 cm', '', 1.96, 2.37, 'screw ø 5', '', 6, 4, 'M - f', 'M - f', 0, 0, 45, 54.5, 'vrut ø 5', '3.5 x 11.6 x 2.2 cm', '', '', 130, 'f1.png', 'f2.png', '', '', '', '328', 0, 0),
(77, '7.2 x 11.5 x 3.6 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 7, 4, 'M - 1', 'M - 1', 0, 0, 45, 54.5, 'imbus M10', '7.2 x 11.5 x 3.6 cm', '', '', 220, '1_1.png', '1_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(78, '4 x 12 x 3.2 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 8, 4, 'M - 2', 'M - 2', 0, 0, 45, 54.5, 'imbus M10', '4 x 12 x 3.2 cm', '', '', 170, '2_1.png', '2_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(79, '5 x 12.3 x 3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 9, 4, 'M - 3', 'M - 3', 0, 0, 45, 54.5, 'imbus M10', '5 x 12.3 x 3 cm', '', '', 200, '3_1.png', '3_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(80, '4.8 x 12.7 x 2.6 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 10, 4, 'M - 4', 'M - 4', 0, 0, 45, 54.5, 'imbus M10', '4.8 x 12.7 x 2.6 cm', '', '', 170, '4_1.png', '4_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(81, '5 x 13.2 x 2.5 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 11, 4, 'M - 5', 'M - 5', 0, 0, 45, 54.5, 'imbus M10', '5 x 13.2 x 2.5 cm', '', '', 140, '5_1.png', '5_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(82, '5.4 x 12.8 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 12, 4, 'M - 6', 'M - 6', 0, 0, 45, 54.5, 'imbus M10', '5.4 x 12.8 x 3.4 cm', '', '', 200, '6_1.png', '6_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(83, '5.8 x 13.4 x 2.6 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 13, 4, 'M - 7', 'M - 7', 0, 0, 45, 54.5, 'imbus M10', '5.8 x 13.4 x 2.6 cm', '', '', 240, '7_1.png', '7_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(84, '4.8 x 10.5 x 2.7 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 14, 4, 'M - 8', 'M - 8', 0, 0, 45, 54.5, 'imbus M10', '4.8 x 10.5 x 2.7 cm', '', '', 170, '8_1.png', '8_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(85, '6 x 11.4 x 4.2 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 15, 4, 'M - 9', 'M - 9', 0, 0, 45, 54.5, 'imbus M10', '6 x 11.4 x 4.2 cm', '', '', 240, '9_1.png', '9_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(86, '7.2 x 12 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 16, 4, 'M - 10', 'M - 10', 0, 0, 45, 54.5, 'imbus M10', '7.2 x 12 x 3.4 cm', '', '', 180, '10_1.png', '10_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(87, '6 x 12.3 x 3.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 17, 4, 'M - 11', 'M - 11', 0, 0, 45, 54.5, 'imbus M10', '6 x 12.3 x 3.8 cm', '', '', 250, '11_1.png', '11_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(88, '6.8 x 10.2 x 3.5 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 18, 4, 'M - 12', 'M - 12', 0, 0, 45, 54.5, 'imbus M10', '6.8 x 10.2 x 3.5 cm', '', '', 190, '12_1.png', '12_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(90, '7.3 x 11.5 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 19, 4, 'M - 13', 'M - 13', 0, 0, 45, 54.5, 'imbus M10', '7.3 x 11.5 x 3.4 cm', '', '', 230, '13_1.png', '13_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(91, '9.8 x 11.1 x 3.1 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 20, 4, 'M - 14', 'M - 14', 0, 0, 45, 54.5, 'imbus M10', '9.8 x 11.1 x 3.1 cm', '', '', 180, '14_1.png', '14_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(92, '11.6 x 12.2 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 21, 4, 'M - 15', 'M - 15', 0, 0, 45, 54.5, 'imbus M10', '11.6 x 12.2 x 3.4 cm', '', '', 240, '15_1.png', '15_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(93, '7.9 x 13.2 x 2.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 22, 4, 'M - 16', 'M - 16', 0, 0, 45, 54.5, 'imbus M10', '7.9 x 13.2 x 2.8 cm', '', '', 250, '16_1.png', '16_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(94, '9.3 x 9.6 x 3.5 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 23, 4, 'M - 17', 'M - 17', 0, 0, 45, 54.5, 'imbus M10', '9.3 x 9.6 x 3.5 cm', '', '', 260, '17_1.png', '17_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(95, '8 x 10 x 3.7 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 24, 4, 'M - 18', 'M - 18', 0, 0, 45, 54.5, 'imbus M10', '8 x 10 x 3.7 cm', '', '', 270, '18_1.png', '18_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(96, '6.8 x 10.7 x 3.9 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 25, 4, 'M - 19', 'M - 19', 0, 0, 45, 54.5, 'imbus M10', '6.8 x 10.7 x 3.9 cm', '', '', 230, '19_1.png', '19_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(97, '7.7 x 13 x 3.1 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 26, 4, 'M - 20', 'M - 20', 0, 0, 45, 54.5, 'imbus M10', '7.7 x 13 x 3.1 cm', '', '', 180, '20_1.png', '20_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(98, '9.8 x 11.2 x 3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 27, 4, 'M - 21', 'M - 21', 0, 0, 45, 54.5, 'imbus M10', '9.8 x 11.2 x 3 cm', '', '', 230, '21_1.png', '21_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(99, '10.3 x 10.3 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 29, 4, 'M - 23', 'M - 23', 0, 0, 45, 54.5, 'imbus M10', '10.3 x 10.3 x 3.4 cm', '', '', 300, '23_1.png', '23_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(100, '9 x 9 x 4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 30, 4, 'M - 24', 'M - 24', 0, 0, 45, 54.5, 'imbus M10', '9 x 9 x 4 cm', '', '', 310, '24_1.png', '24_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(101, '8.5 x 9.1 x 3.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 31, 4, 'M - 25', 'M - 25', 0, 0, 45, 54.5, 'imbus M10', '8.5 x 9.1 x 3.8 cm', '', '', 280, '25_1.png', '25_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(102, '10 x 10 x 2.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 32, 4, 'M - 26', 'M - 26', 0, 0, 45, 54.5, 'imbus M10', '10 x 10 x 2.4 cm', '', '', 300, '26_1.png', '26_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(103, '7.7 x 7.7 x 4.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 33, 4, 'M - 27', 'M - 27', 0, 0, 45, 54.5, 'imbus M10', '7.7 x 7.7 x 4.8 cm', '', '', 290, '27_1.png', '27_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(104, '8 x 8.4 x 3.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 34, 4, 'M - 28', 'M - 28', 0, 0, 45, 54.5, 'imbus M10', '8 x 8.4 x 3.8 cm', '', '', 250, '28_1.png', '28_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(105, '8.5 x 9 x 3.7 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 35, 4, 'M - 29', 'M - 29', 0, 0, 45, 54.5, 'imbus M10', '8.5 x 9 x 3.7 cm', '', '', 230, '29_1.png', '29_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(106, '6.4 x 7 x 5.2 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 36, 4, 'M - 30', 'M - 30', 0, 0, 45, 54.5, 'imbus M10', '6.4 x 7 x 5.2 cm', '', '', 220, '30_1.png', '30_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(107, '7.4 x 9.3 x 4.3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 37, 4, 'M - 31', 'M - 31', 0, 0, 45, 54.5, 'imbus M10', '7.4 x 9.3 x 4.3 cm', '', '', 130, '31_1.png', '31_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(108, '5 x 7 x 4.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 38, 4, 'M - 32', 'M - 32', 0, 0, 45, 54.5, 'imbus M10', '5 x 7 x 4.8 cm', '', '', 210, '32_1.png', '32_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(109, '9.5 x 12 x 3.5 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 39, 4, 'M - 33', 'M - 33', 0, 0, 45, 54.5, 'imbus M10', '9.5 x 12 x 3.5 cm', '', '', 310, '33_1.png', '33_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(110, '8.9 x 10.6 x 3.3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 40, 4, 'M - 34', 'M - 34', 0, 0, 45, 54.5, 'imbus M10', '8.9 x 10.6 x 3.3 cm', '', '', 220, '34_1.png', '34_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(111, '9 x 9 x 3.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 41, 4, 'M - 35', 'M - 35', 0, 0, 45, 54.5, 'imbus M10', '9 x 9 x 3.8 cm', '', '', 230, '35_1.png', '35_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(112, '8.2 x 9 x 4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 42, 4, 'M - 36', 'M - 36', 0, 0, 45, 54.5, 'imbus M10', '8.2 x 9 x 4 cm', '', '', 260, '36_1.png', '36_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(113, '8.2 x 10 x 3.3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 43, 4, 'M - 37', 'M - 37', 0, 0, 45, 54.5, 'imbus M10', '8.2 x 10 x 3.3 cm', '', '', 200, '37_1.png', '37_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(114, '8.5 x 9.8 x 3.5 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 44, 4, 'M - 38', 'M - 38', 0, 0, 45, 54.5, 'imbus M10', '8.5 x 9.8 x 3.5 cm', '', '', 210, '38_1.png', '38_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(115, '7.2 x 11.8 x 3.7 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 45, 4, 'M - 39', 'M - 39', 0, 0, 45, 54.5, 'imbus M10', '7.2 x 11.8 x 3.7 cm', '', '', 260, '39_1.png', '39_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(116, '9.5 x 9.5 x 3.8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 46, 4, 'M - 40', 'M - 40', 0, 0, 45, 54.5, 'imbus M10', '9.5 x 9.5 x 3.8 cm', '', '', 330, '40_1.png', '40_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(117, '10.5 x 12 x 3.2 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 47, 4, 'M - 41', 'M - 41', 0, 0, 45, 54.5, 'imbus M10', '10.5 x 12 x 3.2 cm', '', '', 270, '41_1.png', '41_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(118, '6.8 x 11.3 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 48, 4, 'M - 42', 'M - 42', 0, 0, 45, 54.5, 'imbus M10', '6.8 x 11.3 x 3.4 cm', '', '', 180, '42_1.png', '42_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(119, '5 x 13.5 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 49, 4, 'M - 43', 'M - 43', 0, 0, 45, 54.5, 'imbus M10', '5 x 13.5 x 3.4 cm', '', '', 240, '43_1.png', '43_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(120, '10.2 x 12.1 x 3.4 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 50, 4, 'M - 44', 'M - 44', 0, 0, 45, 54.5, 'imbus M10', '10.2 x 12.1 x 3.4 cm', '', '', 240, '44_1.png', '44_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(121, '8.6 x 11.7 x 3.6 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 51, 4, 'M - 45', 'M - 45', 0, 0, 45, 54.5, 'imbus M10', '8.6 x 11.7 x 3.6 cm', '', '', 220, '45_1.png', '45_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(122, '8.5 x 12.1 x 3.3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 52, 4, 'M - 46', 'M - 46', 0, 0, 45, 54.5, 'imbus M10', '8.5 x 12.1 x 3.3 cm', '', '', 250, '46_1.png', '46_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(123, '9.5 x 11.3 x 3.3 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 53, 4, 'M - 47', 'M - 47', 0, 0, 45, 54.5, 'imbus M10', '9.5 x 11.3 x 3.3 cm', '', '', 230, '47_1.png', '47_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(124, '8.5 x 21 x 3.8 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - a', 'L - a', 0, 0, 61, 73.8, 'vrut ø 5', '8.5 x 21 x 3.8 cm', '', '', 370, 'a1.png', 'a2.png', '', '', '', '328', 0, 0),
(125, '8.4 x 22 x 3 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - b', 'L - b', 0, 0, 61, 73.8, 'vrut ø 5', '8.4 x 22 x 3 cm', '', '', 350, 'b1.png', 'b2.png', '', '', '', '328', 0, 0),
(126, '10.5 x 18.5 x 3.4 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - c', 'L - c', 0, 0, 61, 73.8, 'vrut ø 5', '10.5 x 18.5 x 3.4 cm', '', '', 320, 'c1.png', 'c2.png', '', '', '', '328', 0, 0),
(127, '6.5 x 20.5 x 3.2 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - d', 'L - d', 0, 0, 61, 73.8, 'vrut ø 5', '6.5 x 20.5 x 3.2 cm', '', '', 280, 'd1.png', 'd2.png', '', '', '', '328', 0, 0),
(128, '4.3 x 23 x 3.6 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - e', 'L - e', 0, 0, 61, 73.8, 'vrut ø 5', '4.3 x 23 x 3.6 cm', '', '', 350, 'e1.png', 'e2.png', '', '', '', '328', 0, 0),
(129, '4.5 x 21.5 x 2.5 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - f', 'L - f', 0, 0, 61, 73.8, 'vrut ø 5', '4.5 x 21.5 x 2.5 cm', '', '', 240, 'f1.png', 'f2.png', '', '', '', '328', 0, 0),
(130, '4.7 x 25 x 3 cm', '', 2.65, 3.21, 'screw ø 5', '', 0, 5, 'L - g', 'L - g', 0, 0, 61, 73.8, 'vrut ø 5', '4.7 x 25 x 3 cm', '', '', 320, 'g1.png', 'g2.png', '', '', '', '328', 0, 0),
(131, '10.3 x 11 x 5.4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 1', 'L - 1', 0, 0, 61, 73.8, 'imbus M10', '10.3 x 11 x 5.4 cm', '', '', 370, '1_1.png', '1_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(132, '8.6 x 12.7 x 7 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 2', 'L - 2', 0, 0, 61, 73.8, 'imbus M10', '8.6 x 12.7 x 7 cm', '', '', 420, '2_1.png', '2_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(133, '7.2 x 13.5 x 6.5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 3', 'L - 3', 0, 0, 61, 73.8, 'imbus M10', '7.2 x 13.5 x 6.5 cm', '', '', 430, '3_1.png', '3_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(134, '9.3 x 11.6 x 6.8 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 4', 'L - 4', 0, 0, 61, 73.8, 'imbus M10', '9.3 x 11.6 x 6.8 cm', '', '', 400, '4_1.png', '4_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(135, '10 x 11.5 x 6.5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 5', 'L - 5', 0, 0, 61, 73.8, 'imbus M10', '10 x 11.5 x 6.5 cm', '', '', 600, '5_1.png', '5_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(136, '11.2 x 11.8 x 6.4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 6', 'L - 6', 0, 0, 61, 73.8, 'imbus M10', '11.2 x 11.8 x 6.4 cm', '', '', 500, '6_1.png', '6_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(137, '11.8 x 14.3 x 3.9 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 7', 'L - 7', 0, 0, 61, 73.8, 'imbus M10', '11.8 x 14.3 x 3.9 cm', '', '', 450, '7_1.png', '7_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(138, '11 x 11.6 x 4.6 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 8', 'L - 8', 0, 0, 61, 73.8, 'imbus M10', '11 x 11.6 x 4.6 cm', '', '', 450, '8_1.png', '8_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(139, '7.9 x 13.8 x 5.9 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 9', 'L - 9', 0, 0, 61, 73.8, 'imbus M10', '7.9 x 13.8 x 5.9 cm', '', '', 470, '9_1.png', '9_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(140, '11.2 x 11.5 x 5.5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 10', 'L - 10', 0, 0, 61, 73.8, 'imbus M10', '11.2 x 11.5 x 5.5 cm', '', '', 680, '10_1.png', '10_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(141, '10.8 x 11.2 x 5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 11', 'L - 11', 0, 0, 61, 73.8, 'imbus M10', '10.8 x 11.2 x 5 cm', '', '', 520, '11_1.png', '11_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(142, '12.8 x 13.9 x 5.2 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 12', 'L - 12', 0, 0, 61, 73.8, 'imbus M10', '12.8 x 13.9 x 5.2 cm', '', '', 450, '12_1.png', '12_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(143, '11.7 x 15.2 x 4.7 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 13', 'L - 13', 0, 0, 61, 73.8, 'imbus M10', '11.7 x 15.2 x 4.7 cm', '', '', 400, '13_1.png', '13_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(144, '8.6 x 16.3 x 4.3 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 14', 'L - 14', 0, 0, 61, 73.8, 'imbus M10', '8.6 x 16.3 x 4.3 cm', '', '', 450, '14_1.png', '14_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(145, '8 x 13.7 x 4.4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 15', 'L - 15', 0, 0, 61, 73.8, 'imbus M10', '8 x 13.7 x 4.4 cm', '', '', 390, '15_1.png', '15_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(146, '10.3 x 15.2 x 4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 16', 'L - 16', 0, 0, 61, 73.8, 'imbus M10', '10.3 x 15.2 x 4 cm', '', '', 470, '16_1.png', '16_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(147, '8.6 x 13.4 x 3.5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 17', 'L - 17', 0, 0, 61, 73.8, 'imbus M10', '8.6 x 13.4 x 3.5 cm', '', '', 290, '17_1.png', '17_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(148, '9 x 14 x 4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 18', 'L - 18', 0, 0, 61, 73.8, 'imbus M10', '9 x 14 x 4 cm', '', '', 360, '18_1.png', '18_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(149, '10 x 14 x 5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 19', 'L - 19', 0, 0, 61, 73.8, 'imbus M10', '10 x 14 x 5 cm', '', '', 400, '19_1.png', '19_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(150, '6.1 x 15 x 4.6 cm ', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 20', 'L - 20', 0, 0, 61, 73.8, 'imbus M10', '6.1 x 15 x 4.6 cm ', '', '', 450, '20_1.png', '20_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(151, '9.5 x 14.5 x 4.8 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 21', 'L - 21', 0, 0, 61, 73.8, 'imbus M10', '9.5 x 14.5 x 4.8 cm', '', '', 370, '21_1.png', '21_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(152, '11.8 x 15 x 3.7 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 22', 'L - 22', 0, 0, 61, 73.8, 'imbus M10', '11.8 x 15 x 3.7 cm', '', '', 530, '22_1.png', '22_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(153, '12.3 x 13.2 x 3.5 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 23', 'L - 23', 0, 0, 61, 73.8, 'imbus M10', '12.3 x 13.2 x 3.5 cm', '', '', 460, '23_1.png', '23_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(154, '12.8 x 14.2 x 3.4 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 24', 'L - 24', 0, 0, 61, 73.8, 'imbus M10', '12.8 x 14.2 x 3.4 cm', '', '', 400, '24_1.png', '24_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(155, '8.6 x 16 x 3.6 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 25', 'L - 25', 0, 0, 61, 73.8, 'imbus M10', '8.6 x 16 x 3.6 cm', '', '', 400, '25_1.png', '25_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(156, '8.9 x 15.4 x 3.1 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 26', 'L - 26', 0, 0, 61, 73.8, 'imbus M10', '8.9 x 15.4 x 3.1 cm', '', '', 430, '26_1.png', '26_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(157, '7.5 x 14.5 x 5.2 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 27', 'L - 27', 0, 0, 61, 73.8, 'imbus M10', '7.5 x 14.5 x 5.2 cm', '', '', 500, '27_1.png', '27_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(158, '10.5 x 14 x 4.7 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 28', 'L - 28', 0, 0, 61, 73.8, 'imbus M10', '10.5 x 14 x 4.7 cm', '', '', 440, '28_1.png', '28_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(159, '5.6 x 18.3 x 3.9 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 29', 'L - 29', 0, 0, 61, 73.8, 'imbus M10', '5.6 x 18.3 x 3.9 cm', '', '', 400, '29_1.png', '29_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(160, '6 x 18 x 4.2 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 30', 'L - 30', 0, 0, 61, 73.8, 'imbus M10', '6 x 18 x 4.2 cm', '', '', 330, '30_1.png', '30_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(161, '12.7 x 13.5 x 3 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 5, 'L - 31', 'L - 31', 0, 0, 61, 73.8, 'imbus M10', '12.7 x 13.5 x 3 cm', '', '', 490, '31_1.png', '31_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(162, '24 x 33 x 7 cm', '', 9.13, 11.06, 'Cap head bolt M10', '', 0, 6, 'Mega - a', 'Mega - a', 0, 0, 210, 254.1, 'imbus M10', '24 x 33 x 7 cm', '', '', 3300, 'a1.png', 'a2.png', 'a3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(163, '9 x 28 x 5.5 cm', '', 6.52, 7.89, 'Cap head bolt M10', '', 0, 6, 'Mega - b', 'Mega - b', 0, 0, 150, 181.5, 'imbus M10', '9 x 28 x 5.5 cm', '', '', 1200, 'b1.png', 'b2.png', 'b3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(164, '21 x 30 x 5 cm', '', 6.52, 7.89, 'Cap head bolt M10', '', 0, 6, 'Mega - c', 'Mega - c', 0, 0, 150, 181.5, 'imbus M10', '21 x 30 x 5 cm', '', '', 2100, 'c1.png', 'c2.png', 'c3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(165, '20 x 36 x 7 cm', '', 10.86, 13.14, 'Cap head bolt M10', '', 0, 6, 'Mega - d', 'Mega - d', 0, 0, 250, 302.5, 'imbus M10', '20 x 36 x 7 cm', '', '', 4000, 'd1.png', 'd2.png', 'd3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(166, '15 x 18 x 19 cm', '', 9.13, 11.06, 'Cap head bolt M10', '', 0, 6, 'Mega - e', 'Mega - e', 0, 0, 210, 254.1, 'imbus M10', '15 x 18 x 19 cm', '', '', 3000, 'e1.png', 'e2.png', 'e3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(167, '20 x 33 x 5.5 cm', '', 9.13, 11.06, 'Cap head bolt M10', '', 0, 6, 'Mega - f', 'Mega - f', 0, 0, 210, 254.1, 'imbus M10', '20 x 33 x 5.5 cm', '', '', 2900, 'f1.png', 'f2.png', 'f3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(168, '26 x 31 x 11 cm', '', 16.95, 20.51, 'Cap head bolt M10', '', 0, 6, 'Mega - g', 'Mega - g', 0, 0, 390, 471.9, 'imbus M10', '26 x 31 x 11 cm', '', '', 4700, 'g1.png', 'g2.png', 'g3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(169, '14.7 x 17 x 10 cm', '', 5.17, 6.26, 'Cap head bolt M10', '', 0, 7, 'Žába', 'Frog', 0, 0, 119, 144, 'imbus M10', '14.7 x 17 x 10 cm', '', 'Velikost L', 1800, 'zaba1.png', 'zaba2.png', 'zaba3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(170, '13.5 x 18.5 x 9.2 cm', '', 5.17, 6.26, 'Cap head bolt M10', '', 0, 7, 'Červ', 'Worm', 0, 0, 119, 144, 'imbus M10', '13.5 x 18.5 x 9.2 cm', '', 'Velikost L', 1200, 'cerv1.png', 'cerv2.png', 'cerv3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(171, '22 x 22 x 6 cm', '', 5.17, 6.26, 'Cap head bolt M10', '', 0, 7, 'Hvězdice', 'Star', 0, 0, 119, 144, 'imbus M10', '22 x 22 x 6 cm', '', 'Velikost L', 1200, 'hvezdice1.png', 'hvezdice2.png', 'hvezdice3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(172, '11.8 x 10.4 x 4 cm', '', 4, 4.84, 'Cap head bolt M10', '', 0, 7, 'Srdce', 'Heart', 0, 0, 92, 111.3, 'imbus M10', '11.8 x 10.4 x 4 cm', '', 'Velikost M', 500, 'srdce1.png', 'srdce2.png', 'srdce3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(174, '6.4 x 10.2 x 5.7 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Prase', 'Pig', 0, 0, 79, 95.6, 'imbus M10', '6.4 x 10.2 x 5.7 cm', '', 'Velikost S', 400, 'prase1.png', 'prase2.png', 'prase3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(175, '8.5 x 9.1 x 6.2 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Slon', 'Elephant', 0, 0, 79, 95.6, 'imbus M10', '8.5 x 9.1 x 6.2 cm', '', 'Velikost S', 400, 'slon1.png', 'slon2.png', 'slon3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(176, '7.6 x 9.2 x 3.6 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Velryba', 'Whale', 0, 0, 79, 95.6, 'imbus M10', '7.6 x 9.2 x 3.6 cm', '', 'Velikost S', 300, 'velryba1.png', 'velryba2.png', 'velryba3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(177, '8.8 x 11.5 x 6.8 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Želva', 'Turtle', 0, 0, 79, 95.6, 'imbus M10', '8.8 x 11.5 x 6.8 cm', '', 'Velikost S', 400, 'zelva1.png', 'zelva2.png', 'zelva3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(178, 'ø 6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 8, 'Koule - S', 'Ball - S', 0, 0, 26, 31.5, 'imbus M10', 'ø 6 cm', '', '', 200, 'koule.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(179, 'ø 8 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 0, 8, 'Koule - M', 'Ball - M', 0, 0, 45, 54.5, 'imbus M10', 'ø 8 cm', '', '', 500, 'koule.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(180, 'ø 10 cm', '', 2.65, 3.21, 'Cap head bolt M10', '', 0, 8, 'Koule - L', 'Ball - L', 0, 0, 61, 73.8, 'imbus M10', 'ø 10 cm', '', '', 800, 'koule.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(181, 'ø 12 cm', '', 3.52, 4.26, 'Cap head bolt M10', '', 0, 8, 'Koule - XL', 'Ball - XL', 0, 0, 81, 98, 'imbus M10', 'ø 12 cm', '', '', 1400, 'koule.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(182, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 1', 'Micro - 1', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327', 0, 0),
(183, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 2', 'Micro - 2', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327', 0, 0),
(184, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 3', 'Micro - 3', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327', 0, 0),
(185, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 4', 'Micro - 4', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327', 0, 0),
(186, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 5', 'Micro - 5', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327', 0, 0),
(187, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 6', 'Micro - 6', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327', 0, 0),
(188, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 7', 'Micro - 7', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327', 0, 0),
(189, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 8', 'Micro - 8', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327', 0, 0),
(190, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 9', 'Micro - 9', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327', 0, 0),
(191, '', '', 0.7, 0.85, 'screw ø 3.5', '', 0, 9, 'Mikro - 10', 'Micro - 10', 0, 0, 16, 19.4, 'vrut ø 3,5', '', '', '', 21, '', '', '', '', '', '327', 0, 0),
(192, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 1', 'Mini - 1', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', '', 0, 0),
(193, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 2', 'Mini - 2', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', '', 0, 0),
(195, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 3', 'Mini - 3', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', '', 0, 0),
(196, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 4', 'Mini - 4', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', '', 0, 0),
(197, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 5', 'Mini - 5', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', '', 0, 0),
(198, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 6', 'Mini - 6', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', '', 0, 0),
(199, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 7', 'Mini - 7', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', '', 0, 0),
(200, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 8', 'Mini - 8', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', '', 0, 0),
(201, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 9', 'Mini - 9', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', '', 0, 0),
(202, '', '', 0.87, 1.05, 'screw ø 4', '', 0, 10, 'Mini - 10', 'Mini - 10', 0, 0, 20, 24.2, 'vrut ø 4', '', '', '', 36, '', '', '', '', '', '', 0, 0),
(203, '5.7 x 6.1 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 1', 'S - 1', 0, 0, 26, 31.5, 'imbus M10', '5.7 x 6.1 x 2.7 cm', '', '', 80, '1.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(204, '4.3 x 7 x 2.8 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 2', 'S - 2', 0, 0, 26, 31.5, 'imbus M10', '4.3 x 7 x 2.8 cm', '', '', 80, '2.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(205, '5.6 x 6.5 x 2.9 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 3', 'S - 3', 0, 0, 26, 31.5, 'imbus M10', '5.6 x 6.5 x 2.9 cm', '', '', 90, '3.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(206, '5.2 x 5.2 x 3.4 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 4', 'S - 4', 0, 0, 26, 31.5, 'imbus M10', '5.2 x 5.2 x 3.4 cm', '', '', 90, '4.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(207, '4.2 x 8.9 x 2.6 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 5', 'S - 5', 0, 0, 26, 31.5, 'imbus M10', '4.2 x 8.9 x 2.6 cm', '', '', 80, '5.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(208, '4.9 x 6.2 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 6', 'S - 6', 0, 0, 26, 31.5, 'imbus M10', '4.9 x 6.2 x 2.7 cm', '', '', 80, '6.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(209, '5.6 x 5.6 x 3.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 7', 'S - 7', 0, 0, 26, 31.5, 'imbus M10', '5.6 x 5.6 x 3.5 cm', '', '', 90, '7.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(210, '5.2 x 6.4 x 2.2 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 8', 'S - 8', 0, 0, 26, 31.5, 'imbus M10', '5.2 x 6.4 x 2.2 cm', '', '', 80, '8.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(211, '5.2 x 5.2 x 3.5 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 9', 'S - 9', 0, 0, 26, 31.5, 'imbus M10', '5.2 x 5.2 x 3.5 cm', '', '', 90, '9.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(212, '4.5 x 6.1 x 2.7 cm', '', 1.13, 1.37, 'Cap head bolt M10', '', 0, 11, 'S - 10', 'S - 10', 0, 0, 26, 31.5, 'imbus M10', '4.5 x 6.1 x 2.7 cm', '', '', 80, '10.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(213, '8.3 x 8.5 x 4.2 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 1', 'M - 1', 0, 0, 43, 52, 'imbus M10', '8.3 x 8.5 x 4.2 cm', '', '', 220, '1a.png', '1b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(214, '7.5 x 10.6 x 4.2 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 2', 'M - 2', 0, 0, 43, 52, 'imbus M10', '7.5 x 10.6 x 4.2 cm', '', '', 250, '2a.png', '2b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(215, '6.5 x 11.7 x 3.5 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 3', 'M - 3', 0, 0, 43, 52, 'imbus M10', '6.5 x 11.7 x 3.5 cm', '', '', 200, '3a.png', '3b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(216, '7.5 x 10.5 x 3.8 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 4', 'M - 4', 0, 0, 43, 52, 'imbus M10', '7.5 x 10.5 x 3.8 cm', '', '', 220, '4a.png', '4b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(217, '4.9 x 12.3 x 2.9 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 5', 'M - 5', 0, 0, 43, 52, 'imbus M10', '4.9 x 12.3 x 2.9 cm', '', '', 180, '5a.png', '5b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(218, '7.8 x 8.8 x 5 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 6', 'M - 6', 0, 0, 43, 52, 'imbus M10', '7.8 x 8.8 x 5 cm', '', '', 230, '6a.png', '6b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(219, '7.7 x 11.3 x 3.8 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 7', 'M - 7', 0, 0, 43, 52, 'imbus M10', '7.7 x 11.3 x 3.8 cm', '', '', 270, '7a.png', '7b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(220, '8 x 8.8 x 3.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 8', 'M - 8', 0, 0, 43, 52, 'imbus M10', '8 x 8.8 x 3.1 cm', '', '', 200, '8a.png', '8b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(221, '9.5 x 9.2 x 4.3 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 9', 'M - 9', 0, 0, 43, 52, 'imbus M10', '9.5 x 9.2 x 4.3 cm', '', '', 330, '9a.png', '9b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(222, '6.3 x 8 x 4.6 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 10', 'M - 10', 0, 0, 43, 52, 'imbus M10', '6.3 x 8 x 4.6 cm', '', '', 220, '10a.png', '10b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(223, '7.6 x 10.7 x 3.4 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 11', 'M - 11', 0, 0, 43, 52, 'imbus M10', '7.6 x 10.7 x 3.4 cm', '', '', 170, '11a.png', '11b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(224, '5.5 x 12.2 x 4 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 12', 'M - 12', 0, 0, 43, 52, 'imbus M10', '5.5 x 12.2 x 4 cm', '', '', 250, '12a.png', '12b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(225, '8.7 x 9.4 x 3.8 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 13', 'M - 13', 0, 0, 43, 52, 'imbus M10', '8.7 x 9.4 x 3.8 cm', '', '', 280, '13a.png', '13b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(226, '9.8 x 10.2 x 2.9 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 14', 'M - 14', 0, 0, 43, 52, 'imbus M10', '9.8 x 10.2 x 2.9 cm', '', '', 350, '14a.png', '14b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(227, '7.8 x 10.5 x 2.8 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 15', 'M - 15', 0, 0, 43, 52, 'imbus M10', '7.8 x 10.5 x 2.8 cm', '', '', 180, '15a.png', '15b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(228, '8 x 9.4 x 4.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 16', 'M - 16', 0, 0, 43, 52, 'imbus M10', '8 x 9.4 x 4.1 cm', '', '', 240, '16a.png', '16b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(229, '5 x 13 x 3.6 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 17', 'M - 17', 0, 0, 43, 52, 'imbus M10', '5 x 13 x 3.6 cm', '', '', 210, '17a.png', '17b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(230, '8.1 x 10.8 x 3.9 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 18', 'M - 18', 0, 0, 43, 52, 'imbus M10', '8.1 x 10.8 x 3.9 cm', '', '', 300, '18a.png', '18b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(231, '8.2 x 9.3 x 4.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 19', 'M - 19', 0, 0, 43, 52, 'imbus M10', '8.2 x 9.3 x 4.1 cm', '', '', 260, '19a.png', '19b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(232, '4.5 x 13.1 x 2.4 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 20', 'M - 20', 0, 0, 43, 52, 'imbus M10', '4.5 x 13.1 x 2.4 cm', '', '', 160, '20a.png', '20b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(233, '6.6 x 7.1 x 5.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 21', 'M - 21', 0, 0, 43, 52, 'imbus M10', '6.6 x 7.1 x 5.1 cm', '', '', 200, '21a.png', '21b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(234, '6.2 x 11 x 3.7 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 22', 'M - 22', 0, 0, 43, 52, 'imbus M10', '6.2 x 11 x 3.7 cm', '', '', 240, '22a.png', '22b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(235, '7.8 x 8.1 x 5 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 23', 'M - 23', 0, 0, 43, 52, 'imbus M10', '7.8 x 8.1 x 5 cm', '', '', 340, '23a.png', '23b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(236, '7.4 x 9.2 x 4.3 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 24', 'M - 24', 0, 0, 43, 52, 'imbus M10', '7.4 x 9.2 x 4.3 cm', '', '', 250, '24a.png', '24b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0);
INSERT INTO `item` (`id`, `rozmeryEN`, `poznamkaEN`, `cenaBezDPHEN`, `cenaSDPHEN`, `montazniPrvekEN`, `popisEN`, `poradi`, `subcategory`, `cz`, `en`, `sklad`, `zakoupeno`, `cenaBezDPH`, `cenaSDPH`, `montazniPrvek`, `rozmery`, `popis`, `poznamka`, `hmotnost`, `img1`, `img2`, `img3`, `img4`, `img5`, `dalsi_zbozi`, `prodanoKS`, `prodanoObjednavek`) VALUES
(237, '7.1 x 8.6 x 3.2 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 25', 'M - 25', 0, 0, 43, 52, 'imbus M10', '7.1 x 8.6 x 3.2 cm', '', '', 200, '25a.png', '25b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(238, '6.6 x 11 x 3.6 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 26', 'M - 26', 0, 0, 43, 52, 'imbus M10', '6.6 x 11 x 3.6 cm', '', '', 200, '26a.png', '26b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(239, '8.2 x 8.8 x 4.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 27', 'M - 27', 0, 0, 43, 52, 'imbus M10', '8.2 x 8.8 x 4.1 cm', '', '', 300, '27a.png', '27b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(240, '7.7 x 9.4 x 5.2 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 28', 'M - 28', 0, 0, 43, 52, 'imbus M10', '7.7 x 9.4 x 5.2 cm', '', '', 260, '28a.png', '28b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(241, '8.1 x 9.3 x 5.3 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 29', 'M - 29', 0, 0, 43, 52, 'imbus M10', '8.1 x 9.3 x 5.3 cm', '', '', 230, '29a.png', '29b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(242, '6.5 x 8.2 x 5.6 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 30', 'M - 30', 0, 0, 43, 52, 'imbus M10', '6.5 x 8.2 x 5.6 cm', '', '', 300, '30a.png', '30b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(243, '9 x 9.5 x 4.5 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 31', 'M - 31', 0, 0, 43, 52, 'imbus M10', '9 x 9.5 x 4.5 cm', '', '', 280, '31a.png', '31b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(244, '7.9 x 8.9 x 4.1 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 32', 'M - 32', 0, 0, 43, 52, 'imbus M10', '7.9 x 8.9 x 4.1 cm', '', '', 250, '32a.png', '32b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(245, '9.4 x 10 x 3.6 cm', '', 1.87, 2.26, 'Cap head bolt M10', '', 0, 12, 'M - 33', 'M - 33', 0, 0, 43, 52, 'imbus M10', '9.4 x 10 x 3.6 cm', '', '', 220, '33a.png', '33b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(246, '12.2 x 15 x 4.1 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 1', 'L - 1', 0, 0, 58, 70.2, 'imbus M10', '12.2 x 15 x 4.1 cm', '', '', 500, '1a.png', '1b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(247, '7.3 x 15.5 x 6.1 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 2', 'L - 2', 0, 0, 58, 70.2, 'imbus M10', '7.3 x 15.5 x 6.1 cm', '', '', 690, '2a.png', '2b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(248, '10 x 16 x 4.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 3', 'L - 3', 0, 0, 58, 70.2, 'imbus M10', '10 x 16 x 4.5 cm', '', '', 440, '3a.png', '3b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(249, '7.7 x 12 x 8 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 4', 'L - 4', 0, 0, 58, 70.2, 'imbus M10', '7.7 x 12 x 8 cm', '', '', 500, '4a.png', '4b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(250, '8 x 14 x 7 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 5', 'L - 5', 0, 0, 58, 70.2, 'imbus M10', '8 x 14 x 7 cm', '', '', 480, '5a.png', '5b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(251, '11.13 x 11.13 x 5.7 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 6', 'L - 6', 0, 0, 58, 70.2, 'imbus M10', '11.13 x 11.13 x 5.7 cm', '', '', 610, '6a.png', '6b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(252, '13 x 12.4 x 7.1 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 7', 'L - 7', 0, 0, 58, 70.2, 'imbus M10', '13 x 12.4 x 7.1 cm', '', '', 630, '7a.png', '7b.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(254, '5.7 x 18.5 x 4 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 9', 'L - 9', 0, 0, 58, 70.2, 'imbus M10', '5.7 x 18.5 x 4 cm', '', '', 430, '9a.PNG', '9b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(255, '11.4 x 11.6 x 6.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 10', 'L - 10', 0, 0, 58, 70.2, 'imbus M10', '11.4 x 11.6 x 6.2 cm', '', '', 500, '10a.PNG', '10b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(256, '7 x 7 x 9.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 11', 'L - 11', 0, 0, 58, 70.2, 'imbus M10', '7 x 7 x 9.5 cm', '', '', 500, '11a.PNG', '11b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(257, '8.2 x 10.3 x 8.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 12', 'L - 12', 0, 0, 58, 70.2, 'imbus M10', '8.2 x 10.3 x 8.2 cm', '', '', 700, '12a.PNG', '12b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(258, '7.5 x 14.5 x 7.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 13', 'L - 13', 0, 0, 58, 70.2, 'imbus M10', '7.5 x 14.5 x 7.5 cm', '', '', 500, '13a.PNG', '13b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(259, '10 x 12.5 x 6 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 14', 'L - 14', 0, 0, 58, 70.2, 'imbus M10', '10 x 12.5 x 6 cm', '', '', 550, '14a.PNG', '14b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(260, '11.3 x 11.8 x 4.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 15', 'L - 15', 0, 0, 58, 70.2, 'imbus M10', '11.3 x 11.8 x 4.2 cm', '', '', 420, '15a.PNG', '15b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(261, '6 x 18.5 x 4.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 16', 'L - 16', 0, 0, 58, 70.2, 'imbus M10', '6 x 18.5 x 4.5 cm', '', '', 400, '16a.PNG', '16b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(262, '8.5 x 12.1 x 5.8 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 17', 'L - 17', 0, 0, 58, 70.2, 'imbus M10', '8.5 x 12.1 x 5.8 cm', '', '', 400, '17a.PNG', '17b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(263, '10 x 17 x 5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 18', 'L - 18', 0, 0, 58, 70.2, 'imbus M10', '10 x 17 x 5 cm', '', '', 550, '18a.PNG', '18b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(264, '11.4 x 11.4 x 6 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 19', 'L - 19', 0, 0, 58, 70.2, 'imbus M10', '11.4 x 11.4 x 6 cm', '', '', 760, '19a.PNG', '19b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(265, '11.4 x 12.7 x 6.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 20', 'L - 20', 0, 0, 58, 70.2, 'imbus M10', '11.4 x 12.7 x 6.5 cm', '', '', 580, '20a.PNG', '20b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(266, '10 x 10 x 5.6 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 21', 'L - 21', 0, 0, 58, 70.2, 'imbus M10', '10 x 10 x 5.6 cm', '', '', 440, '21a.PNG', '21b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(267, '10.3 x 13 x 4.8 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 22', 'L - 22', 0, 0, 58, 70.2, 'imbus M10', '10.3 x 13 x 4.8 cm', '', '', 400, '22a.PNG', '22b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(268, '12 x 15.5 x 7.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 23', 'L - 23', 0, 0, 58, 70.2, 'imbus M10', '12 x 15.5 x 7.2 cm', '', '', 600, '23a.PNG', '23b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(269, '10.3 x 11.7 x 7 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 24', 'L - 24', 0, 0, 58, 70.2, 'imbus M10', '10.3 x 11.7 x 7 cm', '', '', 690, '24a.PNG', '24b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(270, '7.1 x 13.3 x 7.6 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 25', 'L - 25', 0, 0, 58, 70.2, 'imbus M10', '7.1 x 13.3 x 7.6 cm', '', '', 600, '25a.PNG', '25b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(271, '13.3 x 14 x 6.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 26', 'L - 26', 0, 0, 58, 70.2, 'imbus M10', '13.3 x 14 x 6.5 cm', '', '', 580, '26a.PNG', '26b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(272, '9.7 x 11.7 x 7.2 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 27', 'L - 27', 0, 0, 58, 70.2, 'imbus M10', '9.7 x 11.7 x 7.2 cm', '', '', 460, '27a.PNG', '27b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(273, '10 x 10.2 x 5.5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 28', 'L - 28', 0, 0, 58, 70.2, 'imbus M10', '10 x 10.2 x 5.5 cm', '', '', 490, '28a.PNG', '28b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(274, '11.2 x 12 x 6.8 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 29', 'L - 29', 0, 0, 58, 70.2, 'imbus M10', '11.2 x 12 x 6.8 cm', '', '', 650, '29a.PNG', '29b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(275, '8.5 x 14.5 x 5.8 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 30', 'L - 30', 0, 0, 58, 70.2, 'imbus M10', '8.5 x 14.5 x 5.8 cm', '', '', 540, '30a.PNG', '30b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(276, '8.2 x 14 x 5 cm', '', 2.51, 3.04, 'Cap head bolt M10', '', 0, 13, 'L - 31', 'L - 31', 0, 0, 58, 70.2, 'imbus M10', '8.2 x 14 x 5 cm', '', '', 470, '31a.PNG', '31b.PNG', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(277, '6.2 x 9.3 x 5.8 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Medvěd', 'Bear', 0, 0, 79, 95.6, 'imbus šroub M10', '6.2 x 9.3 x 5.8 cm', '', 'Velikost S', 400, 'medved1.png', 'medved2.png', 'medved3.png', '', '', '326', 0, 0),
(278, '59 x 23 x 7 cm', '', 23.33, 28.23, 'The delivery also includes hardware. (screw M8)', '', 0, 19, 'Panel S', 'Board S', 0, 0, 560, 677.6, 'Součástí dodávky je i spojovací materiál. (vrut ø 8 se šestihrannou hlavou)', '59 x 23 x 7 cm', '', 'V případě osobního odběru bude poskytnuta sleva 10 % z ceny panelu.', 7000, 'S1.png', 'S2.png', 'S3.png', 'S4.png', '', '', 0, 0),
(279, '82 x 21 x 6 cm', '', 36.25, 43.86, 'The delivery also includes hardware. (screw M8)', '', 0, 19, 'Panel M', 'Board M', 0, 0, 870, 1052.7, 'Součástí dodávky je i spojovací materiál. (vrut ø 8 se šestihrannou hlavou)', '82 x 21 x 6 cm', '', 'V případě osobního odběru bude poskytnuta sleva 10 % z ceny panelu.', 9000, 'M1.png', 'M2.png', 'M3.png', 'M4.png', '', '', 0, 0),
(280, '80 x 27 x 7 cm', '', 45.42, 54.95, 'The delivery also includes hardware. (screw M8)', '', 0, 19, 'Panel L', 'Board L', 0, 0, 1090, 1318.9, 'Součástí dodávky je i spojovací materiál. (vrut ø 8 se šestihrannou hlavou)', '80 x 27 x 7 cm', '', 'V případě osobního odběru bude poskytnuta sleva 10 % z ceny panelu.', 12000, 'L1.png', 'L2.png', 'L3.png', 'L4.png', '', '', 0, 0),
(281, '7.5 x 30 x 2.5 cm', '', 2.51, 3.04, 'screw ø 5', '', 0, 17, 'Lišta L', 'Ledge L', 0, 0, 58, 70.2, 'vrut ø 5', '7.5 x 30 x 2.5 cm', '', '', 400, 'L1.png', 'L2.png', '', '', '', '328', 0, 0),
(282, '9.8 x 37.5 x 3.3 cm', '', 3.35, 4.05, 'screw ø 5', '', 0, 17, 'Lišta XL', 'Ledge XL', 0, 0, 77, 93.2, 'vrut ø 5', '9.8 x 37.5 x 3.3 cm', '', '', 700, 'XL1.png', 'XL2.png', '', '', '', '328', 0, 0),
(283, '9 x 11.3 x 3.9 cm', '', 1.96, 2.37, 'Cap head bolt M10', '', 28, 4, 'M - 22', 'M - 22', 0, 0, 45, 54.5, 'imbus M10', '9 x 11.3 x 3.9 cm', '', '', 360, '22_1.png', '22_2.png', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(284, '19 x 15 x 14 cm', '', 7.83, 9.47, 'Cap head bolt M10', '', 0, 16, 'Nos', 'Nose', 0, 0, 180, 217.8, 'imbus M10', '19 x 15 x 14 cm', '', '', 2100, 'nos1.png', 'nos2.png', 'nos3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(285, '20 x 18 x 10 cm', '', 10.87, 13.15, 'Cap head bolt M10', '', 0, 16, 'Boule', 'Bumb', 0, 0, 250, 302.5, 'imbus M10', '20 x 18 x 10 cm', '', '', 3200, 'boule1.png', 'boule2.png', 'boule3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(286, '17 x 15 x 15 cm', '', 11.74, 14.21, 'Cap head bolt M10', '', 0, 16, 'Hrb', 'Hump', 0, 0, 270, 326.7, 'imbus M10', '17 x 15 x 15 cm', '', '', 3560, 'hrb1.png', 'hrb2.png', 'hrb3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(287, '25 x 25 x 7 cm', '', 11.74, 14.21, 'Cap head bolt M10', '', 0, 16, 'Měsíc', 'Moon', 0, 0, 270, 326.7, 'imbus M10', '25 x 25 x 7 cm', '', '', 3510, 'mesic1.png', 'mesic2.png', 'mesic3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(288, '40 x 12 x 9 cm', '', 13.04, 15.78, 'Cap head bolt M10', '', 0, 16, 'Rohlik', 'Croissant', 0, 0, 300, 363, 'imbus M10', '40 x 12 x 9 cm', '', '', 3870, 'rohlik1.png', 'rohlik2.png', 'rohlik3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(289, '23 x 18 x 8 cm', '', 9.13, 11.05, 'Cap head bolt M10', '', 0, 16, 'Placka', 'Pancake', 0, 0, 210, 254.1, 'imbus M10', '23 x 18 x 8 cm', '', '', 2610, 'placka1.png', 'placka2.png', 'placka3.png', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(290, '', '', 4.65, 5.26, 'Cap head bolt M10, screw ø 5', '', 0, 18, 'Drytooling - 1', 'Drytooling - 1', 0, 0, 100, 121, 'imbus šroub M10, vrut ø 5', '', '', '', 0, '1a.PNG', '', '', '', '', '326_;_328', 0, 0),
(291, '', '', 4.65, 5.26, 'Cap head bolt M10, screw ø 5', '', 0, 18, 'Drytooling - 2', 'Drytooling - 2', 0, 0, 100, 121, 'imbus šroub M10, vrut ø 5', '', '', '', 0, '2a.PNG', '', '', '', '', '326_;_328', 0, 0),
(292, '', '', 4.65, 5.26, 'Cap head bolt M10, screw ø 5', '', 0, 18, 'Drytooling - 3', 'Drytooling - 3', 0, 0, 100, 121, 'imbus šroub M10, vrut ø 5', '', '', '', 0, '3a.PNG', '', '', '', '', '326_;_328', 0, 0),
(293, '', '', 2.38, 2.88, 'screw ø 5', '', 0, 20, 'Přírodní chyty', 'Natural´s holds', 0, 0, 55, 66.6, 'zpravidla na 3 ks vrutů ø 5', '', 'Přírodní chyty různých tvarů a velikostí.', 'Při objednání namixujeme různou škálu velikostí a tvarů, nebo podle dohody.', 0, '1a.png', '', '', '', '', '328', 0, 0),
(294, '8.5 x 16.5 x 11.8 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 1', 'XXL - 1', 0, 0, 90, 108.9, 'imbus M10', '8.5 x 16.5 x 11.8 cm', '', '', 1200, '1a.PNG', '1b.PNG', '1c.PNG', '1d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(295, '12.5 x 17.8 x 7.5 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 2', 'XXL - 2', 0, 0, 90, 108.9, 'imbus M10', '12.5 x 17.8 x 7.5 cm', '', '', 1200, '2a.PNG', '2b.PNG', '2c.PNG', '2d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(296, '16 x 13.2 x 7.5 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 3', 'XXL - 3', 0, 0, 90, 108.9, 'imbus M10', '16 x 13.2 x 7.5 cm', '', '', 1100, '3a.PNG', '3b.PNG', '3c.PNG', '3d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(297, '15 x 16.5 x 6.8 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 4', 'XXL - 4', 0, 0, 90, 108.9, 'imbus M10', '15 x 16.5 x 6.8 cm', '', '', 1100, '4a.PNG', '4b.PNG', '4c.PNG', '4d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(298, '11.4 x 18.2 x 10 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 5', 'XXL - 5', 0, 0, 90, 108.9, 'imbus M10', '11.4 x 18.2 x 10 cm', '', '', 1400, '5a.PNG', '5b.PNG', '5c.PNG', '5d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(299, '12.7 x 19 x 7.4 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 6', 'XXL - 6', 0, 0, 90, 108.9, 'imbus M10', '12.7 x 19 x 7.4 cm', '', '', 1200, '6a.PNG', '6b.PNG', '6c.PNG', '6d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(300, '15.2 x 16.4 x 6.7 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 7', 'XXL - 7', 0, 0, 90, 108.9, 'imbus M10', '15.2 x 16.4 x 6.7 cm', '', '', 1100, '7a.PNG', '7b.PNG', '7c.PNG', '7d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(301, '12 x 17.3 x 9 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 8', 'XXL - 8', 0, 0, 90, 108.9, 'imbus M10', '12 x 17.3 x 9 cm', '', '', 1200, '8a.PNG', '8b.PNG', '8c.PNG', '8d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(302, '12.5 x 15.5 x 10.8 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 9', 'XXL - 9', 0, 0, 90, 108.9, 'imbus M10', '12.5 x 15.5 x 10.8 cm', '', '', 1400, '9a.PNG', '9b.PNG', '9c.PNG', '9d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(303, '13.5 x 16 x 7 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 10', 'XXL - 10', 0, 0, 90, 108.9, 'imbus M10', '13.5 x 16 x 7 cm', '', '', 1200, '10a.PNG', '10b.PNG', '10c.PNG', '10d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(304, '12.5 x 12.5 x 6.7 cm', '', 3.91, 4.73, 'Cap head bolt M10', '', 0, 15, 'XXL - 11', 'XXL - 11', 0, 0, 90, 108.9, 'imbus M10', '12.5 x 12.5 x 6.7 cm', '', '', 900, '11a.PNG', '11b.PNG', '11c.PNG', '11d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(306, '12 x 7 x 9 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 1', 'XL - 1', 0, 0, 77, 93.2, 'imbus M10', '12 x 7 x 9 cm', '', '', 750, '1a.PNG', '1b.PNG', '1c.PNG', '1d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(307, '15 x 8 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 2', 'XL - 2', 0, 0, 77, 93.2, 'imbus M10', '15 x 8 x 8 cm', '', '', 840, '2a.PNG', '2b.PNG', '2c.PNG', '2d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(308, '15 x 11 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 3', 'XL - 3', 0, 0, 77, 93.2, 'imbus M10', '15 x 11 x 8 cm', '', '', 820, '3a.PNG', '3b.PNG', '3c.PNG', '3d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(309, '16 x 7 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 4', 'XL - 4', 0, 0, 77, 93.2, 'imbus M10', '16 x 7 x 8 cm', '', '', 770, '4a.PNG', '4b.PNG', '4c.PNG', '4d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(310, '14 x 9 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 5', 'XL - 5', 0, 0, 77, 93.2, 'imbus M10', '14 x 9 x 8 cm', '', '', 900, '5a.PNG', '5b.PNG', '5c.PNG', '5d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(311, '13 x 11 x 7 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 6', 'XL - 6', 0, 0, 77, 93.2, 'imbus M10', '13 x 11 x 7 cm', '', '', 810, '6a.PNG', '6b.PNG', '6c.PNG', '6d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(312, '18 x 9 x 5 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 7', 'XL - 7', 0, 0, 77, 93.2, 'imbus M10', '18 x 9 x 5 cm', '', '', 720, '7a.PNG', '7b.PNG', '7c.PNG', '7d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(313, '16 x 6 x 9 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 8', 'XL - 8', 0, 0, 77, 93.2, 'imbus M10', '16 x 6 x 9 cm', '', '', 810, '8a.PNG', '8b.PNG', '8c.PNG', '8d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(314, '10 x 8 x 10 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 9', 'XL - 9', 0, 0, 77, 93.2, 'imbus M10', '10 x 8 x 10 cm', '', '', 860, '9a.PNG', '9b.PNG', '9c.PNG', '9d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(315, '16 x 8 x 9 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 10', 'XL - 10', 0, 0, 77, 93.2, 'imbus M10', '16 x 8 x 9 cm', '', '', 800, '10a.PNG', '10b.PNG', '10c.PNG', '10d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(316, '15 x 9 x 7 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 11', 'XL - 11', 0, 0, 77, 93.2, 'imbus M10', '15 x 9 x 7 cm', '', '', 760, '11a.PNG', '11b.PNG', '11c.PNG', '11d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(317, '14 x 13 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 12', 'XL - 12', 0, 0, 77, 93.2, 'imbus M10', '14 x 13 x 8 cm', '', '', 900, '12a.PNG', '12b.PNG', '12c.PNG', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(318, '16 x 12 x 7 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 13', 'XL - 13', 0, 0, 77, 93.2, 'imbus M10', '16 x 12 x 7 cm', '', '', 860, '13a.PNG', '13b.PNG', '13c.PNG', '13d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(319, '17 x 10 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 14', 'XL - 14', 0, 0, 77, 93.2, 'imbus M10', '17 x 10 x 8 cm', '', '', 830, '14a.PNG', '14b.PNG', '14c.PNG', '14d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(320, '16 x 11 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 15', 'XL - 15', 0, 0, 77, 93.2, 'imbus M10', '16 x 11 x 8 cm', '', '', 900, '15a.PNG', '15b.PNG', '15c.PNG', '15d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(321, '10 x 13 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 16', 'XL - 16', 0, 0, 77, 93.2, 'imbus M10', '10 x 13 x 8 cm', '', '', 710, '16a.PNG', '16b.PNG', '16c.PNG', '16d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(322, '17 x 10 x 7 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 17', 'XL - 17', 0, 0, 77, 93.2, 'imbus M10', '17 x 10 x 7 cm', '', '', 890, '17a.PNG', '17b.PNG', '17c.PNG', '17d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(323, '12 x 13 x 7 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 18', 'XL - 18', 0, 0, 77, 93.2, 'imbus M10', '12 x 13 x 7 cm', '', '', 820, '18a.PNG', '18b.PNG', '18c.PNG', '18d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(324, '15 x 9 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 19', 'XL - 19', 0, 0, 77, 93.2, 'imbus M10', '15 x 9 x 8 cm', '', '', 840, '19a.PNG', '19b.PNG', '19c.PNG', '19d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(325, '14 x 14 x 8 cm', '', 3.35, 4.05, 'Cap head bolt M10', '', 0, 14, 'XL - 20', 'XL - 20', 0, 0, 77, 93.2, 'imbus M10', '14 x 14 x 8 cm', '', '', 980, '20a.PNG', '20b.PNG', '20c.PNG', '20d.PNG', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(326, 'M10', '', 0, 0, '', '', 1, 22, 'imbus M10', 'imbus M10', 0, 0, 5, 6.05, '', 'M10', '', '', 30, 'm10.png', '', '', '', '', '', 0, 0),
(327, 'ø 3,5', '', 0, 0, '', '', 7, 22, 'Vrut ø 3,5 + hmoždinka', 'Screw ø 3,5 + fastener', 0, 0, 5, 6.05, '', 'ø 3,5', '', '', 30, 'vrutAHmozdinka.png', 'vrut.png', 'hmozdinka.png', '', '', '', 0, 0),
(328, 'ø 5', '', 0, 0, '', '', 9, 22, 'Vrut ø 5 + hmoždinka', 'Screw ø 5 + fastener', 0, 0, 5, 6.05, '', 'ø 5', '', '', 30, 'vrutAHmozdinka.png', 'vrut.png', 'hmozdinka.png', '', '', '', 0, 0),
(329, 'M10', '', 0, 0, '', '', 2, 22, 'imbus M10 se zapuštěnou hlavou', 'imbus M10 cap head bolt', 0, 0, 5, 6.05, '', 'M10', '', '', 30, 'm10_zapusteny.png', '', '', '', '', '', 0, 0),
(330, 'ø 4', '', 0, 0, '', '', 8, 22, 'vrut ø 4 + hmoždinka', 'Screw ø 4 + fastener', 0, 0, 5, 6.05, '', 'ø 4', '', '', 30, 'vrutAHmozdinka.png', 'vrut.png', 'hmozdinka.png', '', '', '', 0, 0),
(331, 'S - L', '', 0, 0, '', '', 0, 21, 'Triko - Lezec', 'T-shirt - Climber', 0, 0, 200, 242, '', 'S - L', '100% bavlna<br>barvy:<br>zelená, oranžová, černá', 'Velikosti upřesněte při odesílání objednávky, jinak budete kontaktováni pro její upřesnění.', 0, '', '', '', '', '', '', 0, 0),
(332, 'ø 10cm/6cm', '', 0, 0, '', '', 0, 8, 'Dvojkoule - L', 'Doubleball - L', 0, 0, 0, 0, 'Imbus M10', 'ø 10cm/6cm', '', '', 900, 'dvojkoule.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(333, '7 x 9.5 x 5 cm', '', 3.43, 4.15, 'Cap head bolt M10', '', 0, 7, 'Ježek', 'Hedgehog', 0, 0, 79, 95.6, 'imbus šroub M10', '7 x 9.5 x 5 cm', '', 'Velikost S', 300, 'jezek1.png', 'jezek2.png', 'jezek3.png', '', '', '', 0, 0),
(334, 'ø 12cm/8cm', '', 0, 0, '', '', 0, 8, 'Dvojkoule - XL', 'Doubleball - XL', 0, 0, 0, 0, 'Imbus M10', 'ø 12cm/8cm', '', '', 1600, 'dvojkoule.png', '', '', '', '', '326_;_335_;_336_;_337_;_338', 0, 0),
(335, 'M10', '', 0.15, 0.18, '', '', 3, 22, 'narážecí matice', 'pusher nut', 0, 0, 3, 3, '', 'M10', '', '', 15, 'narazeci_matice.png', 'narazeci_matice2.png', '', '', '', '', 0, 0),
(336, 'M10', '', 0.15, 0.18, '', '', 4, 22, 'pouzdro', 'housing', 0, 0, 3, 3, '', 'M10', '', '', 15, 'pouzdro.png', 'pouzdro2.png', '', '', '', '', 0, 0),
(337, 'M10', '', 0.5, 0.61, '', '', 5, 22, 'mosazná kotva', 'brass anchor', 0, 0, 11, 13, '', 'M10', '', '', 20, 'mosazna_kotva.png', 'mosazna_kotva2.png', '', '', '', '', 0, 0),
(338, 'M10', '', 0.5, 0.61, '', '', 6, 22, 'ocelová kotva', 'steel anchor', 0, 0, 11, 13, '', 'M10', '', '', 20, 'ocelova_kotva.png', 'ocelova_kotva2.png', '', '', '', '', 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Vypisuji data pro tabulku `mailing`
--

INSERT INTO `mailing` (`id`, `mail`, `active`, `firstname`, `lastname`, `gender`, `language`, `timestamp`) VALUES
(2, 'ununik@gmail.com', 1, 'Martin', 'Pribyl', 'm', 'cz', 1456468735),
(3, 'kkkk@sadda', 0, 'Klára', 'haha', 'm', 'cz', 1456501688),
(4, 'dfgdag', 0, 'Klára', 'P?ibylová', 'm', 'cz', 1456502306);

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
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=23 ;

--
-- Vypisuji data pro tabulku `subcategory`
--

INSERT INTO `subcategory` (`id`, `category`, `cz`, `en`, `active`) VALUES
(1, 1, 'Mikro chyty', 'Micro holds', 0),
(2, 1, 'Mini chyty', 'Mini holds', 0),
(3, 1, 'S chyty', 'S holds', 1),
(4, 1, 'M Chyty', 'M holds', 1),
(5, 1, 'L chyty', 'L holds', 1),
(6, 1, 'Mega chyty', 'Mega holds', 1),
(7, 1, 'Dětské chyty', 'Children´s holds', 1),
(8, 1, 'Koule chyty', 'Ball holds', 1),
(9, 2, 'Mikro chyty', 'Micro holds', 0),
(10, 2, 'Mini chyty', 'Mini holds', 0),
(11, 2, 'S chyty', 'S holds', 1),
(12, 2, 'M chyty', 'M holds', 1),
(13, 2, 'L chyty', 'L holds', 1),
(14, 2, 'XL chyty', 'XL holds', 1),
(15, 2, 'XXL chyty', 'XXL holds', 1),
(16, 2, 'Mega chyty', 'Mega holds', 1),
(17, 2, 'Lišty', 'Ledges', 1),
(18, 2, 'Drytooling', 'Drytooling', 1),
(19, 2, 'Posilovací panely', 'Boards', 1),
(20, 3, 'Přírodní chyty', 'Natural´s holds', 1),
(21, 5, 'Trika', 'T-shirts', 1),
(22, 4, 'Spojovací materiál', 'Hardware', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `voucher`
--

CREATE TABLE IF NOT EXISTS `voucher` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `titleEN` varchar(255) NOT NULL,
  `from` int(20) NOT NULL,
  `to` int(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `used` tinyint(1) NOT NULL,
  `forOnlyOne` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
