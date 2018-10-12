create table Terminal (
 te_CodiTerm Char (6) not null,
 te_DireTerm Varchar (30) not null,
 te_NombTerm Varchar (35) not null,
 primary Key (te_Coditerm)   
);



create table Rutas (
    ru_CodiRuta Tinyint not null auto_increment,
    ru_NombRuta varchar (35) not null,
    ru_ValoPasaj int not null,
    primary key (ru_CodiRuta)
);



create table Conductores (
    co_CodiConduc Int not null auto_increment,
    co_NombConduc Varchar (35) not null,
    co_DireConduc Varchar (35) not null,
    co_fechNaci Date not null,
    primary key (co_CodiConduc)
);



create table Flotas (
    fl_CodiFlot Char (8) not null,
    fl_NombFlot Varchar (35) not null,
    fl_CodiTerm Char (6) not null,
    primary key (fl_CodiFlot),
    index (fl_Coditerm),
    foreign key (fl_CodiTerm) references Terminal (te_CodiTerm)
);



create table Buses (
    bu_Placa char (8) not null,
    bu_CodiFlot char (8) not null,
    bu_Capacidad int not null,
    bu_FechaFabri Date not null,
    bu_Tipo Tinyint not null,
    primary key (bu_Placa),
    index (bu_CodiFlot),
    foreign key (bu_CodiFlot) references Flotas (fl_CodiFlot)
);



create table Viajes (
    vi_placa char (8) not null,
    vi_CodiRuta Tinyint not null,
    vi_NumePasajero Int not null,
    vi_FechViaje Date not null,
    vi_CodiConduct Int not null,
    vi_NumeVuelta Int not null,
    vi_ValoPasaj Int not null,
    primary key (vi_NumeVuelta),
    index (vi_placa),
    foreign key (vi_placa) references Buses (bu_Placa),
);


--Datos tabla Terminal
Insert Into Terminal (te_CodiTerm, te_DireTerm, te_NombTerm)
values ('aaa', 'calle 13 N 1-1', 'Berlin' );
Insert Into Terminal (te_CodiTerm, te_DireTerm, te_NombTerm)
values ('aab', 'carrera 25 N 12-5', 'Moscu' );
Insert Into Terminal (te_CodiTerm, te_DireTerm, te_NombTerm)
values ('aac', 'diagonal 17 N 27-55 sur', 'Madrid' );

--Datos tabla Rutas
Insert into Rutas (ru_NombRuta,ru_ValoPasaj)
values ('Galan-Perdomo',1600);
Insert into Rutas (ru_NombRuta,ru_ValoPasaj)
values ('Funza-Bosa Centro',1700);
Insert into Rutas (ru_NombRuta,ru_ValoPasaj)
values ('Modelia-Soacha',1900);

--Datos tabla Conductores
Insert into Conductores (co_CodiConduc,co_NombConduc,co_DireConduc,co_fechNaci)
values (100, 'Luis Rey', 'calle 63 N 5-14', '1987-05-25');
Insert into Conductores (co_NombConduc,co_DireConduc,co_fechNaci)
values ('Andrea Matamoros', 'calle 87sur N 5-14sur', '1977-06-30');
Insert into Conductores (co_NombConduc,co_DireConduc,co_fechNaci)
values ('Jose Herrera', 'diagonal 103 N 25-214', '1992-02-11');

--Datos tabla Flotas
Insert Into Flotas (fl_CodiFlot, fl_NombFlot, fl_CodiTerm)
values ('bba','Macarena','aaa');
Insert Into Flotas (fl_CodiFlot, fl_NombFlot, fl_CodiTerm)
values ('bbb','Bolivar','aab');
Insert Into Flotas (fl_CodiFlot, fl_NombFlot, fl_CodiTerm)
values ('bbc','Corredor','aac');

--Datos tabla Buses
Insert Into Buses (bu_Placa,bu_CodiFlot,bu_Capacidad,bu_FechaFabri,bu_Tipo)
values ('abc123','bba',41,'2012-12-15','aerovan');
Insert Into Buses (bu_Placa,bu_CodiFlot,bu_Capacidad,bu_FechaFabri,bu_Tipo)
values ('def123','bbb',14,'2010-08-22','minivan');
Insert Into Buses (bu_Placa,bu_CodiFlot,bu_Capacidad,bu_FechaFabri,bu_Tipo)
values ('ghi123','bbc',22,'2016-11-04','minivan');

--Datos tabla Viajes
Insert Into Viajes (vi_placa, vi_CodiRuta, vi_NumePasajero, vi_FechViaje, vi_CodiConduct, vi_NumeVuelta, vi_ValoPasaj)
values ('abc123',1,40,'2018-01-25',100,6,1600);
Insert Into Viajes (vi_placa, vi_CodiRuta, vi_NumePasajero, vi_FechViaje, vi_CodiConduct, vi_NumeVuelta, vi_ValoPasaj)
values ('def123',2,15,'2018-01-25',101,4,1700);
Insert Into Viajes (vi_placa, vi_CodiRuta, vi_NumePasajero, vi_FechViaje, vi_CodiConduct, vi_NumeVuelta, vi_ValoPasaj)
values ('ghi123',3,15,'2018-01-25',102,2,1900);