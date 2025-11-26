-- Création du schéma bar
CREATE SCHEMA IF NOT EXISTS bar;

-- Utilisation du schéma bar
SET search_path TO bar;

-- =========================================
-- Table Quartier
-- =========================================
CREATE TABLE bar.quartier (
    id_quartier SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
);

-- =========================================
-- Table Établissement
-- =========================================
CREATE TABLE bar.etablissement (
    id_etablissement SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    id_quartier INT NOT NULL,
    FOREIGN KEY (id_quartier) REFERENCES bar.quartier(id_quartier)
);

-- =========================================
-- Table Prix
-- =========================================
CREATE TABLE bar.prix (
    id_prix SERIAL PRIMARY KEY,
    quantite FLOAT NOT NULL
);

-- =========================================
-- Table Bières
-- =========================================
CREATE TABLE bar.biere (
    id_biere SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    id_etablissement INT NOT NULL,
    id_prix INT NOT NULL,
    FOREIGN KEY (id_etablissement) REFERENCES bar.etablissement(id_etablissement),
    FOREIGN KEY (id_prix) REFERENCES bar.prix(id_prix)
);