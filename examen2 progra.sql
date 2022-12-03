CREATE database examen2

create table fabricantes
(
codigo int identity (1,1) ,
nombre nvarchar (100) ,
constraint Pk_codigo primary key (codigo)
)

CREATE table ARTICULOS
(
codigo int identity (1,1) ,
nombre nvarchar (100) ,
precio int ,
codigofabricante int ,
constraint Pk_codigoarticulos primary key (codigo),
constraint Fk_codigofabricante foreign key (codigofabricante) references fabricantes (codigo)
)
SELECT nombre,precio from articulos

select nombre from articulos where precio <= 200

select * from articulos, fabricantes 
where articulos.codigofabricante = fabricantes.codigo

insert into ARTICULOS (nombre,precio,codigofabricante) VALUES('RELOJ',100,1),('CELULAR',200,2),('laptop', 300, 1)
select * from articulos

INSERT INTO fabricantes VALUES ('SAMSUNG'),('HUAWEI')
SELECT * FROM FABRICANTES