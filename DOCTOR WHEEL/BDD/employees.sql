--------------------------------------------------------
--  Fichier cr�� - jeudi-juillet-27-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."EMPLOYEES" 
   (	"ID" NUMBER, 
	"NOM" VARCHAR2(20 BYTE), 
	"PRENOM" VARCHAR2(20 BYTE), 
	"ADRESSE" VARCHAR2(20 BYTE), 
	"POSTE" VARCHAR2(20 BYTE), 
	"SALAIRE" NUMBER, 
	"PASSWORD" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.EMPLOYEES
SET DEFINE OFF;
Insert into SYSTEM.EMPLOYEES (ID,NOM,PRENOM,ADRESSE,POSTE,SALAIRE,PASSWORD) values ('123','Bejaoui','Mayar','tunis','Administrateur','450','123');
Insert into SYSTEM.EMPLOYEES (ID,NOM,PRENOM,ADRESSE,POSTE,SALAIRE,PASSWORD) values ('2','marouani','wael','tunis','Vehicules','500','345');
Insert into SYSTEM.EMPLOYEES (ID,NOM,PRENOM,ADRESSE,POSTE,SALAIRE,PASSWORD) values ('3','chaieb','yousra','tunis','Pistes','600','789');
Insert into SYSTEM.EMPLOYEES (ID,NOM,PRENOM,ADRESSE,POSTE,SALAIRE,PASSWORD) values ('4','dridi','yosser','tunis','Reservations','400','123');
--------------------------------------------------------
--  DDL for Index EMPLOYE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."EMPLOYE_PK" ON "SYSTEM"."EMPLOYEES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EMPLOYEES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."EMPLOYEES" ADD CONSTRAINT "EMPLOYE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
