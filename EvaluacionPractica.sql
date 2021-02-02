create database Practica;

use Practica;

create table Prospectos(
	nombre varchar(20),
	apPaterno varchar(20),
	apMaterno varchar(20),
	calle varchar(30),
	numero varchar(20),
	colonia varchar(20),
	telefono varchar(15),
	codigo_postal varchar(10),
	rfc varchar(20) primary key,

	estatus varchar(10),
	observaciones varchar(140)
);

select nombre,apPaterno,apMaterno,estatus from Prospectos; 
select *from Prospectos;
delete from Prospectos Where nombre = 'Miguel';
--drop table Prospectos;
insert into Prospectos values ('Miguel','Valdez','Osuna','Miguel Hidalgo','77','Bamoa','6871234567','81140','rfcprueba','Enviada','');

create table documentos(
	Id int identity(1,1) primary key,
	nombre varchar(100)not null,
	realName varchar (100) not null,
	doc varbinary (max)not null,
	rfcProspectos varchar(20),

	Foreign Key (rfcProspectos) References Prospectos (rfc)
);

select *from documentos;
--drop table documentos;
--truncate table documentos;