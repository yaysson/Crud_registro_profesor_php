create database ProyectoFinal;

use ProyectoFinal;

create table usuario (
    us_codigo int not null auto_increment, 
    us_correo varchar (60) not null,
    us_nombres varchar (30) not null,
    us_primer_apellido varchar (20) not null,
    us_segundo_apellido varchar (20) not null,
    us_sexo char (6) not null,
    us_contrasena int not null,
    primary key (us_codigo)
);

create table registro_ruta (
    reg_ruta int not null auto_increment,
    reg_partida varchar (60) not null,
    reg_destino varchar (60) not null,
    reg_paradas int not null,
    reg_color_bus varchar (60) not null,
    reg_nombre_ruta varchar (60) not null,
    reg_valor int not null,
    primary key (reg_ruta)
);

create table consulta_ruta (
    con_codigo int not null auto_increment,
    con_lugardestino varchar (60) not null,
    con_lugarpartida varchar (60) not null,
    con_ruta int not null,
    con_nombre_ruta varchar (60) not null,
    con_valor int not null, 
    primary key (con_codigo),
    index (con_ruta),
    foreign key (con_ruta) references registro_ruta (reg_ruta)
);

--Datos tabla Usuario
insert into usuario (us_correo,us_nombres,us_primer_apellido,us_segundo_apellido,us_sexo,us_contrasena)
values ('a@a.com','andres','bustos','daza','m','12345');
insert into usuario (us_correo,us_nombres,us_primer_apellido,us_segundo_apellido,us_sexo,us_contrasena)
values ('b@a.com','luis felipe','reyes','acuna','m','54321');
insert into usuario (us_correo,us_nombres,us_primer_apellido,us_segundo_apellido,us_sexo,us_contrasena)
values ('c@a.com','carolina andrea','cruz','paez','f','19874');

--Datos tabla registro_ruta
insert into registro_ruta (reg_partida,reg_destino,reg_paradas,reg_color_bus,reg_nombre_ruta,reg_valor) 
values ('titan plaza','soacha ciudad verde', 14, 'azul', 'av boyaca', 1700);
insert into registro_ruta (reg_partida,reg_destino,reg_paradas,reg_color_bus,reg_nombre_ruta,reg_valor) 
values ('bulevar niza','minuto de Dios', 7, 'negro', 'suba compartir', 1750);
insert into registro_ruta (reg_partida,reg_destino,reg_paradas,reg_color_bus,reg_nombre_ruta,reg_valor) 
values ('unicentro','plaza de fontibon', 18, 'rojo', 'fontibon', 2000);

--Datos tabla consulta_ruta
insert into consulta_ruta (con_lugardestino,con_lugarpartida,con_ruta,con_nombre_ruta, con_valor)
values ('bosa', 'autopista sur', 1, 'av boyaca', 1700);
insert into consulta_ruta (con_lugardestino,con_lugarpartida,con_ruta,con_nombre_ruta, con_valor)
values ('polo', 'av centenario', 2, 'suba compartir', 1750);
insert into consulta_ruta (con_lugardestino,con_lugarpartida,con_ruta,con_nombre_ruta, con_valor)
values ('general santander', 'fatima', 3, 'fontibon', 2000);