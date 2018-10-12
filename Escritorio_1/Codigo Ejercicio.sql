create table Terminal(
    te_CodiTerm Char(6) not Null,
    te_DireTerm Varchar(30) not Null,
    te_NombTerm Varchar(35) not Null,
    Primary Key (te_CodiTerm)
);

insert into Terminal(te_CodiTerm,te_DireTerm,te_NombTerm) values (1,'Cll 7 N 2 35','Terminal Chía');
insert into Terminal(te_CodiTerm,te_DireTerm,te_NombTerm) values (2,'Salitre','Terminal Salitre');
insert into Terminal(te_CodiTerm,te_DireTerm,te_NombTerm) values (3,'Norte Cll 193','Terminal Norte');
insert into Terminal(te_CodiTerm,te_DireTerm,te_NombTerm) values (4,'Portal Sur','Terminal Sur');
insert into Terminal(te_CodiTerm,te_DireTerm,te_NombTerm) values (5,'Parque Cota','Terminal Cota');

create table Buses(
    bu_Placa Char(8) not Null,
    bu_Capacidad int not Null,
    bu_FechaFabri Datetime not Null,
    bu_Tipo Tinyint not Null,
    Primary Key (bu_Placa),
    bu_CodiFlot Char(8) not Null,
    index (bu_CodiFlot),
    foreign Key (bu_CodiFlot) references Flotas (fl_CodiFlot)
);

create table Flotas(
    fl_CodiFlot Char(8) not Null,
    fl_NombFlot Varchar(35) not Null,
    Primary Key (fl_CodiFlot),
    fl_CodiTerm Char(6) not Null,
    index (fl_CodiTerm),
    foreign Key (fl_CodiTerm) references Terminal (fl_CodiTerm)
);

create table Rutas(
    ru_CodiRuta Tinyint not Null,
    ru_NombFlot Varchar(35) not Null,
    ru_ValoPasaj Decimal not Null,
    Primary Key (ru_CodiRuta)
);

create table Viajes (
    vi_Placa Char(8) not Null,
    vi_CodiRuta Tinyint not Null,
    vi_NemePasajero int not Null,
    vi_FechViaje Datetime not Null,
    vi_CodiConduc int not Null,
    vi_NumeVuelta int not Null,
    vi_ValoPasaj Decimal not Null,
    Primary Key (vi_NumeVuelta),
    vi_Placa Char(8) not Null,
    index (vi_Placa),
    foreign Key (vi_Placa) references Buses (bu_Placa),
    vi_CodiRuta Tinyint not Null,
    index (vi_CodiRuta),
    foreign Key (vi_CodiRuta) references Rutas (ru_CodiRuta),
    vi_CodiConduc int not Null,
    index (vi_CodiConduc),
    foreign Key (vi_CodiConduc) references Conductores (co_CodiConduc)
);

create table Conductores (
    co_CodiConduc int not Null,
    co_NombConduc Varchar (35) not Null,
    co_DireConduc Varchar (35) not Null,
    co_FechNaci Datetime not Null,
    Primary Key (co_CodiConduc)
);
