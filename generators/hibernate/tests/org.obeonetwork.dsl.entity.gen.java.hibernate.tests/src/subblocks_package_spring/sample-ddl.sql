-- Start of user code DB Name
-- TODO specify the name of database used
USE sample;
-- End of user code

-- Tables for Entity A 

DROP TABLE IF EXISTS A;
CREATE TABLE A
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- |*|-->*
DROP TABLE IF EXISTS A_B;
CREATE TABLE A_B
(
	A_ID CHAR(32) NOT NULL,
	B_ID CHAR(32) NOT NULL,
	PRIMARY KEY (A_ID, B_ID)
);
-- Tables for Entity B 

DROP TABLE IF EXISTS B;
CREATE TABLE B
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity A 

DROP TABLE IF EXISTS A;
CREATE TABLE A
(
	ID CHAR(32) NOT NULL,
	-- |*|-->1
	FK_B_B_ID CHAR(32) UNIQUE,
	PRIMARY KEY (ID)
);

-- Tables for Entity B 

DROP TABLE IF EXISTS B;
CREATE TABLE B
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity A 

DROP TABLE IF EXISTS A;
CREATE TABLE A
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- |*|-->*
DROP TABLE IF EXISTS A_B;
CREATE TABLE A_B
(
	A_ID CHAR(32) NOT NULL,
	B_ID CHAR(32) NOT NULL,
	PRIMARY KEY (A_ID, B_ID)
);
-- Tables for Entity B 

DROP TABLE IF EXISTS B;
CREATE TABLE B
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity A 

DROP TABLE IF EXISTS A;
CREATE TABLE A
(
	ID CHAR(32) NOT NULL,
	-- |*|-->1
	FK_B_B_ID CHAR(32) UNIQUE,
	PRIMARY KEY (ID)
);

-- Tables for Entity B 

DROP TABLE IF EXISTS B;
CREATE TABLE B
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity A 

DROP TABLE IF EXISTS A;
CREATE TABLE A
(
	ID CHAR(32) NOT NULL,
	-- |*|-->1
	FK_B_B_ID CHAR(32) UNIQUE,
	PRIMARY KEY (ID)
);

-- Tables for Entity B 

DROP TABLE IF EXISTS B;
CREATE TABLE B
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity A 

DROP TABLE IF EXISTS A;
CREATE TABLE A
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- |*|-->*
DROP TABLE IF EXISTS A_B;
CREATE TABLE A_B
(
	A_ID CHAR(32) NOT NULL,
	B_ID CHAR(32) NOT NULL,
	PRIMARY KEY (A_ID, B_ID)
);
-- Tables for Entity B 

DROP TABLE IF EXISTS B;
CREATE TABLE B
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity A 

DROP TABLE IF EXISTS A;
CREATE TABLE A
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity B 

DROP TABLE IF EXISTS B;
CREATE TABLE B
(
	ID CHAR(32) NOT NULL,
	-- |*|<-->1
	FK_A_A_ID CHAR(32) UNIQUE,

	PRIMARY KEY (ID)
);

-- Tables for Entity A 

DROP TABLE IF EXISTS A;
CREATE TABLE A
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- |*|<-->*
DROP TABLE IF EXISTS A_B;
CREATE TABLE A_B
(
	A_ID CHAR(32) NOT NULL,
	B_ID CHAR(32) NOT NULL,
	PRIMARY KEY (A_ID, B_ID)
);
-- Tables for Entity B 

DROP TABLE IF EXISTS B;
CREATE TABLE B
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity A 

DROP TABLE IF EXISTS A;
CREATE TABLE A
(
	ID CHAR(32) NOT NULL,

	PRIMARY KEY (ID)
);

-- Tables for Entity B 

DROP TABLE IF EXISTS B;
CREATE TABLE B
(
	ID CHAR(32) NOT NULL,
	-- |1|<-->1
	FK_A_A_ID CHAR(32) UNIQUE,

	PRIMARY KEY (ID)
);

-- Tables for Entity A 

DROP TABLE IF EXISTS A;
CREATE TABLE A
(
	ID CHAR(32) NOT NULL,
	-- |*|<-->1
	FK_B_B_ID CHAR(32) UNIQUE,

	PRIMARY KEY (ID)
);

-- Tables for Entity B 

DROP TABLE IF EXISTS B;
CREATE TABLE B
(
	ID CHAR(32) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Root 

DROP TABLE IF EXISTS ROOT;
CREATE TABLE ROOT
(
	ID CHAR(32) NOT NULL,
	NAME VARCHAR(255) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity C1 

DROP TABLE IF EXISTS C1;
CREATE TABLE C1
(
	A1 VARCHAR(255) ,
	FK_INHERITS_ROOT_ID CHAR(32) NOT NULL,
	PRIMARY KEY (FK_INHERITS_ROOT_ID)
);

-- Tables for Entity C2 

DROP TABLE IF EXISTS C2;
CREATE TABLE C2
(
	A2 VARCHAR(255) ,
	FK_INHERITS_ROOT_ID CHAR(32) NOT NULL,
	PRIMARY KEY (FK_INHERITS_ROOT_ID)
);

-- Tables for Entity Root 

DROP TABLE IF EXISTS ROOT;
CREATE TABLE ROOT
(
	ID CHAR(32) NOT NULL,
	NAME VARCHAR(255) ,
	PRIMARY KEY (ID)
);

-- Tables for Entity C1 

DROP TABLE IF EXISTS C1;
CREATE TABLE C1
(
	A1 VARCHAR(255) ,
	FK_INHERITS_ROOT_ID CHAR(32) NOT NULL,
	PRIMARY KEY (FK_INHERITS_ROOT_ID)
);

-- Tables for Entity C2 

DROP TABLE IF EXISTS C2;
CREATE TABLE C2
(
	A2 VARCHAR(255) ,
	FK_INHERITS_ROOT_ID CHAR(32) NOT NULL,
	PRIMARY KEY (FK_INHERITS_ROOT_ID)
);

-- Tables for Entity Cardinality 

DROP TABLE IF EXISTS CARDINALITY;
CREATE TABLE CARDINALITY
(
	ID CHAR(32) NOT NULL,
	ONE VARCHAR(255) NOT NULL,
	ZERO_OR_ONE VARCHAR(255) ,
	PRIMARY KEY (ID)
);

-- Tables for Entity PrimitiveType 

DROP TABLE IF EXISTS PRIMITIVE_TYPE;
CREATE TABLE PRIMITIVE_TYPE
(
	ID CHAR(32) NOT NULL,
	STRING_ATTRIBUTE VARCHAR(255) ,
	INTEGER_ATTRIBUTE INT ,
	BOOLEAN_ATTRIBUTE INT(1) ,
	DOUBLE_ATTRIBUTE  ,
	EMAIL_ATTRIBUTE VARCHAR(255) ,
	DATE_ATTRIBUTE DATETIME ,
	FLOAT_ATTRIBUTE DOUBLE ,
	LONG_ATTRIBUTE  ,
	PRIMARY KEY (ID)
);

