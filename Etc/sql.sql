



CREATE TABLE CASE
(
	case_name            varchar2(40) NOT NULL ,
	case_type            VARCHAR2(40) NULL ,
	case_size            VARCHAR2(40) NULL ,
	case_hasPower        VARCHAR2(40) NULL ,
	case_powerType       VARCHAR2(40) NULL ,
	case_mbType          VARCHAR2(40) NULL ,
	case_vgaSize         NUMBER NULL ,
	case_price           NUMBER NULL ,
	maker_code           NUMBER NULL 
);



CREATE UNIQUE INDEX PK_CASE_case_name ON CASE
(case_name   ASC);



ALTER TABLE CASE
	ADD CONSTRAINT  PK_CASE_case_name PRIMARY KEY (case_name);



CREATE TABLE CPU
(
	cpu_name             VARCHAR2(40) NOT NULL ,
	cpu_type             VARCHAR2(40) NULL ,
	cpu_socket           VARCHAR2(40) NULL ,
	cpu_caltype          NUMBER NULL ,
	cpu_coreCnt          NUMBER NULL ,
	cpu_threadCnt        NUMBER NULL ,
	cpu_speed            NUMBER NULL ,
	cpu_nm               NUMBER NULL ,
	cpu_watt             NUMBER NULL ,
	cpu_price            NUMBER NULL ,
	maker_code           NUMBER NULL 
);



CREATE UNIQUE INDEX PK_CPU_cpu_name ON CPU
(cpu_name   ASC);



ALTER TABLE CPU
	ADD CONSTRAINT  PK_CPU_cpu_name PRIMARY KEY (cpu_name);



CREATE TABLE CUSTOMER
(
	cust_id              varchar2(40) NOT NULL ,
	cust_name            VARCHAR2(40) NULL ,
	cust_pw              VARCHAR2(40) NULL ,
	cust_tel             VARCHAR2(40) NULL ,
	cust_email           VARCHAR2(40) NULL 
);



CREATE UNIQUE INDEX PK_CUSTOMER_cust_id ON CUSTOMER
(cust_id   ASC);



ALTER TABLE CUSTOMER
	ADD CONSTRAINT  PK_CUSTOMER_cust_id PRIMARY KEY (cust_id);



CREATE TABLE HDD
(
	hdd_name             varchar2(40) NOT NULL ,
	hdd_type             VARCHAR2(40) NULL ,
	hdd_interface        VARCHAR2(40) NULL ,
	hdd_byteSize         NUMBER NULL ,
	hdd_rpm              NUMBER NULL ,
	hdd_bufferSize       NUMBER NULL ,
	hdd_diskSize         varchar2(40) NULL ,
	hdd_price            NUMBER NULL ,
	maker_code           NUMBER NULL 
);



CREATE UNIQUE INDEX PK_HDD_hdd_name ON HDD
(hdd_name   ASC);



ALTER TABLE HDD
	ADD CONSTRAINT  PK_HDD_hdd_name PRIMARY KEY (hdd_name);



