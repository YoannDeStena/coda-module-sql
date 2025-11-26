-- Utilisation du schéma student
SET search_path TO bar;

-- =========================================
-- Données pour Quartier
-- =========================================
INSERT INTO bar.quartier (nom) VALUES
    ('La Gare'),
    ('Montchapet'),
    ('Maladière'),
    ('Toison Or'),
    ('Grésilles'),
    ('Montmuzard'),
    ('Port du Canal'),
    ('Bourroches'),
    ('Fontaine Ouche'),
    ('Parc');

-- =========================================
-- Données pour Établissement
-- =========================================

INSERT INTO bar.etablissement (nom, id_quartier) VALUES
    ('Archipel', 1),
    ('Delirium', 1),
    ('Trinidad', 2),
    ('Barberousse', 2),
    ('La Gobeleterie', 3),
    ('La Roue Libre', 3),
    ('Casa del Mojito', 4),
    ('Start In', 4),
    ('Buvette des Halles', 5),
    ('Univers', 5),
    ('Beer Country', 6),
    ('The Barbarian Pub', 6),
    ('Ours Pimpant', 7),
    ('Antre II Mondes', 7),
    ('Melkior-Dijon', 8),
    ('Byron Bay', 8),
    ('Flannery', 9),
    ('Dr. Wine', 9),
    ('Rolling Barrels', 10),
    ('Entourloupe', 10);

-- =========================================
-- Données pour Prix
-- =========================================

DO $$
DECLARE
    i INTEGER;
BEGIN
    FOR i IN 1..150 LOOP
        --On saisit une valeur aléatoire pour ne pas à avoir à insérer 150 prix manuellement.
        INSERT INTO bar.prix (quantite) VALUES (FLOOR(random()*(10-5+1)+5)); -
    END LOOP;
END $$;

-- =========================================
-- Données pour Bières
-- =========================================

DO $$
DECLARE
    i INTEGER;
BEGIN
    FOR i IN 1..40 LOOP
        --On évite de saisir des bières manuellement.
        INSERT INTO bar.biere (nom, genre, id_etablissement, id_prix) VALUES 
            ('Bière' || i,
            ('Genre' || i),
            FLOOR(i/4) + 1,
            i);
    END LOOP;
END $$;