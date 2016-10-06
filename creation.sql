drop table emprunt;
drop table caracterise;
drop table exemplaire;
drop table abonne;
drop table mot_clef;
drop table livre;

create table LIVRE (
ISBN varchar2(20) , 
TITRE varchar2(50) constraint lititre not null, 
SIECLE number(2,0) check (SIECLE BETWEEN 0 and 21),
CATEGORIE varchar2(20),
CONSTRAINT cp_livre primary key (ISBN)
);

create table abonne (
num_ab  number(6,0) ,  
nom varchar2(30)  constraint abnom not null, 
prenom varchar2(20), 
ville varchar2(30), 
age number(3,0)  ,
 tarif number(3,0) ,
 reduc number(3,0) ,
CONSTRAINT cp_abonne primary key (num_ab),
constraint dom_age check (age between 0 and 120));

create table EXEMPLAIRE (
NUMERO number(4,0), 
DATE_ACHAT date, 
PRIX number(5,2), 
CODE_PRET varchar2(20) ,
ETAT varchar2(15) check (etat in 
('BON','ABIME','EN_REPARATION')), 
ISBN  varchar2(20), 
CONSTRAINT cp_exemplaire primary key (numero) ,
CONSTRAINT ce_exemplaire FOREIGN KEY (ISBN) REFERENCES 
LIVRE(ISBN),
constraint dom_code_pret check (code_pret in ('EXCLU', 
'EMPRUNTABLE', 'CONSULTABLE')) 
);

create table MOT_CLEF (MOT varchar2(20) CONSTRAINT 
cp_mot_clef
primary key);

create table EMPRUNT 
(NUM_AB  number(6,0),
NUM_EX number (4,0) ,
D_EMPRUNT date , 
D_RETOUR date, 
D_RET_REEL date, 
NB_RELANCE number(1,0) check (nb_relance in (1,2,3)),
constraint cp_emprunt primary key 
(NUM_AB,NUM_EX,D_EMPRUNT),
CONSTRAINT ce1_emprunt   FOREIGN KEY (num_ab) REFERENCES 
ABONNE(NUM_AB), 
CONSTRAINT ce2_emprunt FOREIGN KEY (num_ex)  REFERENCES 
EXEMPLAIRE(NUMERO)
);

create table CARACTERISE (
ISBN varchar2(20), MOT varchar2(20) ,
constraint cp_caract primary key (ISBN,MOT),
CONSTRAINT ce1_caract FOREIGN KEY (isbn) REFERENCES 
livre(ISBN),
CONSTRAINT ce2_caract
FOREIGN KEY (mot) REFERENCES mot_clef(mot)
);
