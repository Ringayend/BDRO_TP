alter session set NLS_DATE_FORMAT='DD-MM-YYYY' ;

delete from emprunt;
delete from caracterise;
delete from mot_clef;
delete from exemplaire;
delete from abonne;
delete from livre;


insert into  abonne 
values(901001,'LEVEQUE','PIERRE','MONTPELLIER',40,500,NULL)
;
insert into  abonne 
values(902043,'DUPONT','03IE','MONTPELLIER',20,200,20);
insert into  abonne 
values(902075,'RENARD','ALBERT','MONTPELLIER',18,200,NULL);
insert into  abonne 
values(911007,'03TIN','LOIC','BEZIER',35,500,20);
insert into  abonne 
values(911021,'DUPONT','ANTOINE','MONTPELLIER',38,500,NULL
);
insert into  abonne 
values(911022,'DUPONT','SYLVIE','MONTPELLIER',35,500,NULL);
insert into  abonne 
values(911023,'DUPONT','JEAN','MONTPELLIER',22,200,20);
insert into  abonne 
values(922016,'MEUNIER','LUC','MONTPELLIER',14,100,NULL);
insert into  abonne 
values(921102,'LUCAS','PAUL','MONTPELLIER',48,500,20);
insert into  abonne 
values(922143,'REVEST','ANNIE','MONTPELLIER',12,100,NULL);
insert into  abonne 
values(932010,'ANTON','JEANNE','MONTPELLIER',10,100,NULL);

insert into  LIVRE values('1_104_1050_2','LE MUR',20,'NOUVELLE');
insert into  LIVRE values('0_15_270500_3','LE MIRACLE DE LA ROSE',20,'ROMAN');
insert into  LIVRE 
values('0_85_4107_3','L ENFANT',19,'ROMAN');
insert into  LIVRE values('0_112_3785_5','POESIES COMPLETES', 15,'POEME');
insert into  LIVRE values('0_201_14439_5','AN INTRODUCTION TO DATABASE SYSTEMS',20,'SCIENCES');
insert into  LIVRE values('0_12_27550_2','NEW APPLICATIONS OF DATABASES',20,'SCIENCES');
insert into  LIVRE values('0_8_7707_2','BASES DE DONNEES RELATIONNELLES',20,'SCIENCES');
insert into  LIVRE values('1_22_1721_3','LE NOM DE LA ROSE',20,'ROMAN');
insert into  LIVRE values('3_505_13700_5','LE GRAND VESTIAIRE',20,'ROMAN');
insert into  LIVRE values('0_18_47892_2','UNE ROSE POUR MORRISSON',20,'ROMAN');
insert into  LIVRE values('9_782070_36','LA PERLE',20,'ROMAN');
insert into  LIVRE values('2_7296_0040','GODEL ESCHER BACH : LES BRINS D UNE GUIRLANDE',20,NULL);
insert into  LIVRE values('0_26_28079_6','OBJET, DE MERISE A C++',20,'SCIENCES');


insert into  mot_clef values('LITTERATURE');
insert into  mot_clef values('ROMAN');
insert into  mot_clef values('POESIE');
insert into  mot_clef values('SCIENCES');
insert into  mot_clef values('INFORMATIQUE');
insert into  mot_clef values('BASES DE DONNEES');
insert into  mot_clef values('HISTOIRE');
insert into  mot_clef values('ESSAI');
insert into  mot_clef values('NOUVELLE');
insert into  mot_clef values('ME12INE');