CREATE TABLE MAKER
(
	maker_code           NUMBER NOT NULL ,
	maker_name           VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX PK_MAKER_maker_code ON MAKER
(maker_code   ASC);



ALTER TABLE MAKER
	ADD CONSTRAINT  PK_MAKER_maker_code PRIMARY KEY (maker_code);



CREATE TABLE MB
(
	mb_name              varchar2(40) NOT NULL ,
	mb_type              VARCHAR2(40) NULL ,
	mb_socket            VARCHAR2(40) NULL ,
	mb_chipset           VARCHAR2(40) NULL ,
	mb_memory            VARCHAR2(40) NULL ,
	mb_memoryCnt         NUMBER NULL ,
	mb_multiVga          VARCHAR2(40) NULL ,
	mb_vgaCnt            NUMBER NULL ,
	mb_inVgaChipSet      VARCHAR2(40) NULL ,
	mb_vgaOutput         VARCHAR2(40) NULL ,
	mb_backOutput        VARCHAR2(40) NULL ,
	mb_price             NUMBER NULL ,
	maker_code           NUMBER NULL ,
	mb_formfactor        VARCHAR2(40) NULL ,
	mb_interface         VARCHAR2(40) NULL 
);



CREATE UNIQUE INDEX PK_MB_mb_name ON MB
(mb_name   ASC);



ALTER TABLE MB
	ADD CONSTRAINT  PK_MB_mb_name PRIMARY KEY (mb_name);



CREATE TABLE ODD
(
	odd_name             varchar2(40) NOT NULL ,
	odd_type             VARCHAR2(40) NULL ,
	odd_typeDetail       VARCHAR2(40) NULL ,
	odd_interface        VARCHAR2(40) NULL ,
	odd_color            VARCHAR2(40) NULL ,
	odd_hasLS            VARCHAR2(40) NULL ,
	maker_code           NUMBER NULL ,
	odd_price            NUMBER NULL 
);



CREATE UNIQUE INDEX PK_ODD_odd_name ON ODD
(odd_name   ASC);



ALTER TABLE ODD
	ADD CONSTRAINT  PK_ODD_odd_name PRIMARY KEY (odd_name);



CREATE TABLE PS
(
	ps_name              varchar2(40) NOT NULL ,
	ps_type              VARCHAR2(40) NULL ,
	ps_ratedWatt         NUMBER NULL ,
	ps_printWatt         NUMBER NULL ,
	ps_connector         VARCHAR2(40) NULL ,
	ps_fanSize           NUMBER NULL ,
	ps_fanCnt            NUMBER NULL ,
	ps_PFC               VARCHAR2(40) NULL ,
	ps_certi             VARCHAR2(40) NULL ,
	ps_certiRate         VARCHAR2(40) NULL ,
	maker_code           NUMBER NULL ,
	ps_price             NUMBER NULL 
);



CREATE UNIQUE INDEX PK_PS_ps_name ON PS
(ps_name   ASC);



ALTER TABLE PS
	ADD CONSTRAINT  PK_PS_ps_name PRIMARY KEY (ps_name);



CREATE TABLE QUOTATION
(
	quo_code             NUMBER NOT NULL ,
	quo_totalprice       NUMBER NULL ,
	ssd_name             varchar2(40) NULL ,
	hdd_name             varchar2(40) NULL ,
	vga_name             varchar2(40) NULL ,
	odd_name             varchar2(40) NULL ,
	cpu_name             VARCHAR2(40) NULL ,
	mb_name              varchar2(40) NULL ,
	ram_name             varchar2(40) NULL ,
	case_name            varchar2(40) NULL ,
	ps_name              varchar2(40) NULL ,
	quo_option           VARCHAR2(40) NULL ,
	quo_name             VARCHAR2(40) NULL ,
	cust_id              varchar2(40) NULL 
);



CREATE UNIQUE INDEX PK_QUOTATION_quo_code ON QUOTATION
(quo_code   ASC);



ALTER TABLE QUOTATION
	ADD CONSTRAINT  PK_QUOTATION_quo_code PRIMARY KEY (quo_code);



CREATE TABLE RAM
(
	ram_name             varchar2(40) NOT NULL ,
	ram_type             VARCHAR2(40) NULL ,
	ram_device           VARCHAR2(40) NULL ,
	ram_byteSize         NUMBER NULL ,
	ram_clock            NUMBER NULL ,
	ram_price            NUMBER NULL ,
	maker_code           NUMBER NULL ,
	ram_memoryType       VARCHAR2(40) NULL 
);



CREATE UNIQUE INDEX PK_RAM_ram_name ON RAM
(ram_name   ASC);



ALTER TABLE RAM
	ADD CONSTRAINT  PK_RAM_ram_name PRIMARY KEY (ram_name);



CREATE TABLE SSD
(
	ssd_name             varchar2(40) NOT NULL ,
	ssd_type             VARCHAR2(40) NULL ,
	ssd_interface        VARCHAR2(40) NULL ,
	ssd_byteSize         NUMBER NULL ,
	ssd_disktype         VARCHAR2(40) NULL ,
	ssd_readSpeed        NUMBER NULL ,
	ssd_writeSpeed       NUMBER NULL ,
	ssd_control          VARCHAR2(40) NULL ,
	ssd_memoryType       VARCHAR2(40) NULL ,
	ssd_nm               NUMBER NULL ,
	ssd_price            NUMBER NULL ,
	maker_code           NUMBER NULL 
);



CREATE UNIQUE INDEX PK_SSD_ssd_name ON SSD
(ssd_name   ASC);



ALTER TABLE SSD
	ADD CONSTRAINT  PK_SSD_ssd_name PRIMARY KEY (ssd_name);



CREATE TABLE VGA
(
	vga_name             varchar2(40) NOT NULL ,
	vga_interface        VARCHAR2(40) NULL ,
	vga_memoryType       VARCHAR2(40) NULL ,
	vga_memorySize       NUMBER NULL ,
	vga_memoryBus        NUMBER NULL ,
	vga_hdmiCnt          NUMBER NULL ,
	vga_displayPortCnt   NUMBER NULL ,
	vga_coolingType      VARCHAR2(40) NULL ,
	vga_size             NUMBER NULL ,
	vga_price            NUMBER NULL ,
	maker_code           NUMBER NULL ,
	vga_chipset          VARCHAR2(40) NULL ,
	vga_clock            Number NULL ,
	vga_type             VARCHAR2(40) NULL ,
	vga_watt             number NULL 
);



CREATE UNIQUE INDEX PK_VGA_vga_name ON VGA
(vga_name   ASC);



ALTER TABLE VGA
	ADD CONSTRAINT  PK_VGA_vga_name PRIMARY KEY (vga_name);



ALTER TABLE CASE
	ADD (CONSTRAINT FK_CASE_maker_code FOREIGN KEY (maker_code) REFERENCES MAKER (maker_code) ON DELETE SET NULL);



ALTER TABLE CPU
	ADD (CONSTRAINT FK_CPU_maker_code FOREIGN KEY (maker_code) REFERENCES MAKER (maker_code) ON DELETE SET NULL);



ALTER TABLE HDD
	ADD (CONSTRAINT FK_HDD_maker_code FOREIGN KEY (maker_code) REFERENCES MAKER (maker_code) ON DELETE SET NULL);



ALTER TABLE MB
	ADD (CONSTRAINT FK_MB_maker_code FOREIGN KEY (maker_code) REFERENCES MAKER (maker_code) ON DELETE SET NULL);



ALTER TABLE ODD
	ADD (CONSTRAINT FK_ODD_maker_code FOREIGN KEY (maker_code) REFERENCES MAKER (maker_code) ON DELETE SET NULL);



ALTER TABLE PS
	ADD (CONSTRAINT FK_PS_maker_code FOREIGN KEY (maker_code) REFERENCES MAKER (maker_code) ON DELETE SET NULL);



ALTER TABLE QUOTATION
	ADD (CONSTRAINT FK_QUOTATION_ssd_name FOREIGN KEY (ssd_name) REFERENCES SSD (ssd_name) ON DELETE SET NULL);



ALTER TABLE QUOTATION
	ADD (CONSTRAINT FK_QUOTATION_hdd_name FOREIGN KEY (hdd_name) REFERENCES HDD (hdd_name) ON DELETE SET NULL);



ALTER TABLE QUOTATION
	ADD (CONSTRAINT FK_QUOTATION_vga_name FOREIGN KEY (vga_name) REFERENCES VGA (vga_name) ON DELETE SET NULL);



ALTER TABLE QUOTATION
	ADD (CONSTRAINT FK_QUOTATION_odd_name FOREIGN KEY (odd_name) REFERENCES ODD (odd_name) ON DELETE SET NULL);



ALTER TABLE QUOTATION
	ADD (CONSTRAINT FK_QUOTATION_cpu_name FOREIGN KEY (cpu_name) REFERENCES CPU (cpu_name) ON DELETE SET NULL);



ALTER TABLE QUOTATION
	ADD (CONSTRAINT FK_QUOTATION_mb_name FOREIGN KEY (mb_name) REFERENCES MB (mb_name) ON DELETE SET NULL);



ALTER TABLE QUOTATION
	ADD (CONSTRAINT FK_QUOTATION_ram_name FOREIGN KEY (ram_name) REFERENCES RAM (ram_name) ON DELETE SET NULL);



ALTER TABLE QUOTATION
	ADD (CONSTRAINT FK_QUOTATION_case_name FOREIGN KEY (case_name) REFERENCES CASE (case_name) ON DELETE SET NULL);



ALTER TABLE QUOTATION
	ADD (CONSTRAINT FK_QUOTATION_ps_name FOREIGN KEY (ps_name) REFERENCES PS (ps_name) ON DELETE SET NULL);



ALTER TABLE QUOTATION
	ADD (CONSTRAINT FK_QUOTATION_cust_id FOREIGN KEY (cust_id) REFERENCES CUSTOMER (cust_id) ON DELETE SET NULL);



ALTER TABLE RAM
	ADD (CONSTRAINT FK_RAM_maker_code FOREIGN KEY (maker_code) REFERENCES MAKER (maker_code) ON DELETE SET NULL);



ALTER TABLE SSD
	ADD (CONSTRAINT FK_SSD_maker_code FOREIGN KEY (maker_code) REFERENCES MAKER (maker_code) ON DELETE SET NULL);



ALTER TABLE VGA
	ADD (CONSTRAINT FK_VGA_maker_code FOREIGN KEY (maker_code) REFERENCES MAKER (maker_code) ON DELETE SET NULL);



CREATE  TRIGGER tI_CASE BEFORE INSERT ON CASE for each row
-- ERwin Builtin Trigger
-- INSERT trigger on CASE 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MAKER  CASE on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000e614", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="CASE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_CASE_maker_code", FK_COLUMNS="maker_code" */
    UPDATE CASE
      SET
        /* %SetFK(CASE,NULL) */
        CASE.maker_code = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM MAKER
            WHERE
              /* %JoinFKPK(:%New,MAKER," = "," AND") */
              :new.maker_code = MAKER.maker_code
        ) 
        /* %JoinPKPK(CASE,:%New," = "," AND") */
         and CASE.case_name = :new.case_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_CASE AFTER DELETE ON CASE for each row
