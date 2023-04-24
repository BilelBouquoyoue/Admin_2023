CREATE TABLE Jeux (
    ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL,
    Description VARCHAR(500) NOT NULL,
    Prix float NOT NULL
);
INSERT INTO Jeux VALUES (NULL, 'Mikado', "Le mikado est un jeu d'adresse, praticable de 2 à 6 joueurs. Il se compose d'un ensemble de baguettes, longues d'environ 20 cm et effilées aux extrémités, que l'on laisse tomber de façon qu'elles s'enchevêtrent, avant de les retirer, une à une, sans faire bouger les autres", 25);
INSERT INTO Jeux VALUES (NULL, 'Jeu des petits cheveaux', 'Le jeu des petits chevaux ou jeu de dada est un jeu de société qui consiste à déplacer plusieurs pions (dits petits chevaux) par joueur (entre 1 et 4 par joueurs en général), et à les emmener sur la partie réservée à leur couleur. Le premier joueur qui arrive sur la dernière case remporte la partie', 15);
INSERT INTO Jeux VALUES (NULL, 'Virolon', 'Le virolon se joue grâce à un plateau rond et en légère cuve, une toupie et de six petites billes. Il y a douze trous sur le plateau, sur lesquels doivent s''arrêter les billes, éjectées du centre par le mouvement de la toupie.Un plateau de virolon. Chaque trou a une valeur indiquée, par exemple de 0 à 1 000 points.', 30);