insert into  CARACTERISE VALUES 
('1_104_1050_2','LITTERATURE');
insert into  CARACTERISE VALUES 
('0_15_270500_3','LITTERATURE');
insert into  CARACTERISE VALUES 
('0_15_270500_3','ROMAN');
insert into  CARACTERISE VALUES 
('0_85_4107_3','LITTERATURE');
insert into  CARACTERISE VALUES ('0_85_4107_3','ROMAN');
insert into  CARACTERISE VALUES 
('0_112_3785_5','LITTERATURE');
insert into  CARACTERISE VALUES ('0_112_3785_5','POESIE');
insert into  CARACTERISE VALUES 
('0_201_14439_5','SCIENCES');
insert into  CARACTERISE VALUES 
('0_201_14439_5','INFORMATIQUE');
insert into  CARACTERISE VALUES ('0_201_14439_5','BASES DE DONNEES');
insert into  CARACTERISE VALUES 
('0_12_27550_2','SCIENCES');
insert into  CARACTERISE VALUES 
('0_12_27550_2','INFORMATIQUE');
insert into  CARACTERISE VALUES ('0_8_7707_2','SCIENCES');
insert into  CARACTERISE VALUES 
('0_8_7707_2','INFORMATIQUE');
insert into  CARACTERISE VALUES ('0_8_7707_2','BASES DE DONNEES');
insert into  CARACTERISE VALUES ('1_22_1721_3','ROMAN');
insert into  CARACTERISE VALUES 
('1_22_1721_3','HISTOIRE');
insert into  CARACTERISE VALUES 
('3_505_13700_5','LITTERATURE');
insert into  CARACTERISE VALUES 
('3_505_13700_5','ROMAN');
insert into  CARACTERISE VALUES 
('0_26_28079_6','SCIENCES');
insert into  CARACTERISE VALUES 
('0_26_28079_6','INFORMATIQUE');
insert into  CARACTERISE VALUES ('0_26_28079_6','BASES DE DONNEES');


insert into  exemplaire values (1010,
'10-04-1985',55,'EMPRUNTABLE','BON','0_18_47892_2');
insert into  exemplaire values (1011,
'10-04-1985',55,'EMPRUNTABLE','BON','0_18_47892_2');
insert into  exemplaire values (1012,
'20-05-1985',112,'EMPRUNTABLE','BON','3_505_13700_5');
insert into  exemplaire values (2909,
'30-03-1990',35,'EMPRUNTABLE','BON','3_505_13700_5');
insert into  exemplaire values (2673,
'15-03-1991',42,'EMPRUNTABLE','ABIME','3_505_13700_5');
insert into  exemplaire values (2710,
'20-06-1984',270,'CONSULTABLE','BON','0_8_7707_2');
insert into  exemplaire values (2711,
'20-06-1984',270,'EMPRUNTABLE','BON','0_8_7707_2');
insert into  exemplaire values (3014,
'15-09-1990',420,'CONSULTABLE','BON','0_201_14439_5');
insert into  exemplaire values (3016,
'15-09-1990',420,'EMPRUNTABLE','BON','0_201_14439_5');
insert into  exemplaire values (3702,
'20-02-1992',210,'EMPRUNTABLE','BON','1_22_1721_3');
insert into  exemplaire values (3703,
'20-02-1992',210,'CONSULTABLE','BON','1_22_1721_3');
insert into  exemplaire values (4111,
'03-01-1995',48,'EMPRUNTABLE','BON','1_22_1721_3');
insert into  exemplaire values (4112,
'03-01-1995',48,'EXCLU','BON','1_22_1721_3');
insert into  exemplaire values (4203,
'29-11-1992',35,'EMPRUNTABLE','BON','1_104_1050_2');
insert into  exemplaire values (4204,
'29-11-1992',35,'EMPRUNTABLE','ABIME','1_104_1050_2');
insert into  exemplaire values (5003,
'10-06-1993',39,'EMPRUNTABLE','BON','1_104_1050_2');
insert into  exemplaire values (5004,
'10-06-1993',41,'EMPRUNTABLE','BON','0_15_270500_3');
insert into  exemplaire values (5005,
'10-06-1993',41,'EMPRUNTABLE','BON','0_15_270500_3');
insert into  exemplaire values (5103,
'20-12-1990',470,'CONSULTABLE','BON','0_12_27550_2');
insert into  exemplaire values (5104,
'20-12-1990',470,'EMPRUNTABLE','BON','0_12_27550_2');
insert into  exemplaire values (6006,
'15-12-1995',33,'EMPRUNTABLE','BON','0_85_4107_3');
insert into  exemplaire values (6007,
'15-12-1995',33,'EMPRUNTABLE','BON','0_85_4107_3');
insert into  exemplaire values (5202,
'18-10-1993',40,'EMPRUNTABLE','BON','0_18_47892_2');
insert into  exemplaire values (7000,
'01-09-1987',420,'CONSULTABLE','BON','2_7296_0040');
insert into  exemplaire values (7001,
'01-09-1987',420,'EMPRUNTABLE','BON','2_7296_0040');
insert into  exemplaire values (7002,
'01-09-1987',420,'EXCLU','BON','2_7296_0040');
insert into  exemplaire values (1090,
'23-11-1985',150,'EXCLU','ABIME','9_782070_36');
insert into  exemplaire values (1091,
'23-11-1985',150,'CONSULTABLE','EN_REPARATION','9_782070_36');
insert into  exemplaire values (1109,
'30-05-1987',170,'EMPRUNTABLE','BON','9_782070_36');