-- ERwin Builtin Trigger
-- DELETE trigger on CASE 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* CASE  QUOTATION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="0000b986", PARENT_OWNER="", PARENT_TABLE="CASE"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_case_name", FK_COLUMNS="case_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.case_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = "," AND") */
        QUOTATION.case_name = :old.case_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_CASE AFTER UPDATE ON CASE for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on CASE 
DECLARE NUMROWS INTEGER;
BEGIN
  /* CASE  QUOTATION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="0001eaf4", PARENT_OWNER="", PARENT_TABLE="CASE"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_case_name", FK_COLUMNS="case_name" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.case_name <> :new.case_name
  THEN
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.case_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = ",",") */
        QUOTATION.case_name = :old.case_name;
  END IF;

  /* ERwin Builtin Trigger */
  /* MAKER  CASE on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="CASE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_CASE_maker_code", FK_COLUMNS="maker_code" */
  SELECT count(*) INTO NUMROWS
    FROM MAKER
    WHERE
      /* %JoinFKPK(:%New,MAKER," = "," AND") */
      :new.maker_code = MAKER.maker_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.maker_code IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update CASE because MAKER does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_CPU BEFORE INSERT ON CPU for each row
-- ERwin Builtin Trigger
-- INSERT trigger on CPU 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MAKER  CPU on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000d777", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="CPU"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_CPU_maker_code", FK_COLUMNS="maker_code" */
    UPDATE CPU
      SET
        /* %SetFK(CPU,NULL) */
        CPU.maker_code = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM MAKER
            WHERE
              /* %JoinFKPK(:%New,MAKER," = "," AND") */
              :new.maker_code = MAKER.maker_code
        ) 
        /* %JoinPKPK(CPU,:%New," = "," AND") */
         and CPU.cpu_name = :new.cpu_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_CPU AFTER DELETE ON CPU for each row
-- ERwin Builtin Trigger
-- DELETE trigger on CPU 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* CPU  QUOTATION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="0000bd9a", PARENT_OWNER="", PARENT_TABLE="CPU"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_cpu_name", FK_COLUMNS="cpu_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.cpu_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = "," AND") */
        QUOTATION.cpu_name = :old.cpu_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_CPU AFTER UPDATE ON CPU for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on CPU 
DECLARE NUMROWS INTEGER;
BEGIN
  /* CPU  QUOTATION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="0001e16b", PARENT_OWNER="", PARENT_TABLE="CPU"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_cpu_name", FK_COLUMNS="cpu_name" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.cpu_name <> :new.cpu_name
  THEN
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.cpu_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = ",",") */
        QUOTATION.cpu_name = :old.cpu_name;
  END IF;

  /* ERwin Builtin Trigger */
  /* MAKER  CPU on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="CPU"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_CPU_maker_code", FK_COLUMNS="maker_code" */
  SELECT count(*) INTO NUMROWS
    FROM MAKER
    WHERE
      /* %JoinFKPK(:%New,MAKER," = "," AND") */
      :new.maker_code = MAKER.maker_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.maker_code IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update CPU because MAKER does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_CUSTOMER AFTER DELETE ON CUSTOMER for each row
-- ERwin Builtin Trigger
-- DELETE trigger on CUSTOMER 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* CUSTOMER  QUOTATION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="0000b62f", PARENT_OWNER="", PARENT_TABLE="CUSTOMER"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_cust_id", FK_COLUMNS="cust_id" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.cust_id = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = "," AND") */
        QUOTATION.cust_id = :old.cust_id;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_CUSTOMER AFTER UPDATE ON CUSTOMER for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on CUSTOMER 
DECLARE NUMROWS INTEGER;
BEGIN
  /* CUSTOMER  QUOTATION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="0000dc43", PARENT_OWNER="", PARENT_TABLE="CUSTOMER"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_cust_id", FK_COLUMNS="cust_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.cust_id <> :new.cust_id
  THEN
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.cust_id = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = ",",") */
        QUOTATION.cust_id = :old.cust_id;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_HDD BEFORE INSERT ON HDD for each row
