-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 13 Décembre 2022 à 15:08
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `RH`
--

-- --------------------------------------------------------

--
-- Structure de la table `emplye`
--

CREATE TABLE IF NOT EXISTS `emplye` (
  `num_employe` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` text NOT NULL,
  `sexe` char(2) NOT NULL,
  `salaire` int(11) NOT NULL,
  `typecontrat` varchar(10) NOT NULL,
  `fonction` varchar(20) NOT NULL,
  `site` varchar(20) NOT NULL,
  `date_embauche` int(11) NOT NULL,
  `date_naissance` int(11) NOT NULL,
  `nosrv` int(11) NOT NULL,
  PRIMARY KEY (`num_employe`),
  KEY `nosrv` (`nosrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `emplye`
--


-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `num_interv` int(11) NOT NULL,
  `num_proj` int(11) NOT NULL,
  `num_employe` int(11) NOT NULL,
  `nb_heures` int(11) NOT NULL,
  PRIMARY KEY (`num_interv`),
  KEY `num_proj` (`num_proj`,`num_employe`),
  KEY `num_employe` (`num_employe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--


-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `noprojet` int(11) NOT NULL,
  `libelle_projet` text NOT NULL,
  `nosrv` int(11) NOT NULL,
  PRIMARY KEY (`noprojet`),
  KEY `nosrv` (`nosrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--


-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `nosrv` int(11) NOT NULL,
  `nom_services` text NOT NULL,
  PRIMARY KEY (`nosrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `emplye`
--
ALTER TABLE `emplye`
  ADD CONSTRAINT `emplye_ibfk_1` FOREIGN KEY (`nosrv`) REFERENCES `service` (`nosrv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`num_employe`) REFERENCES `emplye` (`num_employe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`num_proj`) REFERENCES `projet` (`noprojet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`nosrv`) REFERENCES `service` (`nosrv`) ON DELETE CASCADE ON UPDATE CASCADE;
