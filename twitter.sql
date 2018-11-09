-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 09 nov. 2018 à 01:30
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `twitter`
--

-- --------------------------------------------------------

--
-- Structure de la table `tweet`
--

DROP TABLE IF EXISTS `tweet`;
CREATE TABLE IF NOT EXISTS `tweet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `hashtags` text,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tweet`
--

INSERT INTO `tweet` (`id`, `author`, `message`, `hashtags`, `date`) VALUES
(1, 'Pierre', 'Coucou', '#test', '2018-10-10 00:00:00'),
(2, 'Benoit', 'Coucou', '#test', '2018-11-08 00:00:00'),
(3, 'Benoit', 'Coucou', '#test', '2018-10-16 15:55:01'),
(4, 'Benoit', 'Coucou', '#test', '2018-10-16 15:55:01'),
(5, 'Edith', 'Coucou', '#test', '2018-10-16 15:55:01'),
(6, 'Jordan', 'Coucou', NULL, '2018-10-16 15:55:01'),
(7, 'Jordan', 'Coucou', '#web', '2018-10-16 15:55:01'),
(8, 'Jordan', 'Coucou', '#web', '2018-10-16 15:55:01'),
(9, 'Jordan', 'Coucou', '#web', '2018-10-16 15:55:01'),
(10, 'Jordan', 'Coucou', '#web', '2018-10-16 15:55:01'),
(11, 'Pierre', 'Coucou', '#test', '2018-10-16 15:55:01'),
(12, 'Pierre', 'Coucou', '#test', '2018-10-16 15:55:01'),
(13, 'Benoit', 'Coucou', '#test', '2018-10-16 15:55:01'),
(14, 'Edith', 'Coucou', '#back', '2018-10-16 15:55:01'),
(15, 'Benoit', 'Coucou', '#test', '2018-10-16 15:55:01'),
(16, 'Edith', 'Coucou', '#test', '2018-10-16 15:55:01'),
(17, 'Pierre', 'Coucou', '#test', '2018-10-16 15:55:01'),
(18, 'Benoit', 'Coucou', '#test', '2018-10-16 15:55:01'),
(19, 'Edith', 'Coucou', '#back', '2018-10-16 15:55:01'),
(20, 'Pierre', 'Coucou', '#test', '2018-10-16 15:55:01'),
(21, 'Benoit', 'Coucou', '#test', '2018-10-16 15:55:01'),
(22, 'Benoit', 'Coucou', '#test', '2018-10-16 15:55:01'),
(23, 'Benoit', 'Coucou', '#test', '2018-10-16 15:55:01'),
(24, 'Jordan', 'Coucou', '#web', '2018-10-16 15:55:01'),
(25, 'Jordan', 'Coucou', '#web', '2018-10-16 15:55:01'),
(26, 'Pierre', 'Coucou', '#test', '2018-10-16 15:55:01'),
(27, 'Edith', 'Coucou', '#back', '2018-10-16 15:55:01'),
(28, 'Jordan', 'Coucou', '#web', '2018-10-16 15:55:01'),
(29, 'Pierre', 'Coucou', '#test', '2018-10-16 15:55:01'),
(30, 'Pierre', 'Coucou', '#test', '2018-10-16 15:55:01'),
(31, 'Jordan', 'Coucou', '#web', '2018-10-16 15:55:01'),
(32, 'Joe', 'Coucou', '#toto', '2018-11-08 20:51:04'),
(33, 'Joe', 'Coucou', '#toto', '2018-11-08 20:53:40'),
(35, 'Joe', 'Coucou', NULL, '2018-11-08 21:03:55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