-- ERwin Builtin Trigger
-- INSERT trigger on HDD 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MAKER  HDD on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000deef", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="HDD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_HDD_maker_code", FK_COLUMNS="maker_code" */
    UPDATE HDD
      SET
        /* %SetFK(HDD,NULL) */
        HDD.maker_code = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM MAKER
            WHERE
              /* %JoinFKPK(:%New,MAKER," = "," AND") */
              :new.maker_code = MAKER.maker_code
        ) 
        /* %JoinPKPK(HDD,:%New," = "," AND") */
         and HDD.hdd_name = :new.hdd_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_HDD AFTER DELETE ON HDD for each row
-- ERwin Builtin Trigger
-- DELETE trigger on HDD 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* HDD  QUOTATION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="0000b412", PARENT_OWNER="", PARENT_TABLE="HDD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_hdd_name", FK_COLUMNS="hdd_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.hdd_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = "," AND") */
        QUOTATION.hdd_name = :old.hdd_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_HDD AFTER UPDATE ON HDD for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on HDD 
DECLARE NUMROWS INTEGER;
BEGIN
  /* HDD  QUOTATION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="0001e259", PARENT_OWNER="", PARENT_TABLE="HDD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_hdd_name", FK_COLUMNS="hdd_name" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.hdd_name <> :new.hdd_name
  THEN
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.hdd_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = ",",") */
        QUOTATION.hdd_name = :old.hdd_name;
  END IF;

  /* ERwin Builtin Trigger */
  /* MAKER  HDD on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="HDD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_HDD_maker_code", FK_COLUMNS="maker_code" */
  SELECT count(*) INTO NUMROWS
    FROM MAKER
    WHERE
      /* %JoinFKPK(:%New,MAKER," = "," AND") */
      :new.maker_code = MAKER.maker_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.maker_code IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update HDD because MAKER does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_MAKER AFTER DELETE ON MAKER for each row
-- ERwin Builtin Trigger
-- DELETE trigger on MAKER 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MAKER  CPU on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="000680f2", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="CPU"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_CPU_maker_code", FK_COLUMNS="maker_code" */
    UPDATE CPU
      SET
        /* %SetFK(CPU,NULL) */
        CPU.maker_code = NULL
      WHERE
        /* %JoinFKPK(CPU,:%Old," = "," AND") */
        CPU.maker_code = :old.maker_code;

    /* ERwin Builtin Trigger */
    /* MAKER  MB on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="MB"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_MB_maker_code", FK_COLUMNS="maker_code" */
    UPDATE MB
      SET
        /* %SetFK(MB,NULL) */
        MB.maker_code = NULL
      WHERE
        /* %JoinFKPK(MB,:%Old," = "," AND") */
        MB.maker_code = :old.maker_code;

    /* ERwin Builtin Trigger */
    /* MAKER  SSD on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="SSD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SSD_maker_code", FK_COLUMNS="maker_code" */
    UPDATE SSD
      SET
        /* %SetFK(SSD,NULL) */
        SSD.maker_code = NULL
      WHERE
        /* %JoinFKPK(SSD,:%Old," = "," AND") */
        SSD.maker_code = :old.maker_code;

    /* ERwin Builtin Trigger */
    /* MAKER  HDD on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="HDD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_HDD_maker_code", FK_COLUMNS="maker_code" */
    UPDATE HDD
      SET
        /* %SetFK(HDD,NULL) */
        HDD.maker_code = NULL
      WHERE
        /* %JoinFKPK(HDD,:%Old," = "," AND") */
        HDD.maker_code = :old.maker_code;

    /* ERwin Builtin Trigger */
    /* MAKER  RAM on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="RAM"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_RAM_maker_code", FK_COLUMNS="maker_code" */
    UPDATE RAM
      SET
        /* %SetFK(RAM,NULL) */
        RAM.maker_code = NULL
      WHERE
        /* %JoinFKPK(RAM,:%Old," = "," AND") */
        RAM.maker_code = :old.maker_code;

    /* ERwin Builtin Trigger */
    /* MAKER  CASE on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="CASE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_CASE_maker_code", FK_COLUMNS="maker_code" */
    UPDATE CASE
      SET
        /* %SetFK(CASE,NULL) */
        CASE.maker_code = NULL
      WHERE
        /* %JoinFKPK(CASE,:%Old," = "," AND") */
        CASE.maker_code = :old.maker_code;

    /* ERwin Builtin Trigger */
    /* MAKER  ODD on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="ODD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ODD_maker_code", FK_COLUMNS="maker_code" */
    UPDATE ODD
      SET
        /* %SetFK(ODD,NULL) */
        ODD.maker_code = NULL
      WHERE
        /* %JoinFKPK(ODD,:%Old," = "," AND") */
        ODD.maker_code = :old.maker_code;

    /* ERwin Builtin Trigger */
    /* MAKER  PS on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="PS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_PS_maker_code", FK_COLUMNS="maker_code" */
    UPDATE PS
      SET
        /* %SetFK(PS,NULL) */
        PS.maker_code = NULL
      WHERE
        /* %JoinFKPK(PS,:%Old," = "," AND") */
        PS.maker_code = :old.maker_code;

    /* ERwin Builtin Trigger */
    /* MAKER  VGA on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="VGA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_VGA_maker_code", FK_COLUMNS="maker_code" */
    UPDATE VGA
      SET
        /* %SetFK(VGA,NULL) */
        VGA.maker_code = NULL
      WHERE
        /* %JoinFKPK(VGA,:%Old," = "," AND") */
        VGA.maker_code = :old.maker_code;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_MAKER AFTER UPDATE ON MAKER for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on MAKER 
