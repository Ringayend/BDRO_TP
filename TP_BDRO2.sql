Drop type Texemplaire;
Drop type Temprunt;
Drop type Tabonne;
Drop type NTEMP;

create or replace type Texemplaire as object( Numero number(4), date_achat date, prix number(5,2), code_pret varchar2(20), etat varchar2(15)); 

create or replace type Temprunt as object ( NUM_EX ref Texemplaire, d_emprunt date, d_retour date, d_ret_reel date, nb_relance number(1)); 

create type NTEMP as table of Temprunt;

create or replace type Tabonne as object ( NUM_AB number(6), NOM varchar2(30), PRENOM varchar2(20), VILLE varchar2(30), AGE Number(3), TARIF number(3), REDUC number(3), LEmprunt NTEMP); 

create view Vexemplaire of Texemplaire with object oid(NUMERO) as (select NUMERO, DATE_ACHAT, PRIX, CODE_PRET, ETAT from EXEMPLAIRE );

create or replace view Vabonne of Tabonne with object oid(NUM_AB) as 
select NUM_AB, NOM, PRENOM, VILLE, AGE, TARIF, REDUC, 
cast( multiset( 
  select Temprunt( make_ref(Vexemplaire, NUM_EX), D_EMPRUNT, D_RETOUR, D_RET_REEL, NB_RELANCE) 
  from EMPRUNT EMP 
  where AB.NUM_AB = EMP.NUM_AB) as NTEMP) 
from ABONNE AB;






