create database examenupi

create table fabricantes
(
codigo int identity (1,1) ,
nombre nvarchar (100) ,
constraint Pk_codigo primary key (codigo)
)

create table ARTICULOS
(
codigo int identity (1,1) ,
nombre nvarchar (100) ,
precio int ,
codigofabricante int ,
constraint Pk_codigoarticulos primary key (codigo),
constraint Fk_codigofabricante foreign key (codigofabricante) references fabricantes (codigo)
)

insert into articulos values ('reloj',200,1),('memorias',300,2),('tablets',400,1)
select * from articulos

insert into fabricantes values ('LG'),('HUAWEI')
SELECT * FROM FABRICANTES



