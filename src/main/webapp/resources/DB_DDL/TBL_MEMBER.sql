--------------------------------------------------------
--  파일이 생성됨 - 수요일-9월-27-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TBL_MEMBER
--------------------------------------------------------

  CREATE TABLE "BANG"."TBL_MEMBER" 
   (	"USERID" VARCHAR2(50 BYTE), 
	"USERPW" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"UPDATEDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "BANG"."PK_MEMBER" ON "BANG"."TBL_MEMBER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TBL_MEMBER
--------------------------------------------------------

  ALTER TABLE "BANG"."TBL_MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BANG"."TBL_MEMBER" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "BANG"."TBL_MEMBER" MODIFY ("USERPW" NOT NULL ENABLE);
 
  ALTER TABLE "BANG"."TBL_MEMBER" MODIFY ("USERNAME" NOT NULL ENABLE);
