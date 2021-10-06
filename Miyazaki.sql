CREATE DATABASE IF NOT EXISTS miyazaki;

CREATE TABLE heros (
    id  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    film INT NOT NULL,
    description VARCHAR(255),
    role VARCHAR(255)
);

CREATE TABLE films (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    annee INT (11),
    image VARCHAR(255),
    note VARCHAR(255),
    trailer VARCHAR(255)
);

CREATE TABLE genres(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    genre VARCHAR(255)
    
);

CREATE TABLE genre_film(
    id_genre INT NOT NULL,
    id_film INT NOT NULL
);

ALTER TABLE heros
ADD FOREIGN KEY (film) REFERENCES films(id);

ALTER TABLE genre_film
ADD FOREIGN KEY (id_genre) REFERENCES genres(id);

ALTER TABLE genre_film
ADD FOREIGN KEY (id_film) REFERENCES films(id);

ALTER TABLE heros AUTO_INCREMENT=1;
ALTER TABLE films AUTO_INCREMENT=1;
ALTER TABLE genres AUTO_INCREMENT=1;

INSERT INTO films (nom,annee,note,image,trailer)
VALUES 
    ('Le chateau ambulant','2004',"inspiré de l'ésthétique steampunk",'https://upload.wikimedia.org/wikipedia/en/a/a0/Howls-moving-castleposter.jpg','https://www.youtube.com/watch?v=hhdopPrI68Q'),
    ('Mon voisin totoro','1988','Ode à la découverte de la nature par de jeunes filles','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/My_Neighbor_Totoro_Logo_fr.svg/981px-My_Neighbor_Totoro_Logo_fr.svg.png','https://www.youtube.com/watch?v=jD-6_0h4KwM&amp;t=0s'),
    ('LE VOYAGE DE CHIHIRO','2002',"L'héroisme d'une fille perdu au milieu d'un monde imaginaire",'https://upload.wikimedia.org/wikipedia/en/d/db/Spirited_Away_Japanese_poster.png',"https://www.youtube.com/watch?v=bWrPauTUHd4"),
    ('Princesse Mononoke','1997',"Voyage au sein d'un pays qui place l'industrie avant le respect de la nature",'https://upload.wikimedia.org/wikipedia/en/8/8c/Princess_Mononoke_Japanese_poster.png',"https://www.youtube.com/watch?v=3JG6JDuZUoc"),
    ('Porco Rosso','1992',"Histoire du porc vaillant surnomé le porc rouge dans l'époque des hydravion",'https://upload.wikimedia.org/wikipedia/en/f/fc/Porco_Rosso_%28Movie_Poster%29.jpg','https://www.youtube.com/watch?v=ZKWQiT1O0zg&amp;t=0s');

INSERT INTO genres (genre)
VALUES
    ('drame'),
    ('fantasy'),
    ('aventure'),
    ('heroisme'),
    ('aviation'),
    ('pirate'),
    ('thriller');

INSERT INTO heros (nom,film,description,role)
VALUES
    ('Jenkins Pendragon','1','Possède le chateau ambulant','sorcier'),
    ('Sophie Hatter','1','Innocente jeune fille qui se fait transformer par la sorcière','héroine'),
    ('Totoro','2','Esprit légendaire de la forêt.','emblème du studio Ghibli'),
    ('Catbus','2','Un grand chat à douze pates qui sert de transport en commun','Bus'),
    ('Satsuki Kusakabe','2','La fille ainée de la famille Kusakabe.','Héroine'),
    ('Madame Gina','5','Chante admirablement bien. Est veuve 3 fois.',"Chanteuse d'opéra"),
    ('Marco Pagot','5','Un humain qui a été transformé en cochon. Est un chasseur de prime connu sous le nom Porco Rosso','Hero'),
    ('Mononoke','4','Princesse élevée par les loups. Se destine a protéger la foret de la menace humaine','Heroine'),
    ('Calcifer','1','Feu vivant qui permet au chateaud de se déplacer','feu');

INSERT INTO genre_film(id_genre,id_film)
VALUES
    ('1','1'),
    ('2','1'),
    ('3','1'),
    ('3','2'),
    ('2','3'),
    ('3','3'),
    ('2','4'),
    ('3','4'),
    ('4','4'),
    ('3','5'),
    ('5','5'),
    ('6','5');
    