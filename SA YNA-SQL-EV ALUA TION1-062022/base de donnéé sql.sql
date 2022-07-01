-- REPONSE QUESTION numero 1

   -- creation de la base de donnée 

CREATE DATABASE IF NOT EXISTS biblio ;
USE biblio;

-- creation du table oeuvre
 CREATE TABLE oeuvres(
	No 	 integer primary key auto_increment,
	titre 		varchar(150) not null,
    editeur		varchar(50),
	auteur 		varchar(100),
	annee		integer,
	genre		varchar(30)
) ENGINE InnoDB;

-- création du table adhérents
CREATE TABLE adherents (
	NA		INT PRIMARY KEY AUTO_INCREMENT,
	nom		VARCHAR(30) not null,
	prenom		VARCHAR(30),
	adr		VARCHAR(100) not null,
	tel		CHAR(10)
) ENGINE InnoDB;

-- création du table emprunter 
CREATE TABLE emprunter (
  
`idEmprunter` INT NOT NULL AUTO_INCREMENT,
 
`NO_O` INT NULL DEFAULT NULL,
  
`NA_A` INT NULL DEFAULT NULL,
  
`dateEmp` DATE NOT NULL,
 
`dureeMax` INT NOT NULL,
  
`dateRet` DATE NULL DEFAULT NULL,
 PRIMARY KEY (`idEmprunter`),
  INDEX `dateEmp` (`dateEmp` ASC) VISIBLE,
 
INDEX `FK_NO_idx` (`NO_O` ASC) VISIBLE,
  
INDEX `FK_NA_idx` (`NA_A` ASC) VISIBLE,
 
 CONSTRAINT `FK_NA`
    FOREIGN KEY (`NA_A`)
    REFERENCES `biblio`.`adherents` (`NA`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_NO`
    FOREIGN KEY (`NO_O`)
    REFERENCES `biblio`.`oeuvres` (`NO`)
    ON UPDATE CASCADE)
    ENGINE InnoDB;
    
-- insertion des données de la colonne dans la table oeuvres
INSERT INTO oeuvres (titre ,editeur,auteur ,annee, genre) VALUES 
('Narcisse et Goldmund', 'GF','Hermann HESSE', 1930, 'Roman'),
('Bérénice', 'FOLIO-HACHETTE','Jean RACINE', 1670, 'Théâtre'),
('Prolégomènes à  toute métaphysique future','HACHETTE','Emmanuel KANT', 1783, 'Philosophie'),
('Mon coeur mis à nu','GF - FOLIO -HACHETTE' ,'Charles BAUDELAIRE', 1887, 'Journal'),
('Voyage au bout de la nuit', 'FOLIO - GF','Louis-Ferdinand CELINE', 1932, 'Roman'),
('Les possédés', 'FOLIO','Fedor DOSTOIEVSKI', 1872, 'Roman'),
('Le Rouge et le Noir','GF - HACHETTE','STENDHAL', 1830, 'Roman'),
('Alcibiade', 'FOLIO','Jacqueline de ROMILLY', 1995, 'Roman'),
('Monsieur Teste', 'HACHETTE','Paul VALERY', 1926, 'Roman'),
('Lettres de Gourgounel','GF - HACHETTE' ,'Kenneth WHITE', 1979, 'Récit'),
('Lettres à un jeune poète','HACHETTE - FOLIO' ,'Rainer Maria RILKE', 1929, 'Lettre'),
('Logique sans peine', 'FOLIO','Lewis CAROLL', 1887, 'Logique'),
("L'éthique",'GF' ,'Baruch SPINOZA', 1677, 'Philosophie'),
('Sur le rêve','FOLIO-HACHETTE' ,'Sigmund FREUD', 1900, 'Philosophie'),
('Sens et dénotation','HACHETTE','Gottlob FREGE', 1892, 'Philosophie'),
('Penser la logique','HACHETTE' ,'Gilbert HOTTOIS', 1989, 'Philosophie'),
('Au coeur des ténèbres','FOLIO' ,'Joseph CONRAD',1899, 'Roman'),
('Jan Karski', 'GALLIMARD','Yannick HAENEL', 2009, 'Roman');

-- afficher tout les données de la table  oeuvre 
SELECT * FROM oeuvres;

--  insertion des données de la colonne dans la table adhérents
INSERT INTO adherents (NA,nom,prenom,adr,tel) VALUES 
(1,'Lecoeur','Jeanette','16 rue de la République, 75010 Paris','0145279274'),
(2,'Lecoeur','Philippe','16 rue de la République, 75010 Paris','0145279274'),
(3,'Dupont','Yvan','73 rue Lamarck, 75018 Paris','0163538294'),
(4,'Mercier','Claude','155 avenue Parmentier, 75011 Paris','0136482736'),
(5,'Léger','Marc','90 avenue du Maine, 75014 Paris','0164832947'),
(6,'Martin','Laure','51 boulevard Diderot, 75012 Paris','0174693277'),
(7,'Crozier','Martine','88 rue des Portes Blanches, 75018 Paris','0146829384'),
(8,'Lebon','Clément','196 boulevard de Sebastopol, 75001 Paris','0132884739'),
(9,'Dufour','Jacques','32 rue des Alouettes, 75003 Paris','0155382940'),
(10,'Dufour','Antoine','32 rue des Alouettes, 75003 Paris','0155382940'),
(11,'Dufour','Stéphanie','32 rue des Alouettes, 75003 Paris','0155382940'),
(12,'Raymond','Carole','35 rue Oberkampf, 75011 Paris','0153829402'),
(13,'Durand','Albert','4 rue Mandar, 75002 Paris','0642374021'),
(14,'Wilson','Paul','12 rue Paul Vaillant Couturier, 92400 Montrouge','0642327407'),
(15,'Grecault','Philippe','15 rue de la Roquette, 75012 Paris','0132762983'),
(16,'Carre','Stéphane','51 boulevard Diderot, 75012 Paris','0174693277'),
(17,'Johnson','Astrid','3 rue Léon Blum, 75002 Paris','0143762947'),
(18,'Mirou','Caroline','2 square Mirabeau, 75011 Paris','0163827399'),
(19,'Espelette','Jean-Jacques','141 avenue de France, 75019 Paris','0134887264'),
(20,'Despentes','Anthony','56 boulevard de la Villette, 75019 Paris','0133889463'),
(21,'Terlu','Véronique','45 rue des Batignolles, 75020 Paris','0165998372'),
(22,'Rihour','Cécile','7 rue Montorgueil, 75002 Paris','0166894754'),
(23,'Franchet','Pierre','160 rue Montmartre, 75009 Paris','0633628549'),
(24,'Trochet','Ernest','34 rue de l''Esperance, 75008 Paris','0638295563'),
(25,'Gainard','Simon','55 rue Desnouettes, 75015 Paris','0174928934'),
(26,'Touche','Johanna','14 rue du Bac, 75006 Paris','0619384065'),
(27,'Cornu','Sylvain','22 rue Mouffetard, 75005 Paris','0184927489'),
(28,'Frederic','Cyril','15 rue du Simplon, 75018 Paris','0173625492'),
(29,'Crestard','Cedric','5 rue Doudeauville, 75018 Paris','0629485700'),
(30,'Le Bihan','Karine','170 bis rue Ordener, 75018 Paris','0638995221'); 

-- afficher tout les données de la table adhérents 
SELECT * FROM adherents;

-- insertion des données de la colonne dans la table emprunter
INSERT INTO emprunter (NO_o, dateEmp, dureeMax, dateRet, NA_a) VALUES 
(1,from_days(to_days(current_date)-350),21,from_days(to_days(current_date)-349),26),
(4,from_days(to_days(current_date)-323),21,from_days(to_days(current_date)-310),4),
(10,from_days(to_days(current_date)-315),21,from_days(to_days(current_date)-318),9),
(1,from_days(to_days(current_date)-311),21,from_days(to_days(current_date)-293),1),
(12,from_days(to_days(current_date)-300),21,from_days(to_days(current_date)-1290),7),
(4,from_days(to_days(current_date)-283),21,from_days(to_days(current_date)-282),27),
(10,from_days(to_days(current_date)-273),21,from_days(to_days(current_date)-250),7),
(4,from_days(to_days(current_date)-232),14,from_days(to_days(current_date)-228),12),
(8,from_days(to_days(current_date)-226),14,from_days(to_days(current_date)-220),26),
(8,from_days(to_days(current_date)-201),14,from_days(to_days(current_date)-183),13),
(6,from_days(to_days(current_date)-199),14,from_days(to_days(current_date)-194),3),
(10,from_days(to_days(current_date)-169),14,from_days(to_days(current_date)-157),8),
(1,from_days(to_days(current_date)-153),14,from_days(to_days(current_date)-142),3),
(15,from_days(to_days(current_date)-146),14,from_days(to_days(current_date)-138),10),
(1,from_days(to_days(current_date)-106),14,from_days(to_days(current_date)-101),2),
(4,from_days(to_days(current_date)-103),14,from_days(to_days(current_date)-93),5),
(2,from_days(to_days(current_date)-86),14,from_days(to_days(current_date)-79),3),
(8,from_days(to_days(current_date)-76),14,from_days(to_days(current_date)-70),18),
(2,from_days(to_days(current_date)-37),14,from_days(to_days(current_date)-28),4),
(1,from_days(to_days(current_date)-28),14,from_days(to_days(current_date)-23),1),
(3,from_days(to_days(current_date)-21),14,from_days(to_days(current_date)-17),3),
(4,from_days(to_days(current_date)-24),14,from_days(to_days(current_date)-8),9),
(5,from_days(to_days(current_date)-23),14,from_days(to_days(current_date)-11),14),
(2,from_days(to_days(current_date)-10),14, NULL,28),
(9,from_days(to_days(current_date)-10),14, NULL,28),
(14,from_days(to_days(current_date)-9),14, NULL,1),
(16,from_days(to_days(current_date)-9),14, NULL,1),
(5,from_days(to_days(current_date)-5),14, NULL,16),
(1,from_days(to_days(current_date)-395),14, NULL,27),
(11,from_days(to_days(current_date)-30),14, NULL,22),
(17,from_days(to_days(current_date)-1),14, NULL,20),
(5,from_days(to_days(current_date)-1),14, NULL,20),
(18,from_days(to_days(current_date)-1),14, NULL,20);

-- afficher tout les données de la table  emprunter 
SELECT * FROM emprunter;

-- REPONSE QUESTION numero 2
-- voir fichier word  Analyse_de_l'enoncé

-- REPONSE QUESTION numero 3
-- calcul nombre d'enregistrement dans la table oeuvres
SELECT COUNT(*) AS tuples_oeuvres FROM oeuvres;   -- 18

-- calcul nombre d'enregistrement dans la table adherents
SELECT COUNT(*) AS tuples_adherents FROM adherents;   -- 30

-- calcul nombre d'enregistrement dans la table emprunter
SELECT COUNT(*) AS tuples_emprunter FROM emprunter;   -- 33

-- calcul nombre de tout les enregistrements dans la base de donnée biblio
SELECT 
(
    SELECT COUNT(*) FROM oeuvres
) +
(
    SELECT COUNT(*) FROM adherents
) +
(
    SELECT COUNT(*) FROM emprunter
)
AS tuples_total_biblio;  -- 81

-- REPONSE QUESTION numero 4
-- calcul nombre des attributs dans la table oeuvres
SELECT count(*) FROM information_schema.COLUMNS 
WHERE table_schema = 'biblio' AND 
table_name='oeuvres';   -- 6

-- calcul nombre des attributs dans la table adherents
SELECT count(*) FROM information_schema.COLUMNS 
WHERE table_schema = 'biblio' AND 
table_name='adherents';    -- 5

-- calcul nombre des attributs dans la table emprunter
SELECT count(*) FROM information_schema.COLUMNS 
WHERE table_schema = 'biblio' AND 
table_name='emprunter';   -- 6

-- calcul nombre de tout les attributs de la base de données
SELECT 
(
	SELECT count(*) FROM information_schema.COLUMNS 
    WHERE table_schema = 'biblio' AND 
	table_name='oeuvres'  
) +
(
   SELECT count(*) FROM information_schema.COLUMNS 
   WHERE table_schema = 'biblio' AND 
   table_name='adherents' 
) +
(
    SELECT count(*) FROM information_schema.COLUMNS 
    WHERE table_schema = 'biblio' AND 
    table_name='emprunter'  
)
AS attribut_total_biblio;  -- 17

-- REPONSE QUESTION numero 5
	-- clé primaire de la table oeuvres
         -- No int AI PK
    -- clé primaire de la table adhérents
         -- NA int AI PK
	-- clé primaire de la table emprunter
         -- idEmprunter int AI PK
         
         
-- REPONSE QUESTION numero 6   les livres actuellement empruntés
SELECT DISTINCT titre 
FROM oeuvres,emprunter 
WHERE NO_O = NO AND dateEmp = current_date ;   -- O parcequ'il n'y a pas de livres emprunter actuellement donc 0

-- REPONSE QUESTION numero 7      les   livres   empruntés   par   Jeannette   Lecoeur
SELECT DISTINCT titre 
FROM adherents,oeuvres,emprunter
WHERE NA = 1 and NA_A = NA;         -- 18 livres deja emprunter par jeanette Lecoeur

-- REPONSE QUESTION numero 8       les livres empruntés en septembre 2009
SELECT titre 
FROM oeuvres, emprunter
WHERE  dateEmp = 2009;           -- 0 parcequ'il n'y a pas d'année 2009 dans la base de données ,il n'y a que 2021 et 2022

-- REPONSE QUESTION numero 9       Tous les adhérents qui ont emprunté un livre de Fedor Dostoievski
SELECT nom,prenom 
from adherents,oeuvres
WHERE titre ='Fedor Dostoievski';      -- 0 parceque Fedor Dostoievski n'existe pas dans la liste des livres a emprunter

-- REPONSE QUESTION numero 10       Un nouvel adhérent vient de s’inscrire : Olivier DUPOND, 76, quai de la Loire,75019 Paris, téléphone : 0102030405
INSERT INTO adherents (nom,prenom,adr,tel)  
VALUES(' Olivier',' DUPOND','76 quai de la Loire,75019 Paris',0102030405);

-- REPONSE QUESTION numero 11       Martine CROZIER vient d’emprunter « Au coeur des ténèbres » que vous venez d’ajouter et « Le rouge et le noir » chez Hachette,livre n°23.les mises à jour de la BD.
UPDATE emprunter 
SET NO_O = 7, dateEmp = current_date
WHERE idEmprunter = 5;

UPDATE emprunter 
SET NO_O = 17, dateEmp = current_date
WHERE idEmprunter = 7;

-- REPONSE QUESTION numero 12          M.Cyril FREDERIC ramène les livres qu’il a empruntés.la mise à jour de la BD.
UPDATE emprunter 
SET dateRet = current_date
WHERE idEmprunter = 24 and idEmprunter = 25 ;

-- REPONSE QUESTION numero 13 
 
-- REPONSE QUESTION numero 14

 -- REPONSE QUESTION numero 15        Quels sont le ou les auteurs du titre « Voyage au bout de la nuit »    
 SELECT auteur 
 FROM oeuvres 
 WHERE titre ="Voyage au bout de la nuit"; 
 
 -- REPONSE QUESTION numero 16        Quels sont les ou les éditeurs du titre « Narcisse et Goldmund »
 SELECT editeur
 FROM oeuvres 
 WHERE titre ="Narcisse et Goldmund"; 
 
 -- REPONSE QUESTION numero 17        Quels sont les adhérents actuellement en retard ?
 