DECLARE NUMROWS INTEGER;
BEGIN
  /* MAKER  CPU on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00077ed6", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="CPU"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_CPU_maker_code", FK_COLUMNS="maker_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.maker_code <> :new.maker_code
  THEN
    UPDATE CPU
      SET
        /* %SetFK(CPU,NULL) */
        CPU.maker_code = NULL
      WHERE
        /* %JoinFKPK(CPU,:%Old," = ",",") */
        CPU.maker_code = :old.maker_code;
  END IF;

  /* MAKER  MB on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="MB"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_MB_maker_code", FK_COLUMNS="maker_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.maker_code <> :new.maker_code
  THEN
    UPDATE MB
      SET
        /* %SetFK(MB,NULL) */
        MB.maker_code = NULL
      WHERE
        /* %JoinFKPK(MB,:%Old," = ",",") */
        MB.maker_code = :old.maker_code;
  END IF;

  /* MAKER  SSD on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="SSD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SSD_maker_code", FK_COLUMNS="maker_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.maker_code <> :new.maker_code
  THEN
    UPDATE SSD
      SET
        /* %SetFK(SSD,NULL) */
        SSD.maker_code = NULL
      WHERE
        /* %JoinFKPK(SSD,:%Old," = ",",") */
        SSD.maker_code = :old.maker_code;
  END IF;

  /* MAKER  HDD on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="HDD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_HDD_maker_code", FK_COLUMNS="maker_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.maker_code <> :new.maker_code
  THEN
    UPDATE HDD
      SET
        /* %SetFK(HDD,NULL) */
        HDD.maker_code = NULL
      WHERE
        /* %JoinFKPK(HDD,:%Old," = ",",") */
        HDD.maker_code = :old.maker_code;
  END IF;

  /* MAKER  RAM on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="RAM"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_RAM_maker_code", FK_COLUMNS="maker_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.maker_code <> :new.maker_code
  THEN
    UPDATE RAM
      SET
        /* %SetFK(RAM,NULL) */
        RAM.maker_code = NULL
      WHERE
        /* %JoinFKPK(RAM,:%Old," = ",",") */
        RAM.maker_code = :old.maker_code;
  END IF;

  /* MAKER  CASE on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="CASE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_CASE_maker_code", FK_COLUMNS="maker_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.maker_code <> :new.maker_code
  THEN
    UPDATE CASE
      SET
        /* %SetFK(CASE,NULL) */
        CASE.maker_code = NULL
      WHERE
        /* %JoinFKPK(CASE,:%Old," = ",",") */
        CASE.maker_code = :old.maker_code;
  END IF;

  /* MAKER  ODD on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="ODD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ODD_maker_code", FK_COLUMNS="maker_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.maker_code <> :new.maker_code
  THEN
    UPDATE ODD
      SET
        /* %SetFK(ODD,NULL) */
        ODD.maker_code = NULL
      WHERE
        /* %JoinFKPK(ODD,:%Old," = ",",") */
        ODD.maker_code = :old.maker_code;
  END IF;

  /* MAKER  PS on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="PS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_PS_maker_code", FK_COLUMNS="maker_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.maker_code <> :new.maker_code
  THEN
    UPDATE PS
      SET
        /* %SetFK(PS,NULL) */
        PS.maker_code = NULL
      WHERE
        /* %JoinFKPK(PS,:%Old," = ",",") */
        PS.maker_code = :old.maker_code;
  END IF;

  /* MAKER  VGA on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="VGA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_VGA_maker_code", FK_COLUMNS="maker_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.maker_code <> :new.maker_code
  THEN
    UPDATE VGA
      SET
        /* %SetFK(VGA,NULL) */
        VGA.maker_code = NULL
      WHERE
        /* %JoinFKPK(VGA,:%Old," = ",",") */
        VGA.maker_code = :old.maker_code;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_MB BEFORE INSERT ON MB for each row
-- ERwin Builtin Trigger
-- INSERT trigger on MB 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MAKER  MB on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000dc64", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="MB"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_MB_maker_code", FK_COLUMNS="maker_code" */
    UPDATE MB
      SET
        /* %SetFK(MB,NULL) */
        MB.maker_code = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM MAKER
            WHERE
              /* %JoinFKPK(:%New,MAKER," = "," AND") */
              :new.maker_code = MAKER.maker_code
        ) 
        /* %JoinPKPK(MB,:%New," = "," AND") */
         and MB.mb_name = :new.mb_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_MB AFTER DELETE ON MB for each row
-- ERwin Builtin Trigger
-- DELETE trigger on MB 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MB  QUOTATION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="0000b21a", PARENT_OWNER="", PARENT_TABLE="MB"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_mb_name", FK_COLUMNS="mb_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.mb_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = "," AND") */
        QUOTATION.mb_name = :old.mb_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_MB AFTER UPDATE ON MB for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on MB 
DECLARE NUMROWS INTEGER;
BEGIN
  /* MB  QUOTATION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="0001e036", PARENT_OWNER="", PARENT_TABLE="MB"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_mb_name", FK_COLUMNS="mb_name" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.mb_name <> :new.mb_name
  THEN
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.mb_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = ",",") */
        QUOTATION.mb_name = :old.mb_name;
  END IF;

  /* ERwin Builtin Trigger */
  /* MAKER  MB on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="MB"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_MB_maker_code", FK_COLUMNS="maker_code" */
  SELECT count(*) INTO NUMROWS
    FROM MAKER
    WHERE
      /* %JoinFKPK(:%New,MAKER," = "," AND") */
      :new.maker_code = MAKER.maker_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.maker_code IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update MB because MAKER does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_ODD BEFORE INSERT ON ODD for each row
-- ERwin Builtin Trigger
-- INSERT trigger on ODD 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MAKER  ODD on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000d8ef", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="ODD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ODD_maker_code", FK_COLUMNS="maker_code" */
    UPDATE ODD
      SET
        /* %SetFK(ODD,NULL) */
        ODD.maker_code = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM MAKER
            WHERE
              /* %JoinFKPK(:%New,MAKER," = "," AND") */
              :new.maker_code = MAKER.maker_code
        ) 
        /* %JoinPKPK(ODD,:%New," = "," AND") */
         and ODD.odd_name = :new.odd_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_ODD AFTER DELETE ON ODD for each row
