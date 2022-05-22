-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 22 mai 2022 à 19:03
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eatover`
--

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `mail` varchar(1000) NOT NULL,
  `date` varchar(100) NOT NULL,
  `horaire` varchar(10) NOT NULL,
  `adultes` int(11) NOT NULL,
  `enfants` int(11) NOT NULL,
  `Borsh` int(11) NOT NULL,
  `Shishlak` int(11) NOT NULL,
  `Vareniki` int(11) NOT NULL,
  `SpaghettiBolognaise` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `nom`, `prenom`, `tel`, `mail`, `date`, `horaire`, `adultes`, `enfants`, `Borsh`, `Shishlak`, `Vareniki`, `SpaghettiBolognaise`) VALUES
(1, 'testN', 'testP', '0967584833', 'test@test.test', '1111/11/11', '20h00', 1, 0, 1, 0, 0, 0),
(2, 'dzada', 'fezaz', 'fezceafezcez', 'dzedaz@jkj', '2022-05-03', '12h00', 1, 0, 0, 0, 0, 0),
(3, 'dzada', 'fezaz', 'fezceafezcez', 'dzedaz@jkj', '2022-05-03', '12h00', 1, 0, 0, 0, 0, 0),
(4, 'Moreau', 'Souleman', '0761702343', 'Moreau.solo11@gmail.com', '2022-04-27', '12h00', 1, 0, 1, 0, 0, 0),
(5, 'Moreau', 'Souleman', '0761702343', 'Moreau.solo11@gmail.com', '2022-04-27', '12h00', 1, 0, 1, 0, 0, 0),
(6, 'Moreau', 'Souleman', '0761702343', 'Moreau.solo11@gmail.com', '2022-04-27', '12h00', 1, 0, 1, 0, 0, 0),
(7, 'Moreau', 'Souleman', '0761702343', 'Moreau.solo11@gmail.com', '2022-04-27', '12h00', 1, 0, 1, 0, 0, 0),
(8, 'Moreau', 'Souleman', '0761702343', 'Moreau.solo11@gmail.com', '2022-04-27', '12h00', 1, 0, 1, 0, 0, 0),
(9, 'aymen', 'zebi', 'efedededzzdzd', 'Moreau.solo11@gmail.com', '2022-05-09', '20h00', 1, 0, 4, 7, 5, 0),
(10, 'aymen', 'zebi', 'efedededzzdzd', 'Moreau.solo11@gmail.com', '2022-05-09', '20h00', 1, 0, 4, 7, 5, 0),
(11, 'test', 'zebi', 'efedededzzdzd', 'Moreau.solo11@gmail.com', '2022-05-09', '20h00', 1, 0, 4, 7, 5, 0),
(12, 'Moreau', 'Souleman', '0761702343', 'Moreau.solo11@gmail.com', '2022-05-18', '20h00', 1, 0, 1, 1, 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