insert into  emprunt values (911023,5003,'10-03-2002',
'30-03-2002','30-03-2002',NULL);
insert into  emprunt values (911023,5005,'30-03-2002','15-04-2002','10-04-2002',NULL);
insert into  emprunt values (911023,1012,'30-03-2002',
'15-04-2002','10-04-2002',NULL);
insert into  emprunt values (911023,5103,'17-06-2002',
'30-06-2002','20-07-2002',1);
insert into  emprunt values (901001,4203,'03-01-2001',
'18-01-2001','18-01-2001',NULL);
insert into  emprunt values (901001,5005,'03-01-2001',
'18-01-2001','18-01-2001',NULL);
insert into  emprunt values (911007,4203,'25-02-2001',
'08-03-2001','25-03-2001',1);
insert into  emprunt values (911007,1010,'13-05-2001',
'31-05-2001','31-05-2001',NULL);
insert into  emprunt values (921102,4204,'08-08-2002',
'22-08-2002','30-08-2002',NULL);
insert into  emprunt values (921102,5005,'08-08-2002',
'22-08-2002','30-08-2002',NULL);
insert into  emprunt values (911021,5004,'10-12-2002',
'30-12-2002','28-12-2002',NULL);
insert into  emprunt values (911007,5004,'20-07-2002',
'10-08-2002','10-08-2002',NULL);
insert into  emprunt values (911007,4204,'19-01-2003',
'10-02-2003',NULL,1);
insert into  emprunt values (911007,2673,'10-12-2002',
'30-12-2002','28-12-2002',NULL);
insert into  emprunt values (902075,2673,'15-02-2003',
'28-02-2003',NULL,NULL);
insert into  emprunt values (902075,1010,'05-01-2003',
'25-01-2003',NULL,1);
insert into  emprunt values (921102,6006,'20-12-2002',
'10-01-2003',NULL,2);
insert into  emprunt values (911023,6007,'22-12-2002',
'12-01-2003','13-01-2003',NULL);
insert into  emprunt values (902043,7001,'15-09-2000',
'09-10-2000','10-10-2000',NULL);
insert into  emprunt values (902043,3014,'01-10-2000',
'21-10-2000','20-11-2000',2);
insert into  emprunt values (902043,3014,'01-12-2000',
'20-12-2000','20-12-2000',NULL);
insert into  emprunt values (911023,1109,'15-09-2002',
'05-10-2002','05-11-2002',2);
insert into  emprunt values (902043,7001,'20-11-2000',
'10-12-2000','10-12-2000', NULL);
insert into  emprunt values (901001,7001,'30-01-2000',
'20-02-2000','18-02-2000',NULL);
insert into  emprunt values (901001,7001,'22-05-2002',
'12-06-2002','15-06-2002',NULL);


COMMIT;








