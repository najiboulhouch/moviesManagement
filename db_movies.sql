-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 18 Avril 2014 à 05:52
-- Version du serveur :  5.6.12-log
-- Version de PHP :  5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `moviesManagement`
--
CREATE DATABASE IF NOT EXISTS `moviesManagement` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `moviesManagement`;

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `resume` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acteurPrincipal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anneeSortie` date NOT NULL,
  `langue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `realisateur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acteursescondaires` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duree` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `resume`, `genre`, `acteurPrincipal`, `anneeSortie`, `langue`, `realisateur`, `acteursescondaires`, `photo`, `duree`) VALUES
(6, 'Harry Potter à l''école des sorciers', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in leo ac nulla tincidunt vehicula at non elit. Sed faucibus bibendum pharetra. Donec et nunc turpis. Nunc feugiat luctus lacus id dictum. Donec congue bibendum porttitor. Maecenas tellus liberosfgzegehr', 'Action', 'Daniel Radcliffe', '2009-02-01', 'Anglais', 'Chris Columbus', 'Rupert Grint,Emma Watson,Robbie Coltrane,Richard Harris', 'bkok59tm.jpg', '160'),
(7, 'Titanic', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in leo ac nulla tincidunt vehicula at non elit. Sed faucibus bibendum pharetra. Donec et nunc turpis. Nunc feugiat luctus lacus id dictum. Donec congue bibendum porttitor. Maecenas tellus libero', 'Romantique', 'Leonardo DiCaprio', '2009-01-01', 'Anglais', 'james cameroun', 'Kate Winslet,Billy Zane,Kathy Bates,Gloria Stuart', 'titanic-bateau.jpg', '190'),
(8, 'Harry Potter et la Chambre des secrets', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in leo ac nulla tincidunt vehicula at non elit. Sed faucibus bibendum pharetra. Donec et nunc turpis. Nunc feugiat luctus lacus id dictum. Donec congue bibendum porttitor. Maecenas tellus liberosfgzegehr', 'Action', 'Daniel Radcliffe', '2004-11-01', 'Anglais', 'Chris Columbus', 'Rupert Grint,Emma Watson,Robbie Coltrane,Richard Harris', 'h2.jpg', '160'),
(9, 'Avatar', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Action', 'Sam Worthington', '2009-01-01', 'Anglais', 'james cameron', 'Zoe Saldana,Sigourney Weaver,Stephen Lang,Michelle Rodriguez,Giovanni Ribisi,Wes Studi', 'Avatar-2-3-4.jpg', '160'),
(10, 'Road to Kabul', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Comédie', 'Rabie Kati, Rafik Boubker', '2012-04-01', 'Arabe', 'Brahim Chkiri', 'Amine Naji, Younes Bouab, Aziz Dadas', 'road-to-kabul.jpg', '128'),
(11, 'Zéro', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Drama', 'Younes Bouab', '2013-09-17', 'Arabe', 'Nour-Eddine Lakhmari', 'Mohamed Majd ; Sonia Okacha ; Zineb Samara ; Aziz Dadas', 'marocaine.jpg', '126'),
(12, 'Le Bon, la brute et le truand', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Comédie', 'Clint Eastwood', '2009-11-01', 'Anglais', 'Sergio Leone', 'Eli Wallach,Lee Van Cleef,Luigi Pistilli', 'affiche.jpg', '126'),
(13, 'Tacones lejanos', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Drama', 'Victoria Abril', '2009-01-01', 'Espagnol', 'Pedro Almodóvar', 'Rocío Muñoz,Marisa Paredes,Miguel Bosé,Anna Lizarán', '18452711.jpg', '154'),
(14, 'Omar m''a tuer', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Romantique', 'Sami Bouajila', '2012-06-07', 'Français', 'Roschdy Zem', 'Denis Podalydès,Maurice Bénichou,Salomé Stévenin,Nozha Khouadra', 'omar.jpg', '179'),
(15, 'Pirates des Caraïbes, la malédiction du Black Pearl', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Action', 'Johnny Depp', '2009-01-01', 'Anglais', 'Gore Verbinski', 'Geoffrey Rush,Orlando Bloom,Keira Knightley,Jack Davenport', 'Pirates.jpg', '145'),
(16, 'Pirates of the Caribbean: Dead Man''s Chest', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Action', 'Johnny Depp', '2009-01-13', 'Anglais', 'Gore Verbinski', 'Orlando Bloom,Keira Knightley,Stellan Skarsgård,Bill Nighy,Jack Davenport,Kevin R. McNally,Jonathan Pryce', 'Pirates_of.jpg', '190'),
(17, 'Fast and Furious 6', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Action', 'Vin Diesel', '2012-01-01', 'Anglais', 'Justin Lin', 'Paul Walker,Dwayne Johnson,Michelle Rodríguez', 'bg.jpg', '129'),
(18, 'Fast and Furious 5', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Action', 'Vin Diesel', '2011-12-01', 'Anglais', 'Justin Lin', 'Paul Walker,Dwayne Johnson,Michelle Rodríguez', 'fast.jpg', '127'),
(19, 'Fast and Furious 4', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Action', 'Vin Diesel', '2011-12-01', 'Anglais', 'Justin Lin', 'Paul Walker,Dwayne Johnson,Michelle Rodríguez', 'fast.jpg', '133'),
(20, 'Fast and Furious 3', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Action', 'Vin Diesel', '2011-12-01', 'Anglais', 'Justin Lin', 'Paul Walker,Dwayne Johnson,Michelle Rodríguez', 'ima.jpg', '124'),
(21, 'Wanted', 'Etiam lacinia turpis ac fermentum ullamcorper. Nulla in elit tortor. Nulla facilisi. Proin porttitor lobortis risus nec ornare. Nunc adipiscing, tortor sit amet mollis aliquet, libero augue porta ipsum, et', 'Action', 'Angelina Jolie', '2009-01-01', 'Anglais', 'Timur Bekmambetov', 'James McAvoy,Angelina Jolie,Morgan Freeman,Terrence Stamp,Thomas Kretschmann,Common', 'Wanted.jpg', '123'),
(22, 'Mission impossible : Protocole Fantôme', 'Mission impossible : Protocole Fantôme (Mission: Impossible – Ghost Protocol) est un film américain réalisé par Brad Bird et sorti en 2011.\r\nCe film est le quatrième opus de la saga cinématographique inspirée par la série télévisée Mission impossible.', 'Action', 'Tom Cruise', '2012-01-01', 'Anglais', 'Brad Bird', 'Jeremy Renner,Simon Pegg,Paula Patton,Michael Nyqvist,Léa Seydoux', 'ms.jpg', '179'),
(23, 'Mission impossible 3 ', 'Mission impossible : Protocole Fantôme (Mission: Impossible – Ghost Protocol) est un film américain réalisé par Brad Bird et sorti en 2011.\r\nCe film est le quatrième opus de la saga cinématographique inspirée par la série télévisée Mission impossible.', 'Action', 'Tom Cruise', '2009-06-02', 'Anglais', 'Brad Bird', 'Jeremy Renner,Simon Pegg,Paula Patton,Michael Nyqvist,Léa Seydoux', 'MissionImpossible3.jpg', '190'),
(24, 'Mission impossible 2', 'Mission impossible : Protocole Fantôme (Mission: Impossible – Ghost Protocol) est un film américain réalisé par Brad Bird et sorti en 2011.\r\nCe film est le quatrième opus de la saga cinématographique inspirée par la série télévisée Mission impossible.', 'Action', 'Tom Cruise', '2009-06-02', 'Anglais', 'Brad Bird', 'Jeremy Renner,Simon Pegg,Paula Patton,Michael Nyqvist,Léa Seydoux', 'MissionImpossible4.jpg', '100'),
(25, 'Mission impossible 1', 'Mission impossible : Protocole Fantôme (Mission: Impossible – Ghost Protocol) est un film américain réalisé par Brad Bird et sorti en 2011.\r\nCe film est le quatrième opus de la saga cinématographique inspirée par la série télévisée Mission impossible.', 'Action', 'Tom Cruise', '2009-06-02', 'Anglais', 'Brad Bird', 'Jeremy Renner,Simon Pegg,Paula Patton,Michael Nyqvist,Léa Seydoux', 'mission_impossible_belgian.jpg', '122');

-- --------------------------------------------------------

--
-- Structure de la table `table_user`
--

CREATE TABLE IF NOT EXISTS `table_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datenaissance` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C745968292FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_C7459682A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `table_user`
--

INSERT INTO `table_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `nom`, `prenom`, `datenaissance`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'admin@gmail.com', 1, 'szh8hl778j4sco0sg4o8scg80sswgg0', 'tpJfXy9KEHF2RGB5dNiV/kosuBiIvlVfxiy33xZf9BSd06N8M6On0aM8kxBneLIqQcAmi7lRG4JsBjObCN4trQ==', '2014-04-18 05:44:34', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'Ahfer', 'Omar', '2014-04-22'),
(8, 'user1', 'user1', 'user1.test@gmail.com', 'user1.test@gmail.com', 1, '5xpfxn66g3okssgsko04c8gwo004cs', '5hWM57IA6Uljnvq/V6MCJ5/R1YDh0Dr2A+Qc3bs11gTVNgqIOVzT1q/RlNbv5L1Y2+6d9ZAqQmOKpTIWeu6DTA==', '2014-04-18 05:41:20', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'User1', 'User12', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