-- ERwin Builtin Trigger
-- DELETE trigger on ODD 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* ODD  QUOTATION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="0000b7f3", PARENT_OWNER="", PARENT_TABLE="ODD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_odd_name", FK_COLUMNS="odd_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.odd_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = "," AND") */
        QUOTATION.odd_name = :old.odd_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_ODD AFTER UPDATE ON ODD for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on ODD 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ODD  QUOTATION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="0001f59a", PARENT_OWNER="", PARENT_TABLE="ODD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_odd_name", FK_COLUMNS="odd_name" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.odd_name <> :new.odd_name
  THEN
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.odd_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = ",",") */
        QUOTATION.odd_name = :old.odd_name;
  END IF;

  /* ERwin Builtin Trigger */
  /* MAKER  ODD on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="ODD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ODD_maker_code", FK_COLUMNS="maker_code" */
  SELECT count(*) INTO NUMROWS
    FROM MAKER
    WHERE
      /* %JoinFKPK(:%New,MAKER," = "," AND") */
      :new.maker_code = MAKER.maker_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.maker_code IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update ODD because MAKER does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_PS BEFORE INSERT ON PS for each row
-- ERwin Builtin Trigger
-- INSERT trigger on PS 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MAKER  PS on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000d9c2", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="PS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_PS_maker_code", FK_COLUMNS="maker_code" */
    UPDATE PS
      SET
        /* %SetFK(PS,NULL) */
        PS.maker_code = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM MAKER
            WHERE
              /* %JoinFKPK(:%New,MAKER," = "," AND") */
              :new.maker_code = MAKER.maker_code
        ) 
        /* %JoinPKPK(PS,:%New," = "," AND") */
         and PS.ps_name = :new.ps_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_PS AFTER DELETE ON PS for each row
-- ERwin Builtin Trigger
-- DELETE trigger on PS 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* PS  QUOTATION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="0000b912", PARENT_OWNER="", PARENT_TABLE="PS"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ps_name", FK_COLUMNS="ps_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.ps_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = "," AND") */
        QUOTATION.ps_name = :old.ps_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_PS AFTER UPDATE ON PS for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on PS 
DECLARE NUMROWS INTEGER;
BEGIN
  /* PS  QUOTATION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="0001d780", PARENT_OWNER="", PARENT_TABLE="PS"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ps_name", FK_COLUMNS="ps_name" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.ps_name <> :new.ps_name
  THEN
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.ps_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = ",",") */
        QUOTATION.ps_name = :old.ps_name;
  END IF;

  /* ERwin Builtin Trigger */
  /* MAKER  PS on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="PS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_PS_maker_code", FK_COLUMNS="maker_code" */
  SELECT count(*) INTO NUMROWS
    FROM MAKER
    WHERE
      /* %JoinFKPK(:%New,MAKER," = "," AND") */
      :new.maker_code = MAKER.maker_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.maker_code IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update PS because MAKER does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_QUOTATION BEFORE INSERT ON QUOTATION for each row
