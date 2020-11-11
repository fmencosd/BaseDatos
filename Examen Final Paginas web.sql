
create database ExamenFinal

use ExamenFinal


create table Usuario
(
idUsuario int not null identity(1,1),
Nombre varchar(15) not null,
Contraseña varchar (15) not null,
idCliente int,
primary key (idUsuario)
);

create table Cliente
(
idCliente int Not Null identity(1,1),
nomCliente varchar (30),
ApellidoCliente varchar (30),
Dirreccion varchar (30),
Ciudad varchar (10),
Nit varchar (20),
primary key (idCliente)
);

create table Menu
(
IdMenu int not null identity(1,1),
nombreMenu varchar(30),
descripcion varchar (50),
precioTotal money,
idComida int,
idPostres int,
idBebida int,
idExtra int
primary key (IdMenu)
);

create table Comida
(
idComida int not null identity(1,1),
NombreComida varchar(10),
Descripcio varchar (50),
cantidad int,
precio money
primary key (idComida)
);


create table Postres
(
idPostres int not null identity(1,1),
NombrePostre varchar(10),
Descripcio varchar (50),
cantidad int,
precio money
Primary key (idPostres)
);


create table Bebidas
(
idBebida int not null identity(1,1),
nombreBebida varchar(10),
Descripcio varchar (50),
cantidad int,
precio money
primary key (IdBebida)
);

create table extras
(
idExtra int not null identity(1,1),
nombreExtra varchar(10),
descripcio varchar (30),
precio money,
cantidad int
Primary key (idExtra)
);


create table Factura
(
idFactura int not null identity(1,1),
fecha datetime,
idCliente int,
primary key (idFactura)
);

create table DetallePedido

(
idDetalle int not null identity(1,1),
cantidad int,
precio money,
idMenu int,
idFactura int
primary key (idDetalle)
);


