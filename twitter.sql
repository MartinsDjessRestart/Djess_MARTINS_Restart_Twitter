-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 07 mai 2023 à 20:50
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `twitter`
--

-- --------------------------------------------------------

--
-- Structure de la table `home`
--

CREATE TABLE `home` (
  `id` int NOT NULL,
  `titre` text COLLATE utf8mb4_general_ci NOT NULL,
  `contenu` text COLLATE utf8mb4_general_ci NOT NULL,
  `hashtag` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `home`
--

INSERT INTO `home` (`id`, `titre`, `contenu`, `hashtag`, `auteur`, `publish_date`) VALUES
(62, 'Mon 3e tweet', 'les warriors champion NBA cette année inshala comme on dit mdr', '#warriors', 'starcraf1t', '2023-05-07 06:48:07'),
(63, 'Mon 4e tweet', 'coucou', '#IIM', 'starcraf1t', '2023-05-07 06:48:21'),
(64, 'Mon 5e tweet', 'wow', '#IIM', 'starcraf1t', '2023-05-07 06:48:40'),
(68, 'Mon 6e tweet', 'update, les warriors ont perdu, i want to die 🥲', '#warriors', 'starcraf1t', '2023-05-07 17:42:17'),
(69, 'Le nouveau site de partage TwitTOS', 'bienvenue sur notre nouveau site TwitTOS. Amuser vous bien !', '#twitTOS', 'starcraf1t', '2023-05-07 19:16:09'),
(72, 'Game Art', 'Incroyable mon jeu avance !', '#IIM', 'starcraf1t', '2023-05-07 19:28:15');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int NOT NULL,
  `user` int NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mdp` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `user`, `nom`, `email`, `mdp`) VALUES
(15, 4, 'starcraf1t', 'dj4martins@gmail.com', 'Jess');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `home`
--
ALTER TABLE `home`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