-- ERwin Builtin Trigger
-- INSERT trigger on QUOTATION 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* SSD  QUOTATION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0009e2b4", PARENT_OWNER="", PARENT_TABLE="SSD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ssd_name", FK_COLUMNS="ssd_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.ssd_name = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM SSD
            WHERE
              /* %JoinFKPK(:%New,SSD," = "," AND") */
              :new.ssd_name = SSD.ssd_name
        ) 
        /* %JoinPKPK(QUOTATION,:%New," = "," AND") */
         and QUOTATION.quo_code = :new.quo_code;

    /* ERwin Builtin Trigger */
    /* HDD  QUOTATION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="HDD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_hdd_name", FK_COLUMNS="hdd_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.hdd_name = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM HDD
            WHERE
              /* %JoinFKPK(:%New,HDD," = "," AND") */
              :new.hdd_name = HDD.hdd_name
        ) 
        /* %JoinPKPK(QUOTATION,:%New," = "," AND") */
         and QUOTATION.quo_code = :new.quo_code;

    /* ERwin Builtin Trigger */
    /* VGA  QUOTATION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VGA"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_vga_name", FK_COLUMNS="vga_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.vga_name = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM VGA
            WHERE
              /* %JoinFKPK(:%New,VGA," = "," AND") */
              :new.vga_name = VGA.vga_name
        ) 
        /* %JoinPKPK(QUOTATION,:%New," = "," AND") */
         and QUOTATION.quo_code = :new.quo_code;

    /* ERwin Builtin Trigger */
    /* ODD  QUOTATION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ODD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_odd_name", FK_COLUMNS="odd_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.odd_name = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM ODD
            WHERE
              /* %JoinFKPK(:%New,ODD," = "," AND") */
              :new.odd_name = ODD.odd_name
        ) 
        /* %JoinPKPK(QUOTATION,:%New," = "," AND") */
         and QUOTATION.quo_code = :new.quo_code;

    /* ERwin Builtin Trigger */
    /* CPU  QUOTATION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CPU"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_cpu_name", FK_COLUMNS="cpu_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.cpu_name = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CPU
            WHERE
              /* %JoinFKPK(:%New,CPU," = "," AND") */
              :new.cpu_name = CPU.cpu_name
        ) 
        /* %JoinPKPK(QUOTATION,:%New," = "," AND") */
         and QUOTATION.quo_code = :new.quo_code;

    /* ERwin Builtin Trigger */
    /* MB  QUOTATION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MB"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_mb_name", FK_COLUMNS="mb_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.mb_name = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM MB
            WHERE
              /* %JoinFKPK(:%New,MB," = "," AND") */
              :new.mb_name = MB.mb_name
        ) 
        /* %JoinPKPK(QUOTATION,:%New," = "," AND") */
         and QUOTATION.quo_code = :new.quo_code;

    /* ERwin Builtin Trigger */
    /* RAM  QUOTATION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="RAM"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ram_name", FK_COLUMNS="ram_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.ram_name = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM RAM
            WHERE
              /* %JoinFKPK(:%New,RAM," = "," AND") */
              :new.ram_name = RAM.ram_name
        ) 
        /* %JoinPKPK(QUOTATION,:%New," = "," AND") */
         and QUOTATION.quo_code = :new.quo_code;

    /* ERwin Builtin Trigger */
    /* CASE  QUOTATION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CASE"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_case_name", FK_COLUMNS="case_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.case_name = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CASE
            WHERE
              /* %JoinFKPK(:%New,CASE," = "," AND") */
              :new.case_name = CASE.case_name
        ) 
        /* %JoinPKPK(QUOTATION,:%New," = "," AND") */
         and QUOTATION.quo_code = :new.quo_code;

    /* ERwin Builtin Trigger */
    /* PS  QUOTATION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PS"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ps_name", FK_COLUMNS="ps_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.ps_name = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM PS
            WHERE
              /* %JoinFKPK(:%New,PS," = "," AND") */
              :new.ps_name = PS.ps_name
        ) 
        /* %JoinPKPK(QUOTATION,:%New," = "," AND") */
         and QUOTATION.quo_code = :new.quo_code;

    /* ERwin Builtin Trigger */
    /* CUSTOMER  QUOTATION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CUSTOMER"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_cust_id", FK_COLUMNS="cust_id" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.cust_id = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM CUSTOMER
            WHERE
              /* %JoinFKPK(:%New,CUSTOMER," = "," AND") */
              :new.cust_id = CUSTOMER.cust_id
        ) 
        /* %JoinPKPK(QUOTATION,:%New," = "," AND") */
         and QUOTATION.quo_code = :new.quo_code;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_QUOTATION AFTER UPDATE ON QUOTATION for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on QUOTATION 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* SSD  QUOTATION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000a3b27", PARENT_OWNER="", PARENT_TABLE="SSD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ssd_name", FK_COLUMNS="ssd_name" */
  SELECT count(*) INTO NUMROWS
    FROM SSD
    WHERE
      /* %JoinFKPK(:%New,SSD," = "," AND") */
      :new.ssd_name = SSD.ssd_name;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.ssd_name IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update QUOTATION because SSD does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* HDD  QUOTATION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="HDD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_hdd_name", FK_COLUMNS="hdd_name" */
  SELECT count(*) INTO NUMROWS
    FROM HDD
    WHERE
      /* %JoinFKPK(:%New,HDD," = "," AND") */
      :new.hdd_name = HDD.hdd_name;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.hdd_name IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update QUOTATION because HDD does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* VGA  QUOTATION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VGA"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_vga_name", FK_COLUMNS="vga_name" */
  SELECT count(*) INTO NUMROWS
    FROM VGA
    WHERE
      /* %JoinFKPK(:%New,VGA," = "," AND") */
      :new.vga_name = VGA.vga_name;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.vga_name IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update QUOTATION because VGA does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* ODD  QUOTATION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ODD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_odd_name", FK_COLUMNS="odd_name" */
  SELECT count(*) INTO NUMROWS
    FROM ODD
    WHERE
      /* %JoinFKPK(:%New,ODD," = "," AND") */
      :new.odd_name = ODD.odd_name;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.odd_name IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update QUOTATION because ODD does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* CPU  QUOTATION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CPU"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_cpu_name", FK_COLUMNS="cpu_name" */
  SELECT count(*) INTO NUMROWS
    FROM CPU
    WHERE
      /* %JoinFKPK(:%New,CPU," = "," AND") */
      :new.cpu_name = CPU.cpu_name;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.cpu_name IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update QUOTATION because CPU does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* MB  QUOTATION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MB"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_mb_name", FK_COLUMNS="mb_name" */
  SELECT count(*) INTO NUMROWS
    FROM MB
    WHERE
      /* %JoinFKPK(:%New,MB," = "," AND") */
      :new.mb_name = MB.mb_name;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.mb_name IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update QUOTATION because MB does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* RAM  QUOTATION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="RAM"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ram_name", FK_COLUMNS="ram_name" */
  SELECT count(*) INTO NUMROWS
    FROM RAM
    WHERE
      /* %JoinFKPK(:%New,RAM," = "," AND") */
      :new.ram_name = RAM.ram_name;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.ram_name IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update QUOTATION because RAM does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* CASE  QUOTATION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CASE"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_case_name", FK_COLUMNS="case_name" */
  SELECT count(*) INTO NUMROWS
    FROM CASE
    WHERE
      /* %JoinFKPK(:%New,CASE," = "," AND") */
      :new.case_name = CASE.case_name;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.case_name IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update QUOTATION because CASE does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* PS  QUOTATION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PS"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ps_name", FK_COLUMNS="ps_name" */
  SELECT count(*) INTO NUMROWS
    FROM PS
    WHERE
      /* %JoinFKPK(:%New,PS," = "," AND") */
      :new.ps_name = PS.ps_name;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.ps_name IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update QUOTATION because PS does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* CUSTOMER  QUOTATION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CUSTOMER"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_cust_id", FK_COLUMNS="cust_id" */
  SELECT count(*) INTO NUMROWS
    FROM CUSTOMER
    WHERE
      /* %JoinFKPK(:%New,CUSTOMER," = "," AND") */
      :new.cust_id = CUSTOMER.cust_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.cust_id IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update QUOTATION because CUSTOMER does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_RAM BEFORE INSERT ON RAM for each row
-- ERwin Builtin Trigger
-- INSERT trigger on RAM 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MAKER  RAM on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000dbb7", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="RAM"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_RAM_maker_code", FK_COLUMNS="maker_code" */
    UPDATE RAM
      SET
        /* %SetFK(RAM,NULL) */
        RAM.maker_code = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM MAKER
            WHERE
              /* %JoinFKPK(:%New,MAKER," = "," AND") */
              :new.maker_code = MAKER.maker_code
        ) 
        /* %JoinPKPK(RAM,:%New," = "," AND") */
         and RAM.ram_name = :new.ram_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_RAM AFTER DELETE ON RAM for each row
-- ERwin Builtin Trigger
-- DELETE trigger on RAM 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* RAM  QUOTATION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="0000bbc6", PARENT_OWNER="", PARENT_TABLE="RAM"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ram_name", FK_COLUMNS="ram_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.ram_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = "," AND") */
        QUOTATION.ram_name = :old.ram_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_RAM AFTER UPDATE ON RAM for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on RAM 
