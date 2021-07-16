-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 16 juil. 2021 à 10:04
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rando`
--

-- --------------------------------------------------------

--
-- Structure de la table `niveaudifficulte`
--

DROP TABLE IF EXISTS `niveaudifficulte`;
CREATE TABLE IF NOT EXISTS `niveaudifficulte` (
  `idDifficulte` int(11) NOT NULL AUTO_INCREMENT,
  `libelleDifficulte` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idDifficulte`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `niveaudifficulte`
--

INSERT INTO `niveaudifficulte` (`idDifficulte`, `libelleDifficulte`) VALUES
(1, 'Facile'),
(2, 'Moyenne'),
(3, 'Difficile'),
(4, 'Très Difficile');

-- --------------------------------------------------------

--
-- Structure de la table `rando`
--

DROP TABLE IF EXISTS `rando`;
CREATE TABLE IF NOT EXISTS `rando` (
  `id_rando` int(11) NOT NULL AUTO_INCREMENT,
  `createur` text COLLATE utf8_bin NOT NULL,
  `titre` text COLLATE utf8_bin NOT NULL,
  `duree` text COLLATE utf8_bin NOT NULL,
  `distance` decimal(11,0) DEFAULT NULL,
  `denivele` int(11) NOT NULL,
  `p_haut` int(11) NOT NULL,
  `p_bas` int(11) NOT NULL,
  `difficulte` int(11) NOT NULL,
  `retour_pt_depart` tinyint(1) NOT NULL,
  `type` int(11) NOT NULL,
  `region` text COLLATE utf8_bin NOT NULL,
  `commune` text COLLATE utf8_bin NOT NULL,
  `depart` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `photo` text COLLATE utf8_bin NOT NULL,
  `pt_passage` text COLLATE utf8_bin NOT NULL,
  `dt_crea` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rando`),
  KEY `type` (`type`),
  KEY `difficulte` (`difficulte`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `rando`
--

INSERT INTO `rando` (`id_rando`, `createur`, `titre`, `duree`, `distance`, `denivele`, `p_haut`, `p_bas`, `difficulte`, `retour_pt_depart`, `type`, `region`, `commune`, `depart`, `description`, `photo`, `pt_passage`, `dt_crea`) VALUES
(1, 'j.doe@mail.com', 'Le Mont Colombier', '6h20', '10', 1181, 2014, 910, 3, 1, 1, 'Alpes, Bauges', 'Aillon-le-Vieux (73340)', 'N 45.651496° / E 6.095139°', 'Au départ de l\'Étang des Filatures remontez jusqu\'au village de Saint-Vincent-de-Reins en passant par les Fouilloux, le Jovin et retour à l\'étang par l\'impasse de la Bruchevalière, et la Tuilière...', 'lac-montagne.jpg', '1) lat 45.634749 lon 5.9818052) lat 45.618932 lon 5.9688453) lat 45.636789 lon 5.9858394) lat 45.635949 lon 5.9844665) lat 45.635289 lon 5.9832646) lat 45.634749 lon 5.981805', '2021-07-15 14:13:16'),
(2, 'ip@gmail.com', 'Rando1', '2h00', '12', 200, 500, 300, 2, 1, 2, 'Rhone', 'VIllefranche (69400)', 'N 50.263542° / E 7.541892°', 'Vous avancez sur le chemin de la Martiniere', 'lac-montagne.jpg', '1) N 50.263542° / E 7.541892°\r\n2) N 50.263402° / E 7.542392°\r\n3) N 50.233542° / E 7.547892°', '2021-07-15 14:13:16'),
(3, 'gh.ost@gmail.com', 'rando2', '1h', '5', 300, 600, 300, 1, 1, 1, 'Alpes', 'Albiez', 'N 54.213687 / E 9.587961', 'Route de la vallée', 'photo.png', 'N 54.125687 / E 9.587962', '2021-07-15 14:13:16'),
(4, 'gh.ost@gmail.com', 'rando3', '1h30', '8', 500, 1000, 500, 3, 0, 1, 'Alpes', 'Albiez', 'N 54.213687 / E 9.587961', 'Chemin du Mont St-Bernard', 'photo.png', 'N 54.125687 / E 9.587962', '2021-07-15 14:13:16'),
(5, 'ip@gmail.com', 'rando4', '3h', '20', 1000, 500, 1500, 4, 0, 1, 'Alpes', 'Albiez', 'N 54.213687 / E 9.587961', 'Glacier', 'photo.png', 'N 54.126387 / E 9.588762', '2021-07-15 14:13:16'),
(6, 'ip@gmail.com', 'rando5', '30min', '3', 100, 250, 150, 1, 1, 1, 'Rhone', 'Arnas', 'N 24.213677 / E 3.588561', 'chemin de la Tranquillité', 'photo.png', 'N 24.213678 / E 3.588563', '2021-07-15 14:13:16'),
(7, 'gh.ost@gmail.com', 'la Marche', '30min', '1', 50, 100, 150, 1, 0, 2, 'Alpes', 'Albiez', 'N 12.369874 / E 8.147895', 'chemin', 'photo.png', 'N 12.369871 / E 8.147896', '2021-07-15 14:13:16'),
(8, 'ghost@gmail.com', 'Marche longue', '4h', '24', 1000, 2000, 1000, 4, 1, 1, 'Pyrène', 'Loin-de-Rien (56200)', 'N 51.159874° / E 87.258789', 'Long chemin de terre', 'photo.png', 'N 51.259874 / E 87.258780', '2021-07-15 13:47:25');

-- --------------------------------------------------------

--
-- Structure de la table `typerando`
--

DROP TABLE IF EXISTS `typerando`;
CREATE TABLE IF NOT EXISTS `typerando` (
  `idType` int(11) NOT NULL AUTO_INCREMENT,
  `libType` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `typerando`
--

INSERT INTO `typerando` (`idType`, `libType`) VALUES
(1, 'à Pied'),
(2, 'à VTT');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `rando`
--
ALTER TABLE `rando`
  ADD CONSTRAINT `rando_ibfk_1` FOREIGN KEY (`difficulte`) REFERENCES `niveaudifficulte` (`idDifficulte`),
  ADD CONSTRAINT `rando_ibfk_2` FOREIGN KEY (`type`) REFERENCES `typerando` (`idType`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
