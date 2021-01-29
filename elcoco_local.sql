-- phpMyAdmin SQL Dump
-- version 2.11.11.2
-- http://www.phpmyadmin.net
--
-- Počítač: localhost:3307
-- Vygenerováno: Úterý 16. ledna 2018, 09:55
-- Verze MySQL: 5.0.96
-- Verze PHP: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `elcoco`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `artikl`
--

CREATE TABLE IF NOT EXISTS `artikl` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `artikl` varchar(20) default NULL,
  `cil_zmetky` double default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `articl_articl` (`artikl`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `cena`
--

CREATE TABLE IF NOT EXISTS `cena` (
  `artikl_id` int(10) unsigned NOT NULL,
  `strediska_id` int(10) unsigned NOT NULL,
  `mat` double default NULL,
  `lab` double default NULL,
  `over` double default NULL,
  KEY `cena_FKIndex1` (`artikl_id`),
  KEY `cena_FKIndex2` (`strediska_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `listy`
--

CREATE TABLE IF NOT EXISTS `listy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `strediska_id` int(10) unsigned default NULL,
  `users_id` int(10) unsigned default NULL,
  `datum_vytvoreni` datetime default NULL,
  `datum` date default NULL,
  `smena` varchar(10) default NULL,
  `smena_cislo` int(2) default NULL,
  `auto` tinyint(1) default NULL,
  `din` tinyint(1) default NULL,
  `smena2` varchar(10) default NULL,
  `smena2_cislo` mediumint(2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `listy_FKIndex1` (`users_id`),
  KEY `listy_FKIndex2` (`strediska_id`),
  KEY `datum` (`datum`),
  KEY `smena` (`smena`),
  KEY `smena_cislo` (`smena_cislo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `log_normy`
--

CREATE TABLE IF NOT EXISTS `log_normy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_log` int(10) unsigned default NULL,
  `strediska_id` int(10) unsigned default NULL,
  `serie` varchar(4) default NULL,
  `ks_hod` double default NULL,
  `username` varchar(90) default NULL,
  `dt_akce` datetime default NULL,
  `akce` varchar(250) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `log_product_line`
--

CREATE TABLE IF NOT EXISTS `log_product_line` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_log` int(10) unsigned default NULL,
  `product_line` varchar(200) default NULL,
  `username` varchar(90) default NULL,
  `dt_akce` datetime default NULL,
  `akce` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `log_serie2product_line`
--

CREATE TABLE IF NOT EXISTS `log_serie2product_line` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_log` int(10) unsigned default NULL,
  `product_line_id` int(10) unsigned default NULL,
  `serie` varchar(4) default NULL,
  `username` varchar(90) default NULL,
  `dt_akce` datetime default NULL,
  `akce` varchar(250) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `normy`
--

CREATE TABLE IF NOT EXISTS `normy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `strediska_id` int(10) unsigned NOT NULL,
  `serie` varchar(4) default NULL,
  `ks_hod` double default NULL,
  PRIMARY KEY  (`id`),
  KEY `normy_FKIndex1` (`strediska_id`),
  KEY `serie` (`serie`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `operatori`
--

CREATE TABLE IF NOT EXISTS `operatori` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `jmeno` varchar(250) default NULL,
  `os_cislo` varchar(20) default NULL,
  `smazany` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `operatori_100_procent`
--

CREATE TABLE IF NOT EXISTS `operatori_100_procent` (
  `zaznamy_aql_id` int(10) unsigned NOT NULL,
  `operatori_id` int(10) unsigned NOT NULL,
  KEY `Table_17_FKIndex1` (`operatori_id`),
  KEY `Table_17_FKIndex2` (`zaznamy_aql_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `product_line`
--

CREATE TABLE IF NOT EXISTS `product_line` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `product_line` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `serie2product_line`
--

CREATE TABLE IF NOT EXISTS `serie2product_line` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `product_line_id` int(10) unsigned NOT NULL,
  `serie` varchar(4) default NULL,
  PRIMARY KEY  (`id`),
  KEY `serie2product_line_FKIndex1` (`product_line_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` varchar(80) NOT NULL,
  `time` int(10) unsigned default NULL,
  `timeout` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `slc`
--

CREATE TABLE IF NOT EXISTS `slc` (
  `artikl` varchar(50) NOT NULL,
  `nazev` varchar(250) NOT NULL,
  `hodnoty` text
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `slc_artikl`
--

CREATE TABLE IF NOT EXISTS `slc_artikl` (
  `artikl` varchar(20) NOT NULL,
  UNIQUE KEY `slc_artikl_index32845` (`artikl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `strediska`
--

CREATE TABLE IF NOT EXISTS `strediska` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `stredisko` varchar(30) NOT NULL,
  `popis` varchar(250) default NULL,
  `zobrazit` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `strediska_id` int(11) default NULL,
  `username` varchar(80) default NULL,
  `pass_word` varchar(65) default NULL,
  `jmeno` varchar(100) default NULL,
  `prijmeni` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `timeout` int(6) unsigned default NULL,
  `accesslevel` smallint(5) unsigned default NULL,
  `acces_next_strediska` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `zaznamy`
--

CREATE TABLE IF NOT EXISTS `zaznamy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `operatori_id` int(10) unsigned default NULL,
  `listy_id` int(10) unsigned NOT NULL,
  `c_zakazky` varchar(200) default NULL,
  `artikl` varchar(20) default NULL,
  `zkontrolovano` int(7) unsigned default NULL,
  `zmetky` int(7) unsigned default NULL,
  `cas_na_kontrolu` double default NULL,
  `c_nestu` varchar(200) default NULL,
  `kontrola` enum('1','2') default NULL,
  `dt_kod` varchar(200) default NULL,
  `poznamka` text,
  `viceprace` int(11) default NULL,
  `viceprace_poznamka` text,
  `viceprace_soubor` varchar(200) default NULL,
  `viceprace_soubor_nazev` varchar(250) default NULL,
  PRIMARY KEY  (`id`),
  KEY `zaznamy_FKIndex1` (`listy_id`),
  KEY `zaznamy_FKIndex2` (`operatori_id`),
  KEY `artikl` (`artikl`),
  KEY `kontrola` (`kontrola`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `zaznamy_aql`
--

CREATE TABLE IF NOT EXISTS `zaznamy_aql` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `operatori_id` int(10) unsigned default NULL,
  `listy_id` int(10) unsigned NOT NULL,
  `c_zakazky` varchar(200) default NULL,
  `artikl` varchar(20) default NULL,
  `vyroba_datum` varchar(100) default NULL,
  `pocet_kusu` int(10) unsigned default NULL,
  `pocet_kusu_kontrola` int(10) unsigned default NULL,
  `zmetky` int(10) unsigned default NULL,
  `a` tinyint(1) default NULL,
  `r` tinyint(1) default NULL,
  `firewall` tinyint(1) default NULL,
  `sklad_misto` varchar(200) default NULL,
  `poznamka` text,
  `smena` varchar(10) default NULL,
  `smena_cislo` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `zaznamy_aql_FKIndex1` (`listy_id`),
  KEY `zaznamy_aql_FKIndex2` (`operatori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `zmetky`
--

CREATE TABLE IF NOT EXISTS `zmetky` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `strediska_id` int(11) default NULL,
  `kod` varchar(100) NOT NULL,
  `nazev` varchar(255) NOT NULL,
  `popis` varchar(255) default NULL,
  `smazany` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `strediska_id` (`strediska_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `zmetky2zaznam`
--

CREATE TABLE IF NOT EXISTS `zmetky2zaznam` (
  `zaznamy_id` int(10) unsigned NOT NULL,
  `zmetky_id` int(10) unsigned NOT NULL,
  `pocet` int(7) unsigned default NULL,
  `poznamka` text,
  KEY `zmetky2zaznam_FKIndex1` (`zmetky_id`),
  KEY `zmetky2zaznam_FKIndex2` (`zaznamy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabulky `zmetky2zaznam_aql`
--

CREATE TABLE IF NOT EXISTS `zmetky2zaznam_aql` (
  `zmetky_id` int(10) unsigned NOT NULL,
  `zaznamy_aql_id` int(10) unsigned NOT NULL,
  `pocet` int(7) default NULL,
  `poznamka` text,
  KEY `zmetky2zaznam_aql_FKIndex1` (`zaznamy_aql_id`),
  KEY `zmetky2zaznam_aql_FKIndex2` (`zmetky_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `listy`
--
ALTER TABLE `listy`
  ADD CONSTRAINT `listy_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `listy_ibfk_2` FOREIGN KEY (`strediska_id`) REFERENCES `strediska` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `normy`
--
ALTER TABLE `normy`
  ADD CONSTRAINT `normy_ibfk_1` FOREIGN KEY (`strediska_id`) REFERENCES `strediska` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `operatori_100_procent`
--
ALTER TABLE `operatori_100_procent`
  ADD CONSTRAINT `operatori_100_procent_ibfk_1` FOREIGN KEY (`operatori_id`) REFERENCES `operatori` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `operatori_100_procent_ibfk_2` FOREIGN KEY (`zaznamy_aql_id`) REFERENCES `zaznamy_aql` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `serie2product_line`
--
ALTER TABLE `serie2product_line`
  ADD CONSTRAINT `serie2product_line_ibfk_1` FOREIGN KEY (`product_line_id`) REFERENCES `product_line` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `zaznamy`
--
ALTER TABLE `zaznamy`
  ADD CONSTRAINT `zaznamy_ibfk_1` FOREIGN KEY (`listy_id`) REFERENCES `listy` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `zaznamy_ibfk_2` FOREIGN KEY (`operatori_id`) REFERENCES `operatori` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `zaznamy_aql`
--
ALTER TABLE `zaznamy_aql`
  ADD CONSTRAINT `zaznamy_aql_ibfk_1` FOREIGN KEY (`listy_id`) REFERENCES `listy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `zaznamy_aql_ibfk_2` FOREIGN KEY (`operatori_id`) REFERENCES `operatori` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `zmetky2zaznam`
--
ALTER TABLE `zmetky2zaznam`
  ADD CONSTRAINT `zmetky2zaznam_ibfk_1` FOREIGN KEY (`zmetky_id`) REFERENCES `zmetky` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `zmetky2zaznam_ibfk_2` FOREIGN KEY (`zaznamy_id`) REFERENCES `zaznamy` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `zmetky2zaznam_aql`
--
ALTER TABLE `zmetky2zaznam_aql`
  ADD CONSTRAINT `zmetky2zaznam_aql_ibfk_1` FOREIGN KEY (`zaznamy_aql_id`) REFERENCES `zaznamy_aql` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `zmetky2zaznam_aql_ibfk_2` FOREIGN KEY (`zmetky_id`) REFERENCES `zmetky` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
