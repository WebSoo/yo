-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 10 Janvier 2023 à 11:52
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pays_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE IF NOT EXISTS `commune` (
  `code_commune` int(11) NOT NULL,
  `nom_commune` varchar(20) NOT NULL,
  `population_2010` int(11) NOT NULL,
  `Surface` float NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `numero_departement` int(11) NOT NULL,
  `nom_maire` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`code_commune`),
  KEY `numero_departement` (`numero_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commune`
--

INSERT INTO `commune` (`code_commune`, `nom_commune`, `population_2010`, `Surface`, `longitude`, `latitude`, `numero_departement`, `nom_maire`) VALUES
(29232, 'Quimper', 2000, 1655300, 4841650, 485148, 29, NULL),
(94000, 'Créteil', 300000, 1222220, 2000000, 51220000, 94, NULL),
(94450, 'limeil-brévannes', 5000, 200000, 222222000, 1111110000, 94, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE IF NOT EXISTS `departements` (
  `num_departement` int(11) NOT NULL,
  `nom_departement` varchar(30) NOT NULL,
  `code_region` varchar(11) NOT NULL,
  PRIMARY KEY (`num_departement`),
  KEY `code_region` (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departements`
--

INSERT INTO `departements` (`num_departement`, `nom_departement`, `code_region`) VALUES
(29, 'finistère', 'Bretagne'),
(94, 'val de marne2', 'idf');

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `code_region` varchar(20) NOT NULL,
  `nom_region` varchar(30) NOT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `regions`
--

INSERT INTO `regions` (`code_region`, `nom_region`) VALUES
('Bretagne', 'Bretagne'),
('idf', 'Ile de france');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commune`
--
ALTER TABLE `commune`
  ADD CONSTRAINT `commune_ibfk_1` FOREIGN KEY (`numero_departement`) REFERENCES `departements` (`num_departement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `departements`
--
ALTER TABLE `departements`
  ADD CONSTRAINT `departements_ibfk_1` FOREIGN KEY (`code_region`) REFERENCES `regions` (`code_region`) ON DELETE CASCADE ON UPDATE CASCADE;
