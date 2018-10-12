create table terminal (
    te_coditerm char (6) not null,
    te_direterm varchar (50) not null,
    te_nombterm varchar (50) not null,
    primary key (te_coditerm) 
);
create table buses (
    bu_placa char (8) not null,
    bu_codiflot char (8) not null,
    bu_capacidad int not null,
    bu_fechfabri datetime not null,
    bu_tipo tinyint not null,
    primary key (bu_codiflot)
);

create table flotas(
    fl_codiflot char (8) not null,
    fl_nombflot varchar (35) not null,
    fl_coditerm char (6) not null,
    primary key (fl_codiflot),
    index (fl_coditerm),
    foreign key (fl_codiflot) references terminal (te_coditerm)
);

create table rutas(
    ru_codiruta tinyint not null,
    ru_nombruta varchar (35) not null,
    ru_valopasaj int not null,
    primary key (ru_codiruta)
);

create table viajes (
    vi_placa char (8) not null,
    vi_codiruta tinyint not null,
    vi_numepasajero int not null,
    vi_fechviaje datetime not null,
    vi_codiconduct int not null,
    vi_numevuelta int not null,
    primary key (vi_codiruta)
);

create table conductores (
    co_codiconduc int not null,
    co_nombconduc varchar (35) not null,
    co_direconduc varchar (35) not null,
    co_fechnac datetime not null, 
    primary key (co_codiconduc)
);

