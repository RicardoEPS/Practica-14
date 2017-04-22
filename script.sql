Create database AbarrotesBD;
use AbarrotesBD;
create table TiposProductos(Id int PRIMARY KEY, Descripcion varchar(200));
create table Productos(Id int PRIMARY KEY, Nombre varchar(200), Precio float, Existencia Int, IdTipoProducto Int,Foto varchar(100),FOREIGN KEY (IdTipoProducto) REFERENCES TiposProductos(Id));
create table Clientes(Id int PRIMARY KEY, Rfc varchar(13), Nombre varchar(200), Direccion varchar(200), Telefono varchar(20));
create table Proveedores(Id int PRIMARY KEY,Rfc varchar(13), Nombre varchar(200), Direccion varchar(200), Telefono varchar(20));

Insert into TiposProductos(Id,Descripcion)Values(1,'Galletas');
Insert into TiposProductos (Id,Descripcion)Values(2,'Refrescos');

Insert into Productos (Id,Nombre, Precio, Existencia,IdTipoProducto)Values(1,'Emperador de chocolate',10.5, 20,1);
Insert into Productos (Id,Nombre, Precio, Existencia,IdTipoProducto)Values(2,'Chokis',8.5, 10,1);
Insert into Productos (Id,Nombre, Precio, Existencia,IdTipoProducto)Values(3,'Coca-cola 600 ml',12, 10,2);

Insert into Clientes(Id,Nombre,Rfc, Direccion, Telefono)Values(1,'Jose Luis Sanchez Lopez','SALJ890309XXX','1 poniente sur', '9999999');
Insert into Clientes(Id,Nombre,Rfc, Direccion, Telefono)Values(2,'Karla de Rosario Diaz Cano','DICK951206YYY','conocida', '000000');

Insert into Proveedores(Id,Nombre,Rfc, Direccion, Telefono)Values(1,'Sabritas S.A. DE C.V.','SABR750102AAA','Av. Aguascalientes Plan de Ayala', '9616199999');
Insert into Proveedores(Id,Nombre,Rfc, Direccion, Telefono)Values(2,'COCA COLA COMPANY','CCF870728ESO','Mario Pani No.100 Piso 7 Santa Fe ', '52 55 151923');
