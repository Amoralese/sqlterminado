CREATE DATABASE TAREA4PROGRA

create TABLE PERSONA
(
ID INT PRIMARY KEY,
NOMBRE VARCHAR (50),
GENERO CHAR (1) check (GENERO = 'F' OR GENERO = 'M'),
FECHA DATETIME
)


create TABLE RESPUESTA
(
ID INT IDENTITY (1,1)PRIMARY KEY,
IDPERSONA INT,
R1 CHAR (1),
R2 CHAR (2),
R3 CHAR (3),
R4 CHAR (4),
R5 CHAR (5),
R6 CHAR (6),
R7 CHAR (7),
R8 CHAR (8),
R9 CHAR (9),
CONSTRAINT Fk_IDPERSONA FOREIGN KEY (IDPERSONA) REFERENCES PERSONA(ID)
)

