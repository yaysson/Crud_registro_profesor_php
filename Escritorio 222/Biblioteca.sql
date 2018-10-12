create table ficha_autor(
    codigo_autor int primary key auto_increment not null,
    nombre_autor varchar(50) not null
);


insert into ficha_autor(nombre_autor) values ("Jeisso Ceron");
insert into ficha_autor(nombre_autor) values ("Antoni pacatica");
insert into ficha_autor(nombre_autor) values ("Lilian Garzon");
insert into ficha_autor(nombre_autor) values ("Carlos Ortiz");
insert into ficha_autor(nombre_autor) values ("Aide Lopez");




create table ficha_libro(
    codigo_libro int primary key auto_increment not null,
    titulo_libro varchar(50) not null,
    ISBN varchar(50),
    editorial varchar(50),
    paginas int

);

insert into ficha_libro(titulo_libro,ISBN,editorial,paginas) values ("Los 100","ad21","Robles",100);
insert into ficha_libro(titulo_libro,ISBN,editorial,paginas) values ("Arboles","ad25","Tres",150);
insert into ficha_libro(titulo_libro,ISBN,editorial,paginas) values ("Aji","ad27","Empanadas",89);
insert into ficha_libro(titulo_libro,ISBN,editorial,paginas) values ("Carros","ad25","Megan",250);
insert into ficha_libro(titulo_libro,ISBN,editorial,paginas) values ("Parques","ad78","Juegos",25);


create table ejemplar(
    codigo_ejemplar int primary key auto_increment not null,
    ubicacion varchar(10),
    codigo_libro int,
    index(codigo_libro),
    foreign key(codigo_libro) references ficha_libro(codigo_libro)
  
);

insert into ejemplar(ubicacion,codigo_libro) values ("A1",1);
insert into ejemplar(ubicacion,codigo_libro) values ("A2",2);
insert into ejemplar(ubicacion,codigo_libro) values ("A3",3);
insert into ejemplar(ubicacion,codigo_libro) values ("A4",4);
insert into ejemplar(ubicacion,codigo_libro) values ("A5",5);


create table usuario(
    codigo_usuario int primary key auto_increment not null,
    nombre_usuario varchar(50),
    direccion varchar(50),
    telefono int
);

insert into usuario(nombre_usuario,direccion,telefono) values ("Raquel","calle6",4444444);
insert into usuario(nombre_usuario,direccion,telefono) values ("luis","calle8",5555555);
insert into usuario(nombre_usuario,direccion,telefono) values ("Jonas","calle7",7777777);
insert into usuario(nombre_usuario,direccion,telefono) values ("Orlando","calle87",8888888);
insert into usuario(nombre_usuario,direccion,telefono) values ("Juan","calle788",1022141144);

create table prestamo(
    id_prestamo int primary key auto_increment not null,
    fecha_prestamo varchar(50),
    fecha_devolucion varchar(50),
    codigo_usuario int,
    index(codigo_usuario),
    foreign key(codigo_usuario) references usuario(codigo_usuario),
    codigo_ejemplar int,
    index(codigo_ejemplar),
    foreign key(codigo_ejemplar) references ejemplar(codigo_ejemplar)
);

insert into prestamo(fecha_prestamo,fecha_devolucion,codigo_usuario,codigo_ejemplar) values ("10 julo 1992","15 julio 1992",1,13);
insert into prestamo(fecha_prestamo,fecha_devolucion,codigo_usuario,codigo_ejemplar) values ("15 julo 1992","30 julio 1992",2,14);
insert into prestamo(fecha_prestamo,fecha_devolucion,codigo_usuario,codigo_ejemplar) values ("18 julo 1992","28 julio 1992",3,15);
insert into prestamo(fecha_prestamo,fecha_devolucion,codigo_usuario,codigo_ejemplar) values ("20 julo 1992","25 julio 1992",4,16);
insert into prestamo(fecha_prestamo,fecha_devolucion,codigo_usuario,codigo_ejemplar) values ("15 julo 1992","31 julio 1992",5,17);

create table ejemplar_prestamo(
    idejemplarprestamo int primary key auto_increment not null,
    codigo_ejemplar int,
    id_prestamo int,
    index(codigo_ejemplar),
    index(id_prestamo),
    foreign key(id_prestamo) references prestamo(id_prestamo),
    foreign key(codigo_ejemplar) references ejemplar(codigo_ejemplar)
    

);

insert into ejemplar_prestamo(codigo_ejemplar,id_prestamo,) values (13,1);
insert into ejemplar_prestamo(codigo_ejemplar,id_prestamo,) values (14,2);
insert into ejemplar_prestamo(codigo_ejemplar,id_prestamo,) values (15,3);
insert into ejemplar_prestamo(codigo_ejemplar,id_prestamo,) values (16,4);
insert into ejemplar_prestamo(codigo_ejemplar,id_prestamo,) values (17,5);