DECLARE NUMROWS INTEGER;
BEGIN
  /* RAM  QUOTATION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="0001e582", PARENT_OWNER="", PARENT_TABLE="RAM"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ram_name", FK_COLUMNS="ram_name" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.ram_name <> :new.ram_name
  THEN
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.ram_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = ",",") */
        QUOTATION.ram_name = :old.ram_name;
  END IF;

  /* ERwin Builtin Trigger */
  /* MAKER  RAM on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="RAM"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_RAM_maker_code", FK_COLUMNS="maker_code" */
  SELECT count(*) INTO NUMROWS
    FROM MAKER
    WHERE
      /* %JoinFKPK(:%New,MAKER," = "," AND") */
      :new.maker_code = MAKER.maker_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.maker_code IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update RAM because MAKER does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_SSD BEFORE INSERT ON SSD for each row
-- ERwin Builtin Trigger
-- INSERT trigger on SSD 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MAKER  SSD on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000d66f", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="SSD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SSD_maker_code", FK_COLUMNS="maker_code" */
    UPDATE SSD
      SET
        /* %SetFK(SSD,NULL) */
        SSD.maker_code = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM MAKER
            WHERE
              /* %JoinFKPK(:%New,MAKER," = "," AND") */
              :new.maker_code = MAKER.maker_code
        ) 
        /* %JoinPKPK(SSD,:%New," = "," AND") */
         and SSD.ssd_name = :new.ssd_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_SSD AFTER DELETE ON SSD for each row
-- ERwin Builtin Trigger
-- DELETE trigger on SSD 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* SSD  QUOTATION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="0000bf67", PARENT_OWNER="", PARENT_TABLE="SSD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ssd_name", FK_COLUMNS="ssd_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.ssd_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = "," AND") */
        QUOTATION.ssd_name = :old.ssd_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_SSD AFTER UPDATE ON SSD for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on SSD 
DECLARE NUMROWS INTEGER;
BEGIN
  /* SSD  QUOTATION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="0001eb39", PARENT_OWNER="", PARENT_TABLE="SSD"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_ssd_name", FK_COLUMNS="ssd_name" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.ssd_name <> :new.ssd_name
  THEN
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.ssd_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = ",",") */
        QUOTATION.ssd_name = :old.ssd_name;
  END IF;

  /* ERwin Builtin Trigger */
  /* MAKER  SSD on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="SSD"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SSD_maker_code", FK_COLUMNS="maker_code" */
  SELECT count(*) INTO NUMROWS
    FROM MAKER
    WHERE
      /* %JoinFKPK(:%New,MAKER," = "," AND") */
      :new.maker_code = MAKER.maker_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.maker_code IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update SSD because MAKER does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_VGA BEFORE INSERT ON VGA for each row
-- ERwin Builtin Trigger
-- INSERT trigger on VGA 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* MAKER  VGA on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000dba6", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="VGA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_VGA_maker_code", FK_COLUMNS="maker_code" */
    UPDATE VGA
      SET
        /* %SetFK(VGA,NULL) */
        VGA.maker_code = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM MAKER
            WHERE
              /* %JoinFKPK(:%New,MAKER," = "," AND") */
              :new.maker_code = MAKER.maker_code
        ) 
        /* %JoinPKPK(VGA,:%New," = "," AND") */
         and VGA.vga_name = :new.vga_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_VGA AFTER DELETE ON VGA for each row
-- ERwin Builtin Trigger
-- DELETE trigger on VGA 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* VGA  QUOTATION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="0000b6c3", PARENT_OWNER="", PARENT_TABLE="VGA"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_vga_name", FK_COLUMNS="vga_name" */
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.vga_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = "," AND") */
        QUOTATION.vga_name = :old.vga_name;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_VGA AFTER UPDATE ON VGA for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on VGA 
DECLARE NUMROWS INTEGER;
BEGIN
  /* VGA  QUOTATION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="0001e651", PARENT_OWNER="", PARENT_TABLE="VGA"
    CHILD_OWNER="", CHILD_TABLE="QUOTATION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_QUOTATION_vga_name", FK_COLUMNS="vga_name" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vga_name <> :new.vga_name
  THEN
    UPDATE QUOTATION
      SET
        /* %SetFK(QUOTATION,NULL) */
        QUOTATION.vga_name = NULL
      WHERE
        /* %JoinFKPK(QUOTATION,:%Old," = ",",") */
        QUOTATION.vga_name = :old.vga_name;
  END IF;

  /* ERwin Builtin Trigger */
  /* MAKER  VGA on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MAKER"
    CHILD_OWNER="", CHILD_TABLE="VGA"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_VGA_maker_code", FK_COLUMNS="maker_code" */
  SELECT count(*) INTO NUMROWS
    FROM MAKER
    WHERE
      /* %JoinFKPK(:%New,MAKER," = "," AND") */
      :new.maker_code = MAKER.maker_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.maker_code IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update VGA because MAKER does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/




create sequence seq_quo_code
start with 1
increment BY 1
maxvalue 1000
/
create sequence seq_maker_code
start with 1
increment BY 1
maxvalue 1000
/



insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'인텔');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'AMD');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'삼성전자');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'G.SKILL');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'마이크론');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'실리콘파워');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'CORSAIR');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'AVEXIR');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'트랜센드');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'ASROCK');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'ASUS');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'GIGABYTE');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'MSI');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'ZOTAC');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'마이크로닉스');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'이엠텍');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'리드텍');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'잘만');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'COLORFUL');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'DELL');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'INNO3D');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'갤럭시');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'SANDISK');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'마이크론');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'ADATA');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'TOSHIBA');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'SEAGATE');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'WD');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'HGST');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'MARSHAL');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'LG전자');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'TSST');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'ABKO');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'COX');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'BRAVOTEC');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'3RSYS');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'POWEREX');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'SUPERFLOWER');
insert into MAKER(maker_code, maker_name) values ( seq_maker_code.nextval,'스카이디지탈');


