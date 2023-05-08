\c postgres;
drop database actuai; 
CREATE DATABASE actuai;
\c actuai;

-- Création de la table "auteurs"
CREATE TABLE auteurs (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Création de la table "articles"
CREATE TABLE articles (
    id SERIAL PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    contenu TEXT NOT NULL,
    image text,
    image_type VARCHAR(10),
    auteur_id INTEGER REFERENCES auteurs(id),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO auteurs (nom, prenom, email, mot_de_passe) 
VALUES ('Doe', 'John', 'johndoe@example.com', 'mdp123'),
       ('Smith', 'Jane', 'janesmith@example.com', 'mdp456'),
       ('Garcia', 'Carlos', 'carlos.garcia@example.com', 'mdp789'),
        ('Andriambelo', 'Tsiky', 'Tsiky@gmail.com', 'cedric');
