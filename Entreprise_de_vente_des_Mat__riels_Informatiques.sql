-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 02 déc. 2021 à 11:10
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Entreprise_de vente_des_Matériels_Informatiques`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` int(11) NOT NULL,
  `nom_article` varchar(150) NOT NULL,
  `Caracteristique_article` varchar(150) NOT NULL,
  `Type_article` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Caisse`
--

CREATE TABLE `Caisse` (
  `id_Caisse` int(11) NOT NULL,
  `N°` int(11) NOT NULL,
  `Balance` varchar(150) NOT NULL,
  `Compte` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(150) NOT NULL,
  `adresse_Client` varchar(150) NOT NULL,
  `Catégorie` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Compte`
--

CREATE TABLE `Compte` (
  `id_Compte` int(11) NOT NULL,
  `login` int(11) NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Entreprise`
--

CREATE TABLE `Entreprise` (
  `id_Entreprise` int(11) NOT NULL,
  `Nom_Entreprise` varchar(150) NOT NULL,
  `Tél_Entreprise` varchar(150) NOT NULL,
  `Adresse_Entreprise` varchar(150) NOT NULL,
  `Ville` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Facture`
--

CREATE TABLE `Facture` (
  `id_Facture` int(11) NOT NULL,
  `Designation` varchar(150) NOT NULL,
  `Quantité` int(20) NOT NULL,
  `Prix_Unitaire` varchar(50) NOT NULL,
  `Prix_Total` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Fournisseurs`
--

CREATE TABLE `Fournisseurs` (
  `id_Fournisseurs` int(11) NOT NULL,
  `nom_Fournisseur` varchar(150) NOT NULL,
  `e_mail` varchar(45) NOT NULL,
  `Tél_Fournisseur` varchar(20) NOT NULL,
  `adresse_Fournisseur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Gérant`
--

CREATE TABLE `Gérant` (
  `id_Gérant` int(11) NOT NULL,
  `nom_Gérant` varchar(150) NOT NULL,
  `e_mail_Gérant` varchar(150) NOT NULL,
  `tel_Gérant` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE `Produit` (
  `id_Produit` int(11) NOT NULL,
  `nom_Produit` int(11) NOT NULL,
  `Caracteristique_Produit` int(11) NOT NULL,
  `Type_Produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`);

--
-- Index pour la table `Caisse`
--
ALTER TABLE `Caisse`
  ADD PRIMARY KEY (`id_Caisse`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `Compte`
--
ALTER TABLE `Compte`
  ADD PRIMARY KEY (`id_Compte`);

--
-- Index pour la table `Entreprise`
--
ALTER TABLE `Entreprise`
  ADD PRIMARY KEY (`id_Entreprise`);

--
-- Index pour la table `Facture`
--
ALTER TABLE `Facture`
  ADD PRIMARY KEY (`id_Facture`);

--
-- Index pour la table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  ADD PRIMARY KEY (`id_Fournisseurs`);

--
-- Index pour la table `Gérant`
--
ALTER TABLE `Gérant`
  ADD PRIMARY KEY (`id_Gérant`);

--
-- Index pour la table `Produit`
--
ALTER TABLE `Produit`
  ADD PRIMARY KEY (`id_Produit`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Caisse`
--
ALTER TABLE `Caisse`
  MODIFY `id_Caisse` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Compte`
--
ALTER TABLE `Compte`
  MODIFY `id_Compte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Entreprise`
--
ALTER TABLE `Entreprise`
  MODIFY `id_Entreprise` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Facture`
--
ALTER TABLE `Facture`
  MODIFY `id_Facture` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  MODIFY `id_Fournisseurs` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Gérant`
--
ALTER TABLE `Gérant`
  MODIFY `id_Gérant` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Produit`
--
ALTER TABLE `Produit`
  MODIFY `id_Produit` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
