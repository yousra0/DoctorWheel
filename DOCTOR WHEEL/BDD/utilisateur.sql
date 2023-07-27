--------------------------------------------------------
--  Fichier cr�� - jeudi-juillet-27-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table UTILISATEUR
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."UTILISATEUR" 
   (	"FIRSTNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(60 BYTE), 
	"LASTNAME" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.UTILISATEUR
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table UTILISATEUR
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."UTILISATEUR" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
