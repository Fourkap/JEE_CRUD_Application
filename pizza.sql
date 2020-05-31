-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 31 mai 2020 à 13:15
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pizza`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_pizza`
--

DROP TABLE IF EXISTS `t_pizza`;
CREATE TABLE IF NOT EXISTS `t_pizza` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `DesignPizz` varchar(255) DEFAULT NULL,
  `TarifPizz` decimal(5,2) DEFAULT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=587 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `t_pizza`
--

INSERT INTO `t_pizza` (`id`, `DesignPizz`, `TarifPizz`, `Description`) VALUES
(580, 'aeaeaearzr', '34.00', 'zrzre'),
(584, 'zdzd', '23.00', 'asadzazdezdzdzzdzdzezed ze z  zez');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
